/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Student Ledger Automation for Student Fee
* @description      Test class for redu_SFEE_StudentLedger_TDTM
* @change-history   
*/
@isTest
public class redu_SFEE_StudentLedger_TEST {
    
    @isTest
    static void testInsertFirstFee() {
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();
        
        // Create our trigger handler using the constructor
        // tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
        
        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);
        
        // Create our trigger handler
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
        
        // setup our test data...
        Contact ct1 = new Contact(LastName='Test1');
        insert ct1;
        Contact ct2 = new Contact(LastName='Test2');
        insert ct2;
        hed__Program_Enrollment__c pe1 = new hed__Program_Enrollment__c(hed__Contact__c=ct1.Id);
        insert pe1;
        hed__Program_Enrollment__c pe2 = new hed__Program_Enrollment__c(hed__Contact__c=ct2.Id);
        insert pe2;
        
        List<redu_Student_Ledger__c> before1 = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct1.Id];
        List<redu_Student_Ledger__c> before2 = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct2.Id];
        
        test.startTest();
        // do some operations...
        rio_ed__Student_Fee__c sf1 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe1.Id);
        insert sf1;
        rio_ed__Student_Fee__c sf2 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe2.Id);
        insert sf2;
        
        test.stopTest();
        // validate our results...
        List<redu_Student_Ledger__c> after1 = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct1.Id];
        List<redu_Student_Ledger__c> after2 = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct2.Id];
        
        System.assert(before1.isEmpty());
        System.assert(after1.size() == 1);
        System.assert(before2.isEmpty());
        System.assert(after2.size() == 1);
        System.assertNotEquals(after1, after2);
    }
    
    @isTest
    static void testInsertSubsequentFees() {
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();
        
        // Create our trigger handler using the constructor
        // tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
        
        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
        
        
        // setup our test data...
        Contact ct = new Contact(LastName='Test');
        insert ct;
        hed__Program_Enrollment__c pe1 = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
        insert pe1;
        hed__Program_Enrollment__c pe2 = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
        insert pe2;
        rio_ed__Student_Fee__c sf1 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe1.Id);
        insert sf1;
        
        List<redu_Student_Ledger__c> before = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct.Id];
        
        test.startTest();
        // do some operations...
        rio_ed__Student_Fee__c sf2 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe1.Id);
        insert sf2;
        rio_ed__Student_Fee__c sf3 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe2.Id);
        insert sf3;
        
        test.stopTest();
        // validate our results...
        List<redu_Student_Ledger__c> after = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct.Id];
        
        System.assertEquals(before, after);
        System.assert(before.size() == 1);
        System.assert(after.size() == 1);
    }
}