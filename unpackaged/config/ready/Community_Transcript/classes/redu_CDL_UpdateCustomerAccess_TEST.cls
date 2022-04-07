/**
 * @author          WDCi (LKoh)
 * @group           Enrolment
 * @date            Jan 2022
 * @description     Test class for redu_CDL_SetEnrolmentSignatureField_TDTM
 * 
 */

@IsTest
Public class redu_CDL_UpdateCustomerAccess_TEST {
    
    public static final String PREFERREDEMAIL_ALTERNATE = 'Alternate Email';    

    @TestSetup
    static void setupData() {        
        //Create Trigger Handler
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

        // Create our trigger handler using the constructor
        redu_TranscriptTriggerHandler_MANAGER.init_UpdateCustomerAccessTDTM();

        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);

        //Setup RIO Education Settings
        rio_ed__RIO_Education_Settings__c customSettings = createDefaultSettings();
        insert customSettings;
    }     

    static testmethod void testUpdateCustomerAccess() {

        //Create Student
        Contact studentContact = new Contact();
        studentContact.FirstName = 'redu_CDL_UpdateCustomerAccess_TEST';
        studentContact.LastName = 'redu_CDL_UpdateCustomerAccess_TEST';
        studentContact.Email = 'redu_CDL_UpdateCustomerAccess_TEST@fakeemail.com';
        studentContact.hed__Preferred_Email__c = PREFERREDEMAIL_ALTERNATE;
        studentContact.hed__AlternateEmail__c = 'redu_CDL_UpdateCustomerAccess_TEST@fakeemail.com';        
        studentContact.rio_ed__Student_ID__c = '202112348';
        insert studentContact;

        rio_ed__Program_Application__c testPA = new rio_ed__Program_Application__c(
            rio_ed__Applicant__c = studentContact.Id
        );

        insert testPA;

        List<ContentVersion> contentVersionList = new List<ContentVersion>();
        ContentVersion content1 = new ContentVersion(); 
        content1.Title = 'Tax Invoice'; 
        content1.PathOnClient = '/' + content1.Title + '.png'; 
        Blob bodyBlob1 = Blob.valueOf('Unit Test ContentVersion Body'); 
        content1.VersionData = bodyBlob1;
        content1.origin = 'H';
        contentVersionList.add(content1);

        insert contentVersionList;
            
        Test.startTest();        

        List<ContentDocumentLink> contentDocumentLinkList = new List<ContentDocumentLink>();
        ContentDocumentLink contentlink1 = new ContentDocumentLink();
        contentlink1.LinkedEntityId = testPA.id;
        contentlink1.contentdocumentid = [select contentdocumentid from contentversion where id =: content1.id].contentdocumentid;
        contentlink1.ShareType = 'I';
        contentlink1.Visibility = 'InternalUsers';
        contentDocumentLinkList.add(contentLink1);

        insert contentDocumentLinkList;

        Test.stopTest();
    }

    public static rio_ed__RIO_Education_Settings__c createDefaultSettings() {

        rio_ed__RIO_Education_Settings__c customSettings = rio_ed__RIO_Education_Settings__c.getOrgDefaults();

        if (customSettings == null) {
            customSettings = new rio_ed__RIO_Education_Settings__c();
        }
        
        customSettings.rio_ed__Auto_Program_Enrollment__c = true; 
        customSettings.rio_ed__Auto_Student_Community_Registration__c = false;
        customSettings.rio_ed__Student_User_Profile__c = 'REDU - Student';
        customSettings.rio_ed__Faculty_User_Profile__c = 'REDU - Faculty';
        customSettings.rio_ed__Payment_URL__c = 'https://www.fakewebsite.net/payment';
        customSettings.rio_ed__Pathway_Prefix__c = 'myTerm';
        customSettings.rio_ed__Community_Username_Suffix__c = '@aim.edu.au';
        customSettings.rio_ed__Set_Program_Fee_Description__c = 'Full tuition fee for {!Program.Name}';
        customSettings.rio_ed__Auto_Lead_Conversion__c = true;
        customSettings.rio_ed__Lead_Converted_Status__c = 'Qualified';
        customSettings.rio_ed__Location_Resource_Calendar_Field__c = 'Name';
        customSettings.rio_ed__Late_Payment_Repeat_Setting__c = 'Once';
        customSettings.rio_ed__Late_Payment_Batch_Size__c = 200;
        customSettings.rio_ed__Academic_Program_Account_Record_Type__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Academic_Program').getRecordTypeId();
        customSettings.rio_ed__Educational_Institution_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Educational_Institution').getRecordTypeId();
        customSettings.rio_ed__University_Department_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('University_Department').getRecordTypeId();
        customSettings.rio_ed__Location_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Location').getRecordTypeId();
        customSettings.rio_ed__Template_Session_RT_Id__c = Schema.SObjectType.rio_ed__Session__c.getRecordtypeInfosByDeveloperName().get('Template').getRecordTypeId();
        customSettings.rio_ed__Class_Session_RT_Id__c = Schema.SObjectType.rio_ed__Session__c.getRecordtypeInfosByDeveloperName().get('Class').getRecordTypeId();
        customSettings.rio_ed__Group_Plan_Requirement_RT_Id__c = Schema.SObjectType.hed__Plan_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_Plan_Requirement_RT_Id__c = Schema.SObjectType.hed__Plan_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Group_Discipline_Requirement_Id__c = Schema.SObjectType.rio_ed__Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Group_PE_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__PE_Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_PE_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__PE_Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Grade_RT_Id__c = Schema.SObjectType.rio_ed__Grade__c.getRecordtypeInfosByDeveloperName().get('Grade').getRecordTypeId();
        customSettings.rio_ed__Sub_Grade_RT_Id__c = Schema.SObjectType.rio_ed__Grade__c.getRecordtypeInfosByDeveloperName().get('Sub_Grade').getRecordTypeId();
        customSettings.rio_ed__Resource_Type_Plan_RT_Id__c = Schema.SObjectType.rio_ed__Plan__c.getRecordTypeInfosByDeveloperName().get('Resource_Type').getRecordTypeId();
        customSettings.rio_ed__Session_Scheduler_REST_API_Url__c = 'https://' + System.URL.getOrgDomainUrl().getHost() + '/services/apexrest/rio_ed/calendarevent';
                   
        customSettings.redu_File_Sharing_Prefix__c = 'Official_Transcript';
        return customSettings;
    }
}