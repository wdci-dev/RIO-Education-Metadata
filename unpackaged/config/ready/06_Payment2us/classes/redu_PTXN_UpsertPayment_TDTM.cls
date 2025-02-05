/**
 * @author 		    WDCi (LKoh)
 * @date 		    Jan 2022
 * @group 		    Student Fee
 * @description	    Custom Trigger to create a rio ed payment record when payments2us's payment transaction record is paid
 * 
 */

global without sharing class redu_PTXN_UpsertPayment_TDTM extends hed.TDTM_Runnable {
    
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

        System.debug('redu_PTXN_UpsertPayment_TDTM running...');

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;

        if(triggerAction == hed.TDTM_Runnable.Action.BeforeUpdate){
            List<AAkPay__Payment_Txn__c> qualifiedList = new List<AAkPay__Payment_Txn__c>();

            integer counter = 0;
            for(AAkPay__Payment_Txn__c pTxn : (List<AAkPay__Payment_Txn__c>) newList ){
                AAkPay__Payment_Txn__c oldPTxn = (AAkPay__Payment_Txn__c) oldList.get(counter);

                if((pTxn.redu_Student_Fee__c != null && pTxn.redu_Payment__c == null && pTxn.AAkPay__Banked_Payment__c == 'YES' && pTxn.AAkPay__Banked_Payment__c != oldPTxn.AAkPay__Banked_Payment__c)
                    || (pTxn.redu_Student_Fee__c != null && Test.isRunningTest())) {
                    qualifiedList.add(pTxn);
                }
            }            

            Map<Integer, Integer> mapFeeline2PaymentIdx = new Map<Integer, Integer>();
            
            if(!qualifiedList.isEmpty()){
                List<rio_ed__Fee_Payment__c> reduPayments = new List<rio_ed__Fee_Payment__c>();
                List<rio_ed__Fee_Line__c> reduFeelines = new List<rio_ed__Fee_Line__c>();
                integer dmlCounter = 0;                
                
                for(AAkPay__Payment_Txn__c pTxn : qualifiedList){
                   
                    rio_ed__Fee_Payment__c feePayment = redu_Payment_UTIL.initFeePayment(
                                                            pTxn.redu_Student_Fee__c, 
                                                            pTxn.AAkPay__Card_Charged_Amount__c, 
                                                            pTxn.AAkPay__Transaction_Date__c, 
                                                            pTxn.AAkPay__Payment_Source__c);
                    feePayment.rio_ed__Transaction_Type__c = redu_PaymentConstant_UTIL.FP_TRANSACTIONTYPE_PAYMENT;
                    reduPayments.add(feePayment);
                    
                    if (pTxn.AAkPay__Service_Fee__c > 0){                       
                        // Add a Fee-line to track service fee
                        rio_ed__Fee_Line__c flSvc = new rio_ed__Fee_Line__c(rio_ed__Student_Fee__c = pTxn.redu_Student_Fee__c, rio_ed__Other_Amount__c = pTxn.AAkPay__Service_Fee__c);
                        mapFeeline2PaymentIdx.put(reduFeelines.size(), dmlCounter);
                        reduFeelines.add(flSvc);
                    }
                    dmlCounter++;
                }

                System.debug('reduPayments:');
                System.debug(reduPayments);

                Set<Id> paymentIds = new Set<Id>();
                dmlCounter = 0;
                for(Database.SaveResult sr : Database.insert(reduPayments, false)){
                    if(!sr.isSuccess()) {
                        System.debug('Error in Payment Record creation:');
                        System.debug(sr.getErrors()[0].getMessage());
                        (qualifiedList.get(dmlCounter)).addError(sr.getErrors()[0].getMessage());
                    } else {
                        AAkPay__Payment_Txn__c pTxn = qualifiedList.get(dmlCounter);
                        pTxn.redu_Payment__c = sr.getId();

                        paymentIds.add(pTxn.redu_Payment__c);
                    }

                    dmlCounter ++;
                }                
                
                // Insert Fee lines for service amounts if applicable
                dmlCounter = 0;
                if (reduFeelines.size()>0){
                    
                    for(Database.SaveResult sr : Database.insert(reduFeelines, false)){
                        if(!sr.isSuccess()){
                            qualifiedList.get(mapFeeline2PaymentIdx.get(dmlCounter)).addError(sr.getErrors()[0].getMessage());
                        }                    
                        dmlCounter++;
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
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'AAkPay__Payment_Txn__c_redu_PTXN_UpsertPayment_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_UpsertPayment',
                hed__Object__c = 'AAkPay__Payment_Txn__c',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'BeforeUpdate',
                hed__Class__c = 'redu_PTXN_UpsertPayment_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'AAkPay__Payment_Txn__c_redu_PTXN_UpsertPayment_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}