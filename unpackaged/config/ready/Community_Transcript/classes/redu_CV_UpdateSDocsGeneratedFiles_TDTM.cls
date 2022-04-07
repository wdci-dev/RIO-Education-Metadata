/**
 * @author 		WDCi (LKoh)
 * @date 		April 2022
 * @group 		Content Version
 * @description	Update ContentVersion Transcript Category
 * 
 */
global without sharing class redu_CV_UpdateSDocsGeneratedFiles_TDTM extends hed.TDTM_Runnable {
    
    public static String REDU_CV_CATEGORY_TRANSCRIPT = 'Transcript';
    public static String REDU_CV_CATEGORY_UNOFFICIALTRANSCRIPT = 'Unofficial Transcript';
    public static String REDU_CV_TEMPLATE_TRANSCRIPT = 'Transcript-Official';
        
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;
        dmlWrapper = runContentVersionTrigger(newList, oldList,triggerAction);
        return dmlWrapper;
    }
    
    private static hed.TDTM_Runnable.DmlWrapper runContentVersionTrigger(List<ContentVersion> newList, List<ContentVersion> oldList, hed.TDTM_Runnable.Action triggerAction) {
        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;

        // SDoc Template Names to be recognized by the trigger needs to be placed here
        Set<String> sDocTemplateNameSet = new Set<String>{
            'Transcript-Official'
        };

        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert) {
            List<ContentVersion> newCVList = (List<ContentVersion>) newList;

            List<ContentVersion> newCVList2Upd = new List<ContentVersion>();
            Set<Id> setCDId = new Set<Id>();

            for (ContentVersion cv : newCVList) {
                if (String.isBlank(cv.redu_File_Category__c)) {
                    setCDId.add(cv.ContentDocumentId);
                    newCVList2Upd.add(cv);
                }
            }

            // Get ContentDocuments to get Transcripts
            Map<Id, Id> mapCDId2SDocId = new Map<Id, Id>();
            for (ContentDocument cd :[select Description from ContentDocument where Id in :setCDId and Description!=null]) {
                if (cd.Description instanceOf Id) {
                    mapCDId2SDocId.put(cd.Id, cd.Description);
                }
            }

            Map<Id, String> mapTranscriptTemplateId2Name = new Map<Id, String>();
            for (SDOC__SDoc__c sd : [SELECT SDOC__SDTemplate__r.Name FROM SDOC__SDoc__c WHERE Id IN :mapCDId2SDocId.values() AND SDOC__SDTemplate__r.Name IN :sDocTemplateNameSet]) {
                mapTranscriptTemplateId2Name.put(sd.Id, sd.SDOC__SDTemplate__r.Name);
            }

            List<ContentVersion> cVList2UpdDML = new List<ContentVersion>();

            // Transcript contentVersions
            for (ContentVersion cv : newCVList2Upd) {
                Id sdocId = mapCDId2SDocId.get(cv.ContentDocumentId);
                if (sdocId!=null && mapTranscriptTemplateId2Name.containsKey(sdocId)) {
                    cVList2UpdDML.add(new ContentVersion(Id = cv.Id, redu_File_Category__c = REDU_CV_CATEGORY_TRANSCRIPT));
                }
            }

            update cVList2UpdDML;
        }
        return dmlWrapper;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'ContentVersion_redu_CV_UpdateSDocsGeneratedFiles_TDTM_2'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_CV_UpdateSDocsGeneratedFiles',
                hed__Object__c = 'ContentVersion',
                hed__Load_Order__c = 2,
                hed__Trigger_Action__c = 'AfterInsert',
                hed__Class__c = 'redu_CV_UpdateSDocsGeneratedFiles_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'ContentVersion_redu_CV_UpdateSDocsGeneratedFiles_TDTM_2'
            );
            insert newTriggerHandler;
        }
    }
}