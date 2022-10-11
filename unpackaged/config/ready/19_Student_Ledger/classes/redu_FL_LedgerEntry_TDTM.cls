/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Ledger Entry Automation for Fee Line
* @description      Create and Update Ledger Entry based on Fee Line activity
* @change-history   
*/
global class redu_FL_LedgerEntry_TDTM extends hed.TDTM_Runnable {
   	// the Trigger Handler’s Run method we must provide
   	global override hed.TDTM_Runnable.DmlWrapper run(List<SObject> newlist, List<SObject> oldlist, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {
        hed.TDTM_Runnable.dmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            // Map from ids to fee lines
            Map<Id, rio_ed__Fee_Line__c> feeLineIdMap = new Map<Id, rio_ed__Fee_Line__c>();
            
            // For each inserted fee line, get its associated student ledger
            Map<Id, Id> feeLineLedgerMap = new Map<Id, Id>();
            
            for (rio_ed__Fee_Line__c fl : (List<rio_ed__Fee_Line__c>)newList) {
                feeLineIdMap.put(fl.Id, fl);
            }
            
            for(rio_ed__Fee_Line__c fl : [
                SELECT Id, rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.redu_Student_Ledger__c,
                    rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.Name                                         
                FROM rio_ed__Fee_Line__c 
                WHERE Id in :newlist]) 
            {
                if (fl.rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.redu_Student_Ledger__c != NULL) {
                	feeLineLedgerMap.put(fl.Id, fl.rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.redu_Student_Ledger__c);
                } else {
                    feeLineIdMap.get(fl.Id).addError(fl.rio_ed__Student_Fee__r.rio_ed__Program_Enrollment__r.hed__Contact__r.Name + ' has no student ledger.');
                }
            }
            
            // For each inserted fee line, create a new ledger entry under its associated ledger
            List<redu_Ledger_Entry__c> newLedgerEntries = new List<redu_Ledger_Entry__c>();
            for (rio_ed__Fee_Line__c fl : (list<rio_ed__Fee_Line__c>)newlist) {
               	Id ledgerId = feeLineLedgerMap.get(fl.Id);
                
                // Determine the type of ledger entry to be added (determined by funding allocation type (fee if no FA))
                String ledgerEntryType = 'Fee';
                
                if (fl.rio_ed__Funding_Allocation__c != null) {
                    ledgerEntryType = fl.rio_ed__Funding_Allocation_Type__c;
                }
                
                redu_Ledger_Entry__c newLedgerEntry = new redu_Ledger_Entry__c(
                    redu_Student_Ledger__c          = ledgerId, redu_Description__c = fl.rio_ed__Fee_Description__c,
                    redu_Fee_Amount__c              = fl.rio_ed__Fee_Amount__c, 
                    redu_Date__c                    = date.newinstance(fl.CreatedDate.year(), fl.CreatedDate.month(), fl.CreatedDate.day()),
                    redu_Funding_Assistance__c      = fl.rio_ed__Help_Debt_Amount__c,
                    redu_Discount_Amount__c         = fl.rio_ed__Discount_Amount__c,
                    redu_Upfront_Payment_Amount__c  = fl.rio_ed__Upfront_Payment_Amount__c,
                    redu_Related_Fee_Line__c        = fl.Id, 
                    redu_Type__c                    = ledgerEntryType
                );
                newLedgerEntries.add(newLedgerEntry);
           	}
            
            // Insert ledger entries and map errors back to any fee lines that may have caused them
            if (!newLedgerEntries.isEmpty()) {
                Database.SaveResult[] saveResultsLe = Database.insert(newLedgerEntries, false);
                for (Integer i = 0; i < saveResultsLe.size(); i++) {
                    //If the insert failed, map error back to triggering Fee Line
                    if (!saveResultsLe[i].isSuccess()) {
                        feeLineIdMap.get(newLedgerEntries[i].redu_Related_Fee_Line__c).addError(saveResultsLe[i].getErrors()[0].getMessage());
                    }
                }
            }
        }
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) {
            // Map from ids to fee lines
            Map<Id, rio_ed__Fee_Line__c> feeLineIdMap = new Map<Id, rio_ed__Fee_Line__c>();
            
            // For each updated fee line, update its associated ledger entry
            List<redu_Ledger_Entry__c> entriesToUpdate = new List<redu_Ledger_Entry__c>();
            
            Map<Id, redu_Ledger_Entry__c> mapFeeLineId2LedgerEntry = new Map<Id, redu_Ledger_Entry__c>();

            for (redu_Ledger_Entry__c le : [
                SELECT redu_Description__c, redu_Related_Fee_Line__c, redu_Fee_Amount__c, redu_Date__c, redu_Funding_Assistance__c, redu_Discount_Amount__c, 
                    redu_Upfront_Payment_Amount__c 
                FROM redu_Ledger_Entry__c 
                WHERE redu_Related_Fee_Line__c in :newlist]) 
            {
                mapFeeLineId2LedgerEntry.put(le.redu_Related_Fee_Line__c, le);
            }
            
            for (rio_ed__Fee_Line__c fl : (list<rio_ed__Fee_Line__c>)newlist) {
                feeLineIdMap.put(fl.Id, fl);
                
               	redu_Ledger_Entry__c entryToUpdate = mapFeeLineId2LedgerEntry.get(fl.Id);
                
                if (entryToUpdate != null) {
                    // Determine the new type of the ledger entry (determined by funding allocation type (fee if no FA))
                    String ledgerEntryType = 'Fee';
                    
                    if (fl.rio_ed__Funding_Allocation__c != null) {
                        ledgerEntryType = fl.rio_ed__Funding_Allocation_Type__c;
                    }
                    
                    entryToUpdate.redu_Description__c               = fl.rio_ed__Fee_Description__c;
                    entryToUpdate.redu_Fee_Amount__c                = fl.rio_ed__Fee_Amount__c;
                    entryToUpdate.redu_Date__c                      = date.newinstance(fl.CreatedDate.year(), fl.CreatedDate.month(), fl.CreatedDate.day());
                    entryToUpdate.redu_Funding_Assistance__c        = fl.rio_ed__Help_Debt_Amount__c;
                    entryToUpdate.redu_Discount_Amount__c           = fl.rio_ed__Discount_Amount__c;
                    entryToUpdate.redu_Upfront_Payment_Amount__c    = fl.rio_ed__Upfront_Payment_Amount__c;
                    entryToUpdate.redu_Type__c                      = ledgerEntryType;
                    
                    entriesToUpdate.add(entryToUpdate);
                }
           	}
            
            // Update ledger entries and map errors back to any fee lines that may have caused them
            if (!entriesToUpdate.isEmpty()) {
                Database.SaveResult[] saveResultsLe = Database.update(entriesToUpdate, false);
                for (Integer i = 0; i < saveResultsLe.size(); i++) {
                    //If the update failed, map error back to triggering Fee Line
                    if (!saveResultsLe[i].isSuccess()) {
                        feeLineIdMap.get(entriesToUpdate[i].redu_Related_Fee_Line__c).addError(saveResultsLe[i].getErrors()[0].getMessage());
                    }
                }
            }
        }
        
        if (triggerAction == hed.TDTM_Runnable.Action.BeforeDelete) {
            // Map from ids to fee lines
            Map<Id, rio_ed__Fee_Line__c> feeLineIdMap = new Map<Id, rio_ed__Fee_Line__c>();
            
            // For each deleted fee line, add its id to the map (used for error checking)
            for (rio_ed__Fee_Line__c fl : (list<rio_ed__Fee_Line__c>)oldList) {
                feeLineIdMap.put(fl.Id, fl);
            }
            
            // For each deleted fee line, delete its associated ledger entry
            List<redu_Ledger_Entry__c> entriesToDelete = [
                SELECT Id, redu_Related_Fee_Line__c 
                FROM redu_Ledger_Entry__c 
                WHERE redu_Related_Fee_Line__c in :oldList
            ];
            
            // Delete ledger entries and map errors back to any fee lines that may have caused them
            if (!entriesToDelete.isEmpty()) {
                Database.DeleteResult[] deleteResultsLe = Database.delete(entriesToDelete, false);
                for (Integer i = 0; i < deleteResultsLe.size(); i++){
                    //If the delete failed, map error back to triggering Fee Line
                    if (!deleteResultsLe[i].isSuccess()){
                        feeLineIdMap.get(entriesToDelete[i].redu_Related_Fee_Line__c).addError(deleteResultsLe[i].getErrors()[0].getMessage());
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
            WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Fee_Line__c_redu_FL_LedgerEntry_TDTM_3'
        ];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'REDU_FL_LedgerEntry',
                hed__Object__c = 'rio_ed__Fee_Line__c',
                hed__Load_Order__c = 3,
                hed__Trigger_Action__c = 'BeforeDelete;AfterInsert;AfterUpdate',
                hed__Class__c = 'redu_FL_LedgerEntry_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Fee_Line__c_redu_FL_LedgerEntry_TDTM_3'
            );
            insert newTriggerHandler;
        }
    }
}