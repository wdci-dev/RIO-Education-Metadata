@isTest
public class redu_StudentLedgerSummaryController_TEST {
    @isTest
    public static void getStudentLedgerTest() {
        // first retrieve default EDA trigger handlers
       List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       // Create our trigger handler using the constructor
       tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));

       // Pass trigger handler config to set method for this test run
       hed.TDTM_Global_API.setTdtmConfig(tokens);
        
        Contact ct = new Contact(LastName='Sample'); // hed__WorkEmail__c='sample@sample.com', hed__Preferred_Email__c='Work Email'
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        
        redu_Student_Ledger__c sl = redu_StudentLedgerSummaryController.getStudentLedger(ct.Id);
        
        System.assertEquals(ct.Id, sl.redu_Contact__c);
    }
}