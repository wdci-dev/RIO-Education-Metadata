/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Ledger Entry Automation for Payment
* @description      Test class for redu_PAYMENT_LedgerEntry_TDTM
* @change-history   
*/
@isTest
public class redu_PAYMENT_LedgerEntry_TEST {
    @isTest
    static void testCreatePayment() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_PAYMENT_LedgerEntry_TDTM', 'rio_ed__Fee_Payment__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
        redu_PAYMENT_LedgerEntry_TDTM.installTDTMSetting();

        List<hed__Trigger_Handler__c> triggerHandlers = [
            SELECT Id, Name, hed__Class__c, hed__Load_Order__c	
            FROM hed__Trigger_Handler__c
            WHERE hed__Class__c = 'redu_PAYMENT_LedgerEntry_TDTM'
        ];

        for (hed__Trigger_Handler__c th : triggerHandlers) {
            System.debug(th);
        }

       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        
        redu_Student_Ledger__c ledger = [
            SELECT Id 
            FROM redu_Student_Ledger__c 
            WHERE redu_Contact__c = :ct.Id
        ];

        //== DEBUG ==
        System.debug('ledger:');
        System.debug(ledger);

        List<redu_Student_Ledger__c> studentLedgers = [
            SELECT Id 
            FROM redu_Student_Ledger__c 
            WHERE redu_Contact__c = :ct.Id
        ];
        System.debug('studentLedgers:');
        System.debug(studentLedgers);
        //== END DEBUG ==

        List<redu_Ledger_Entry__c> before = [
            SELECT Id 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
        
        test.startTest();

        //== DEBUG
        List<rio_ed__Fee_Payment__c> paymentCheck1 = [
            SELECT rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c, rio_ed__Transaction_Type__c 
            FROM rio_ed__Fee_Payment__c        
        ];
        for (rio_ed__Fee_Payment__c fp : paymentCheck1) {
            System.debug(fp);
        }
        System.debug(paymentCheck1.size());
        //== END DEBUG

       	// do some operations...
        rio_ed__Fee_Payment__c paymentToInsert = new rio_ed__Fee_Payment__c(
            rio_ed__Student_Fee__c          = sf.Id, 
            rio_ed__Payment_Amount__c       = 500,
            rio_ed__Payment_Date__c         = Date.today(), 
            rio_ed__Transaction_Type__c     = 'Refund'
        );
        
        System.debug(paymentToInsert);
        insert paymentToInsert;
        
        rio_ed__Fee_Payment__c payment = [
            SELECT rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c, rio_ed__Transaction_Type__c 
            FROM rio_ed__Fee_Payment__c        
        ];

        //== DEBUG        
        System.debug(payment);
        //== END DEBUG

        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [
            SELECT redu_Payment_Amount__c, redu_Date__c, redu_Related_Payment__c, redu_Type__c 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
        
        System.assert(before.isEmpty());
        System.debug(after.size());
        for (redu_Ledger_Entry__c le : after) {
            System.debug(le);
        }
        System.assert(after.size() == 1);            
        
        System.assertEquals(after.get(0).redu_Payment_Amount__c, payment.rio_ed__Payment_Amount__c);
        System.assertEquals(after.get(0).redu_Date__c, payment.rio_ed__Payment_Date__c);
        System.assertEquals(after.get(0).redu_Related_Payment__c, payment.Id);
        System.assertEquals(after.get(0).redu_Type__c, payment.rio_ed__Transaction_Type__c);
    }
    
    @isTest
    static void testUpdatePayment() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
        // tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_PAYMENT_LedgerEntry_TDTM', 'rio_ed__Fee_Payment__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
        redu_PAYMENT_LedgerEntry_TDTM.installTDTMSetting();
       
       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        rio_ed__Fee_Payment__c paymentToInsert = new rio_ed__Fee_Payment__c(rio_ed__Student_Fee__c = sf.Id, rio_ed__Payment_Amount__c = 500,
                                                                        rio_ed__Payment_Date__c = Date.today(), rio_ed__Transaction_Type__c = 'Refund');
        
        insert paymentToInsert;
        
        redu_Student_Ledger__c ledger = [
            SELECT Id 
            FROM redu_Student_Ledger__c 
            WHERE redu_Contact__c = :ct.Id
        ];
        List<redu_Ledger_Entry__c> before = [
            SELECT Id 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
                
        test.startTest();
       	// do some operations...
       	rio_ed__Fee_Payment__c paymentToUpdate = [
            SELECT rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c 
            FROM rio_ed__Fee_Payment__c 
            WHERE Id = :paymentToInsert.Id
        ];
        
        paymentToUpdate.rio_ed__Payment_Amount__c = 1000;
        paymentToUpdate.rio_ed__Payment_Date__c = Date.today() - 7;
        paymentToUpdate.rio_ed__Transaction_Type__c = 'Payment';
        
        update paymentToUpdate;
        
        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [
            SELECT redu_Payment_Amount__c, redu_Date__c, redu_Related_Payment__c, redu_Type__c 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
        
        System.assertEquals(before.size(), after.size());
        
        rio_ed__Fee_Payment__c payment = [
            SELECT rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c, rio_ed__Transaction_Type__c 
            FROM rio_ed__Fee_Payment__c
            WHERE Id = :paymentToInsert.Id
        ];
        
        System.assertEquals(after.get(0).redu_Payment_Amount__c, payment.rio_ed__Payment_Amount__c);
        System.assertEquals(after.get(0).redu_Date__c, payment.rio_ed__Payment_Date__c);
        System.assertEquals(after.get(0).redu_Related_Payment__c, payment.Id);
        System.assertEquals(after.get(0).redu_Type__c, payment.rio_ed__Transaction_Type__c);
    }
    
    @isTest
    static void testDeletePayment() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_PAYMENT_LedgerEntry_TDTM', 'rio_ed__Fee_Payment__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
        redu_PAYMENT_LedgerEntry_TDTM.installTDTMSetting();
       
       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        rio_ed__Fee_Payment__c paymentToInsert = new rio_ed__Fee_Payment__c(
            rio_ed__Student_Fee__c = sf.Id, 
            rio_ed__Payment_Amount__c = 500,
            rio_ed__Payment_Date__c = Date.today()
        );
        
        insert paymentToInsert;
        
        redu_Student_Ledger__c ledger = [
            SELECT Id 
            FROM redu_Student_Ledger__c 
            WHERE redu_Contact__c = :ct.Id
        ];
        List<redu_Ledger_Entry__c> before = [
            SELECT Id 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
        
        test.startTest();
       	// do some operations...
        rio_ed__Fee_Payment__c paymentToDelete = [
            SELECT Id 
            FROM rio_ed__Fee_Payment__c 
            WHERE Id = :paymentToInsert.Id
        ];
        delete paymentToDelete;
        
        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [
            SELECT Id 
            FROM redu_Ledger_Entry__c 
            WHERE redu_Student_Ledger__c = :ledger.Id
        ];
        
        System.assert(before.size() == 1);
        System.assert(after.isEmpty());
    }
}