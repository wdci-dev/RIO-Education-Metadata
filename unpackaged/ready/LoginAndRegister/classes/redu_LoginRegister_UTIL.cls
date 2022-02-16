/**
 * @author          WDCi(LKoh)
 * @date            Dec 2021
 * @group           Util
 * @description     Utility class for Custom Login + Self Register components
 * 
 */

public with sharing class redu_LoginRegister_UTIL {
 
    public static rio_ed__RIO_Education_Settings__c getSetting(){
        return rio_ed__RIO_Education_Settings__c.getInstance();
    }    

    public static String getCaptchaSecretKey() {
        String captchaSecretKey = getSetting().redu_Captcha_SecretKey__c;
        return captchaSecretKey;
    }

    public static Profile getStudentProfile() {

        String profName = getSetting().rio_ed__Student_User_Profile__c;

        System.debug('profName: ' +profName);
        if (String.isNotBlank(profName)) {
            return [SELECT Id FROM Profile WHERE Name =: profName];
        }

        return null;
    }

    public static List<PermissionSetGroup> getStudentPermissionSetGroup() {
        
        String permSetGroups = getSetting().redu_Student_Permission_Set_Group__c;

        if (String.isNotBlank(permSetGroups)) {
            List<String> permSetGroupNames = permSetGroups.split(',');            
            return [SELECT Id, DeveloperName, MasterLabel, Status FROM PermissionSetGroup WHERE DeveloperName IN :permSetGroupNames];
        }

        return new List<PermissionSetGroup>();
    }
}