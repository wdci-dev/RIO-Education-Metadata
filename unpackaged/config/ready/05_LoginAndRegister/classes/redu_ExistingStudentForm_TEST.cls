/**
 * @author          WDCi-LKoh
 * @date            20/06/2021
 * @group           Community
 * @description     TEST for Community Self Registration component 
 */
@IsTest global with sharing class redu_ExistingStudentForm_TEST {    

    @TestSetup
    static void setupData() {        
        rio_ed__RIO_Education_Settings__c defaultSetting = redu_LoginRegisterTest_UTIL.createBasicREDUSettings();
        insert defaultSetting;        
    }

    
    private static testMethod void runTestExistingContact() {

        String firstName = 'WDCi';
        String lastName = 'Tester1';
        String email = 'tester@mail.com';
        String password = 'test12356O';
        Id accountId = null;
        String regConfirmUrl = 'www.gmail.com';
        String startUrl = 'www.gmail.com';
        Boolean includePassword = true;        

        String userFullName = firstName+ ' ' +lastName+ ' Administrative Account';
        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Administrative').getRecordTypeId();

        // Create Contact Admin Account
        Account contactAdminAccount = redu_SelfRegister_LCTRL.generateUserAdminAccount(userFullName, recordTypeId);
        insert contactAdminAccount;       

        // Create Contact
        Contact applicantContact = redu_SelfRegister_LCTRL.generateUserContact(firstName, lastName, contactAdminAccount.Id, email, null);
        insert applicantContact;        

        Test.startTest();

        // Simulating a call on the main component's controller
        redu_ExistingStudentForm_LCTRL.checkEmail(email, null);

        Test.stopTest();
    }

    private static testMethod void runTestNewContact() {

        String firstName = 'WDCi';
        String lastName = 'Tester1';
        String email = 'tester@mail.com';
        String password = 'test12356O';
        Id accountId = null;
        String regConfirmUrl = 'www.gmail.com';
        String startUrl = 'www.gmail.com';
        Boolean includePassword = true;

        Test.startTest();        

        // Simulating a call on the main component's controller
        redu_ExistingStudentForm_LCTRL.checkEmail(email, null);

        Test.stopTest();        
    }
}