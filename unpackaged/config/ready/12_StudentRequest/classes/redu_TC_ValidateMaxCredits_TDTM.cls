/**
 * @author 		WDCi (Pasan)
 * @date 		Sep 2021
 * @group 		RIO Education
 * @description	Validate Credits being approved against Program Plan->Max. Transfer Credits
 * 
 */
global without sharing class redu_TC_ValidateMaxCredits_TDTM extends hed.TDTM_Runnable {

    /**
     * @description Trigger Handler on rio_ed__Transfer_Credit__c to validate max transfer credits
     * @param newList the list of rio_ed__Transfer_Credit__c from trigger new
     * @param oldList the list of rio_ed__Transfer_Credit__c from trigger old
     * @param triggerAction which trigger event (BeforeInsert, AfterInsert, etc.).
     * @param objResult the describe for rio_ed__Transfer_Credit__c
     * @return DmlWrapper
     */
    public override DmlWrapper run(List<SObject> newList, List<SObject> oldList, hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = new hed.TDTM_Runnable.DmlWrapper();
        
        if (triggerAction == hed.TDTM_Runnable.Action.AfterInsert || triggerAction == hed.TDTM_Runnable.Action.AfterUpdate){
            
            Set<String> approvedStatus = redu_TC_CustomSetting_UTIL.getTCApprovedStatuses();
            Map<Id, rio_ed__Transfer_Credit__c> mapOld = (triggerAction == hed.TDTM_Runnable.Action.AfterUpdate) ? new Map<Id, rio_ed__Transfer_Credit__c>((List<rio_ed__Transfer_Credit__c>)oldList) : new Map<Id, rio_ed__Transfer_Credit__c>();
            Map<Id, rio_ed__Transfer_Credit__c> mapNew = new Map<Id, rio_ed__Transfer_Credit__c>((List<rio_ed__Transfer_Credit__c>)newList);

            Map<Id, Decimal> mapPaId2Credits = new Map<Id, Decimal>();

            for(rio_ed__Transfer_Credit__c tc : (List<rio_ed__Transfer_Credit__c>)newList) {
                if (approvedStatus.contains(tc.rio_ed__Status__c) && (!mapOld.containsKey(tc.Id) || mapOld.get(tc.Id).rio_ed__Status__c!=tc.rio_ed__Status__c)){  
                    mapPaId2Credits.put(tc.rio_ed__Program_Application__c,0);
                }
            }

            String creditTransferResult = redu_TC_CustomSetting_UTIL.getGradeResultForCC();

            for (rio_ed__Transfer_Credit__c tc : [SELECT Id, rio_ed__Program_Application__c,rio_ed__Program_Enrollment__r.hed__Program_Plan__r.redu_Max_Transfer_Credits_Allowed__c
            ,(SELECT rio_ed__Credits_Offered__c FROM rio_ed__Course_Connections__r WHERE rio_ed__Grade_Result__c=:creditTransferResult) FROM rio_ed__Transfer_Credit__c
            WHERE rio_ed__Program_Application__c in :mapPaId2Credits.keySet() AND rio_ed__Status__c in :approvedStatus ORDER BY rio_ed__Program_Application__c]) {
                Decimal creditsCC = mapPaId2Credits.get(tc.rio_ed__Program_Application__c);
                if (creditsCC==null){
                    creditsCC = 0;
                }

                for (hed__Course_Enrollment__c cc : tc.rio_ed__Course_Connections__r) {
                    creditsCC+= (cc.rio_ed__Credits_Offered__c==null) ? 0 : cc.rio_ed__Credits_Offered__c;
                }
                
                if (tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__r.redu_Max_Transfer_Credits_Allowed__c > 0 && tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__r.redu_Max_Transfer_Credits_Allowed__c < creditsCC){
                    mapNew.get(tc.Id).addError('Cannot offer more than Maximum Allowed Transfer Credits '+tc.rio_ed__Program_Enrollment__r.hed__Program_Plan__r.redu_Max_Transfer_Credits_Allowed__c +' for this Program.');
                }

                mapPaId2Credits.put(tc.rio_ed__Program_Application__c, creditsCC);
            }
        }

        return dmlWrapper;
    }
}