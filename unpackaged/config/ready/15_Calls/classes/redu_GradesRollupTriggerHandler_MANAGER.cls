/**
 * @author 		WDCi (Jordan)
 * @date 		July 2022
 * @group 		Trigger Handler
 * @description	Custom Trigger Util
 * 
 */

public class redu_GradesRollupTriggerHandler_MANAGER {
    
    public static void init_GradeToTermGradeRollup_TDTM(){
        redu_GRD_GradeToTermGradeRollup_TDTM.installTDTMSetting();        
    }
    public static void init_SubGradeToGradeRollup_TDTM(){
        redu_GRD_SubGradeToGradeRollup_TDTM.installTDTMSetting();
    }    
}