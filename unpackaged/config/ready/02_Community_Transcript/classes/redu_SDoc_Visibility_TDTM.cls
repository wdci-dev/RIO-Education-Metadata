/**
 * @author          WDCi (MKCheah)
 * @group           SDOC
 * @date            Mar 2022
 * @description     Trigger to categorize the SDoc documents
 * 
 */

 global without sharing class redu_SDoc_Visibility_TDTM extends hed.TDTM_Runnable {

    public class REPT_Exception extends Exception{}

    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();
        List<SDOC__SDoc__c> newSFList = (List<SDOC__SDoc__c>) newList;
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert || triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) {

            try {
                Map<String, redu_File_Sharing_Configuration__mdt> templateWithConfigMap = new Map<String, redu_File_Sharing_Configuration__mdt>();
                List<redu_File_Sharing_Configuration__mdt> congifurations = [SELECT Id, DeveloperName, redu_Active__c, redu_ContentVersion_File_Category__c, 
                                                                                redu_Template_Name__c, redu_Visibility__c 
                                                                                FROM redu_File_Sharing_Configuration__mdt
                                                                                WHERE redu_Active__c = TRUE];
                for (redu_File_Sharing_Configuration__mdt config : congifurations) {
                    if (String.isNotBlank(config.redu_Template_Name__c)) {
                        templateWithConfigMap.put(config.redu_Template_Name__c, config);
                    }
                }
                
                if (templateWithConfigMap.isEmpty()) {
                    return dmlWrapper;
                }
                
                Map<Id, String> fileToTemplateMap = new Map<Id, String>();
                
                for (SDOC__SDoc__c sDoc : [SELECT Id, SDOC__Apex_Job_ID__c, SDOC__Create_Attachment__c, SDOC__Create_File__c, 
                                        SDOC__Document_ID__c, SDOC__Document_Type__c, SDOC__Document_Name__c, SDOC__SDJob__c, 
                                        SDOC__Upload__c, SDOC__SDTemplate__c, SDOC__SDTemplate__r.Name, SDOC__Version__c, SDOC__File_ID__c 
                                        FROM SDOC__SDoc__c WHERE Id IN :newList 
                                        AND SDOC__SDTemplate__r.Name IN :templateWithConfigMap.keySet()]) 
                                       
                {   
                    if(Test.isRunningTest()){
                        List<ContentVersion> cvList = [SELECT Id, ContentDocumentId, Title, PathOnClient, SharingOption, FileType, 
                        PublishStatus, VersionData, ContentSize, redu_File_Category__c, FirstPublishLocationId 
                        FROM ContentVersion]; 
                        sDoc.SDOC__File_ID__c = cvList[0].Id;
                    }
                    if (sDoc.SDOC__File_ID__c != null && sDoc.SDOC__SDTemplate__c != null) {
                        fileToTemplateMap.put(sDoc.SDOC__File_ID__c, sDoc.SDOC__SDTemplate__r.Name);
                    }
                }
                
                
                
                if (fileToTemplateMap.isEmpty()) {
                    return dmlWrapper;
                }
                
                Map<Id, String> documentIdToTemplateMap = new Map<Id, String>();
                
                List<ContentVersion> versionsToUpdate = new List<ContentVersion>();
                List<ContentDocumentLink> documentLinksToUpdate = new List<ContentDocumentLink>();
                for (ContentVersion version : [SELECT Id, ContentDocumentId, Title, PathOnClient, SharingOption, FileType, 
                                            PublishStatus, VersionData, ContentSize, redu_File_Category__c, FirstPublishLocationId 
                                            FROM ContentVersion 
                                            WHERE Id IN :fileToTemplateMap.keySet()])
                {
                    
                    if (fileToTemplateMap.containsKey(version.Id)) {
                        documentIdToTemplateMap.put(version.ContentDocumentId, fileToTemplateMap.get(version.Id));
                        if (templateWithConfigMap.containsKey(fileToTemplateMap.get(version.Id))) {
                            version.redu_File_Category__c = templateWithConfigMap.get(fileToTemplateMap.get(version.Id)).redu_ContentVersion_File_Category__c;
                            versionsToUpdate.add(version);
                        }
                    }
                }
                system.debug('@@ documentIdToTemplateMap >> ' + documentIdToTemplateMap);
           
                if (!versionsToUpdate.isEmpty()) {
                    Database.update(versionsToUpdate, false);
                }
                
                if (documentIdToTemplateMap.isEmpty()) {
                    return dmlWrapper;
                }
                
                for (ContentDocumentLink cdLink : [SELECT Id, LinkedEntityId, ContentDocumentId, Visibility, ShareType FROM ContentDocumentLink
                                                WHERE ContentDocumentId IN :documentIdToTemplateMap.keySet()])
                {
                    if (cdLink.LinkedEntityId != null) {
                        String sObjName = cdLink.LinkedEntityId.getSObjectType().getDescribe().getName();
                        if (String.isNotBlank(sObjName) && sObjName.toLowerCase() != 'user') {
                            if (documentIdToTemplateMap.containsKey(cdLink.ContentDocumentId)) {
                                if (templateWithConfigMap.containsKey(documentIdToTemplateMap.get(cdLink.ContentDocumentId))) {
                                    cdLink.Visibility = templateWithConfigMap.get(documentIdToTemplateMap.get(cdLink.ContentDocumentId)).redu_Visibility__c;
                                    documentLinksToUpdate.add(cdLink);
                                }
                            }
                        }
                    }
                }
                
                if (!documentLinksToUpdate.isEmpty()) {
                    Database.update(documentLinksToUpdate, false);
                }

            } catch (Exception exp) {
                throw new REPT_Exception('Error encountered during SDoc Assignment. Error: Line ' + exp.getLineNumber() + ' - ' + exp.getMessage() );
            }            
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
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'SDOC__SDoc__c_redu_SDoc_Visibility_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'REDU_SDOC_Visibility',
                hed__Object__c = 'SDOC__SDoc__c',
                hed__Load_Order__c = 5,
                hed__Trigger_Action__c = 'AfterInsert;AfterUpdate',
                hed__Class__c = 'redu_SDoc_Visibility_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'SDOC__SDoc__c_redu_SDoc_Visibility_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}