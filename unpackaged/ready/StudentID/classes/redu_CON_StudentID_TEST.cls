/**
 * @author          WDCi (LKoh)
 * @date            Aug 2021
 * @group           Test
 * @description     Test class for redu_CON_StudentNumber_TDTM
 * 
 */

@IsTest
public without sharing class redu_CON_StudentID_TEST {

    @TestSetup
    static void makeData() {
        redu_CON_StudentID_TDTM.installTDTMSetting();
    }

    @IsTest
    static void contactInsert() {

        Test.startTest();

        List<Contact> testConList = new List<Contact>();

        // Create Applicant        
        Contact testApp = new Contact();
        testApp.Firstname = 'test-App';
        testApp.LastName = 'test-0';
        testApp.Email = 'Test.Applicant@email.com';
        testApp.redu_Contact_Type__c = 'Applicant';
        testConList.add(testApp);

        // Create Student        
        Contact testStudent = new Contact();
        testStudent.Firstname = 'test-Student';
        testStudent.LastName = 'test-1';
        testStudent.Email = 'Test.Student@email.com';
        testStudent.redu_Contact_Type__c = 'Student';
        testConList.add(testStudent);

        insert testConList;

        Test.stopTest();

        List<Contact> contact_AfterInsert = [SELECT Id, rio_ed__Student_ID__c FROM Contact WHERE Id IN :testConList];
        System.assert(contact_AfterInsert.size() == 2, 'Wrong number of test Contact');
        
        for (Contact ct : contact_AfterInsert) {
            if (ct.Id == testApp.Id) {
                System.assert(String.isBlank(ct.rio_ed__Student_ID__c), 'Applicant type Contact should not have Student ID generated');
            } else if (ct.Id == testStudent.Id) {
                System.assert(!String.isBlank(ct.rio_ed__Student_ID__c), 'Student type Contact should have Student ID generated');
            }
        }
    }
    
    @IsTest
    static void contactUpdate() {

        Test.startTest();

        List<Contact> testConList = new List<Contact>();

        //Create Applicant
        Contact testApp = new Contact();
        testApp.Firstname = 'test-App';
        testApp.LastName = 'test-0';
        testApp.Email = 'Test.Applicant@email.com';
        testApp.redu_Contact_Type__c = 'Applicant';
        testConList.add(testApp);

        insert testConList;        

        List<Contact> contact_BeforeUpdate = [SELECT Id, rio_ed__Student_ID__c FROM Contact WHERE Id IN :testConList];
        System.assert(contact_BeforeUpdate.size() == 1, 'Wrong number of test Contact');
        System.assert(String.isBlank(contact_BeforeUpdate[0].rio_ed__Student_ID__c), 'Applicant type Contact should not have Student ID generated');

        testApp.redu_Contact_Type__c = 'Student';
        update testApp;        

        Test.stopTest();

        List<Contact> contact_AfterUpdate = [SELECT Id, rio_ed__Student_ID__c FROM Contact WHERE Id IN :testConList];
        System.assert(contact_AfterUpdate.size() == 1, 'Wrong number of test Contact');
        System.assert(!String.isBlank(contact_AfterUpdate[0].rio_ed__Student_ID__c), 'Student type Contact should have Student ID generated');
    }
}