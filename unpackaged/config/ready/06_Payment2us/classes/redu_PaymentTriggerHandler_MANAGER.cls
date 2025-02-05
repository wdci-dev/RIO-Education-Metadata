/**
 * @author 		WDCi (LKoh)
 * @date 		Jan 2022
 * @group 		Trigger Handler
 * @description	Custom Trigger Util
 * 
 */

public class redu_PaymentTriggerHandler_MANAGER {
    
    public static void initCustomTriggerHandler(){
        redu_PTXN_UpsertPayment_TDTM.installTDTMSetting();
        redu_PTXN_UpdateOrder_TDTM.installTDTMSetting();
    }    
}