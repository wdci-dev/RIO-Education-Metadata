/**
* @author           WDCi-MKCheah
* @date             Mar 2023
* @group            SDocs
* @description      TDTM for SDocs
* @change-history   
*/
trigger REDU_SDocTrigger on SDOC__SDoc__c (before insert, before update, before delete, 
    after insert, after update, after delete, after undelete 
){
    system.debug('TDTM_SDocs :: ');
    hed.TDTM_Global_API.run(Trigger.isBefore, Trigger.isAfter, 
        Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUnDelete, 
        Trigger.new, Trigger.old, 
        Schema.Sobjecttype.SDOC__SDoc__c
    );
}