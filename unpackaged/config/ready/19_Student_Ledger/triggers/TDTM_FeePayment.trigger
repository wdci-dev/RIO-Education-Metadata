/**
* @author           WDCi-LKoh
* @date             October 2022
* @group            Student Ledger automation
* @description      TDTM for Fee Payment
* @change-history   
*/
trigger TDTM_FeePayment on rio_ed__Fee_Payment__c (before insert, before update, before delete, 
    after insert, after update, after delete, after undelete 
){
    hed.TDTM_Global_API.run(Trigger.isBefore, Trigger.isAfter, 
        Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUnDelete, 
        Trigger.new, Trigger.old, 
        Schema.Sobjecttype.rio_ed__Fee_Payment__c
    );
}