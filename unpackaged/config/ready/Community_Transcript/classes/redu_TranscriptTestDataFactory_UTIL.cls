/**
 * @author          WDCi(LKoh)
 * @date            Jan 2022
 * @group           Util
 * @description     Testdata factory for redu test classes/methods
 */
@isTest
public without sharing class redu_TranscriptTestDataFactory_UTIL {
    
    /**
     * @description Creates default RIO Education custom settings
     * @return RIO_Education_Settings
     */
    public static rio_ed__RIO_Education_Settings__c createDefaultSettings() {

        rio_ed__RIO_Education_Settings__c customSettings = redu_CommonTestDataFactory_UTIL.createDefaultSettings();

        customSettings.redu_File_Sharing_Prefix__c = 'Official_Transcript';
        return customSettings;
    }    

    public static Map<String, SObject> createBasicTestData() {

        Map<String, SObject> basicTestMap = redu_CommonTestDataFactory_UTIL.createBasicTestData();

        return basicTestMap;
    }  
}