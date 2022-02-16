trigger redu_PaymentTrxTrigger on AAkPay__Payment_Txn__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    hed.TDTM_Global_API.run(Trigger.isBefore, Trigger.isAfter,
        Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUnDelete, 
        Trigger.new, Trigger.old, 
        Schema.Sobjecttype.AAkPay__Payment_Txn__c
    );
    
}