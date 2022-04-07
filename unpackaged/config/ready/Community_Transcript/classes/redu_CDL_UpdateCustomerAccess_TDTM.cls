/**
 * @author          WDCi (LKoh)
 * @group           Fee
 * @date            Jan 2022
 * @description     Trigger to enable customer access to files
 * 
 */

global class redu_CDL_UpdateCustomerAccess_TDTM extends hed.TDTM_Runnable {
  
    public override DmlWrapper run(List<SObject> newList, 
                                   List<SObject> oldList, 
                                   hed.TDTM_Runnable.Action triggerAction, 
                                   Schema.DescribeSObjectResult objResult)
    {
        
        hed.TDTM_Runnable.DmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();

        List<String> lstDocTitlePrefix = getFileSharingPrefix().split(',');
        Map<Id,String> contentDocTitleMap = new Map<Id,String>();
    
        if(triggerAction == hed.TDTM_Runnable.Action.BeforeInsert){

            for(ContentDocumentLink cdl : (List<ContentDocumentLink>) newList){
                if(cdl.Visibility == 'InternalUsers'){
                    contentDocTitleMap.put(cdl.ContentDocumentId, null);
                }
            }
        }

        if(!contentDocTitleMap.isEmpty() && !lstDocTitlePrefix.isEmpty()){
            for(ContentDocument cd : [SELECT Id, Title FROM ContentDocument WHERE Id IN :contentDocTitleMap.keySet()]){
                contentDocTitleMap.put(cd.Id, cd.Title);
            }
            system.debug('contentDocTitleMap :: '+contentDocTitleMap);
            for(ContentDocumentLink cdl : (List<ContentDocumentLink>) newList){
                if(contentDocTitleMap.containsKey(cdl.ContentDocumentId) && cdl.Visibility == 'InternalUsers'){
                    for(string str : lstDocTitlePrefix){
                        if(contentDocTitleMap.get(cdl.ContentDocumentId).contains(str)){
                            cdl.Visibility = 'AllUsers';
                        }
                    }
                }
            }
        }
        
        return dmlWrapper;
    }

    public static rio_ed__RIO_Education_Settings__c getSetting(){
        return rio_ed__RIO_Education_Settings__c.getInstance();
    }

    public static String getFileSharingPrefix(){
        return getSetting().redu_File_Sharing_Prefix__c;
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'ContentDocumentLink_redu_CDL_UpdateCustomerAccess_TDTM_1'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_CDL_UpdateCustomerAccess',
                hed__Object__c = 'ContentDocumentLink',
                hed__Load_Order__c = 1,
                hed__Trigger_Action__c = 'BeforeInsert',
                hed__Class__c = 'redu_CDL_UpdateCustomerAccess_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'ContentDocumentLink_redu_CDL_UpdateCustomerAccess_TDTM_1'
            );
            insert newTriggerHandler;
        }
    }
}