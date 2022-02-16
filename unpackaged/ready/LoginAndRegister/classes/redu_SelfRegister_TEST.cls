/**
 * @author          WDCi-LKoh
 * @date            20/05/2021
 * @group           Community
 * @description     TEST for Community Self Registration component 
 */
@IsTest global with sharing class redu_SelfRegister_TEST {    

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

        String hashParam = redu_SelfRegister_LCTRL.generateHash(email, applicantContact.Id);

        Test.setMock(HttpCalloutMock.class, new redu_Captcha_TESTMOCK());

        Test.startTest();        

        String captchaResponseSample = '03AGdBq26T3OY4iBDHjYJZUNb6oG26VHZGWWk8spQs2N4g5vaRk1VBrb5P0egM6Klu31Hu6onDRicM0huqlwkgbeEYcQYEjrm8NEhV8T_4-0HsWtBthsaB9fw6fedQMhdfJbhZg8cd5aT-URWowFudujfQNc_e94qFZaDSwUBFWTA7d97sF-TxHEumloZBgfxZwEgUiIp9PVVPWKZOMUFoqaQoBW-hDZDqCab41qusFzWvJrQzwK-VYdB5nmLu2BOmIt-yahKgpWRzcsh4MpZ36-U065pQ6UPr7F7gA0SGtEefCOMpzCEYeSiyJaTNg2ec6MoYvfubAU4XlarGbwO6KYkZXiBIl0NvI-fTe5u2REuISZBqepW9GOAyOMHt94QVDU7j61UKuLV3gVhUpvIE6Zz2rzc_btIAQoR051ybX9oIec7x4HjWf4njClxhpHa4UEJedmXEL7Hfnvbx_PVekKGyPA_oXXrAiNgmnfFcBN_FQgy_xUjFbM7f5Xl208IsSS6B0oaRKj-A';

        // Simulating a call on the main component's controller
        redu_SelfRegister_LCTRL.selfRegister(firstName, lastName, email, password, password, String.valueOf(accountId), null, regConfirmUrl, startUrl, includePassword, String.valueOf(applicantContact.Id), hashParam, captchaResponseSample);

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

        Test.setMock(HttpCalloutMock.class, new redu_Captcha_TESTMOCK());

        Test.startTest();

        String captchaResponseSample = '03AGdBq26T3OY4iBDHjYJZUNb6oG26VHZGWWk8spQs2N4g5vaRk1VBrb5P0egM6Klu31Hu6onDRicM0huqlwkgbeEYcQYEjrm8NEhV8T_4-0HsWtBthsaB9fw6fedQMhdfJbhZg8cd5aT-URWowFudujfQNc_e94qFZaDSwUBFWTA7d97sF-TxHEumloZBgfxZwEgUiIp9PVVPWKZOMUFoqaQoBW-hDZDqCab41qusFzWvJrQzwK-VYdB5nmLu2BOmIt-yahKgpWRzcsh4MpZ36-U065pQ6UPr7F7gA0SGtEefCOMpzCEYeSiyJaTNg2ec6MoYvfubAU4XlarGbwO6KYkZXiBIl0NvI-fTe5u2REuISZBqepW9GOAyOMHt94QVDU7j61UKuLV3gVhUpvIE6Zz2rzc_btIAQoR051ybX9oIec7x4HjWf4njClxhpHa4UEJedmXEL7Hfnvbx_PVekKGyPA_oXXrAiNgmnfFcBN_FQgy_xUjFbM7f5Xl208IsSS6B0oaRKj-A';

        // Simulating a call on the main component's controller
        redu_SelfRegister_LCTRL.selfRegister(firstName, lastName, email, password, password, String.valueOf(accountId), null, regConfirmUrl, startUrl, includePassword, null, null, captchaResponseSample);

        Test.stopTest();        
    }

    private static testMethod void runTestException() {

        String firstName = 'WDCi';
        String lastName = 'Tester1';
        String email = 'tester@invalid@mail.com';
        String password = 'test12356O';
        Id accountId = null;
        String regConfirmUrl = 'www.gmail.com';
        String startUrl = 'www.gmail.com';
        Boolean includePassword = true;                

        Test.setMock(HttpCalloutMock.class, new redu_Captcha_TESTMOCK());

        Test.startTest();

        String captchaResponseSample = '03AGdBq26T3OY4iBDHjYJZUNb6oG26VHZGWWk8spQs2N4g5vaRk1VBrb5P0egM6Klu31Hu6onDRicM0huqlwkgbeEYcQYEjrm8NEhV8T_4-0HsWtBthsaB9fw6fedQMhdfJbhZg8cd5aT-URWowFudujfQNc_e94qFZaDSwUBFWTA7d97sF-TxHEumloZBgfxZwEgUiIp9PVVPWKZOMUFoqaQoBW-hDZDqCab41qusFzWvJrQzwK-VYdB5nmLu2BOmIt-yahKgpWRzcsh4MpZ36-U065pQ6UPr7F7gA0SGtEefCOMpzCEYeSiyJaTNg2ec6MoYvfubAU4XlarGbwO6KYkZXiBIl0NvI-fTe5u2REuISZBqepW9GOAyOMHt94QVDU7j61UKuLV3gVhUpvIE6Zz2rzc_btIAQoR051ybX9oIec7x4HjWf4njClxhpHa4UEJedmXEL7Hfnvbx_PVekKGyPA_oXXrAiNgmnfFcBN_FQgy_xUjFbM7f5Xl208IsSS6B0oaRKj-A';

        // Simulating a call on the main component's controller
        redu_SelfRegister_LCTRL.selfRegister(firstName, lastName, email, password, password, String.valueOf(accountId), null, regConfirmUrl, startUrl, includePassword, null, null, captchaResponseSample);

        Test.stopTest();        
    }    
}