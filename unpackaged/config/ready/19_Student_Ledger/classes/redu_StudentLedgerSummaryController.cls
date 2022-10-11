public with sharing class redu_StudentLedgerSummaryController {
    @AuraEnabled(cacheable=true)
    public static redu_Student_Ledger__c getStudentLedger(Id contactId) {
        return [
            SELECT Id, redu_Contact__c, redu_Total_Fees__c, Name, redu_Total_Payments__c, redu_Outstanding_Amount__c
            FROM redu_Student_Ledger__c
            WHERE redu_Contact__c = :contactId
       ];
    }
}