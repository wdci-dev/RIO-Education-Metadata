/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Ledger Entry Automation for Payment
* @description      Create and Update Ledger Entry based on Payments activity
* @change-history   
*/
global class redu_PAYMENT_LedgerEntry_TDTM extends hed.TDTM_Runnable {
   	
    private static Set<Id> paymentIdSet;

    // the Trigger Handler’s Run method we must provide
   	global override hed.TDTM_Runnable.DmlWrapper run(List<SObject> newlist, List<SObject> oldlist, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        if (paymentIdSet == null) {
            paymentIdSet = new Set<Id>();
        }

        hed.TDTM_Runnable.dmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            // Map from ids to payments
            Map<Id, rio_ed__Fee_Payment__c> paymentIdMap = new Map<Id, rio_ed__Fee_Payment__c>();
            
            // For each inserted payment, get its associated student ledger
            Map<Id, Id> paymentLedgerMap = new Map<Id, Id>();
            
             for (rio_ed__Fee_Payment__c payment : (List<rio_ed__Fee_Payment__c>)newList) {
                paymentIdMap.put(payment.Id, payment);
            }
        
            for (rio_ed__Fee_Payment__c pl : [
                SELECT Id, rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.redu_Student_Ledger__c
                FROM rio_ed__Fee_Payment__c 
                WHERE Id in :newlist])
            {
                paymentLedgerMap.put(pl.Id, pl.rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.redu_Student_Ledger__c);
            }
            
            // For each inserted payment, create a new ledger entry under its associated ledger
            List<redu_Ledger_Entry__c> newLedgerEntries = new List<redu_Ledger_Entry__c>();
            for (rio_ed__Fee_Payment__c payment : (list<rio_ed__Fee_Payment__c>)newlist) {
               	
                Id ledgerId = paymentLedgerMap.get(payment.Id);
                
                if (ledgerId != null) {
                    // Determine the type of ledger entry to be added (determined by payment type (Payment by default))
                    String ledgerEntryType = 'Payment';
                    
                    if (payment.rio_ed__Transaction_Type__c != null) {
                        ledgerEntryType = payment.rio_ed__Transaction_Type__c;
                    }
                    
                    redu_Ledger_Entry__c newLedgerEntry = new redu_Ledger_Entry__c(
                        redu_Student_Ledger__c = ledgerId, redu_Payment_Amount__c = payment.rio_ed__Payment_Amount__c,
                        redu_Date__c = payment.rio_ed__Payment_Date__c, redu_Related_Payment__c = payment.Id,
                        redu_Type__c = ledgerEntryType
                    );
                    newLedgerEntries.add(newLedgerEntry);
                }
           	}
            
            // Insert ledger entries and map errors back to any payments that may have caused them
            if (!newLedgerEntries.isEmpty()) {

                Database.SaveResult[] saveResultsLe = Database.insert(newLedgerEntries, false);
                for (Integer i = 0; i < saveResultsLe.size(); i++) {
                    //If the insert failed, map error back to triggering payment
                    if (!saveResultsLe[i].isSuccess()) {
                        paymentIdMap.get(newLedgerEntries[i].redu_Related_Payment__c).addError(saveResultsLe[i].getErrors()[0].getMessage());
                    }
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) {
            // Map from ids to payments
            Map<Id, rio_ed__Fee_Payment__c> paymentIdMap = new Map<Id, rio_ed__Fee_Payment__c>();
            
            // For each updated payment, update its associated ledger entry
            List<redu_Ledger_Entry__c> entriesToUpdate = new List<redu_Ledger_Entry__c>();
            
            for (rio_ed__Fee_Payment__c payment : (list<rio_ed__Fee_Payment__c>)newlist) {
                paymentIdMap.put(payment.Id, payment);
            }
            
            for (redu_Ledger_Entry__c entryToUpdate : [
                SELECT redu_Related_Payment__r.rio_ed__Payment_Amount__c, redu_Related_Payment__r.rio_ed__Payment_Date__c, redu_Related_Payment__r.rio_ed__Transaction_Type__c 
                FROM redu_Ledger_Entry__c 
                WHERE redu_Related_Payment__c in :newlist]) 
            {
                // Determine the new type of the ledger entry (determined by payment type (Payment by default))
                String ledgerEntryType = 'Payment';
                
                if (entryToUpdate.redu_Related_Payment__r.rio_ed__Transaction_Type__c != null) {
                    ledgerEntryType = entryToUpdate.redu_Related_Payment__r.rio_ed__Transaction_Type__c;
                }
                
                entryToUpdate.redu_Payment_Amount__c = entryToUpdate.redu_Related_Payment__r.rio_ed__Payment_Amount__c;
                entryToUpdate.redu_Date__c = entryToUpdate.redu_Related_Payment__r.rio_ed__Payment_Date__c;
                entryToUpdate.redu_Type__c = ledgerEntryType;
                
                entriesToUpdate.add(entryToUpdate);
            }
            
            // Update ledger entries and map errors back to any payments that may have caused them
            if (!entriesToUpdate.isEmpty()) {                

                Database.SaveResult[] saveResultsLe = Database.update(entriesToUpdate, false);
                for (Integer i = 0; i < saveResultsLe.size(); i++) {
                    //If the update failed, map error back to triggering payment
                    if (!saveResultsLe[i].isSuccess()){
                        paymentIdMap.get(entriesToUpdate[i].redu_Related_Payment__c).addError(saveResultsLe[i].getErrors()[0].getMessage());
                    }
                }
            }
        } else if (triggerAction == hed.TDTM_Runnable.Action.BeforeDelete) {
            // Map from ids to payments
            Map<Id, rio_ed__Fee_Payment__c> paymentIdMap = new Map<Id, rio_ed__Fee_Payment__c>();
            
            // For each deleted payment, add its id to the map (used for error checking)
            for (rio_ed__Fee_Payment__c payment : (list<rio_ed__Fee_Payment__c>)oldList) {
                paymentIdMap.put(payment.Id, payment);
            }
            
            // For each deleted payment, delete its associated ledger entry
            List<redu_Ledger_Entry__c> entriesToDelete = [select Id, redu_Related_Payment__c from redu_Ledger_Entry__c where redu_Related_Payment__c IN :oldList];
            
            // Delete ledger entries and map errors back to any payments that may have caused them
            if (!entriesToDelete.isEmpty()){
                Database.DeleteResult[] deleteResultsLe = Database.delete(entriesToDelete, false);
                for (Integer i = 0; i < deleteResultsLe.size(); i++){
                    //If the delete failed, map error back to triggering payment
                    if (!deleteResultsLe[i].isSuccess()){
                        paymentIdMap.get(entriesToDelete[i].redu_Related_Payment__c).addError(deleteResultsLe[i].getErrors()[0].getMessage());
                    }
                }
            }
        }
        
        return dmlWrapper;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = [
            SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
            FROM hed__Trigger_Handler__c 
            WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Fee_Payment__c_redu_PAYMENT_LedgerEntry_TDTM_1'
        ];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'REDU_PAYMENT_LedgerEntry',
                hed__Object__c = 'rio_ed__Fee_Payment__c',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'BeforeDelete;AfterInsert;AfterUpdate',
                hed__Class__c = 'redu_PAYMENT_LedgerEntry_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Fee_Payment__c_redu_PAYMENT_LedgerEntry_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}