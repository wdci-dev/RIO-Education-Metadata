/**
* @author           WDCi-LKoh (Original by: ???)
* @date             Oct 2020
* @group            Student Ledger Automation for Student Fee
* @description      Create and Update Student Ledger based on Student Fee activity
* @change-history   
*/
global class redu_SFEE_StudentLedger_TDTM extends hed.TDTM_Runnable {
    static Boolean throwErrorForTesting = false;
    
   	// the Trigger Handler’s Run method we must provide
   	global override hed.TDTM_Runnable.DmlWrapper run(List<SObject> newlist, List<SObject> oldlist,
       	hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

       	hed.TDTM_Runnable.dmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();

       	if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            // Map from program enrollments to student fees
            Map<Id, List<rio_ed__Student_Fee__c>> enrollmentsToSfsMap = new Map<Id, List<rio_ed__Student_Fee__c>>();
            
           	// Make a list of all the program enrollments which have had new Student Fee records created for them
           	Set<Id> enrollmentsWithNewFeesID = new Set<Id>();
            
           	for (rio_ed__Student_Fee__c sf : (list<rio_ed__Student_Fee__c>)newlist) {
               	enrollmentsWithNewFeesID.add(sf.rio_ed__Program_Enrollment__c);
                // Add student fees to the enrollments to student fees map
                List<rio_ed__Student_Fee__c> enrollmentSfs = new List<rio_ed__Student_Fee__c>();
                if (enrollmentsToSfsMap.containsKey(sf.rio_ed__Program_Enrollment__c)) {
                    enrollmentSfs = enrollmentsToSfsMap.get(sf.rio_ed__Program_Enrollment__c);
                }
                enrollmentSfs.add(sf);
                enrollmentsToSfsMap.put(sf.rio_ed__Program_Enrollment__c, enrollmentSfs);
           	}
            
           	List<hed__Program_Enrollment__c> enrollmentsWithNewFees = [
                SELECT hed__Contact__c 
                FROM hed__Program_Enrollment__c 
                WHERE Id in :enrollmentsWithNewFeesID
            ];
            
            // Map from students to student fees
            Map<Id, List<rio_ed__Student_Fee__c>> studentsToSfsMap = new Map<Id, List<rio_ed__Student_Fee__c>>();
            
           	// Make a list of all the students who have had new Student Fee records created for them
           	Set<Id> studentsWithNewFeesID = new Set<Id>();
            
           	for (hed__Program_Enrollment__c pe : enrollmentsWithNewFees) {
               	studentsWithNewFeesID.add(pe.hed__Contact__c);
				// Add student fees to the students to student fees map
				List<rio_ed__Student_Fee__c> studentSfs = new List<rio_ed__Student_Fee__c>();
                if (studentsToSfsMap.containsKey(pe.hed__Contact__c)) {
                    studentSfs = studentsToSfsMap.get(pe.hed__Contact__c);   
                }
                studentSfs.addall(enrollmentsToSfsMap.get(pe.Id));
                studentsToSfsMap.put(pe.hed__Contact__c, studentSfs);
           	}
            
           	// Make a list of all the students who have Student Ledger records associated with them
           	List<redu_Student_Ledger__c> listLedgers = [
                SELECT redu_Contact__c 
                FROM redu_Student_Ledger__c
                WHERE redu_Contact__c IN :studentsWithNewFeesID
            ];
            
           	Set<Id> studentsWithLedgersID = new Set<Id>();            
           	for (redu_Student_Ledger__c ledger : listLedgers) {
               	studentsWithLedgersID.add(ledger.redu_Contact__c);
           	}
            
            // For any students with new fee records added and no ledger created, create a ledger for them
           	List<redu_Student_Ledger__c> newLedgers = new List<redu_Student_Ledger__c>();
            
           	for (Id studentID : studentsWithNewFeesID) {
               	if (!(studentsWithLedgersID.contains(studentID))) {
                   	redu_Student_Ledger__c newLedger = new redu_Student_Ledger__c(redu_Contact__c = studentID);
                   	newLedgers.add(newLedger);
               	}
           	}
            
            // List of contacts to update
            List<Contact> listCon = new List<Contact>();
            
           	// Insert ledgers and map errors back to any student fees that may have caused them
            if (!newLedgers.isEmpty()) {
                Database.SaveResult[] saveResultsLedgers = Database.insert(newLedgers, false);
                for (Integer i = 0; i < saveResultsLedgers.size(); i++) {
                    //If the insert failed, map error back to triggering Student Fee
                    if (saveResultsLedgers[i].isSuccess()) {
                        // Update Contact's student ledger - needed for attributes on record page display from M-D relationship
                        listCon.add(new Contact(redu_Student_Ledger__c = newLedgers[i].Id, Id = newLedgers[i].redu_Contact__c));
                    } else {
                        for (rio_ed__Student_Fee__c sf : studentsToSfsMap.get(newLedgers[i].redu_Contact__c)) {
                            sf.addError(saveResultsLedgers[i].getErrors()[0].getMessage());
                        }
                    }
                }
            }
            
            // Update contacts and map errors back to any fee lines that may have caused them
            if (!listCon.isEmpty()) {
                Database.SaveResult[] saveResultsCt = Database.update(listCon, false);
                for (Integer i = 0; i < saveResultsCt.size(); i++) {
                    //If the update failed, map error back to triggering Student Fee
                    if (!saveResultsCt[i].isSuccess()) {
                        for (rio_ed__Student_Fee__c sf : studentsToSfsMap.get(listCon[i].Id)) {
                            sf.addError(saveResultsCt[i].getErrors()[0].getMessage());
                        }
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
            WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'rio_ed__Student_Fee__c_redu_SFEE_StudentLedger_TDTM_2'
        ];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'REDU_SFEE_StudentLedger',
                hed__Object__c = 'rio_ed__Student_Fee__c',
                hed__Load_Order__c = 2,
                hed__Trigger_Action__c = 'AfterInsert',
                hed__Class__c = 'redu_SFEE_StudentLedger_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'rio_ed__Student_Fee__c_redu_SFEE_StudentLedger_TDTM_2'
            );
            insert newTriggerHandler;
        }
    }
}