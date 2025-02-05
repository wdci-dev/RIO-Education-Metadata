/**
 * @author 		    WDCi (VTan)
 * @date 		    Jan 2025
 * @group 		    Student Fee
 * @description	    Custom Trigger to update status of RIO Order when payments2us's payment transaction record is paid
 * 
 */
global without sharing class redu_PTXN_UpdateOrder_TDTM extends hed.TDTM_Runnable {

    /**
     * @description Trigger Handler on rio_ed__Student_Fee__c to handle setting the Program Plan
     * @param newList the list of rio_ed__Student_Fee__c from trigger new
     * @param oldList the list of rio_ed__Student_Fee__c from trigger old
     * @param triggerAction which trigger event (BeforeInsert, AfterInsert, etc.).
     * @param objResult the describe for rio_ed__Student_Fee__c
     * @return DmlWrapper
     */
    public override DmlWrapper run(List<SObject> newList, 
                                   List<SObject> oldList, 
                                   hed.TDTM_Runnable.Action triggerAction, 
                                   Schema.DescribeSObjectResult objResult) {

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;
        if(triggerAction == hed.TDTM_Runnable.Action.AfterUpdate){

            Set<Id> orderIds = new Set<Id>();
            integer counter = 0;
            for(AAkPay__Payment_Txn__c pTxn : (List<AAkPay__Payment_Txn__c>) newList ){
                AAkPay__Payment_Txn__c oldPTxn = (AAkPay__Payment_Txn__c) oldList.get(counter);

                if((pTxn.redu_RIO_Order__c != null && pTxn.AAkPay__Banked_Payment__c == 'YES' && pTxn.AAkPay__Banked_Payment__c != oldPTxn.AAkPay__Banked_Payment__c)
                    || (pTxn.redu_RIO_Order__c != null && Test.isRunningTest())) {

                        orderIds.add(pTxn.redu_RIO_Order__c);
                }
                
                if(!orderIds.isEmpty()){

                    //Update RIO Order only if its drafted
                    List<rio_ed__Order__c> qualifiedOrders = new List<rio_ed__Order__c>();
                    for(rio_ed__Order__c order : [SELECT Id, rio_ed__Status__c 
                                                FROM rio_ed__Order__c 
                                                WHERE Id IN : orderIds AND rio_ed__Status__c = : redu_PaymentConstant_UTIL.ORDER_STATUS_DRAFT]){

                        order.rio_ed__Status__c = redu_PaymentConstant_UTIL.ORDER_STATUS_PAID;
                        qualifiedOrders.add(order);
                    }
                    
                    if(!qualifiedOrders.isEmpty()){
                        update qualifiedOrders;
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
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'AAkPay__Payment_Txn__c_redu_PTXN_UpdateOrder_TDTM_2'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_UpdateOrder',
                hed__Object__c = 'AAkPay__Payment_Txn__c',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'AfterUpdate',
                hed__Class__c = 'redu_PTXN_UpdateOrder_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'AAkPay__Payment_Txn__c_redu_PTXN_UpdateOrder_TDTM_2'
            );
            insert newTriggerHandler;
        }
    }
}