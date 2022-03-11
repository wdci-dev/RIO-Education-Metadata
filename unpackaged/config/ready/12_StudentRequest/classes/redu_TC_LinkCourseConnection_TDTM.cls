/**
 * @author      WDCi (Pasan)
 * @date        Aug 2021
 * @group       RIO Education
 * @description Create/Link Course Connection to Transfer Credit upon status change
 * 
 */
global without sharing class redu_TC_LinkCourseConnection_TDTM extends hed.TDTM_Runnable {

    /**
     * @description Trigger Handler on rio_ed__Transfer_Credit__c to do link CCs
     * @param newList the list of rio_ed__Transfer_Credit__c from trigger new
     * @param oldList the list of rio_ed__Transfer_Credit__c from trigger old
     * @param triggerAction which trigger event (BeforeInsert, AfterInsert, etc.).
     * @param objResult the describe for rio_ed__Transfer_Credit__c
     * @return DmlWrapper
     */
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        String currentObjectName = objResult.getName();

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();
        //System.debug('........... triggerAction '+triggerAction+' objResult '+objResult.getName()+'  >> newList >> '+newList+'  >> oldList >> '+oldList);
        List<rio_ed__Transfer_Credit__c> listChangedTC = new List<rio_ed__Transfer_Credit__c>();
        List<rio_ed__Transfer_Credit__c> listClearTCLink = new List<rio_ed__Transfer_Credit__c>();

        Map<Id, rio_ed__Transfer_Credit__c> mapOld = ((triggerAction == hed.TDTM_Runnable.Action.AfterUpdate || triggerAction == hed.TDTM_Runnable.Action.BeforeUpdate) && currentObjectName=='rio_ed__Transfer_Credit__c') ? new Map<Id, rio_ed__Transfer_Credit__c>((List<rio_ed__Transfer_Credit__c>)oldList) : new Map<Id, rio_ed__Transfer_Credit__c>();

        Set<String> setActiveStatus = redu_TC_CustomSetting_UTIL.getAgreementActiveStatuses();
        
        String whereList2Filter = (triggerAction == hed.TDTM_Runnable.Action.BeforeDelete) ? 'oldList' : 'newList';
        String soqlForMapTCActiveCond = '';
        Set<Id> setPAId = new Set<Id>();

        if (currentObjectName=='rio_ed__Transfer_Credit__c'){
            soqlForMapTCActiveCond = ' Id in :'+ whereList2Filter;
        }
        else {
            // if ((triggerAction == hed.TDTM_Runnable.Action.AfterInsert) || (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate)){ // TC reference is updated at these events
                
            //     for (hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>)newList) {
            //         setPAId.add(pe.rio_ed__ProgramApplication__c);
            //     }
            //     soqlForMapTCActiveCond = ' rio_ed__ProgramApplication__c in :setPAId';
            // }
            // else{       
            //     soqlForMapTCActiveCond = ' rio_ed__Program_Enrollment__c in :'+whereList2Filter;
            // }

            soqlForMapTCActiveCond = ' rio_ed__Program_Enrollment__c in :'+whereList2Filter;
        }
        
        //List<rio_ed__Transfer_Credit__c> lst  = [SELECT Id,(SELECT Id FROM rio_ed__Course_Connections__r) FROM rio_ed__Transfer_Credit__c];

        String soqlForMapTCActive = 'select Id, rio_ed__Program_Enrollment__c, rio_ed__Status__c '+
        ', rio_ed__Transfer_Course__r.rio_ed__Course__c, rio_ed__Completed_Date__c, rio_ed__Transfer_Course__r.rio_ed__Course__r.Name '+
        ', rio_ed__Program_Enrollment__r.hed__Program_Plan__c, rio_ed__Contact__c, rio_ed__Start_Date__c, rio_ed__Term__c '+
        ', rio_ed__PE_Discipline_Requirement_Group__c,rio_ed__PE_Group__c,rio_ed__PE_Group__r.rio_ed__Plan_Requirement__c '+
        ', rio_ed__PE_Discipline_Requirement_Group__r.rio_ed__PE_Discipline__c,rio_ed__PE_Discipline_Requirement_Group__r.Name '+
        ', rio_ed__PE_Discipline_Requirement_Group__r.rio_ed__Credits_Required__c '+
        ', rio_ed__Credits_Attempted__c, rio_ed__Credits_Earned__c,(SELECT Id FROM rio_ed__Course_Connections__r) '+
        ' FROM rio_ed__Transfer_Credit__c '+
        'WHERE '+soqlForMapTCActiveCond+
        ' AND rio_ed__Transfer_Course__r.rio_ed__Agreement__r.rio_ed__Status__c in :setActiveStatus '+
        ' AND rio_ed__Transfer_Course__r.rio_ed__Status__c in :setActiveStatus ';

        //System.debug('soqlForMapTCActive: '+soqlForMapTCActive);
                                                            
        Map<Id, rio_ed__Transfer_Credit__c> mapTCActive = new Map<Id, rio_ed__Transfer_Credit__c>((List<rio_ed__Transfer_Credit__c>)Database.query(soqlForMapTCActive));
        
        Set<String> approvedStatus = redu_TC_CustomSetting_UTIL.getTCApprovedStatuses();

        if ((triggerAction == hed.TDTM_Runnable.Action.BeforeInsert)|| (triggerAction == hed.TDTM_Runnable.Action.BeforeUpdate)){
            if (currentObjectName=='rio_ed__Transfer_Credit__c'){
                setPAId = new Set<Id>();

                Map<Id, Id> mapPAId2ActivePEId = getMapPAId2ActivePEId((List<rio_ed__Transfer_Credit__c>)newList);
                
                // Try to Update PE if not done already
                for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)newList) {
                    if (tc.rio_ed__Program_Application__c!=null && tc.rio_ed__Program_Enrollment__c==null){
                        setPAId.add(tc.rio_ed__Program_Application__c);
                    }
                }

                new Map<Id, Id>();

                for(rio_ed__Program_Application__c pa :[select Id, (select Id from rio_ed__Program_Enrollments__r order by createdDate desc, rio_ed__Program_Status__c desc limit 1)
                FROM rio_ed__Program_Application__c 
                WHERE Id in :setPAId]){
                    for (hed__Program_Enrollment__c pe : pa.rio_ed__Program_Enrollments__r) {
                        mapPAId2ActivePEId.put(pa.Id, pe.Id);
                    }
                }

                //System.debug('>> setPAId: '+setPAId+' mapPAId2ActivePEId: '+mapPAId2ActivePEId+' newList '+newList);

                for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)newList) {
                    if (!approvedStatus.contains(tc.rio_ed__Status__c)){        // Clear Transfer Date if Approved status was changed
                        tc.rio_ed__Transfer_Date__c = null;
                        //continue;
                    }

                    if ((tc.rio_ed__Program_Enrollment__c==null )
                        && (triggerAction == hed.TDTM_Runnable.Action.BeforeInsert || (mapOld.containsKey(tc.Id) && mapOld.get(tc.Id).rio_ed__Program_Enrollment__c==null))){        // Update PE Id if it's empty
                        Id peId = mapPAId2ActivePEId.get(tc.rio_ed__Program_Application__c);

                        if (peId!=null){
                            tc.rio_ed__Program_Enrollment__c = peId;
                        }
                    }
                }
            }
        }
        else if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert){
            if (currentObjectName=='rio_ed__Transfer_Credit__c'){
                for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)newList) {
                    if (tc.rio_ed__Program_Enrollment__c!=null && approvedStatus.contains(tc.rio_ed__Status__c) && mapTCActive.containsKey(tc.Id)){
                        listChangedTC.add(mapTCActive.get(tc.Id));
                    }
                }      
            }
            else if (currentObjectName=='hed__Program_Enrollment__c'){
                
                ///////////////////
                Map<Id, Id> mapPAId2ActivePEId = new Map<Id, Id>();
                
                // Try to Update PE if not done already
                for(hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>)newList) {
                    if (pe.rio_ed__ProgramApplication__c!=null){
                        mapPAId2ActivePEId.put(pe.rio_ed__ProgramApplication__c, pe.Id);
                    }
                }

                List<rio_ed__Transfer_Credit__c> listTC2UpdatePEId = new List<rio_ed__Transfer_Credit__c>();
                if (!mapPAId2ActivePEId.isEmpty()){
                    for (rio_ed__Transfer_Credit__c tc :[SELECT Id FROM rio_ed__Transfer_Credit__c WHERE rio_ed__Program_Enrollment__c=null AND rio_ed__Program_Application__c in :mapPAId2ActivePEId.keySet()]){
                        tc.rio_ed__Program_Enrollment__c = mapPAId2ActivePEId.get(tc.Id);
                        listTC2UpdatePEId.add(tc);
                    }

                    update listTC2UpdatePEId;
                }

                // // Generate CCs for eligible TCs for Current 
                // for(hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>)newList){
                //     if (pe.rio_ed__Program_Status__c=='Current'){
                //         for (rio_ed__Transfer_Credit__c tc : mapTCActive.values()) {  // Program Enrollment has pending TCs to be added
                //             if (tc.rio_ed__Program_Enrollment__c!=null && tc.rio_ed__Program_Enrollment__c==pe.Id && (approvedStatus.contains(tc.rio_ed__Status__c) && tc.rio_ed__Course_Connections__r.size()==0)){ 
                //                 listChangedTC.add(tc);
                //             }
                //         }
                //     }
                // }
                // //setPEIdForRelatedTCs(dmlWrapper, newList);
            }    
        }
        else if (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate){
            if (currentObjectName=='rio_ed__Transfer_Credit__c'){
                for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)newList) {
                    rio_ed__Transfer_Credit__c oldTC = mapOld.get(tc.Id);

                    if (((approvedStatus.contains(tc.rio_ed__Status__c) && !approvedStatus.contains(oldTC.rio_ed__Status__c))
                        || tc.rio_ed__Program_Enrollment__c!=oldTC.rio_ed__Program_Enrollment__c) && mapTCActive.containsKey(tc.Id)){
                            
                            if (tc.rio_ed__Program_Enrollment__c==null){
                                listClearTCLink.add(oldTC);
                            }
                            else{
                                listChangedTC.add(mapTCActive.get(tc.Id));

                                if (tc.rio_ed__Program_Enrollment__c!=oldTC.rio_ed__Program_Enrollment__c){
                                    listClearTCLink.add(oldTC);
                                }
                            }
                    }
                    else if (!approvedStatus.contains(tc.rio_ed__Status__c)){
                        listClearTCLink.add(tc);
                    }
                }   
            }
            else if (currentObjectName=='hed__Program_Enrollment__c'){
                Map<Id, hed__Program_Enrollment__c> mapOldPE = new Map<Id, hed__Program_Enrollment__c>((List<hed__Program_Enrollment__c>)oldList);

                for(hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>)newList){
                    if (pe.rio_ed__Program_Status__c=='Current' && mapOldPE.get(pe.Id).rio_ed__Program_Status__c!=pe.rio_ed__Program_Status__c){
                        for (rio_ed__Transfer_Credit__c tc : mapTCActive.values()) {  // Program Enrollment has pending TCs to be added
                            if (tc.rio_ed__Program_Enrollment__c==pe.Id && (approvedStatus.contains(tc.rio_ed__Status__c) && tc.rio_ed__Course_Connections__r.size()==0)){ 
                                listChangedTC.add(tc);
                            }
                        }
                    }
                }
                //setPEIdForRelatedTCs(dmlWrapper, newList);
            }
        }
        else if (triggerAction == hed.TDTM_Runnable.Action.BeforeDelete){
            if (currentObjectName=='rio_ed__Transfer_Credit__c'){
                for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)oldList){
                    // if (String.isBlank(tc.rio_ed__Status__c) || tc.rio_ed__Status__c=='Draft'){
                    //     listClearTCLink.add(tc);
                    // }
                    // else {
                    //     tc.addError('Cannot delete '+objResult.getLabel()+' with status '+tc.rio_ed__Status__c);
                    // }

                    // Above is validated in component and not show deletion option? should we do this in trigger too

                    if (approvedStatus.contains(tc.rio_ed__Status__c)){
                        listClearTCLink.add(tc);
                    }
                }
            }
            else if (currentObjectName=='hed__Program_Enrollment__c'){               

                List<rio_ed__Transfer_Credit__c> listTC2ClearPELink = new List<rio_ed__Transfer_Credit__c>();

                for (rio_ed__Transfer_Credit__c tc : [select Id from rio_ed__Transfer_Credit__c where rio_ed__Program_Enrollment__c in :oldList]) {
                    tc.rio_ed__Program_Enrollment__c = null;
                    listTC2ClearPELink.add(tc);
                }

                update listTC2ClearPELink;
                // for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)oldList){

                //     // Above should be validated only in component??
                //     if (approvedStatus.contains(tc.rio_ed__Status__c)){
                //         listClearTCLink.add(tc);
                //     }
                // }
            }
        }

        if (listChangedTC.size()>0)
            createLinkToTransferCredits(dmlWrapper,listChangedTC, currentObjectName, new Map<Id, SObject>(newList));
        if (listClearTCLink.size()>0)
            clearTransferCreditsInCC(dmlWrapper, listClearTCLink, currentObjectName, new Map<Id, SObject>(oldList));

        return dmlWrapper;
    }

    static Set<Id> setProcessedTCId = new Set<Id>();    // To avoid any recursions

    private static hed.TDTM_Runnable.DmlWrapper createLinkToTransferCredits(hed.TDTM_Runnable.DmlWrapper dmlWrapper, List<rio_ed__Transfer_Credit__c> listTC, String currentObjectName, Map<Id, SObject> mapNew4TriggerError){

        List<hed__Course_Enrollment__c> listCC = new List<hed__Course_Enrollment__c>();
        //Map<Id, Id> mapCourseId2PathwayId = new Map<Id, Id>();
        Set<Id> setCourseId = new Set<Id>();
        Set<Id> setGroupReqId = new Set<Id>();
        Set<Id> setProgramPlanId = new Set<Id>();
        Set<Id> setPEId = new Set<Id>();
        Map<Id, Id> mapPlanReqGrpId2PlanId = new Map<Id, Id>();
        List<rio_ed__Transfer_Credit__c> listTC2Process = new List<rio_ed__Transfer_Credit__c>();

        for (rio_ed__Transfer_Credit__c tc : listTC) {
            if (setProcessedTCId.contains(tc.Id)) continue;

            setCourseId.add(tc.rio_ed__Transfer_Course__r.rio_ed__Course__c);
            setProgramPlanId.add(tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__c);
            setPEId.add(tc.rio_ed__Program_Enrollment__c);
            setGroupReqId.add(tc.rio_ed__PE_Group__r.rio_ed__Plan_Requirement__c);
            listTC2Process.add(tc);
        }

        List<hed__Plan_Requirement__c> listPR = [SELECT Name, hed__Course__c, hed__Credits__c, hed__Program_Plan__c
                                                ,RecordType.Name, (SELECT Id FROM hed__Plan_Requirements__r WHERE hed__Course__c = null)
                                                ,hed__Plan_Requirement__c
                                                FROM hed__Plan_Requirement__c
                                                WHERE hed__Program_Plan__c in :setProgramPlanId 
                                                AND ((hed__Course__c IN :setCourseId) OR (Id in :setGroupReqId))];
        //System.debug('_____________ setProgramPlanId '+setProgramPlanId+' setCourseId '+setCourseId);
        System.debug('>>> setGroupReqId '+setGroupReqId);
        System.debug('>>> setProgramPlanId '+setProgramPlanId);
        Map<String, hed__Plan_Requirement__c> mapPlanCourseReqKey2PR = new Map<String, hed__Plan_Requirement__c>();
        Map<String, hed__Plan_Requirement__c> mapPlanGroupReqKey2PlanReqWithOrphanChild = new Map<String, hed__Plan_Requirement__c>();  // Map to retrieve Child orphan Plan requirement to get credits to CC
        Set<Id> setPlanGroupChildReqId = new Set<Id>();
        for (hed__Plan_Requirement__c pr : listPR) {
            
            if (pr.hed__Plan_Requirement__c!=null){
                mapPlanReqGrpId2PlanId.put(pr.hed__Plan_Requirement__c, pr.hed__Program_Plan__c);
            }            
            
            if (pr.hed__Course__c!=null){
                mapPlanCourseReqKey2PR.put(pr.hed__Program_Plan__c+'_'+pr.hed__Course__c, pr);
            }
            else{
                mapPlanGroupReqKey2PlanReqWithOrphanChild.put(pr.hed__Program_Plan__c+'_'+pr.Id, pr);
                System.debug('>>> Grp pr children>> size '+pr.hed__Plan_Requirements__r.size()+'>> '+pr.hed__Plan_Requirements__r);
                if (pr.hed__Plan_Requirements__r.size() > 0 ) {      // Orphan Plan requirement under Plan Group Requirment to get credits to CC
                    setPlanGroupChildReqId.add(pr.hed__Plan_Requirements__r[0].Id);
                }
            }
        }

        System.debug('>> mapPlanGroupReqKey2PlanReqWithOrphanChild '+mapPlanGroupReqKey2PlanReqWithOrphanChild);
        System.debug('>> setPlanGroupChildReqId '+setPlanGroupChildReqId);

        // Get Created PE Groups
        List<rio_ed__PE_Group_Status__c> listPEGroup = [SELECT rio_ed__Program_Enrollment__c, rio_ed__Plan_Requirement__c 
        ,rio_ed__Plan_Requirement__r.hed__Program_Plan__c
        FROM rio_ed__PE_Group_Status__c 
        WHERE rio_ed__Program_Enrollment__c in :setPEId AND rio_ed__Plan_Requirement__c in :mapPlanReqGrpId2PlanId.keySet()];
        //WHERE rio_ed__Program_Enrollment__r.hed__Program_Plan__c in :setProgramPlanId AND rio_ed__Plan_Requirement__c in :mapPlanReqGrpId2PlanId.keySet()];

        Map<String, rio_ed__PE_Group_Status__c> mapPlanReqGrp2PEGroup = new Map<String, rio_ed__PE_Group_Status__c>();
        
        for (rio_ed__PE_Group_Status__c peg : listPEGroup) {
            mapPlanReqGrp2PEGroup.put(peg.rio_ed__Program_Enrollment__c+'_'+peg.rio_ed__Plan_Requirement__c, peg);
        }
        System.debug('VTEST HERE :: '+ listPEGroup);

        // Get already created Course connections against Plan requirements
        Map<String, hed__Course_Enrollment__c> mapExistingCC = new Map<String, hed__Course_Enrollment__c>();
        
        for(hed__Course_Enrollment__c cc :[SELECT Id, hed__Program_Enrollment__c,rio_ed__Plan_Requirement_Course__c, rio_ed__Transfer_Credit__c 
        FROM hed__Course_Enrollment__c WHERE hed__Program_Enrollment__c IN :setPEId 
        AND (rio_ed__Plan_Requirement_Course__r.hed__Course__c IN :setCourseId OR rio_ed__Transfer_Credit__c in :listTC)]){
            if (cc.rio_ed__Plan_Requirement_Course__c!=null)    
                mapExistingCC.put(cc.hed__Program_Enrollment__c+'_'+cc.rio_ed__Plan_Requirement_Course__c, cc);
            else
                mapExistingCC.put(cc.hed__Program_Enrollment__c+'_'+cc.rio_ed__Transfer_Credit__c, cc);
        }

        System.debug('>> mapExistingCC '+mapExistingCC);

        Map<Integer, hed__Plan_Requirement__c> mapCCIdx2PRGrp = new Map<Integer, hed__Plan_Requirement__c>();

        // Ready to create Course connections
        for (rio_ed__Transfer_Credit__c tc : listTC2Process) {            
            //String pathwayCourseKey = tc.rio_ed__Transfer_Course__r.rio_ed__Course__c+'_'+tc.rio_ed__Program_Enrollment__r.rio_ed__Program_Pathway__c;
            //rio_ed__Pathway_Unit__c pu = mapPathwayCourse2PU.get(pathwayCourseKey);
            hed__Plan_Requirement__c pr = null;
            if (tc.rio_ed__Transfer_Course__r.rio_ed__Course__c!=null){ // Course based Plan Requirement
                pr  = mapPlanCourseReqKey2PR.get(tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__c+'_'+tc.rio_ed__Transfer_Course__r.rio_ed__Course__c);
                if (pr==null) { 
                    addTriggerErrorMessage(currentObjectName, mapNew4TriggerError, tc, 'Could not find matching plan requirement for Course '+tc.rio_ed__Transfer_Course__r.rio_ed__Course__r.Name ); 
                    continue;
                }
            }
            else{   // Group requirement's single child requirement holding credits for Non Course Requirement based Course connections (For PE Group Requirement)
                pr = mapPlanGroupReqKey2PlanReqWithOrphanChild.get(tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__c+'_'+tc.rio_ed__PE_Group__r.rio_ed__Plan_Requirement__c);
            }

            System.debug('>> tc.rio_ed__Transfer_Course__r.rio_ed__Course__c '+tc.rio_ed__Transfer_Course__r.rio_ed__Course__c+' pr '+pr);
            System.debug('>> lookfor: '+tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__c+'_'+tc.rio_ed__PE_Group__r.rio_ed__Plan_Requirement__c);

            if (pr!=null){
                hed__Course_Enrollment__c cc = null;
                
                if (tc.rio_ed__PE_Group__c==null)       // Plan requirement based CC
                    cc = mapExistingCC.get(tc.rio_ed__Program_Enrollment__c+'_'+pr.Id);
                else        // PE Group based CC
                    cc = mapExistingCC.get(tc.rio_ed__Program_Enrollment__c+'_'+tc.Id);

                if (cc!=null){ // Don't create if CC is already created, just update the attributes if they don't have values appropriately
                    if (cc.rio_ed__Transfer_Credit__c!=tc.Id){
                        if (pr==null) { 
                            addTriggerErrorMessage(currentObjectName, mapNew4TriggerError, tc, 'Transfer Credit with Id '+cc.Id +' already exists for this Course.' ); 
                            continue;
                        }
                    }
                    cc.rio_ed__Credit_Transfer_Received__c = true;
                    //cc.hed__Credits_Attempted__c = pr.hed__Credits__c ;//   Updated from Compl engine
                    //cc.hed__Credits_Earned__c = pr.hed__Credits__c;    // Updated from Compl engine
                    if (tc.rio_ed__Completed_Date__c!=null){
                        cc.rio_ed__End_Date__c = tc.rio_ed__Completed_Date__c;
                    }
                    if (tc.rio_ed__Start_Date__c!=null){
                        cc.rio_ed__Start_Date__c = tc.rio_ed__Start_Date__c;
                    }
                    if (tc.rio_ed__Term__c!=null){
                        cc.rio_ed__Historical_Term__c = tc.rio_ed__Term__c;
                    }
                    
                    cc.hed__Credits_Attempted__c = tc.rio_ed__Credits_Attempted__c; 
                    cc.hed__Credits_Earned__c = tc.rio_ed__Credits_Earned__c;     
                    
                    cc.rio_ed__Grade_Result__c = redu_TC_CustomSetting_UTIL.getGradeResultForCC();
                    cc.rio_ed__Enrollment_Status__c = 'Completed';
                    cc.rio_ed__Transfer_Credit__c = tc.Id;
                    cc.rio_ed__Release_Grades__c = redu_TC_CustomSetting_UTIL.getReleaseGrades();

                    //--Group based CC don't need plan req, hence commented below Logic --//
                    // if (tc.rio_ed__PE_Group__c!=null){       // PE Group based CCs usually shoudln't exist, updating to be safe if they decide to change existing grp and re-approve
                    //     cc.rio_ed__PE_Group__c = tc.rio_ed__PE_Group__c;
                    //     System.debug('updating CC>>> pr '+pr);
                    //     if (pr.hed__Plan_Requirements__r.size()>0){
                    //         cc.rio_ed__Plan_Requirement_Course__c = pr.hed__Plan_Requirements__r[0].Id;
                    //     }
                    //     else {  // Add to Map to create Orphan Plan requirements
                    //         mapCCIdx2PRGrp.put(listCC.size(), pr);
                    //     }
                    // }

                    listCC.add(cc);      
                }
                else{
                    // Generate CCs
                    cc = new hed__Course_Enrollment__c(hed__Contact__c = tc.rio_ed__Contact__c
                    , rio_ed__Credit_Transfer_Received__c = true
                    , rio_ed__Release_Grades__c = redu_TC_CustomSetting_UTIL.getReleaseGrades()
                    //, hed__Credits_Attempted__c = pr.hed__Credits__c //   Updated from Compl engine
                    //, hed__Credits_Earned__c = pr.hed__Credits__c    // Updated from Compl engine
                    , rio_ed__End_Date__c = tc.rio_ed__Completed_Date__c
                    , rio_ed__Start_Date__c = tc.rio_ed__Start_Date__c
                    , rio_ed__Historical_Term__c = tc.rio_ed__Term__c
                    , rio_ed__Enrollment_Status__c = 'Completed'
                    , rio_ed__PE_Group__c = tc.rio_ed__PE_Group__c
                    //, hed__Grade__c =  // Not required for Credit Transfer ??
                    //, rio_ed__Grade_Value__c =  //  Not required for Credit Transfer ??
                    //, rio_ed__PE_Pathway__c = null // PE Pathway   Not needed for Credit Transfer??
                    //, rio_ed__Plan_Requirement_Course__c = pr.Id // PE Pathway unit's Plan Req
                    , hed__Program_Enrollment__c = tc.rio_ed__Program_Enrollment__c
                    , RecordTypeId = redu_TC_CustomSetting_UTIL.getCourseConnectionStudentRecordTypeId()
                    , rio_ed__Grade_Result__c = redu_TC_CustomSetting_UTIL.getGradeResultForCC());
                    
                    // if (tc.rio_ed__PE_Group__c==null){
                    //     cc.hed__Credits_Attempted__c = pr.hed__Credits__c; //   Updated from Compl engine
                    //     cc.hed__Credits_Earned__c = pr.hed__Credits__c;    // Updated from Compl engine
                    // }
                    // else {
                        cc.hed__Credits_Attempted__c = tc.rio_ed__Credits_Attempted__c; 
                        cc.hed__Credits_Earned__c = tc.rio_ed__Credits_Earned__c;     
                    // }                    

                    cc.rio_ed__Transfer_Credit__c = tc.Id;

                    if (tc.rio_ed__PE_Group__c==null){  // Course based CC
                        cc.rio_ed__Plan_Requirement_Course__c = pr.Id; // PE Pathway unit's Plan Req
                        System.debug('VTEST HERE :: '+ tc.rio_ed__Program_Enrollment__c+'_'+pr.hed__Plan_Requirement__c);

                        rio_ed__PE_Group_Status__c peg = mapPlanReqGrp2PEGroup.get(tc.rio_ed__Program_Enrollment__c+'_'+pr.hed__Plan_Requirement__c);
                        if (peg!=null){
                            cc.rio_ed__PE_Group__c = peg.Id;
                            listCC.add(cc);
                        }
                    }
                    else {          // Group based CC
                        //--Group based CC don't need plan req, hence commented below Logic --//
                        // if (pr.hed__Plan_Requirements__r.size()>0){
                        //     cc.rio_ed__Plan_Requirement_Course__c = pr.hed__Plan_Requirements__r[0].Id;
                        // }
                        // else {  // Add to Map to create Orphan Plan requirements
                        //     mapCCIdx2PRGrp.put(listCC.size(), pr);
                        // }

                        listCC.add(cc);
                    }
                }
            }
        }


        System.debug('updating listCC>> '+listCC);
        Map<Integer, hed__Plan_Requirement__c> mapCCIdx2PRCourse = new Map<Integer, hed__Plan_Requirement__c>();

        if (!listCC.isEmpty()){
            //--Group based CC don't need plan req, hence commented below Logic --//
            // // Create Plan requirements for Records which don't have plan requirements
            // if (!mapCCIdx2PRGrp.isEmpty()){
            //     Id rtPRGrpId = Schema.SObjectType.hed__Plan_Requirement__c.getRecordTypeInfosByDeveloperName().get('Course').getRecordTypeId();

            //     for (Integer idx : mapCCIdx2PRGrp.keySet()) {
            //         hed__Plan_Requirement__c grpPR = mapCCIdx2PRGrp.get(idx);
            //         mapCCIdx2PRCourse.put(idx, new hed__Plan_Requirement__c(RecordTypeId = rtPRGrpId, Name = grpPR.Name,hed__Program_Plan__c = grpPR.hed__Program_Plan__c, hed__Category__c='Optional', hed__Plan_Requirement__c = grpPR.Id, rio_ed__Hide_in_Enrollment__c=true, hed__Credits__c = listCC[idx].hed__Credits_Attempted__c));
            //     }

            //     // Create Plan requirements for Req. Groups
            //     insert mapCCIdx2PRCourse.values();

            //     for (Integer idx : mapCCIdx2PRCourse.keySet()) {    // Update CCs with Plan requirement
            //         listCC[idx].rio_ed__Plan_Requirement_Course__c = mapCCIdx2PRCourse.get(idx).Id;
            //     }
            // }

            upsert listCC;
            Id rtPeDiscReqGrpId = Schema.SObjectType.rio_ed__PE_Discipline_Requirement__c.getRecordTypeInfosByDeveloperName().get('Group').getRecordTypeId();

            Map<Id, rio_ed__Transfer_Credit__c> mapTC = new Map<Id, rio_ed__Transfer_Credit__c>(listTC);
            List<rio_ed__PE_Discipline_Requirement__c> listPEDR = new List<rio_ed__PE_Discipline_Requirement__c>();

            Map<String, rio_ed__PE_Discipline_Requirement__c> mapExistingPEDR = new Map<String, rio_ed__PE_Discipline_Requirement__c>();

            for (rio_ed__PE_Discipline_Requirement__c pedr : [SELECT rio_ed__Course_Connection__c, rio_ed__PE_Discipline__c
            ,rio_ed__Program_Enrollment_Id__c, rio_ed__Parent__c
            FROM rio_ed__PE_Discipline_Requirement__c WHERE rio_ed__Course_Connection__c in :listCC AND RecordTypeId = :rtPeDiscReqGrpId]) {
                mapExistingPEDR.put(pedr.rio_ed__Program_Enrollment_Id__c+'_'+pedr.rio_ed__PE_Discipline__c+'_'+pedr.rio_ed__Parent__c+'_'+pedr.rio_ed__Course_Connection__c, pedr);
            }

            for (hed__Course_Enrollment__c cc : listCC) {
                rio_ed__Transfer_Credit__c tc = mapTC.get(cc.rio_ed__Transfer_Credit__c);

                if (tc!=null && tc.rio_ed__PE_Discipline_Requirement_Group__c!=null) {
                    rio_ed__PE_Discipline_Requirement__c pedr = mapExistingPEDR.get(tc.rio_ed__Program_Enrollment__c+'_'+tc.rio_ed__PE_Discipline_Requirement_Group__c+'_'+tc.rio_ed__PE_Discipline_Requirement_Group__r.rio_ed__PE_Discipline__c+cc.Id);
                    if (pedr==null){
                        pedr = new rio_ed__PE_Discipline_Requirement__c(rio_ed__Course_Connection__c = cc.Id, Name = tc.rio_ed__PE_Discipline_Requirement_Group__r.Name);
                        pedr.rio_ed__PE_Discipline__c = tc.rio_ed__PE_Discipline_Requirement_Group__r.rio_ed__PE_Discipline__c;
                        //pedr.rio_ed__Credits_Earned__c = tc.rio_ed__PE_Discipline_Requirement_Group__r.rio_ed__Credits_Required__c;
                        pedr.rio_ed__Credits_Earned__c = tc.rio_ed__Credits_Earned__c;
                        pedr.rio_ed__Parent__c = tc.rio_ed__PE_Discipline_Requirement_Group__c;
                        pedr.rio_ed__Complete__c = true;
                        //listPEDR.add(pedr);
                    }
                    else {
                        pedr.rio_ed__Credits_Earned__c = tc.rio_ed__Credits_Earned__c;
                        pedr.rio_ed__Complete__c = true;
                    }
                    
                    listPEDR.add(pedr);
                }
            }
            upsert listPEDR;
            System.debug('>> listPEDR '+listPEDR);
        }

        List<rio_ed__Transfer_Credit__c> listTC2Update = new List<rio_ed__Transfer_Credit__c>();

        for(hed__Course_Enrollment__c cc :listCC){
            setProcessedTCId.add(cc.rio_ed__Transfer_Credit__c);
            listTC2Update.add(new rio_ed__Transfer_Credit__c(Id = cc.rio_ed__Transfer_Credit__c, rio_ed__Transfer_Date__c = Date.today()));
        }

        update listTC2Update;

        return dmlWrapper;
    }

    private static void addTriggerErrorMessage(String currentObjectName, Map<Id, SObject> mapNew4TriggerError, rio_ed__Transfer_Credit__c tc,String message){
        SObject so = mapNew4TriggerError.get(((currentObjectName=='hed__Program_Enrollment__c') ? tc.rio_ed__Program_Enrollment__c : tc.Id));
        if (so!=null){ 
            so.addError(message); 
        }
    }//throw new redu_ApplicationException('Could not find matching plan requirement for Course '+tc.rio_ed__Transfer_Course__r.rio_ed__Course__r.Name);

    private static hed.TDTM_Runnable.DmlWrapper clearTransferCreditsInCC(hed.TDTM_Runnable.DmlWrapper dmlWrapper, List<rio_ed__Transfer_Credit__c> listTC, String currentObjectName, Map<Id, SObject> mapNew4TriggerError){
        
        //System.debug('Clear clearTransferCreditsInCC>> listTC : '+listTC);

        List<rio_ed__Transfer_Credit__c> listTC2Clear = [SELECT Id
        ,(SELECT Id, rio_ed__Transfer_Credit__r.rio_ed__PE_Discipline_Requirement_Group__c FROM rio_ed__Course_Connections__r)
        FROM rio_ed__Transfer_Credit__c WHERE Id in :listTC];

        List<hed__Course_Enrollment__c> listCC2Upd = new List<hed__Course_Enrollment__c>();
        Set<Id> setPEDiscGroupId = new Set<Id>();

        for (rio_ed__Transfer_Credit__c tc : listTC2Clear) {
            // Update CCs clearing the values, etc.
            for (hed__Course_Enrollment__c cc : tc.rio_ed__Course_Connections__r) {
                cc.rio_ed__Credit_Transfer_Received__c = false;
                cc.hed__Credits_Attempted__c = null ;
                cc.hed__Credits_Earned__c = null;    
                cc.rio_ed__End_Date__c = null;
                cc.rio_ed__Start_Date__c = null;
                cc.rio_ed__Historical_Term__c = '';

                cc.rio_ed__Grade_Result__c = null;
                cc.rio_ed__Release_Grades__c = false;

                if (cc.rio_ed__Transfer_Credit__r.rio_ed__PE_Discipline_Requirement_Group__c !=null){
                    setPEDiscGroupId.add(cc.rio_ed__Transfer_Credit__r.rio_ed__PE_Discipline_Requirement_Group__c);
                }

                listCC2Upd.add(cc);
            }
        }
        if (!listCC2Upd.isEmpty()){
            update listCC2Upd;

            // Clear applicable PE Discipline Req records
            List<rio_ed__PE_Discipline_Requirement__c> listPEDR = [SELECT Id FROM rio_ed__PE_Discipline_Requirement__c 
            WHERE rio_ed__Course_Connection__c in :listCC2Upd AND rio_ed__Parent__c in :setPEDiscGroupId];

            delete listPEDR;
        }

        return dmlWrapper;
    }

    private static Map<Id,Id> getMapPAId2ActivePEId(List<rio_ed__Transfer_Credit__c> listTC){
        Set<Id> setPAId = new Set<Id>();

        for(rio_ed__Transfer_Credit__c tc : listTC) {
            if (tc.rio_ed__Program_Application__c!=null){
                setPAId.add(tc.rio_ed__Program_Application__c);
            }
        }

        return getMapPAId2ActivePEId(setPAId);
    }

    private static Map<Id,Id> getMapPAId2ActivePEId(List<hed__Program_Enrollment__c> listPE){
        Set<Id> setPAId = new Set<Id>();

        for(hed__Program_Enrollment__c pe : listPE) {
            if (pe.rio_ed__ProgramApplication__c!=null){
                setPAId.add(pe.rio_ed__ProgramApplication__c);
            }
        }

        return getMapPAId2ActivePEId(setPAId);
    }

    private static Map<Id,Id> getMapPAId2ActivePEId(Set<Id> setPAId){
        Map<Id, Id> mapPAId2ActivePEId = new Map<Id, Id>();

        for(rio_ed__Program_Application__c pa :[select Id, (select Id from rio_ed__Program_Enrollments__r order by createdDate desc, rio_ed__Program_Status__c desc limit 1)
        FROM rio_ed__Program_Application__c 
        WHERE Id in :setPAId]){
            for (hed__Program_Enrollment__c pe : pa.rio_ed__Program_Enrollments__r) {
                mapPAId2ActivePEId.put(pa.Id, pe.Id);
            }
        }

        return mapPAId2ActivePEId;
    }
     
    // private static hed.TDTM_Runnable.DmlWrapper setPEIdForRelatedTCs(hed.TDTM_Runnable.DmlWrapper dmlWrapper, List<hed__Program_Enrollment__c> listPE){
    //     Map<Id, Id> mapPAId2ActivePEId = getMapPAId2ActivePEId(listPE);

    //     List<rio_ed__Transfer_Credit__c> listTC2Upd = new List<rio_ed__Transfer_Credit__c>();

    //     for(rio_ed__Transfer_Credit__c tc : [select Id, rio_ed__Program_Application__c from rio_ed__Transfer_Credit__c 
    //     where rio_ed__Program_Application__c in :mapPAId2ActivePEId.keyset() and rio_ed__Program_Enrollment__c = null]) {

    //         Id PEId = mapPAId2ActivePEId.get(tc.rio_ed__Program_Application__c);
    //         if (PEId!=null){
    //             tc.rio_ed__Program_Enrollment__c = PEId;
    //             listTC2Upd.add(tc);
    //         }
    //     }

    //     update listTC2Upd;

    //     return dmlWrapper;
    // }

}