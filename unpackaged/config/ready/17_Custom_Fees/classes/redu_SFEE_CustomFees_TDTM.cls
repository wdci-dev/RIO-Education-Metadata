/**
 * @author           WDCi-CM
 * @date             30/09/2021
 * @group            Student Fee Custom Automation
 * @description      Automation to handle Term-based and Annual-based Program Plan Fees.
 *                   We will try to create these fees at the same time a tuition Student Fee is created (Main Term Student Fee = true)
 * @change-history   
 * - 30/09/2021 WDCi-CM: Initial Build
 * - 3/08/2022 Jordan: Modified for RIO Ready
 */
global without sharing class redu_SFEE_CustomFees_TDTM extends hed.TDTM_Runnable {

    /* Planned Trigger Handler Info:
     * Name: SFEE_CustomFees_TDTM
     * Object: rio_ed__Student_Fee__c
     * Load Order: 3
     * Trigger Action: AfterInsert
     */
    
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {
        
        hed.TDTM_Runnable.dmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();

        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert){

            List<rio_ed__Student_Fee__c> newSfList = (List<rio_ed__Student_Fee__c>) newList;
            Set<Id> peIds = new Set<Id>();
            Set<Id> pepIds = new Set<Id>();

            Map<Id, rio_ed__Student_Fee__c> workingSfMap = new Map<Id, rio_ed__Student_Fee__c>();
            Map<Id, rio_ed__Student_Fee__c> pepToWorkingSfMap = new Map<Id, rio_ed__Student_Fee__c>(); //Error mapping

            for (rio_ed__Student_Fee__c sf : newSfList){
                //We will only proceed if this is a main tuition student fee (Main Term Student Fee = true)
                if (sf.rio_ed__Main_Term_Student_Fee__c && sf.rio_ed__PE_Pathway__c != null){
                    //Track PE and PEP for field mapping later
                    peIds.add(sf.rio_ed__Program_Enrollment__c);
                    pepIds.add(sf.rio_ed__PE_Pathway__c);
                    workingSfMap.put(sf.Id, sf);
                    pepToWorkingSfMap.put(sf.rio_ed__PE_Pathway__c, sf); //For error mapping
                }

            }

            //Only proceed if we found some matching Student Fees
            if (!workingSfMap.isEmpty()){

                Set<Id> feeIds = new Set<Id>();
                Set<Id> termIds = new Set<Id>();

                //Check Program Plans to see if we need Annual or Term-wise fees
                Map<Id, hed__Program_Enrollment__c> peMap = new Map<Id, hed__Program_Enrollment__c>([
                    SELECT Id, hed__Contact__c, hed__Program_Plan__c, redu_Last_Annual_Fee_Term__c, redu_Last_Annual_Fee_Year__c, rio_ed__Student_Fee_Type__c, 
                    rio_ed__Non_Tuition_Fee_Type__c, rio_ed__Non_Tuition_Fee_Type_Option__c, rio_ed__Fee_Type__c, rio_ed__Fee_Type_Option__c,
                    hed__Program_Plan__r.redu_Annual_Fee_Group__c, hed__Program_Plan__r.redu_Term_wise_Fee_Group__c, 
                    hed__Program_Plan__r.redu_Annual_Fee_Group__r.Name, hed__Program_Plan__r.redu_Term_wise_Fee_Group__r.Name 
                    FROM hed__Program_Enrollment__c
                    WHERE Id IN :peIds
                ]);
                Set<Id> annualFeePeIds = new Set<Id>();
                Set<Id> termFeePeIds = new Set<Id>();
                Set<Id> contactIds = new Set<Id>();
                for (hed__Program_Enrollment__c pe : peMap.values()){
                    //PE needs annual fee
                    //Can't check here, needs PE Pathtway information
                    /*if (pe.hed__Program_Plan__c != null && pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c != null && pe.redu_Annual_Fee_Ready__c){
                        annualFeePeIds.add(pe.Id);
                        feeIds.add(pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c);
                    }*/
                    //PE needs Term fee
                    if (pe.hed__Program_Plan__c != null && pe.hed__Program_Plan__r.redu_Term_wise_Fee_Group__c != null){
                        termFeePeIds.add(pe.Id);
                        feeIds.add(pe.hed__Program_Plan__r.redu_Term_wise_Fee_Group__c);
                    }
                    contactIds.add(pe.hed__Contact__c);
                }

                Map<Id, Id> pepToTermMap = new Map<Id, Id>();
                Map<Id, Decimal> pepToAnnualFeeYearMap = new Map<Id, Decimal>();
                //Check PE Pathways to see if we need to create Term-wise fees
                for (rio_ed__PE_Pathway_Status__c pep : [
                    SELECT Id, Name, rio_ed__Term__c, rio_ed__Term__r.redu_Academic_Year__c, rio_ed__Program_Enrollment__c 
                    FROM rio_ed__PE_Pathway_Status__c
                    WHERE Id IN :pepIds
                ]){
                    //Get Terms for finding Fee Schedule Terms
                    if (pep.rio_ed__Term__c != null){
                        pepToTermMap.put(pep.Id, pep.rio_ed__Term__c);
                        termIds.add(pep.rio_ed__Term__c);
                        pepToAnnualFeeYearMap.put(pep.Id, pep.rio_ed__Term__r.redu_Academic_Year__c);

                        //Check if we need the annual fee
                        hed__Program_Enrollment__c pe = peMap.get(pep.rio_ed__Program_Enrollment__c);
                        if (pe.hed__Program_Plan__c != null && pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c != null 
                        //Will apply if annual fee it's a new year, or if this is a regeneration of the student fee that has the latest annual fee
                        && (pe.redu_Last_Annual_Fee_Term__c == pep.rio_ed__Term__c || pe.redu_Last_Annual_Fee_Year__c != pep.rio_ed__Term__r.redu_Academic_Year__c)){
                            annualFeePeIds.add(pe.Id);
                            feeIds.add(pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c);
                        }

                    } else {
                        //Add Error
                        //We can't find a fee if there's no term selected.
                        System.debug('No Term found for Fee reference on PE Pathway (' + pep.Name + '), ' + pep.Id);
                        pepToWorkingSfMap.get(pep.Id).addError('No Term found for Fee reference on PE Pathway (' + pep.Name + ')');
                    }
                }

                //Only continue if there are Student Fees that need to be created
                if (!annualFeePeIds.isEmpty() || !termFeePeIds.isEmpty()){

                    //Get Map of Fees to create Fee Lines for
                    Map<Id, List<Id>> childFeesMap = new Map<Id, List<Id>>();
                    Map<String, rio_ed__Fee_Schedule_Term__c> feeScheduleTermsByFeeTerm = new Map<String, rio_ed__Fee_Schedule_Term__c>();
                    Map<String, String> sfTypeToFeeAmountFieldMap = getStudentFeeTypesAndAmountFields();
                    //Find any possible child fees
                    for (rio_ed__Fee__c childFee : [SELECT Id, rio_ed__Parent_Fee__c FROM rio_ed__Fee__c 
                                                    WHERE rio_ed__Parent_Fee__c IN :feeIds AND rio_ed__Different_Parent_Fee_Label__c = false]){
                        feeIds.add(childFee.Id);
                        //Map PE Pathways to Student Fees, as most of our queries are off fields from PE Pathways
                        if (childFeesMap.containsKey(childFee.rio_ed__Parent_Fee__c)){
                            childFeesMap.get(childFee.rio_ed__Parent_Fee__c).add(childFee.Id);
                        } else {
                            childFeesMap.put(childFee.rio_ed__Parent_Fee__c, new List<Id>{childFee.Id});
                        }
                    }
                    //Get all Fee Schedule information
                    feeScheduleTermsByFeeTerm = getFeeScheduleTerms(termIds, feeIds, sfTypeToFeeAmountFieldMap);

                    //Search for existing, non-repeatable Fee Lines
                    Set<String> con_feeNonRepeatableSet = new Set<String>();
                    for (rio_ed__Fee_Line__c fl : [
                        SELECT Id, rio_ed__Non_repeatable__c, rio_ed__Contact_Id__c, rio_ed__Fee_Id__c
                        FROM rio_ed__Fee_Line__c
                        WHERE rio_ed__Contact_Id__c IN :contactIds
                        AND rio_ed__Student_Fee__r.rio_ed__Void__c = false
                        AND rio_ed__Non_repeatable__c = true
                        AND rio_ed__Void__c = false
                    ]){
                        //Track non-repeatable fees that have been created already
                        if (fl.rio_ed__Non_repeatable__c){
                            con_feeNonRepeatableSet.add(fl.rio_ed__Contact_Id__c + '_' + fl.rio_ed__Fee_Id__c);
                        }
                    }

                    List<rio_ed__Fee_Line__c> insertFlList = new List<rio_ed__Fee_Line__c>();
                    List<hed__Program_Enrollment__c> updatePeList = new List<hed__Program_Enrollment__c>();
                    //Loop through our working list of Student Fees, creating Fee Lines for annual/term fees as needed
                    for (rio_ed__Student_Fee__c workingSf : workingSfMap.values()){

                        hed__Program_Enrollment__c pe = peMap.get(workingSf.rio_ed__Program_Enrollment__c);
                        String fsField = String.isNotBlank(pe.rio_ed__Student_Fee_Type__c) ? sfTypeToFeeAmountFieldMap.get(pe.rio_ed__Student_Fee_Type__c) : DEFAULT_FEE_SCHEDULE_AMOUNT_FIELD;

                        //Term-wise Fee Lines
                        if (termFeePeIds.contains(workingSf.rio_ed__Program_Enrollment__c)){

                            //Look through all child Fees from the Fee Group
                            if (childFeesMap.containsKey(pe.hed__Program_Plan__r.redu_Term_wise_Fee_Group__c)){
                                for (Id childFeeId : childFeesMap.get(pe.hed__Program_Plan__r.redu_Term_wise_Fee_Group__c)){
                                    rio_ed__Fee_Line__c fl = startCreateOtherFeeLine(childFeeId, pepToTermMap.get(workingSf.rio_ed__PE_Pathway__c), pe, feeScheduleTermsByFeeTerm, con_feeNonRepeatableSet, fsField, workingSf.Id, workingSf);
                                    if (fl != null){
                                        insertFlList.add(fl);
                                    }
                                }

                            //If not a fee group, we just use the single fee
                            } else {
                                rio_ed__Fee_Line__c fl = startCreateOtherFeeLine(pe.hed__Program_Plan__r.redu_Term_wise_Fee_Group__c, pepToTermMap.get(workingSf.rio_ed__PE_Pathway__c), pe, feeScheduleTermsByFeeTerm, con_feeNonRepeatableSet, fsField, workingSf.Id, workingSf);
                                if (fl != null){
                                    insertFlList.add(fl);
                                }
                            }
                        }

                        //Annual Fee Lines
                        if (annualFeePeIds.contains(workingSf.rio_ed__Program_Enrollment__c)){
                            Boolean addedAnnualFees = false;
                            //Look through all child Fees from the Fee Group
                            if (childFeesMap.containsKey(pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c)){
                                for (Id childFeeId : childFeesMap.get(pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c)){
                                    rio_ed__Fee_Line__c fl = startCreateOtherFeeLine(childFeeId, pepToTermMap.get(workingSf.rio_ed__PE_Pathway__c), pe, feeScheduleTermsByFeeTerm, con_feeNonRepeatableSet, fsField, workingSf.Id, workingSf);
                                    if (fl != null){
                                        insertFlList.add(fl);
                                        addedAnnualFees = true;
                                    }
                                }

                            //If not a fee group, we just use the single fee
                            } else {
                                rio_ed__Fee_Line__c fl = startCreateOtherFeeLine(pe.hed__Program_Plan__r.redu_Annual_Fee_Group__c, pepToTermMap.get(workingSf.rio_ed__PE_Pathway__c), pe, feeScheduleTermsByFeeTerm, con_feeNonRepeatableSet, fsField, workingSf.Id, workingSf);
                                if (fl != null){
                                    insertFlList.add(fl);
                                    addedAnnualFees = true;
                                }
                            }
                            //Update the Program Enrollment with latest annual fee information
                            if (addedAnnualFees){
                                pe.redu_Last_Annual_Fee_Term__c = pepToTermMap.get(workingSf.rio_ed__PE_Pathway__c);
                                pe.redu_Last_Annual_Fee_Year__c = pepToAnnualFeeYearMap.get(workingSf.rio_ed__PE_Pathway__c);
                                updatePeList.add(pe);
                            }
                        }
                    }

                    //Insert Fee Lines
                    if (!insertFlList.isEmpty()){
                        Database.SaveResult[] saveResultsFl = Database.insert(insertFlList, false);
                        for (Integer i = 0; i < saveResultsFl.size(); i++){
                            //If the insert failed, map error back to triggering Student Fee
                            if (!saveResultsFl[i].isSuccess()){
                                workingSfMap.get(insertFlList[i].rio_ed__Student_Fee__c).addError(saveResultsFl[i].getErrors()[0].getMessage());
                            }
                        }

                        //Any annual fees will need to update some information on the Program Enrollment
                        if (!updatePeList.isEmpty()){
                            Database.SaveResult[] saveResultsPe = Database.update(updatePeList, false);
                            for (Integer i = 0; i < saveResultsPe.size(); i++){
                                //If the update failed, map error back to triggering Student Fee
                                if (!saveResultsPe[i].isSuccess()){
                                    for (rio_ed__Student_Fee__c sf : workingSfMap.values()){
                                        if (sf.rio_ed__Program_Enrollment__c == updatePeList[i].Id){
                                            sf.addError(saveResultsPe[i].getErrors()[0].getMessage());
                                        }
                                    }
                                    
                                }
                            }
                        }

                    }

                }

            }


            
        }

        return dmlWrapper;
    }

    //=================================================================
    //= Re-usable methods
    //=================================================================
    public static final String DEFAULT_FEE_SCHEDULE_AMOUNT_FIELD = 'rio_ed__Fee_Amount_Domestic__c';
    public static final String FEE_SCHEDULE_STATUS_APPROVED = 'Approved';
    /**
     * @description Returns a map of Contact student fee types to Fee amount field api names
     * @return Map<String, String>
     */
    public static Map<String, String> getStudentFeeTypesAndAmountFields(){
        
        Map<String, String> sfTypesMap = new Map<String, String>();
        for (rio_ed__Student_Fee_Type__mdt sfType : [SELECT MasterLabel, rio_ed__Fee_Amount_Field__c FROM rio_ed__Student_Fee_Type__mdt WHERE rio_ed__Inactive__c = false]){
            sfTypesMap.put(sfType.MasterLabel, sfType.rio_ed__Fee_Amount_Field__c);
        }
        return sfTypesMap;
    }

    /**
     * @description Returns a map of Fee Schedule Terms with Fee Amounts
     * @param termIds Terms to search for
     * @param feeIds Fees to search for
     * @param sfTypeToFeeAmountFieldMap value from getStudentFeeTypesAndAmountFields() if it has already been called
     * @return Map<String, rio_ed__Fee_Schedule_Term__c>
     */
    public static Map<String, rio_ed__Fee_Schedule_Term__c> getFeeScheduleTerms(Set<Id> termIds, Set<Id> feeIds, Map<String, String> sfTypeToFeeAmountFieldMap){
        Map<String, rio_ed__Fee_Schedule_Term__c> feeScheduleTermsByFeeTerm = new Map<String, rio_ed__Fee_Schedule_Term__c>();

        if(!termIds.isEmpty() && !feeIds.isEmpty()){

            //Allow us to pass in an existing map if we've already retrieved it
            if (sfTypeToFeeAmountFieldMap == null){
                sfTypeToFeeAmountFieldMap = getStudentFeeTypesAndAmountFields();
            }
            Set<String> feeAmountFieldSet = new Set<String>();
            for (String fsFieldName : sfTypeToFeeAmountFieldMap.values()){
                feeAmountFieldSet.add(fsFieldName);
            }
            //Also include rio_ed__Fee_Amount_Domestic__c as a fallback
            feeAmountFieldSet.add(DEFAULT_FEE_SCHEDULE_AMOUNT_FIELD);

            String soqlQuery = 'SELECT Id, rio_ed__Fee_Schedule__c, rio_ed__Term__c, rio_ed__Fee_Schedule__r.rio_ed__Fee__c, '
                             + 'rio_ed__Fee_Schedule__r.rio_ed__Fee__r.rio_ed__Description__c, '
                             + 'rio_ed__Fee_Schedule__r.rio_ed__Non_repeatable__c, '
                             + 'rio_ed__Fee_Schedule__r.rio_ed__Fee_Description__c, '
                             + 'rio_ed__Fee_Schedule__r.rio_ed__Discountable__c';
            //Add each amount field to the query based on setup in custom metadata type
            for (String fsFieldName : feeAmountFieldSet){
                soqlQuery += ', rio_ed__Fee_Schedule__r.' + fsFieldName;
            }
            soqlQuery += ' FROM rio_ed__Fee_Schedule_Term__c'
                       + ' WHERE rio_ed__Term__c IN :termIds AND rio_ed__Fee_Schedule__r.rio_ed__Fee__c IN :feeIds';
            //Prevents the need to re-update all Fee Schedules in test classes
            if (!Test.isRunningTest()){
                soqlQuery += ' AND rio_ed__Fee_Schedule__r.rio_ed__Status__c = \'' + FEE_SCHEDULE_STATUS_APPROVED + '\''; //Only consider Fee Schedules that are approved
            }
            soqlQuery += ' ORDER BY rio_ed__Fee_Schedule__r.rio_ed__Fee_Start_Date__c DESC';
        
            for (rio_ed__Fee_Schedule_Term__c fst : Database.query(soqlQuery)){

                //group fee schedule term by fee id and term id
                feeScheduleTermsByFeeTerm.put(formatMatchingFSTKey(fst.rio_ed__Fee_Schedule__r.rio_ed__Fee__c, fst.rio_ed__Term__c), fst);
            }
                
        }

        return feeScheduleTermsByFeeTerm;
    }

    /**
     * @description Creates the key for Fee Schedule Term map
     * @param targetFeeId Fee of FST
     * @param targetTermId Term of FST
     * @return String
     */
    public static String formatMatchingFSTKey(Id targetFeeId, Id targetTermId){
        return targetFeeId + '_' + targetTermId;
    }

    /**
    * @description Starts process to return a new Fee Line ready to be inserted. 
    *              Will also set an error against the triggering record if no fee schedule term found
    * @param feeId Fee Id
    * @param termId Term Id
    * @param pe Related Program Enrollment
    * @param feeScheduleTermsByFeeTerm map of fee schedule terms
    * @param con_feeNonRepeatableSet set of existing non-repeatable fee lines
    * @param fsField relevant fee schedule amount field
    * @param sfId Student Fee Id
    * @param tirggerRecord triggering record, for mapping erros back if something goes wrong
    * @return rio_ed__Fee_Line__c
    */
    public static rio_ed__Fee_Line__c startCreateOtherFeeLine(String feeId, String termId, hed__Program_Enrollment__c pe, Map<String, rio_ed__Fee_Schedule_Term__c> feeScheduleTermsByFeeTerm,
                                                               Set<String> con_feeNonRepeatableSet, String fsField, Id sfId, SObject triggerRecord){
        String fee_term = formatMatchingFSTKey(feeId, termId);
        if (feeScheduleTermsByFeeTerm.containsKey(fee_term)){
            
            Boolean createFeeLine = true;
            //If non-repeatable, check that we haven't already got a fee line for it
            if (feeScheduleTermsByFeeTerm.get(fee_term).rio_ed__Fee_Schedule__r.rio_ed__Non_repeatable__c){
                String con_fee = pe.hed__Contact__c + '_' + feeId;
                if (con_feeNonRepeatableSet.contains(con_fee)){
                    createFeeLine = false;
                } else {
                    //Prevent other repeated fee lines in this trigger
                    con_feeNonRepeatableSet.add(con_fee);
                }
            }
            if (createFeeLine){
                return createOtherFeeLine(pe, sfId, feeScheduleTermsByFeeTerm.get(fee_term), fsField);
            }
            
        //Raise an error if no Fee Schedule Term found
        //Updated 17/03/2022 WDCi - RIO Ed label needed new paramList format
        } else {
            List<String> paramList = new List<String>{
                SObjectType.rio_ed__Fee_Schedule_Term__c.getLabel(),
                SObjectType.rio_ed__Fee__c.getLabel(),
                feeId,
                SObjectType.hed__Term__c.getLabel(),
                termId,
                Schema.hed__Program_Plan__c.redu_Annual_Fee_Group__c.getDescribe().getLabel()}; //Should only be using Annual Fee Group, don't need to check term-wise
            String errorMsg = String.format(Label.rio_ed.REDU_Helper_UTIL_No_Fee_Schedule_Term_found, paramList);
            triggerRecord.addError(errorMsg);
        }
        return null;
    }

    /**
    * @description Returns a new Fee Line ready to be inserted
    * @param pe Program Enrollment record
    * @param sfId Student Fee Id
    * @param fst Fee Schedule Term
    * @param fsField Fee Amount field name
    * @return rio_ed__Fee_Line__c
    */
    private static rio_ed__Fee_Line__c createOtherFeeLine(hed__Program_Enrollment__c pe, Id sfId, rio_ed__Fee_Schedule_Term__c fst, String fsField){
        
        rio_ed__Fee_Line__c fl = new rio_ed__Fee_Line__c();
        fl.rio_ed__Student_Fee__c = sfId;
        fl.rio_ed__Other_Amount__c = (Decimal)fst.rio_ed__Fee_Schedule__r.get(fsField);
        //Use Non Tuition Fee Type Option if possible
        if (pe.rio_ed__Non_Tuition_Fee_Type__c != null){
            fl.rio_ed__Other_Fee_Type__c = pe.rio_ed__Non_Tuition_Fee_Type__c;
            fl.rio_ed__Other_Fee_Type_Option__c = pe.rio_ed__Non_Tuition_Fee_Type_Option__c;
        } else {
            fl.rio_ed__Other_Fee_Type__c = pe.rio_ed__Fee_Type__c;
            fl.rio_ed__Other_Fee_Type_Option__c = pe.rio_ed__Fee_Type_Option__c;
        }
        
        fl.rio_ed__Other_Description__c = (String.isBlank(fst.rio_ed__Fee_Schedule__r.rio_ed__Fee_Description__c)) ? fst.rio_ed__Fee_Schedule__r.rio_ed__Fee__r.rio_ed__Description__c : fst.rio_ed__Fee_Schedule__r.rio_ed__Fee_Description__c ;
        fl.rio_ed__Fee_Schedule_Term__c = fst.Id;
        fl.rio_ed__Discountable__c = fst.rio_ed__Fee_Schedule__r.rio_ed__Discountable__c;

        return fl;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Student_Fee__c_redu_SFEE_CustomFees_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_SFEE_CustomFees',
                hed__Object__c = 'rio_ed__Student_Fee__c',
                hed__Load_Order__c = 3,
                hed__Trigger_Action__c = 'AfterInsert;',
                hed__Class__c = 'redu_SFEE_CustomFees_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Student_Fee__c_redu_SFEE_CustomFees_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}