/**
 * @author 		WDCi (LKoh)
 * @date 		April 2022
 * @group 		Trigger Handler
 * @description	Custom Trigger Util
 * 
 */

public class redu_TranscriptTriggerHandler_MANAGER {
    
    public static void init_UpdateCustomerAccessTDTM(){
        redu_CDL_UpdateCustomerAccess_TDTM.installTDTMSetting();        
    }
    public static void init_UpdateSDocsGeneratedFilesTDTM(){
        redu_CV_UpdateSDocsGeneratedFiles_TDTM.installTDTMSetting();
    }    
}