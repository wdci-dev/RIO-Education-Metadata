/**
 * @author 		WDCi (Pasan)
 * @date 		Sep 2021
 * @group 		RIO Education
 * @description	Create/Link Course Connection to Transfer Credit upon status change
 * @change-history   
 * - 05/10/2021 WDCi-CM: added getProgramCompletionFeeDueDays()
 */
public with sharing class redu_TC_CustomSetting_UTIL {

    public static Set<String> getTCApprovedStatuses(){
        rio_ed__RIO_Education_Settings__c settings = rio_ed__RIO_Education_Settings__c.getInstance();
        return getCommaString2Set(settings.redu_Transfer_Credit_Approved_Statuses__c);
    }

    public static Set<String> getAgreementActiveStatuses(){
        rio_ed__RIO_Education_Settings__c settings = rio_ed__RIO_Education_Settings__c.getInstance();
        return getCommaString2Set(settings.redu_Agreement_Active_Statuses__c);
    }

    public static Boolean getReleaseGrades(){
        rio_ed__RIO_Education_Settings__c settings = rio_ed__RIO_Education_Settings__c.getInstance();
        return settings.redu_Transfer_Credit_Release_Grades__c;
    }
    
    public static String getGradeResultForCC(){
        rio_ed__RIO_Education_Settings__c settings = rio_ed__RIO_Education_Settings__c.getInstance();
        //System.debug('grade result: '+settings.redu_Transfer_Credit_Grade_Result__c);
        return settings.redu_Transfer_Credit_Grade_Result__c;
    }

    public static Integer getProgramCompletionFeeDueDays(){
        rio_ed__RIO_Education_Settings__c settings = rio_ed__RIO_Education_Settings__c.getInstance();
        return Integer.valueOf(settings.redu_Program_Completion_Fee_Due_Days__c);
    }

    public static Set<String> getCommaString2Set(String strVal){
        Set<String> setStr = new Set<String>();

        if (String.isNotBlank(strVal)){
            for (String str : strVal.split(',')) {
                if (String.isNotBlank(str)) {
                    setStr.add(str);
                }
            }
        }

        return setStr;
    }

    public static String getCourseConnectionStudentRecordTypeId(){
        hed__Hierarchy_Settings__c settingsEDA = hed__Hierarchy_Settings__c.getInstance();
        return settingsEDA.hed__Student_RecType__c;
    }
    
}