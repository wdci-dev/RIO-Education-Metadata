/**
 * @Author 		WDCi (LKoh)
 * @Date 		Jan 2022
 * @group 		Test Class
 * @Description Test class for the custom related list lightning component redu_CustomSingleRelatedList_LCTRL.
 *
 */

@IsTest
public class redu_CustomSingleRelatedList_TEST {
    
    @IsTest
    private static void testInitDatatable() {
        
        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];
 
        Map<String, Object> requestJSON = new Map<String, Object>();
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.RECORD_ID_PARAM, cont.AccountId);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.TARGET_RECORD_ID_PARAM, 'Id');
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.PARENT_OBJECT_REF_FIELD_PARAM, 'AccountId');
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_API_NAME_PARAM, 'Contact');
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_FIELDSET_PARAM, 'rio_ed__Student_Detail_FieldSet_UnitTest');
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_FILTER_CRITERIA_PARAM, '');

        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ENABLE_VIEW_PARAM, true);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ENABLE_EDIT_PARAM, true);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ENABLE_DELETE_PARAM, true);

        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ROWS_TO_LOAD_PARAM, 5);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.CURRENT_OFFSET_PARAM, 0);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ENABLE_CLICKABLE_REFFIELD_PARAM, true);
        requestJSON.put(redu_CustomSingleRelatedList_LCTRL.ENABLE_DOWNLOAD_PARAM, true);
        
        String datatableConfig = JSON.serialize(requestJSON);

        Test.startTest();
        String responseStr = redu_CustomSingleRelatedList_LCTRL.initDatatable(datatableConfig);
        Map<String, Object> responseJSON = (Map<String, Object>)JSON.deserializeUntyped(responseStr);  

        system.debug('responseStr :: ' + responseStr);
        List<Object> data = (List<Object>)responseJSON.get(redu_CustomSingleRelatedList_LCTRL.DATA_PARAM);
        System.assertEquals(1, data.size(), 'The records found is not matched.');

        String columns = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.COLUMNS_PARAM));
        System.assert(columns.containsIgnoreCase('fieldName=name'), 'The columns metadata should contains name field.');
        System.assert(columns.containsIgnoreCase('label=Edit, name=edit'), 'The columns metadata should contains edit action.');
        System.assert(columns.containsIgnoreCase('label=Delete, name=delete'), 'The columns metadata should contains delete action.');

        String childObjectLabel = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_LABEL_PARAM));
        System.assertEquals('Contact', childObjectLabel, 'The label should be contact.');

        String childObjectPluralLabel = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_PLURAL_LABEL_PARAM));
        System.assertEquals('Contacts', childObjectPluralLabel, 'The plural label should be contacts.');

        String childObjectRelationshipApiName = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.CHILD_OBJECT_RELATIONSHIP_API_NAME_PARAM));
        System.assertEquals('Contacts', childObjectRelationshipApiName, 'The child object relationship should be contacts.');

        String objectIcon = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.OBJECT_ICON_PARAM));
        System.assertEquals('standard:contact', objectIcon, 'The contact icon should be standard:contact.');

        String parentId = String.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.PARENT_ID_PARAM));
        System.assertEquals(cont.AccountId, parentId, 'The plural label should be contacts.');

        Integer currentOffSet = Integer.valueOf(responseJSON.get(redu_CustomSingleRelatedList_LCTRL.CURRENT_OFFSET_PARAM));
        System.assert(currentOffSet > 0, 'The currentOffSet should be greater than 0.');

        Test.stopTest();
    }

    @IsTest
    private static void testDeleteRecord() {
        
        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];
        
        Test.startTest();

        String responseStr = redu_CustomSingleRelatedList_LCTRL.deleteRecord(cont.Id);
        System.assert(String.isBlank(responseStr), responseStr);

        Test.stopTest();

    }

    @IsTest
    private static void testGetObjectIcon() {
                
        Test.startTest();

        String stdIcon = redu_CustomSingleRelatedList_LCTRL.getObjectIcon('Contact');
        System.assertEquals('standard:contact', stdIcon, 'This should be standard:contact.');

        String customIcon = redu_CustomSingleRelatedList_LCTRL.getObjectIcon('rio_ed__Program_Application__c');
        System.assert(customIcon.containsIgnoreCase('custom'), 'This should be custom:xxxxx.');

        Test.stopTest();

    }

    @IsTest
    private static void testGetChildRelationshipName() {
        
        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];

        Test.startTest();

        String relName = redu_CustomSingleRelatedList_LCTRL.getChildRelationshipName(cont.AccountId, 'Contact');
        System.assertEquals('Contacts', relName, 'This should be Contacts.');

        Test.stopTest();

    }

    @IsTest
    private static void testGetDatatableMetadata(){

        Test.startTest();
        
        String metadataStrWithoutAction = redu_CustomSingleRelatedList_LCTRL.getDatatableMetadata('Contact', 'rio_ed__Student_Detail_FieldSet_UnitTest', false, false, false, false, false);

        System.debug(metadataStrWithoutAction);

        System.assert(metadataStrWithoutAction.containsIgnoreCase('"label": "Full Name", "fieldName": "Name"'), 'The columns metadata should contains name field.');
        System.assert(!metadataStrWithoutAction.containsIgnoreCase('"label": "Edit", "name": "edit"'), 'The columns metadata should not contains edit action.');
        System.assert(!metadataStrWithoutAction.containsIgnoreCase('"label": "Delete", "name": "delete"'), 'The columns metadata should not contains delete action.');

        String metadataStrWithActions = redu_CustomSingleRelatedList_LCTRL.getDatatableMetadata('Contact', 'rio_ed__Student_Detail_FieldSet_UnitTest', true, true, true, true, true);

        System.debug(metadataStrWithActions);

        System.assert(metadataStrWithActions.containsIgnoreCase('"label": "Full Name", "fieldName": "linkName"'), 'The columns metadata should contains name field.');
        System.assert(metadataStrWithActions.containsIgnoreCase('"label": "Edit", "name": "edit"'), 'The columns metadata should contains edit action.');
        System.assert(metadataStrWithActions.containsIgnoreCase('"label": "Delete", "name": "delete"'), 'The columns metadata should contains delete action.');

        String metadataStrWithEditOnly = redu_CustomSingleRelatedList_LCTRL.getDatatableMetadata('Contact', 'rio_ed__Student_Detail_FieldSet_UnitTest', false, true, false, false, false);

        System.debug(metadataStrWithEditOnly);

        System.assert(metadataStrWithEditOnly.containsIgnoreCase('"label": "Full Name", "fieldName": "Name"'), 'The columns metadata should contains name field.');
        System.assert(metadataStrWithEditOnly.containsIgnoreCase('"label": "Edit", "name": "edit"'), 'The columns metadata should contains edit action.');
        System.assert(!metadataStrWithEditOnly.containsIgnoreCase('"label": "Delete", "name": "delete"'), 'The columns metadata should not contains delete action.');
        
        String metadataStrWithDeleteOnly = redu_CustomSingleRelatedList_LCTRL.getDatatableMetadata('Contact', 'rio_ed__Student_Detail_FieldSet_UnitTest', false, false, true, false, false);

        System.debug(metadataStrWithDeleteOnly);

        System.assert(metadataStrWithDeleteOnly.containsIgnoreCase('"label": "Full Name", "fieldName": "Name"'), 'The columns metadata should contains name field.');
        System.assert(!metadataStrWithDeleteOnly.containsIgnoreCase('"label": "Edit", "name": "edit"'), 'The columns metadata should not contains edit action.');
        System.assert(metadataStrWithDeleteOnly.containsIgnoreCase('"label": "Delete", "name": "delete"'), 'The columns metadata should contains delete action.');
        

        Test.stopTest();
    }

    @IsTest
    private static void testGetTargetParentId(){

        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];

        Test.startTest();

        String selfId = redu_CustomSingleRelatedList_LCTRL.getTargetParentId(cont.Id, 'Id');
        System.assertEquals(cont.Id, selfId, 'The target parent id should be ' + cont.Id);

        String targetParentId = redu_CustomSingleRelatedList_LCTRL.getTargetParentId(cont.Id, 'AccountId');
        System.assertEquals(cont.AccountId, targetParentId, 'The target parent id should be ' + cont.AccountId);

        Test.stopTest();
    }

    @IsTest
    private static void testGetChildRecords(){
        
        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];

        Test.startTest();

        List<SObject> recordsWithoutOffset = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.AccountId, 'AccountId', 'Contact', null, null, 10, null);
        System.assertEquals(1, recordsWithoutOffset.size(), 'There should be 1 record found.');

        List<SObject> recordsWithOffset = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.AccountId, 'AccountId', 'Contact', null, null, 10, 5);
        System.assertEquals(0, recordsWithOffset.size(), 'There should be 0 record found.');

        List<SObject> recordsWithoutFilter = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.AccountId, 'AccountId', 'Contact', null, null, null, null);
        System.assertEquals(1, recordsWithoutFilter.size(), 'There should be 1 record found.');

        List<SObject> recordsWithFilter = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.AccountId, 'AccountId', 'Contact', null, 'FirstName = \'Sample Student\' ', null, null);
        System.assertEquals(0, recordsWithFilter.size(), 'There should be 0 record found.');

        List<SObject> recordsWithSorting = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.AccountId, 'AccountId', 'Contact', null, null, null, null);
        System.assertEquals(1, recordsWithSorting.size(), 'There should be 1 record found.');

        Test.stopTest();
    }

    private static testMethod void testGetChildContentVersionRecords(){

        List<Contact> contactList = createContacts(1);
        insert contactList;
        Contact cont = contactList[0];

        List<ContentVersion> fileList = createFiles(3, 'image', 'Portfolio');
        fileList[2].redu_File_Category__c = 'Reference';
        insert fileList;
        
        List<ContentVersion> cvsWithDocIds = [SELECT ContentDocumentId FROM ContentVersion WHERE Id IN :fileList];
        //Create Content document links
        List<ContentDocumentLink> cdlList = new List<ContentDocumentLink>();
        for (ContentVersion cv : cvsWithDocIds){
            cdlList.add(new ContentDocumentLink(ContentDocumentId = cv.ContentDocumentId, ShareType = 'V', LinkedEntityId = cont.Id));
        }
        insert cdlList;

        Test.startTest();

        List<SObject> recordsWithoutOffset = redu_CustomSingleRelatedList_LCTRL.getChildRecords(cont.Id, 'LinkedEntityId', 'ContentVersion', null, null, 10, null);
        System.assertEquals(3, recordsWithoutOffset.size(), 'There should be 3 records found.');

        Test.stopTest();

    }

    private static testMethod void testDeleteError(){
        String errorMsg = redu_CustomSingleRelatedList_LCTRL.deleteRecord(UserInfo.getUserId());
        System.assert(errorMsg != null, 'Error message not found on trying to delete an invalid record.');
    }

    @IsTest
    private static void testGetReferenceFieldForQuery(){

        Test.startTest();
        String refField = redu_CustomSingleRelatedList_LCTRL.getReferenceFieldForQuery('AccountId');
        System.assertEquals('Account', refField, 'The field name should be Account.');

        String refCustomField = redu_CustomSingleRelatedList_LCTRL.getReferenceFieldForQuery('Account__c');
        System.assertEquals('Account__r', refCustomField, 'The field name should be Account__r.');

        Test.stopTest();
    }

    private static testMethod void testEncryptedDataPermission(){
        Boolean userHasViewEncryptedDataPermission = false;
        //Check profile then permission sets for encrypted data permission
        List<Profile> pList = [SELECT Id FROM Profile
                               WHERE PermissionsViewEncryptedData = true AND Id = :UserInfo.getProfileId()];
        if (!pList.isEmpty()){
            userHasViewEncryptedDataPermission = true;
        }
        if (!userHasViewEncryptedDataPermission) {
            List<PermissionSetAssignment> psaList = [SELECT Id FROM PermissionSetAssignment 
            WHERE AssigneeId = :UserInfo.getUserId() AND PermissionSet.PermissionsViewEncryptedData = true];
            if (!psaList.isEmpty()){
               userHasViewEncryptedDataPermission = true;
            }
        }

        Boolean relatedListHasPermission = redu_CustomSingleRelatedList_LCTRL.hasViewEncryptedDataPermission();
        System.assertEquals(userHasViewEncryptedDataPermission, relatedListHasPermission, 'Related list needs to encrypt encrypted data for users who cannot view encrypted data');
    }

    /**
    * @description Create contacts, skipping the dummyaccount flow
    * @param numContacts number of contacts to be created
    * @return List<Contact>
    */
    public static List<Contact> createContacts(Integer numContacts) {

        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < numContacts; i++) {
            Account acc = new Account(
                Name = 'Test-' + i + '  Household Account', 
                RecordTypeId = 
                Schema.SObjectType.Account.getRecordTypeInfosByName().get('Administrative').getRecordTypeId());
            accs.add(acc);
        }
        insert accs;

        Integer conCounter = 0;
        List<Contact> cons = new List<Contact>();
        for (Account acc : accs) {
            Contact con = new Contact(
                FirstName = acc.Name.substringBefore(' '),
                LastName = acc.Name.substringBefore(' '),
                Email = acc.Name.substringBefore('-') + acc.Name.substringAfter('-').left(1) + '.' + 
                        acc.Name.substringBefore('-') + acc.Name.substringAfter('-').left(1) + '@email.com', 
                AccountId = acc.Id);
            con.rio_ed__Community_Username__c = con.Email;
            con.rio_ed__Community_Username_Prefix__c = 'testStud_'+conCounter+'_'+numContacts;
            //con.redu_Contact_Role__c = 'Applicant';
            cons.add(con);
            conCounter++;
        }
        
        return cons;
    }

     /**
    * @description Create image files
    * @param numOfFiles Number of files to create
    * @param nameString Name of file(s)
    * @param fileType File type (e.g. Portfolio or Reference)
    * @return List<ContentVersion>
    */
    public static List<ContentVersion> createFiles(Integer numOfFiles, String nameString, String fileCategory){

        //Fake image
        Blob body = Blob.valueOf('data:image/gif;base64,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');

        List<ContentVersion> cvList = new List<ContentVersion>();
        
        for (Integer i = 1; i < numOfFiles + 1; i++){
            ContentVersion cv = new ContentVersion();
            cv.Title = nameString + i + '.png';
            cv.VersionData = body;
            cv.PathOnClient = '/' + cv.Title;
            cv.Description = cv.Title + ' description';
            cv.redu_File_Category__c = fileCategory;
            cvList.add(cv);
        }

        return cvList;

    }
}