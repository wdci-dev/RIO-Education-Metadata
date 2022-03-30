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
    public static string pageMessage(String studentFeeId) {
        try {
            Map<Id, rio_ed__Student_Fee__c> studentFeeInfo = redu_Payment_UTIL.getStudentFeesInfo(new Set<Id>{studentFeeId});
            if (studentFeeInfo.isEmpty()) {
                NoDataFoundException ndfe = new NoDataFoundException();
                ndfe.setMessage(Label.redu_PaymentHandler_Missing_Student_Fee_Id);
                throw ndfe;
            } else {
                if (!String.isBlank(studentFeeId)){
                    AAkPay__Payment_Txn__c initializedTrx = new AAkPay__Payment_Txn__c();
                    initializedTrx.AAkPay__Amount__c = 0;                    
                }
                rio_ed__Student_Fee__c sfee = studentFeeInfo.get(studentFeeId);
                return sfee.redu_PrepaymentMsg__c;
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static redu_PrePaymentInfo initData(String studentFeeId, String progAppId){
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

            if (String.isNotBlank(studentFeeId)) {
                Map<Id, rio_ed__Student_Fee__c> studentFeeInfo = redu_Payment_UTIL.getStudentFeesInfo(new Set<Id>{studentFeeId});

                if (studentFeeInfo.isEmpty()) {
                    NoDataFoundException ndfe = new NoDataFoundException();
                    ndfe.setMessage(Label.redu_PaymentHandler_Missing_Student_Fee_Id);
                    throw ndfe;
                } else {
                    rio_ed__Student_Fee__c sfee = studentFeeInfo.get(studentFeeId);

                    if (sfee.rio_ed__Outstanding_Amount__c > 0) {
                        
                        redu_PrePaymentInfo ppInfo = new redu_PrePaymentInfo(sfee);
                        ppInfo.contactId = sfee.rio_ed__Program_Enrollment__r.hed__Contact__c;                                                

                        if(sfee.Payment_Txns__r.isEmpty()){
                            //just in case there is no payment trx, we will create one upon request                            
                            AAkPay__Payment_Txn__c newTrx = redu_Payment_UTIL.initPaymentTrx(sfee, sfee.rio_ed__Outstanding_Amount__c);
                            if(Test.isRunningTest()){
                                newTrx.OwnerId = UserInfo.getUserId();
                            } else {
                                newTrx.OwnerId = Site.getAdminId();
                            }
                            System.debug('newTrx owner:');
                            System.debug(newTrx.OwnerId);
                            insert newTrx;

                            AAkPay__Payment_Txn__c createdPayTrx = [SELECT Id, AAkPay__Amount__c, AAkPay__Pay_Now__c FROM AAkPay__Payment_Txn__c WHERE Id =: newTrx.Id];
                            ppInfo.paymentTrxId = createdPayTrx.Id;
                            ppInfo.paymentTrxUrl = redu_PrePaymentInfo.cleansedUrl(createdPayTrx.AAkPay__Pay_Now__c);
                            ppInfo.paymentAmount = createdPayTrx.AAkPay__Amount__c;
                        } else {

                            ppInfo.paymentTrxId = sfee.Payment_Txns__r.get(0).Id;
                            ppInfo.paymentTrxUrl = redu_PrePaymentInfo.cleansedUrl(sfee.Payment_Txns__r.get(0).AAkPay__Pay_Now__c);
                            ppInfo.paymentAmount = sfee.Payment_Txns__r.get(0).AAkPay__Amount__c;
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