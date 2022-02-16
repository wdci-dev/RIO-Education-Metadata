/**
 * @author          WDCi(LKoh)
 * @date            Dec 2021
 * @group           User
 * @description     Trigger to assign community student with perm set
 * 
 */

global without sharing class redu_USR_AssignCommunityPermSet_TDTM extends hed.TDTM_Runnable {
    
    public static Set<Id> processedIds = new Set<Id>();

    /**
     * @description Trigger Handler on Contact that handle contact management.
     * @param newList the list of Contact from trigger new
     * @param oldList the list of Contact from trigger old
     * @param triggerAction which trigger event (BeforeInsert, AfterInsert, etc.).
     * @param objResult the describe for Contact
     * @return DmlWrapper
     */
    public override DmlWrapper run(List<SObject> newList, 
                                   List<SObject> oldList, 
                                   hed.TDTM_Runnable.Action triggerAction, 
                                   Schema.DescribeSObjectResult objResult) {

        hed.TDTM_Runnable.DmlWrapper dmlWrapper = null;

        if(triggerAction == hed.TDTM_Runnable.Action.AfterInsert){
            List<User> newUserList = (List<User>) newList;
            List<PermissionSetGroup> studPermSetGroups = redu_LoginRegister_UTIL.getStudentPermissionSetGroup();
            Profile studentProfile = redu_LoginRegister_UTIL.getStudentProfile();

            Set<Id> userIds = new Set<Id>();
            if(!studPermSetGroups.isEmpty() && studentProfile != null){
                for(User newUsr : newUserList){
                    if(!processedIds.contains(newUsr.Id) && newUsr.ContactId != null && newUsr.ProfileId == studentProfile.Id){
                        userIds.add(newUsr.Id);
                        processedIds.add(newUsr.Id);
                    }
                }
            }
            
            assignPermissionSetGroup(userIds);
        }
        
        return dmlWrapper;
    }
     
    @future
    public static void assignPermissionSetGroup(Set<Id> userIds){

        List<PermissionSetAssignment> newPermSetAssignments = new List<PermissionSetAssignment>();
        List<PermissionSetGroup> studPermSetGroup = redu_LoginRegister_UTIL.getStudentPermissionSetGroup();
        
        for(Id usrId : userIds){
            for(PermissionSetGroup psg : studPermSetGroup){
                PermissionSetAssignment psa = new PermissionSetAssignment(AssigneeId = usrId, PermissionSetGroupId = psg.Id);

                newPermSetAssignments.add(psa);
            }
        }

        insert newPermSetAssignments;        
    }

    //────────────────────────────────────────────────────┐
    // TDTM Setting Installer
    //────────────────────────────────────────────────────┘
    public static void installTDTMSetting() {
        List<hed__Trigger_Handler__c> currentTriggerHandlerList = 
            [SELECT Id, hed__Active__c, rio_ed__Unique_Key__c, hed__Object__c, hed__Load_Order__c, hed__Trigger_Action__c, hed__Class__c
                FROM hed__Trigger_Handler__c 
                WHERE hed__Active__c = true AND rio_ed__Unique_Key__c = 'User_redu_USR_AssignCommunityPermSet_TDTM_3'];
        if (currentTriggerHandlerList.isEmpty()) {
            hed__Trigger_Handler__c newTriggerHandler = new hed__Trigger_Handler__c(
                Name = 'RIOREADY_AssignCommunityPermSet',
                hed__Object__c = 'User',
                hed__Load_Order__c = 3,
                hed__Trigger_Action__c = 'AfterInsert',
                hed__Class__c = 'redu_USR_AssignCommunityPermSet_TDTM',
                hed__Active__c = true,
                hed__User_Managed__c = true,
                rio_ed__Unique_Key__c = 'User_redu_USR_AssignCommunityPermSet_TDTM_3'
            );
            insert newTriggerHandler;
        }
    }
}