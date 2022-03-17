/**
 * @author 		    WDCi (LKoh)
 * @date 		    Jan 2022
 * @group 		    Payment
 * @description	    Utility for Payment
 * 
 */

public without sharing class redu_Payment_UTIL {
    
    public static final String TUITIONFEE = 'tuitionfee';
    public static final String MANDATORYFEE = 'mandatoryfee';    

    @TestVisible private static Boolean returnEmpty = false;    

    public static Map<Id, rio_ed__Student_Fee__c> getStudentFeesInfo(Set<Id> sfeeIds) {
                
        Map<Id, rio_ed__Student_Fee__c> studentFeesInfo = new Map<Id, rio_ed__Student_Fee__c>(
            [SELECT Id, rio_ed__Program_Enrollment__c, 
                rio_ed__Program_Enrollment__r.rio_ed__ProgramApplication__c,            
                rio_ed__Program_Enrollment__r.hed__Account__c,
                rio_ed__Program_Enrollment__r.hed__Account__r.Name,
                rio_ed__Program_Enrollment__r.hed__Program_Plan__c,
                rio_ed__Student_Fee_Label__c,
                rio_ed__Outstanding_Amount__c,
                rio_ed__Fee_Status__c,
                rio_ed__Program_Enrollment__r.hed__Contact__c, 
                rio_ed__Program_Enrollment__r.hed__Contact__r.AccountId,
                rio_ed__Program_Enrollment__r.hed__Contact__r.FirstName,
                rio_ed__Program_Enrollment__r.hed__Contact__r.LastName,
                rio_ed__Program_Enrollment__r.hed__Contact__r.Email,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MobilePhone,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MailingStreet,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MailingCity,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MailingState,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MailingPostalCode,
                rio_ed__Program_Enrollment__r.hed__Contact__r.MailingCountry,
                rio_ed__Program_Enrollment__r.hed__Contact__r.Salutation,
                rio_ed__Program_Enrollment__r.rio_ed__Fee_Type_Option__c,
                redu_PaymentFormId__c,
                redu_Payment_For__c,
                redu_PrepaymentMsg__c,
                rio_ed__Fee_Locked__c,
                (SELECT Id, redu_Student_Fee__c, AAkPay__Pay_Now__c, AAkPay__Amount__c FROM Payment_Txns__r WHERE RecordTypeId =: redu_PaymentCustomSetting_UTIL.getPaymentRecordTypeId() AND AAkPay__Banked_Payment__c = 'NO' AND AAkPay__Status__c =: redu_PaymentCustomSetting_UTIL.getPaymentTrxDefaultStatus() ORDER BY CreatedDate LIMIT 1) 
            FROM rio_ed__Student_Fee__c 
            WHERE Id IN: sfeeIds
            AND rio_ed__Void__c = false]
        );

        if (Test.isRunningTest() && returnEmpty) {
            return new Map<Id, rio_ed__Student_Fee__c>();
        }
        return studentFeesInfo;
    }    

    public static AAkPay__Payment_Txn__c initPaymentTrx(rio_ed__Student_Fee__c sfeeInfo, Decimal oustandingAmount) {

        AAkPay__Payment_Txn__c newTrx = new AAkPay__Payment_Txn__c();
        if(!sfeeInfo.Payment_Txns__r.isEmpty()){
            //if existing unpaid payment transaction found, we update it
            newTrx.Id = sfeeInfo.Payment_Txns__r.get(0).Id;
        }

        newTrx.AAkPay__Status__c = redu_PaymentCustomSetting_UTIL.getPaymentTrxDefaultStatus();
        newTrx.redu_Student_Fee__c = sfeeInfo.Id;
        newTrx.AAkPay__Contact__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__c;
        newTrx.AAkPay__Account__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.AccountId;
        newTrx.AAkPay__FirstName__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.FirstName;
        newTrx.AAkPay__LastName__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.LastName;
        newTrx.AAkPay__Email__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.Email;
        newTrx.AAkPay__MobilePhone__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MobilePhone;

        newTrx.AAkPay__MailingStreet__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MailingStreet;
        newTrx.AAkPay__MailingCity__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MailingCity;
        newTrx.AAkPay__MailingState__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MailingState;
        newTrx.AAkPay__MailingPostalCode__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MailingPostalCode;
        newTrx.AAkPay__MailingCountry__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.MailingCountry;
        newTrx.AAkPay__Salutation__c = sfeeInfo.rio_ed__Program_Enrollment__r.hed__Contact__r.Salutation;

        newTrx.RecordTypeId = redu_PaymentCustomSetting_UTIL.getPaymentRecordTypeId();
        newTrx.AAkPay__Amount__c = oustandingAmount;                    
        
        // General
        newTrx.AAkPay__Payment_Type__c = sfeeInfo.redu_PaymentFormId__c;
        newTrx.AAkPay__Payment_For__c = sfeeInfo.redu_Payment_For__c;        

        List<AAkPay__Payment_Type__c> retrievePaymentFormList = [SELECT Id, AAkPay__Payment_Setting__c, AAkPay__Service_Fee_PCT__c FROM AAkPay__Payment_Type__c WHERE Id = :sfeeInfo.redu_PaymentFormId__c];
        if (Test.isRunningTest()) {
            retrievePaymentFormList = [SELECT Id, AAkPay__Payment_Setting__c, AAkPay__Service_Fee_PCT__c FROM AAkPay__Payment_Type__c];
            newTrx.AAkPay__Payment_Type__c = retrievePaymentFormList[0].Id;
        }            

        newTrx.AAkPay__Payment_Setting__c = retrievePaymentFormList[0].AAkPay__Payment_Setting__c; 
        newTrx.AAkPay__Service_Fee_PCT__c = retrievePaymentFormList[0].AAkPay__Service_Fee_PCT__c;
        return newTrx;
    }

    public static rio_ed__Fee_Payment__c initFeePayment(Id studentFeeId, Decimal paymentAmount, Date paymentDate, String paymentMethod) {

        rio_ed__Fee_Payment__c feePayment = new rio_ed__Fee_Payment__c();
        feePayment.rio_ed__Student_Fee__c = studentFeeId;
        feePayment.rio_ed__Payment_Amount__c = paymentAmount;
        feePayment.rio_ed__Payment_Date__c = paymentDate;        

        if (!String.isBlank(paymentMethod)) {
            feePayment.rio_ed__Payment_Method__c = paymentMethod;
        }        
        return feePayment;
    }
}