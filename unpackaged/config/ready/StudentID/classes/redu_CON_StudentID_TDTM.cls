/**
* @author           WDCi(LKoh)
* @date             Dec 2021
* @group            Contact Custom Automation
* @description      Automation to generate student number
* @change-history   15-12-2021 - Initial Build, Custom Automation for generating student number in Contact
*/
global without sharing class redu_CON_StudentID_TDTM extends hed.TDTM_Runnable {
    
    private static final String TYPE_STUDENT = 'Student';

    public class REPT_Exception extends Exception{}
    
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        List<Contact> newContactList = (List<Contact>) newList;
        List<Contact> oldContactList = (List<Contact>) oldList;
        
        hed.TDTM_Runnable.dmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();

        List<redu_Student_Number__c> studentNumberList = new List<redu_Student_Number__c>();
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert || triggerAction == hed.TDTM_Runnable.Action.BeforeUpdate) {
            for (Contact con : newContactList) {
                if (String.isBlank(con.rio_ed__Student_ID__c) && con.redu_Contact_Type__c == TYPE_STUDENT) {
                    redu_Student_Number__c newStudentNumber = new redu_Student_Number__c();
                    newStudentNumber.redu_Salesforce_Record_Id__c = con.Id;
                    newStudentNumber.redu_Student_Email__c = con.Email;
                    studentNumberList.add(newStudentNumber);
                }
            }
        }        

        if (!studentNumberList.isEmpty()) {
            try {
                insert studentNumberList;

                List<redu_Student_Number__c> refreshedStudentNumberList = [SELECT Id, Name, redu_Salesforce_Record_Id__c FROM redu_Student_Number__c WHERE Id IN :studentNumberList];
                Map<Id, String> contactToStudentNumberMap = new Map<Id, String>();
                for (redu_Student_Number__c studentNum : refreshedStudentNumberList) {
                    contactToStudentNumberMap.put(studentNum.redu_Salesforce_Record_Id__c, studentNum.Name);
                }

                List<Contact> contactUpdateList = new List<Contact>();
                for (SObject contactSObj : newList) {
                    Contact currentContact = (Contact) contactSObj;

                    if (contactToStudentNumberMap.containsKey(currentContact.Id)) {
                        if (triggerAction == hed.TDTM_Runnable.Action.BeforeUpdate) {
                            currentContact.rio_ed__Student_ID__c = contactToStudentNumberMap.get(currentContact.Id);
                        } else {
                            Contact contactToUpdate = new Contact();
                            contactToUpdate.Id = currentContact.Id;
                            contactToUpdate.rio_ed__Student_ID__c = contactToStudentNumberMap.get(currentContact.Id);
                            contactUpdateList.add(contactToUpdate);
                        }
                    }
                }
                
                if (!contactUpdateList.isEmpty()) {
                    update contactUpdateList;
                }                
            } catch (Exception exp) {
                throw new REPT_Exception('Error encountered during Update Contact Student Number Automation. Error: Line ' + exp.getLineNumber() + ' - ' + exp.getMessage() );
            }
        }
        return dmlWrapper;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'Contact_redu_CON_StudentID_TDTM_6'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                hed__Object__c = 'Contact',
                hed__Load_Order__c = 6,
                hed__Trigger_Action__c = 'BeforeUpdate;AfterInsert',
                hed__Class__c = 'redu_CON_StudentID_TDTM',
                hed__Active__c = true,
                rio_ed__Unique_Key__c = 'Contact_redu_CON_StudentID_TDTM_6'
            );
            insert newTriggerHandler;
        }
    }
}