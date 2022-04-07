/**
 * @author          WDCi(LKoh)
 * @date            Jan 2022
 * @group           Util
 * @description     Custom Settings Util
 */

public without sharing class redu_PaymentCustomSetting_UTIL {
    public static rio_ed__RIO_Education_Settings__c getSetting(){
        return rio_ed__RIO_Education_Settings__c.getInstance();
    }

    // Payment2Us related methods
    public static String getPaymentRecordTypeId(){
        return getSetting().redu_Payment_Trx_Payment_RT_Id__c;
    }
    
    public static String getPaymentTrxDefaultStatus(){
        return getSetting().redu_Payment_Trx_Default_Status__c;
    }
}