/**
 * @author 		WDCi (Pasan)
 * @date 		Mar 2021
 * @group 		Program Enrollment
 * @description	Support functions of Aura bundle redu_myTranscripts
 * 
 */
public class redu_FileViewerController_LCTRL {
    
    @AuraEnabled
    public static User getCurrentLoggedInUser(){
        User currentUser = [SELECT Id, ContactId FROM User WHERE Id =: UserInfo.getUserId() LIMIT 1]; 

        /*SDOC__SDJob__c sj = new SDOC__SDJob__c(SDOC__Start__c=true,
                                  SDOC__Oid__c= 'a0803000000hDZDAA2', 
                                  SDOC__RunAs__c = 'wdewildt_nyaa@wdcigroup.net.rioed',
                                  SDOC__ObjApiName__c='hed__Program_Enrollment__c',
                                  SDOC__Doclist__c='a30030000008u7zAAA');
        insert sj;*/
        //update new SDOC__SDJob__c(SDOC__Start__c=true, Id = sj.Id);
        //update new SDOC__SDJob__c(SDOC__Start__c=true, Id = 'a2y030000004YS6AAM');
        
        return currentUser;
    }
}