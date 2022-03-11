public with sharing class redu_LoginRegisterTest_UTIL {
    
    public static rio_ed__RIO_Education_Settings__c createBasicREDUSettings() {

        rio_ed__RIO_Education_Settings__c customSettings = new rio_ed__RIO_Education_Settings__c();
        customSettings.rio_ed__Academic_Program_Account_Record_Type__c = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId();
        customSettings.rio_ed__University_Department_RT_Id__c = Schema.SObjectType.Account.getRecordTypeInfosByName().get('University Department').getRecordTypeId();
        customSettings.rio_ed__Educational_Institution_RT_Id__c = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Educational Institution').getRecordTypeId();        
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
        customSettings.rio_ed__Auto_Program_Enrollment__c = true;
        customSettings.rio_ed__Student_User_Profile__c = redu_Constant_UTIL.STUDENT_USERPROFILE;
        customSettings.redu_Student_Permission_Set_Group__c = 'REDU_Student_Permission_Group';
        customSettings.SetupOwnerId = UserInfo.getOrganizationId();        

        return customSettings;
    }

    /**
    * @description Create contacts, skipping the dummyaccount flow
    * @param numContacts number of contacts to be created
    * @return List<Contact>
    */
    public static List<Contact> createContacts(Integer numContacts) {

        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < numContacts; i++) {            
            Account acc = createAdminAccount('Test-' +i);
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
            con.hed__Preferred_Email__c = redu_Constant_UTIL.PREFERREDEMAIL_ALTERNATE;
            con.hed__AlternateEmail__c = con.Email;
            cons.add(con);
            conCounter++;
        }
        
        return cons;
    }

    /**
    * @description Creates the dummy account
    * @return Account
    */
    public static Account createAdminAccount(String name) {
        Account adminAccount = new Account();
        adminAccount.Name = name + ' Admin Account';
        adminAccount.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Administrative').getRecordTypeId();
        return adminAccount;
    }
}