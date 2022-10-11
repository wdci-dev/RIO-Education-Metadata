/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Ledger Entry Automation for Fee Line
* @description      Test class for redu_FL_LedgerEntry_TDTM
* @change-history   
*/
@isTest
public class redu_FL_LedgerEntry_TEST {
    @isTest
    static void testCreateFeeLine() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_FL_LedgerEntry_TDTM', 'rio_ed__Fee_Line__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_FL_LedgerEntry_TDTM.installTDTMSetting();
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
       
       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf1 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf1;
        rio_ed__Student_Fee__c sf2 = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf2;
		rio_ed__Funding__c fun = new rio_ed__Funding__c(rio_ed__Funding_Type__c = 'Scholarship');
		insert fun;
		rio_ed__Funding_Allocation__c fa = new rio_ed__Funding_Allocation__c(rio_ed__Funding__c = fun.Id);
        insert fa;
        
        
        redu_Student_Ledger__c ledger = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct.Id];
        List<redu_Ledger_Entry__c> before = [select Id from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
        
        test.startTest();
       	// do some operations...
        rio_ed__Fee_Line__c flToInsert1 = new rio_ed__Fee_Line__c(rio_ed__Student_Fee__c = sf1.Id, rio_ed__Other_Description__c = 'Sample description 1',
                                                        rio_ed__Course_Connection_Fee_Amount__c = 1000, rio_ed__Other_Amount__c = 1000,
                                                        rio_ed__Help_Debt_Amount__c = 100, rio_ed__Upfront_Payment_Amount__c = 100,
                                                        rio_ed__Discount_Amount__c = 100);
        rio_ed__Fee_Line__c flToInsert2 = new rio_ed__Fee_Line__c(rio_ed__Student_Fee__c = sf2.Id, rio_ed__Other_Description__c = 'Sample description 2',
                                                        rio_ed__Course_Connection_Fee_Amount__c = 2000, rio_ed__Other_Amount__c = 2000,
                                                        rio_ed__Help_Debt_Amount__c = 200, rio_ed__Upfront_Payment_Amount__c = 200,
                                                        rio_ed__Discount_Amount__c = 200, rio_ed__Funding_Allocation__c = fa.Id);
        
        List<rio_ed__Fee_Line__c> fls = new List<rio_ed__Fee_Line__c>();
        fls.add(flToInsert1);
        fls.add(flToInsert2);
        insert fls;
        
        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [select redu_Description__c, redu_Fee_Amount__c, redu_Date__c, redu_Funding_Assistance__c, redu_Discount_Amount__c,
                                      redu_Upfront_Payment_Amount__c, redu_Related_Fee_Line__c, redu_Type__c from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
        
        System.assert(before.isEmpty());
        System.assert(after.size() == 2);
        
        rio_ed__Fee_Line__c fl1 = [select rio_ed__Fee_Description__c, rio_ed__Fee_Amount__c, CreatedDate, rio_ed__Help_Debt_Amount__c, rio_ed__Discount_Amount__c,
             rio_ed__Upfront_Payment_Amount__c from rio_ed__Fee_Line__c where Id = :flToInsert1.Id];
        rio_ed__Fee_Line__c fl2 = [select rio_ed__Fee_Description__c, rio_ed__Fee_Amount__c, CreatedDate, rio_ed__Help_Debt_Amount__c, rio_ed__Discount_Amount__c,
             rio_ed__Upfront_Payment_Amount__c, rio_ed__Funding_Allocation_Type__c from rio_ed__Fee_Line__c where Id = :flToInsert2.Id];
        
        for (redu_Ledger_Entry__c le : after) {
            if (le.redu_Related_Fee_Line__c == fl1.Id) {
                System.assertEquals(le.redu_Description__c, fl1.rio_ed__Fee_Description__c);
                System.assertEquals(le.redu_Fee_Amount__c, fl1.rio_ed__Fee_Amount__c);
                System.assertEquals(le.redu_Date__c, date.newinstance(fl1.CreatedDate.year(), fl1.CreatedDate.month(), fl1.CreatedDate.day()));
                System.assertEquals(le.redu_Funding_Assistance__c, fl1.rio_ed__Help_Debt_Amount__c);
                System.assertEquals(le.redu_Discount_Amount__c, fl1.rio_ed__Discount_Amount__c);
                System.assertEquals(le.redu_Upfront_Payment_Amount__c, fl1.rio_ed__Upfront_Payment_Amount__c);
                System.assertEquals(le.redu_Related_Fee_Line__c, fl1.Id);
                System.assertEquals(le.redu_Type__c, 'Fee');
            } else if (le.redu_Related_Fee_Line__c == fl2.Id) {
                System.assertEquals(le.redu_Description__c, fl2.rio_ed__Fee_Description__c);
                System.assertEquals(le.redu_Fee_Amount__c, fl2.rio_ed__Fee_Amount__c);
                System.assertEquals(le.redu_Date__c, date.newinstance(fl2.CreatedDate.year(), fl2.CreatedDate.month(), fl2.CreatedDate.day()));
                System.assertEquals(le.redu_Funding_Assistance__c, fl2.rio_ed__Help_Debt_Amount__c);
                System.assertEquals(le.redu_Discount_Amount__c, fl2.rio_ed__Discount_Amount__c);
                System.assertEquals(le.redu_Upfront_Payment_Amount__c, fl2.rio_ed__Upfront_Payment_Amount__c);
                System.assertEquals(le.redu_Related_Fee_Line__c, fl2.Id);
                System.assertEquals(le.redu_Type__c, fl2.rio_ed__Funding_Allocation_Type__c);
            } else {
                // Should be unreachable - always assert false
                System.assertEquals(true, false);
            }
        }
    }
    
    @isTest
    static void testUpdateFeeLine() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
        // tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_FL_LedgerEntry_TDTM', 'rio_ed__Fee_Line__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);

        // Create our trigger handler
        redu_FL_LedgerEntry_TDTM.installTDTMSetting();
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();
       
       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        rio_ed__Fee_Line__c flToInsert = new rio_ed__Fee_Line__c(rio_ed__Student_Fee__c = sf.Id, rio_ed__Other_Description__c = 'Sample description',
                                                        rio_ed__Course_Connection_Fee_Amount__c = 1000, rio_ed__Other_Amount__c = 1000,
                                                        rio_ed__Help_Debt_Amount__c = 100, rio_ed__Upfront_Payment_Amount__c = 100,
                                                        rio_ed__Discount_Amount__c = 100);
        
        insert flToInsert;
        rio_ed__Funding__c fun = new rio_ed__Funding__c(rio_ed__Funding_Type__c = 'Scholarship');
		insert fun;
		rio_ed__Funding_Allocation__c fa = new rio_ed__Funding_Allocation__c(rio_ed__Funding__c = fun.Id);
        insert fa;
        
        redu_Student_Ledger__c ledger = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct.Id];
        List<redu_Ledger_Entry__c> before = [select Id from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
                
        test.startTest();
       	// do some operations...
       	rio_ed__Fee_Line__c flToUpdate = [select rio_ed__Other_Description__c, rio_ed__Course_Connection_Fee_Amount__c, rio_ed__Other_Amount__c,
                                         rio_ed__Help_Debt_Amount__c, rio_ed__Upfront_Payment_Amount__c, rio_ed__Discount_Amount__c from
                                         rio_ed__Fee_Line__c where Id = :flToInsert.Id];
        
        flToUpdate.rio_ed__Other_Description__c = 'Updated description';
        flToUpdate.rio_ed__Course_Connection_Fee_Amount__c = 5000;
        flToUpdate.rio_ed__Other_Amount__c = 5000;
        flToUpdate.rio_ed__Help_Debt_Amount__c = 50;
        flToUpdate.rio_ed__Upfront_Payment_Amount__c = 50;
        flToUpdate.rio_ed__Discount_Amount__c = 50;
        flToUpdate.rio_ed__Funding_Allocation__c = fa.Id;
        
        update flToUpdate;
        
        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [select redu_Description__c, redu_Fee_Amount__c, redu_Date__c, redu_Funding_Assistance__c, redu_Discount_Amount__c,
                                      redu_Upfront_Payment_Amount__c, redu_Related_Fee_Line__c, redu_Type__c from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
        
        System.assertEquals(before.size(), after.size());
        
        rio_ed__Fee_Line__c fl = [select rio_ed__Fee_Description__c, rio_ed__Fee_Amount__c, CreatedDate, rio_ed__Help_Debt_Amount__c, rio_ed__Discount_Amount__c,
             rio_ed__Upfront_Payment_Amount__c, rio_ed__Funding_Allocation_Type__c from rio_ed__Fee_Line__c where Id = :flToInsert.Id];
        
        System.assertEquals(after.get(0).redu_Description__c, fl.rio_ed__Fee_Description__c);
        System.assertEquals(after.get(0).redu_Fee_Amount__c, fl.rio_ed__Fee_Amount__c);
        System.assertEquals(after.get(0).redu_Date__c, date.newinstance(fl.CreatedDate.year(), fl.CreatedDate.month(), fl.CreatedDate.day()));
        System.assertEquals(after.get(0).redu_Funding_Assistance__c, fl.rio_ed__Help_Debt_Amount__c);
        System.assertEquals(after.get(0).redu_Discount_Amount__c, fl.rio_ed__Discount_Amount__c);
        System.assertEquals(after.get(0).redu_Upfront_Payment_Amount__c, fl.rio_ed__Upfront_Payment_Amount__c);
        System.assertEquals(after.get(0).redu_Related_Fee_Line__c, fl.Id);
        System.assertEquals(after.get(0).redu_Type__c, fl.rio_ed__Funding_Allocation_Type__c);
    }
    
    @isTest
    static void testDeleteFeeLine() {
        // first retrieve default EDA trigger handlers
       	List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

       	// Create our trigger handler using the constructor
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_SFEE_StudentLedger_TDTM', 'rio_ed__Student_Fee__c', 'AfterInsert', 1.00));
       	// tokens.add(new hed.TDTM_Global_API.TdtmToken('redu_FL_LedgerEntry_TDTM', 'rio_ed__Fee_Line__c', 'AfterInsert;AfterUpdate;BeforeDelete', 1.00));

       	// Pass trigger handler config to set method for this test run
       	hed.TDTM_Global_API.setTdtmConfig(tokens);
       
        // Create our trigger handler
        redu_FL_LedgerEntry_TDTM.installTDTMSetting();
        redu_SFEE_StudentLedger_TDTM.installTDTMSetting();

       	// setup our test data...
        Contact ct = new Contact(LastName='Test');
       	insert ct;
       	hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(hed__Contact__c=ct.Id);
       	insert pe;
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c(rio_ed__Program_Enrollment__c=pe.Id);
       	insert sf;
        rio_ed__Fee_Line__c flToInsert = new rio_ed__Fee_Line__c(rio_ed__Student_Fee__c = sf.Id, rio_ed__Other_Description__c = 'Sample description',
                                                        rio_ed__Course_Connection_Fee_Amount__c = 1000, rio_ed__Other_Amount__c = 1000,
                                                        rio_ed__Help_Debt_Amount__c = 100, rio_ed__Upfront_Payment_Amount__c = 100,
                                                        rio_ed__Discount_Amount__c = 100);
        insert flToInsert;
        
        redu_Student_Ledger__c ledger = [select Id from redu_Student_Ledger__c where redu_Contact__c = :ct.Id];
        List<redu_Ledger_Entry__c> before = [select Id from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
        
        test.startTest();
       	// do some operations...
        rio_ed__Fee_Line__c flToDelete = [select Id from rio_ed__Fee_Line__c where Id = :flToInsert.Id];
        delete flToDelete;
        
        test.stopTest();
       	// validate our results...
       	List<redu_Ledger_Entry__c> after = [select Id from redu_Ledger_Entry__c where redu_Student_Ledger__c = :ledger.Id];
        
        System.assert(before.size() == 1);
        System.assert(after.isEmpty());
    }
}