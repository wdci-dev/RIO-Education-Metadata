/**
 * @author 		    WDCi (LKoh)
 * @date 		    Jan 2022
 * @group 		    Payment
 * @description	    Custom component to handle offer acceptance, deposit and tuition fee payment
 * 
 */

public without sharing class redu_PrePaymentHandler_LCTRL {
    
    public class Application_EXCEPTION extends Exception {}    

    @AuraEnabled
    public static string pageMessage(String studentFeeId, String orderId) {
        try {

            String prePaymentMsg;
            if(String.isNotBlank(studentFeeId)){
                Map<Id, rio_ed__Student_Fee__c> studentFeeInfo = redu_Payment_UTIL.getStudentFeesInfo(new Set<Id>{studentFeeId});
                prePaymentMsg = studentFeeInfo.get(studentFeeId).redu_PrepaymentMsg__c;
            }else if(String.isNotBlank(orderId)){
                Map<Id, rio_ed__Order__c> ordersInfo = redu_Payment_UTIL.getOrdersInfo(new Set<Id>{orderId});
                prePaymentMsg = ordersInfo.get(orderId).redu_PrepaymentMsg__c;
            }
            
            if (String.isBlank(prePaymentMsg)) {
                NoDataFoundException ndfe = new NoDataFoundException();
                ndfe.setMessage(Label.redu_PaymentHandler_Missing_Student_Fee_Id);
                throw ndfe;
            } else {
                return prePaymentMsg;
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static redu_PrePaymentInfo initData(String studentFeeId, String progAppId, String orderId){
        try {
            
            if (String.isNotBlank(progAppId)) {
                //we always assume that this is meant for deposit payment
                for (rio_ed__Student_Fee__c sfee : [SELECT Id FROM rio_ed__Student_Fee__c 
                    WHERE rio_ed__Program_Enrollment__r.rio_ed__ProgramApplication__c = : progAppId
                    AND rio_ed__Void__c = false                    
                    LIMIT 1
                ]) {
                    studentFeeId = sfee.Id;
                }
            }

            if (String.isNotBlank(studentFeeId) || String.isNotBlank(orderId)) {

                Map<Id, rio_ed__Student_Fee__c> studentFeeInfo = new Map<Id, rio_ed__Student_Fee__c>();
                Map<Id, rio_ed__Order__c> orderInfo = new Map<Id, rio_ed__Order__c>();
                Decimal ourstandingAmount = 0;
                if(String.isNotBlank(studentFeeId)){
                    studentFeeInfo = redu_Payment_UTIL.getStudentFeesInfo(new Set<Id>{studentFeeId});
                    ourstandingAmount= studentFeeInfo.get(studentFeeId).rio_ed__Outstanding_Amount__c;
                } else if (String.isNotBlank(orderId)){
                    orderInfo = redu_Payment_UTIL.getOrdersInfo(new Set<Id>{orderId});
                    ourstandingAmount= orderInfo.get(orderId).rio_ed__Outstanding_Amount__c;
                }

                if (studentFeeInfo.isEmpty() && orderInfo.isEmpty()) {
                    NoDataFoundException ndfe = new NoDataFoundException();
                    ndfe.setMessage(Label.redu_PaymentHandler_Missing_Student_Fee_Id);
                    throw ndfe;
                } else {

                    if (ourstandingAmount > 0) {
                        
                        redu_PrePaymentInfo ppInfo;
                        if(!studentFeeInfo.isEmpty()){
                            ppInfo = new redu_PrePaymentInfo(studentFeeInfo.get(studentFeeId));

                            for (rio_ed__Funding_Allocation__c fa : [SELECT Id, rio_ed__Funding__r.Name, rio_ed__Amount__c FROM rio_ed__Funding_Allocation__c WHERE rio_ed__Status__c = 'Approved' AND (rio_ed__Program_Enrollment__c =: ppInfo.peId OR rio_ed__Program_Application__c =: ppInfo.paId)]) {
                                ppInfo.hasScholarship = true;
                                ppInfo.scholarshipInfo += fa.rio_ed__Funding__r.Name + ' $' + fa.rio_ed__Amount__c.format() + '.00<br/>';
    
                                ppInfo.scholarshipAmount += fa.rio_ed__Amount__c;
                            }

                        }else{
                            ppInfo = new redu_PrePaymentInfo(orderInfo.get(orderId));
                        }
                        
                        if(ppInfo.paymentTrxId == null){
                            //just in case there is no payment trx, we will create one upon request                            
                            AAkPay__Payment_Txn__c newTrx = redu_Payment_UTIL.initPaymentTrx(ppInfo, ourstandingAmount);
                            if(Test.isRunningTest()){
                                newTrx.OwnerId = UserInfo.getUserId();
                            } else {
                                newTrx.OwnerId = Site.getAdminId();
                            }
                            insert newTrx;

                            AAkPay__Payment_Txn__c createdPayTrx = [SELECT Id, AAkPay__Amount__c, AAkPay__Pay_Now__c FROM AAkPay__Payment_Txn__c WHERE Id =: newTrx.Id];
                            ppInfo.paymentTrxId = createdPayTrx.Id;
                            ppInfo.paymentTrxUrl = redu_PrePaymentInfo.cleansedUrl(createdPayTrx.AAkPay__Pay_Now__c);
                            ppInfo.paymentAmount = createdPayTrx.AAkPay__Amount__c;
                        }

                        return ppInfo;
                    } else {
                        throw new Application_EXCEPTION(Label.redu_PaymentHandler_No_Payment_Required);
                    }

                    
                }
            } else {
                throw new Application_EXCEPTION(Label.redu_PaymentHandler_Missing_Student_Fee_Id);
            }

        } catch (Exception e) {
            throw new AuraHandledException(e.getLineNumber() + ' - ' + e.getMessage());
        }
    }
}