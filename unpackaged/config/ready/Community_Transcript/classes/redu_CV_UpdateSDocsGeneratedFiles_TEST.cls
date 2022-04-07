/**
 * @author 		WDCi (LKoh)
 * @date 		April 2022
 * @group 		Test Class
 * @description	Test functionality of redu_CV_UpdateSDocsGeneratedFiles_TDTM
 * 
 */
@isTest
public class redu_CV_UpdateSDocsGeneratedFiles_TEST {
    
    @isTest
    private static void runTest(){
        
        rio_ed__RIO_Education_Settings__c cs = redu_TranscriptTestDataFactory_UTIL.createDefaultSettings();
        insert cs;
        // Map<String, SObject> testDataMap = redu_TranscriptTestDataFactory_UTIL.createBasicTestData();
        redu_TranscriptTriggerHandler_MANAGER.init_UpdateSDocsGeneratedFilesTDTM();
        
        SDOC__SDTemplate__c sdocTmpl = new SDOC__SDTemplate__c(
            Name = redu_CV_UpdateSDocsGeneratedFiles_TDTM.REDU_CV_TEMPLATE_TRANSCRIPT,
            SDOC__Base_Object__c = 'hed__Program_Enrollment__c',
            SDOC__Active__c = true,
            SDOC__Template_Format__c = 'PDF'
        );
        insert sdocTmpl;
        
        SDOC__SDoc__c sdoc = new SDOC__SDoc__c(SDOC__SDTemplate__c = sdocTmpl.Id);
        insert sdoc;
        
        Test.startTest();
        
        //Upload file
        List<ContentVersion> fileList = redu_CommonTestDataFactory_UTIL.createFiles(1, redu_CV_UpdateSDocsGeneratedFiles_TDTM.REDU_CV_CATEGORY_TRANSCRIPT, null);
        fileList[0].Description = sdoc.Id;
        insert fileList;
        
        List<ContentVersion> cvsWithDocIds = [SELECT ContentDocumentId, redu_File_Category__c FROM ContentVersion WHERE Id IN :fileList];
        Set<Id> cdIds = new Set<Id>();
        for (ContentVersion cv : cvsWithDocIds){
            cdIds.add(cv.ContentDocumentId);
            System.assertEquals(redu_CV_UpdateSDocsGeneratedFiles_TDTM.REDU_CV_CATEGORY_TRANSCRIPT, cv.redu_File_Category__c, 'File Category not set to Transcript');
        }            
        
        Test.stopTest();
    }
    
}