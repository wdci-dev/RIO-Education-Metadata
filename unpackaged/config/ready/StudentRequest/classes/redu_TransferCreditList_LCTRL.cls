/**
 * @description       : Perform Transfer Credit list backend functions
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : RIO Education
 * @last modified on  : 03-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
public with sharing class redu_TransferCreditList_LCTRL {

    private static final Set<String> SET_TRANSFER_CREDITS_REQUIRED_FIELDS = new Set<String>{'rio_ed__Program_Application__c'
    ,'rio_ed__Transfer_Course__r.rio_ed__Agreement__r.rio_ed__Partner_External_Educational_Institution__c'
    ,'rio_ed__Transfer_Course__r.rio_ed__Course__c'
    ,'rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name'
    ,'rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c'
    ,'rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c'
    ,'rio_ed__Credits_Attempted__c'
    ,'rio_ed__Credits_Earned__c'
    ,'rio_ed__Status__c'
    ,'rio_ed__Grade__c'
    ,'rio_ed__Start_Date__c'
    ,'rio_ed__Completed_Date__c'
    ,'rio_ed__Term__c'
    ,'rio_ed__Program_Enrollment__c'
    ,'rio_ed__Educational_Qualification__c'
    };

    
    private static final Set<String> SET_TRANSFER_CREDITS_APPROVAL_ADDON_FIELDS = new Set<String>{'rio_ed__PE_Discipline_Requirement_Group__c'
    ,'rio_ed__PE_Discipline_Requirement_Group__r.Name'
    ,'rio_ed__PE_Group__r.Name'
    ,'rio_ed__PE_Group__c'
    };

    public static final String CONTEXT_TRANSFERCREDIT = 'TRANSFERCREDIT_STUDENTVIEW';
    public static final String CONTEXT_TRANSFERCREDIT_APPROVAL = 'TRANSFERCREDIT_APPROVAL';
    
    /**
    * @description 
    * @author Pasan (peeriyagama@wdcigroup.net) | 29-07-2021 
    * @param String inputParamsJSON 
    * @return UIWrapper 
    **/
    @AuraEnabled
    public static UIWrapper getTCWList(String inputParamsJSON){
        InputParams input = null;
        UIWrapper uiw = new UIWrapper();
        //System.debug('getTCWList(String inputParamsJSON): '+inputParamsJSON);
        try {
            input = (InputParams) JSON.deserialize(inputParamsJSON, InputParams.class);
            
            String primaryObjFldName = '';
            
            Set<String> setQueryFields = SET_TRANSFER_CREDITS_REQUIRED_FIELDS;

            // Get Primary Record
            if (input.context==CONTEXT_TRANSFERCREDIT){
                uiw.primaryRecordId = input.primaryRecordId;
            
                if (String.isBlank(uiw.primaryRecordId)){ return getReturnError(uiw,'Invalid or Empty Record Id: '+input.primaryRecordId);}
    
                uiw.primaryRecordObjectType = uiw.primaryRecordId.getSobjectType().getDescribe().getName();          
                System.debug('>> Primary object type: '+uiw.primaryRecordObjectType);
                String primaryRecordObjectLabel = uiw.primaryRecordId.getSobjectType().getDescribe().getLabel();
    
                primaryObjFldName = uiw.primaryRecordObjectType;

                if (uiw.primaryRecordObjectType=='rio_ed__Program_Application__c'){
                    for(rio_ed__Program_Application__c f :[select Id,rio_ed__Applicant__c from rio_ed__Program_Application__c where Id = :input.primaryRecordId]){
                        uiw.primaryRecordId = f.Id;
                        uiw.contactId = f.rio_ed__Applicant__c;
                    }
                }
                else if (uiw.primaryRecordObjectType=='hed__Program_Enrollment__c'){
                    for(hed__Program_Enrollment__c f :[select Id,hed__Contact__c from hed__Program_Enrollment__c where Id = :input.primaryRecordId]){
                        uiw.primaryRecordId = f.Id;
                        uiw.contactId = f.hed__Contact__c;
                    }
                    primaryObjFldName = 'rio_ed__Program_Enrollment__c';
                }
                else if (uiw.primaryRecordObjectType=='rio_ed__Educational_Qualification__c'){
                    for(rio_ed__Educational_Qualification__c f :[select Id,rio_ed__Contact__c from rio_ed__Educational_Qualification__c where Id = :input.primaryRecordId]){
                        uiw.primaryRecordId = f.Id;
                        uiw.contactId = f.rio_ed__Contact__c;
                    }
                }

                if (uiw.primaryRecordId==null){ return getReturnError(uiw, primaryRecordObjectLabel+' with Id '+input.primaryRecordId+' does not exist');}
            }
            else {
                setQueryFields.addAll(SET_TRANSFER_CREDITS_APPROVAL_ADDON_FIELDS);
            }

            List<FieldDefWrapper> listFD2Query = new List<FieldDefWrapper>();           

            if (String.isNotBlank(input.fieldListString)){
                for (String str : input.fieldListString.split(',')) {
                    str = str.trim();
                    FieldDefWrapper fd = getFieldDefinition('rio_ed__Transfer_Credit__c', str);
                    setQueryFields.add(fd.relationalFieldAPIName);
                    
                    if (fd.fieldType=='ID' || fd.fieldType=='REFERENCE'){	// If Field type is ID, then get Name field as the display value for Reference field
                        String idFieldName = fd.relationalFieldAPIName;
                        if (idFieldName.contains('.')){
                            idFieldName = idFieldName.replace('.'+idFieldName.substringAfterLast('.'),'.Name');
                        }
                        else if (idFieldName.endsWith('__c')){      // Custom object 
                            idFieldName = idFieldName.replace('__c', '__r.Name');
                        }
                        else if (idFieldName=='Id'){       // Current obj. Id and a Std object 
                            idFieldName = 'Name';
                        }
                        else {
                            idFieldName = idFieldName + '.Name';
                        }

                        fd.alternateFld = getFieldDefinition('rio_ed__Transfer_Credit__c', idFieldName);
                        setQueryFields.add(fd.alternateFld.relationalFieldAPIName);
                    }

                    UIW.listFDW.add(fd);
                }  
            } 
            
            String whereCondition = '';

            if(input.context==CONTEXT_TRANSFERCREDIT){
                whereCondition = primaryObjFldName+' = \''+input.primaryRecordId+'\' ';
            }
            //-------------------test PE----------------- DELETE BELOW LINE AFTER TESTING
            //whereCondition = ' rio_ed__Program_Enrollment__c = \'a0J1h000003is2QEAQ\' ';
            //-------------------test PE-----------------

            
            if (String.isNotBlank(input.filterCondition)){  // Add Extra Filter from UI component input config.
                whereCondition = ((String.isBlank(whereCondition)) ? '': whereCondition + ' AND ') + ' ( '+ input.filterCondition +' ) '  ;
            }

            if (String.isNotBlank(whereCondition)){
                whereCondition = ' WHERE '+whereCondition;
            }

            String soqlStr = 'SELECT '+ String.join(new List<String>(setQueryFields), ', ') + ' FROM rio_ed__Transfer_Credit__c '+whereCondition+' WITH SECURITY_ENFORCED ';           
            
            soqlStr+=' ORDER BY Name';
            
            System.debug('>>> soqlStr:whereCondition '+whereCondition);

            List<rio_ed__Transfer_Credit__c> listTC = Database.query(soqlStr);

            // Get Unique PEs to read PE Groups, PE Discipline Groups
            Map<Id, List<rio_ed__PE_Group_Status__c>> mapPEId2PEGrpList = new Map<Id, List<rio_ed__PE_Group_Status__c>>();
            Map<Id, List<rio_ed__PE_Discipline_Requirement__c>> mapPEId2PEDiscReqGrpList = new Map<Id, List<rio_ed__PE_Discipline_Requirement__c>>();

            if (input.context==CONTEXT_TRANSFERCREDIT_APPROVAL){

                Set<Id> setPEId = new Set<Id>();
                Set<Id> setPAIdWithNoPE = new Set<Id>();

                // Get PE Ids to find Pe Groups and PE Disc. groups
                for (rio_ed__Transfer_Credit__c tc : listTC) {
                    if (tc.rio_ed__Program_Enrollment__c==null){
                        if (tc.rio_ed__Program_Enrollment__c!=null)
                            setPAIdWithNoPE.add(tc.rio_ed__Program_Application__c);
                    }
                    else {
                        setPEId.add(tc.rio_ed__Program_Enrollment__c);
                    }
                }

                // Also Attempt to update PE Id if not updated yet
                Map<Id, rio_ed__Program_Application__c> mapPA = new Map<Id, rio_ed__Program_Application__c>([SELECT Id,(SELECT Id,Name FROM rio_ed__Program_Enrollments__r WHERE rio_ed__Program_Status__c IN ('Draft','Current') ORDER BY CreatedDate DESC LIMIT 1) 
                FROM rio_ed__Program_Application__c WHERE Id in :setPAIdWithNoPE]);
                for (rio_ed__Transfer_Credit__c tc : listTC) {
                    if (tc.rio_ed__Program_Enrollment__c==null){
                        rio_ed__Program_Application__c pa = mapPA.get(tc.rio_ed__Program_Application__c); 
                        
                        if (pa!=null && pa.rio_ed__Program_Enrollments__r.size()>0){
                            tc.rio_ed__Program_Enrollment__c = pa.rio_ed__Program_Enrollments__r[0].Id;
                            tc.rio_ed__Program_Enrollment__r = pa.rio_ed__Program_Enrollments__r[0];        // For related name to be diaplayed on datatable etc. if PE is not updated yet
                            setPEId.add(tc.rio_ed__Program_Enrollment__c);
                        }
                    }
                }

                //Map<Id, hed__Program_Enrollment__c> mapPE = new Map<Id, hed__Program_Enrollment__c>([SELECT Id, (SELECT Id,Name FROM rio_ed__Program_Group_Statuses__r) FROM hed__Program_Enrollment__c]);
                
                // PE Groups
                for (rio_ed__PE_Group_Status__c peg : [SELECT Id, Name, rio_ed__Program_Enrollment__c, (SELECT Id FROM rio_ed__Course_Connections__r) FROM rio_ed__PE_Group_Status__c WHERE rio_ed__Program_Enrollment__c in :setPEId ORDER BY rio_ed__Program_Enrollment__c, Name]){
                    //if (peg.rio_ed__Course_Connections__r==0){  // PE Group req. without linked CC
                    //}
                    List<rio_ed__PE_Group_Status__c> listPEG = mapPEId2PEGrpList.get(peg.rio_ed__Program_Enrollment__c);
                    if (listPEG==null){
                        listPEG = new List<rio_ed__PE_Group_Status__c>{peg};
                    }
                    else {
                        listPEG.add(peg);
                    }
                    mapPEId2PEGrpList.put(peg.rio_ed__Program_Enrollment__c, listPEG);
                }

                // PE Discipline Req. Groups
                for (rio_ed__PE_Discipline_Requirement__c pedg : [SELECT Id, Name, rio_ed__PE_Discipline__r.rio_ed__Program_Enrollment__c FROM rio_ed__PE_Discipline_Requirement__c WHERE RecordType.Name='Group' AND rio_ed__PE_Discipline__r.rio_ed__Program_Enrollment__c in :setPEId ORDER BY rio_ed__PE_Discipline__r.rio_ed__Program_Enrollment__c, Name]){

                    List<rio_ed__PE_Discipline_Requirement__c> listPEDG = mapPEId2PEDiscReqGrpList.get(pedg.rio_ed__PE_Discipline__r.rio_ed__Program_Enrollment__c);
                    if (listPEDG==null){
                        listPEDG = new List<rio_ed__PE_Discipline_Requirement__c>{pedg};
                    }
                    else {
                        listPEDG.add(pedg);
                    }

                    mapPEId2PEDiscReqGrpList.put(pedg.rio_ed__PE_Discipline__r.rio_ed__Program_Enrollment__c, listPEDG);
                }
            }
            
            // Record list for UX
            for (rio_ed__Transfer_Credit__c tc : listTC) {
                TCWrapper tcw = new TCWrapper(tc, UIW.listTCW.size());
                tcw.primaryRecordObjectType = UIW.primaryRecordObjectType;

                if (input.context==CONTEXT_TRANSFERCREDIT_APPROVAL && tc.rio_ed__Program_Enrollment__c!=null){    // Set PE Groups/PE Discipline Groups for selection by internal Admins
                    tcw.listPEG = mapPEId2PEGrpList.get(tc.rio_ed__Program_Enrollment__c);
                    tcw.listPEDG = mapPEId2PEDiscReqGrpList.get(tc.rio_ed__Program_Enrollment__c);
                }
                UIW.listTCW.add(tcw);
            }

        } catch (Exception e) {
            throw new AuraHandledException(e.getLineNumber() +' - '+e.getMessage());
        }

        return uiw;
    }

    private static UIWrapper getReturnError(UIWrapper uiw, String msg){
        uiw.hasError = true;
        uiw.message = msg;
        return uiw;
    }

    @AuraEnabled
    public static TCWrapper saveTCW(String tcwJSON){
        TCWrapper tcw;
        

        try {
            tcw = (TCWrapper) JSON.deserialize(tcwJSON, TCWrapper.class);

            // Create Transfer Credit record
            //System.debug('tc: '+tcw.tc);
            String primaryObjFldName = '';
            Id idVar = null;
            Id tcCourseIdVar = null;

            if (String.isNotBlank(tcw.primaryRecordObjectType)){

                switch on tcw.primaryRecordObjectType {
                    when 'hed__Program_Enrollment__c'{
                        primaryObjFldName = 'rio_ed__Program_Enrollment__c';
                    }
                    when else {
                        primaryObjFldName = tcw.primaryRecordObjectType;
                    }
                }

                idVar = (Id)(tcw.tc.get(primaryObjFldName));
                tcCourseIdVar = tcw.tc.rio_ed__Transfer_Course__r.Id;
            }

            //System.debug('idVar: '+idVar+' primaryObjFldName '+primaryObjFldName+' tcCourseIdVar '+tcCourseIdVar);
            if (tcw.index==-1){     // Insert
                if (String.isBlank(idVar)){
                    throw new AuraHandledException('Unable to create record due to empty or invalid Id: '+idVar);
                }                
                // Check if already created
                String query = 'select Id from rio_ed__Transfer_Credit__c where '+primaryObjFldName+' = :idVar AND rio_ed__Transfer_Course__c=:tcCourseIdVar';
                if (Database.Query(query).size()>0){
                    throw new AuraHandledException('Transfer Course already exists!');
                }

                // If TC is created against PE try to update PA
                if (tcw.primaryRecordObjectType=='hed__Program_Enrollment__c'){
                    for (hed__Program_Enrollment__c pe : [SELECT rio_ed__ProgramApplication__c FROM hed__Program_Enrollment__c WHERE Id = :idVar AND rio_ed__ProgramApplication__c!=null]) {
                        tcw.tc.rio_ed__Program_Application__c = pe.rio_ed__ProgramApplication__c;                        
                    }
                }
                else if (tcw.primaryRecordObjectType=='rio_ed__Educational_Qualification__c'){ // If TC is created against EQ try to update PA
                    for (rio_ed__Educational_Qualification__c eq : [SELECT rio_ed__Program_Application__c FROM rio_ed__Educational_Qualification__c WHERE Id = :idVar AND rio_ed__Program_Application__c!=null]) {
                        tcw.tc.rio_ed__Program_Application__c = eq.rio_ed__Program_Application__c;                        
                    }
                }

                // Create Agreement if not created
                if (tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id==null){
                    rio_ed__Agreement__c agreement = new rio_ed__Agreement__c(Name = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name);
                    
                    for (rio_ed__Agreement__c a : [SELECT Name FROM rio_ed__Agreement__c WHERE Name = :tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name]) {
                        throw new AuraHandledException('Institute with Name :'+tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name+' already exists!');
                    }

                    insert agreement;
                    tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c = agreement.Id;
                }

                // create Agreement Course if not created
                if (tcw.tc.rio_ed__Transfer_Course__r.Id==null) {
                    rio_ed__Agreement_Course__c agreementCourse = new rio_ed__Agreement_Course__c(rio_ed__Agreement__c = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id
                    ,rio_ed__Transfer_Course_ID__c = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c
                    ,rio_ed__Transfer_Course_Title__c = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c);

                    insert agreementCourse;
                    tcw.tc.rio_ed__Transfer_Course__c = tcw.tc.rio_ed__Transfer_Course__r.Id = agreementCourse.Id;
                }

                // create Transfer Credit record
                rio_ed__Transfer_Credit__c transferCredit = tcw.tc;
                transferCredit.rio_ed__Transfer_Course__c = tcw.tc.rio_ed__Transfer_Course__c;
                transferCredit.rio_ed__Transfer_Request_Date__c = Date.today();

                insert transferCredit;

                for (rio_ed__Transfer_Credit__c tc : [SELECT rio_ed__Status__c FROM rio_ed__Transfer_Credit__c WHERE Id = :transferCredit.Id]) {
                    transferCredit.rio_ed__Status__c = tc.rio_ed__Status__c;
                }

                tcw.tc.Id = transferCredit.Id;
            }
            else {                  // Update

                if (String.isNotBlank(primaryObjFldName)){
                    
                    // Check if already created
                    Id currentRecId = tcw.tc.Id;
                    String query = 'select Id from rio_ed__Transfer_Credit__c where Id != :currentRecId AND '+primaryObjFldName+' = :idVar AND rio_ed__Transfer_Course__c=:tcCourseIdVar ';

                    if (Database.Query(query).size()>0){
                        throw new AuraHandledException('Transfer Course already exists!');
                    }
                }

                update tcw.tc;
            }

        } 
        catch(AuraHandledException e){
            throw e;
        }
        catch (Exception e) {
            throw new AuraHandledException(e.getLineNumber() +' - '+e.getMessage());
        }

        return tcw;
    }

    @AuraEnabled
    public static TCWrapper deleteTCW(String tcwJSON){
        TCWrapper tcw;

        try {
            tcw = (TCWrapper) JSON.deserialize(tcwJSON, TCWrapper.class);

            // Delete Transfer Credit record
            delete new rio_ed__Transfer_Credit__c(Id = tcw.tc.Id);

        }
        catch(AuraHandledException e){
            throw e;
        }
        catch (Exception e) {
            throw new AuraHandledException(e.getLineNumber() +' - '+e.getMessage());
        }

        return tcw;
    }

    public class UIWrapper{
        
        
        @auraEnabled public Id primaryRecordId{get;set;}
        @auraEnabled public Id contactId{get;set;}
        @auraEnabled public String primaryRecordObjectType{get;set;}
        //@auraEnabled public rio_ed__Program_Application__c pa{get;set;}
        @AuraEnabled public List<TCWrapper> listTCW{get;set;}
        @AuraEnabled public List<FieldDefWrapper> listFDW{get;set;}
        @AuraEnabled public String message{get;set;}
        @AuraEnabled public Boolean hasError{get;set;}
        @AuraEnabled public List<KeyValue> listTCStatus{get;set;}

        public UIWrapper(){
            listTCW = new List<TCWrapper>();
            listFDW = new List<FieldDefWrapper>();
            message = '';
            primaryRecordObjectType = '';
            hasError = false;
            listTCStatus = getTCStatusPicklistValues(); 
        }
    }
    
    private static List<KeyValue> getTCStatusPicklistValues(){
        List<KeyValue> options = new List<KeyValue>();
        
        Schema.DescribeFieldResult fieldResult = rio_ed__Transfer_Credit__c.rio_ed__Status__c.getDescribe();
        List<Schema.PicklistEntry> pValues = fieldResult.getPicklistValues();

        for (Schema.PicklistEntry p: pValues) {
            if (p.isActive()){
                options.add(new KeyValue(p.getValue(), p.getLabel()));
            }
        }

        return options;
    }

    public class TCWrapper{
        @AuraEnabled public rio_ed__Transfer_Credit__c tc{get;set;}
        @AuraEnabled public Integer index{get;set;}
        @auraEnabled public String primaryRecordObjectType{get;set;}        // Would be used to perform validations/functions based on what record Transfer credits are manipulated against
        @AuraEnabled public String message{get;set;}
        @AuraEnabled public Boolean hasError{get;set;}
        @AuraEnabled public List<rio_ed__PE_Group_Status__c> listPEG{get;set;}
        @AuraEnabled public List<rio_ed__PE_Discipline_Requirement__c> listPEDG{get;set;}
        
        public TCWrapper(rio_ed__Transfer_Credit__c tc, Integer index){
            this.tc = tc;
            this.index = index;
            this.message = '';
            this.hasError = false;
            listPEG = new List<rio_ed__PE_Group_Status__c>();
            listPEDG = new List<rio_ed__PE_Discipline_Requirement__c>();
        }
    }

    public class FieldDefWrapper{
        @AuraEnabled public String relationalFieldAPIName{get;set;} // full API Name path
        @AuraEnabled public String objectAPIName{get;set;}
        @AuraEnabled public String objectLabel{get;set;}
        @AuraEnabled public String fieldAPIName{get;set;}
        @AuraEnabled public String fieldLabel{get;set;}
        @AuraEnabled public String fieldType{get;set;}
        @AuraEnabled public FieldDefWrapper alternateFld{get;set;}       // Substritute field to represent fields like Id field on UI (i.e. Field label, hyperlink text etc.)

        public FieldDefWrapper(String relationalFieldAPIName, String objectAPIName, String objectLabel, String fieldAPIName, String fieldLabel, String fieldType){
            this.relationalFieldAPIName = relationalFieldAPIName;
            this.objectAPIName = objectAPIName;
            this.objectLabel = objectLabel;
            this.fieldAPIName = fieldAPIName;
            this.fieldLabel = fieldLabel;
            this.fieldType = fieldType;
            this.alternateFld = null;
        }
    }
    
    public class InputParams{
        public String context{get;set;}                // UX context e.g. TRANSFERCREDIT or TRANSFERCREDIT_APPROVAL
        public String primaryRecordId{get;set;}
        public String fieldListString{get;set;}
        public String filterCondition{get;set;}
    }

    /* For Picklist pairs */
    public class KeyValue{
        @AuraEnabled public String value{get;set;}  // API name
        @AuraEnabled public String label{get;set;}  // Label

        public KeyValue(String value, String label){
            this.label = label;
            this.value = value;
        }
    }

    //---------------------------- Util methods -------------------------------//

    /**
    * @description 
    * @author Pasan (peeriyagama@wdcigroup.net) | 29-07-2021 
    * @param String objectName 
    * @param String relationalFieldStr 
    * @return FieldDefWrapper 
    **/
    public static FieldDefWrapper getFieldDefinition(String objectName, String relationalFieldStr){
        FieldDefWrapper fdw = getDescribeFieldResultRecursive(objectName, relationalFieldStr);
        fdw.relationalFieldAPIName = relationalFieldStr;
        return fdw;
    }

    /**
    * @description 
    * @author Pasan (peeriyagama@wdcigroup.net) | 29-07-2021 
    * @param String objectName 
    * @param String relationalFieldStr 
    * @return FieldDefWrapper 
    **/
    private static FieldDefWrapper getDescribeFieldResultRecursive(String objectName, String relationalFieldStr){

        String restOfrelationalFields = relationalFieldStr.substringAfter('.');

        if (String.isBlank(restOfrelationalFields)){        // No more relational fields
            if (!Schema.getGlobalDescribe().containsKey(objectName)) {throw new REDU_ApplicationException('Object: '+objectName+' not found');}
            Schema.DescribeSObjectResult obj = Schema.getGlobalDescribe().get(objectName).getDescribe();

            if (!obj.fields.getMap().containsKey(relationalFieldStr)) {throw new REDU_ApplicationException(' Field: '+relationalFieldStr+' in ' +objectName+' not found');}
            Schema.DescribeFieldResult fld = obj.fields.getMap().get(relationalFieldStr).getDescribe();
            return new FieldDefWrapper(relationalFieldStr, obj.getName(),obj.getLabel(),fld.getName(), fld.getLabel(),String.valueOf(fld.getType())); //getSoapType()    obj.fields.getMap().get(relationalFieldStr).getDescribe();
        }
        else{
            String relationalFieldRef = relationalFieldStr.substringBefore('.');
            return getDescribeFieldResultRecursive(getRelatedObjectAPIName(objectName, relationalFieldRef), restOfrelationalFields);
        }
    }


    /**
    * @description 
    * @author Pasan (peeriyagama@wdcigroup.net) | 29-07-2021 
    * @param String currentObjAPIName 
    * @param String currentObjFieldName 
    * @return String 
    **/
    private static String getRelatedObjectAPIName(String currentObjAPIName, String currentObjFieldName){
        if (currentObjFieldName.right(3)=='__r'){
            currentObjFieldName = currentObjFieldName.removeEnd('__r') + '__c';
        }
        
        if (!Schema.getGlobalDescribe().containsKey(currentObjAPIName)) {throw new REDU_ApplicationException('Object: '+currentObjAPIName+' not found');}
        if (!Schema.getGlobalDescribe().get(currentObjAPIName).getDescribe().fields.getMap().containsKey(currentObjFieldName)) {throw new REDU_ApplicationException(' Field: '+currentObjFieldName+' in ' +currentObjAPIName+' not found');}

        Schema.DescribeFieldResult f = Schema.getGlobalDescribe().get(currentObjAPIName).getDescribe().fields.getMap().get(currentObjFieldName).getDescribe();
        
        String objName = '';

        for(Schema.SObjectType reference : f.getReferenceTo()) {
            objName = reference.getDescribe().getName();
        }
        return objName;
    }
}