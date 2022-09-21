trigger TDTM_Grade on rio_ed__Grade__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    /*
    > Project: RIO Education
    > Author: WDCi
    > Developer: jmonroe@wdcigroup.net
    > Date: July 2022
    > Description: TDTM Trigger (i.e. Table Driven Trigger Management) Student Fee
    > References:
    * https://powerofus.force.com/articles/Resource/NPSP-Table-Driven-Trigger-Management-TDTM
    * https://github.com/SalesforceFoundation/HEDAP/tree/master/src/triggers
    */
        hed.TDTM_Global_API.run(Trigger.isBefore, Trigger.isAfter,
                                Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUnDelete, 
                                Trigger.new, Trigger.old, 
                                Schema.Sobjecttype.rio_ed__Grade__c);
    }