/**
 * @author 		WDCi (Pasan)
 * @date 		Mar 2021
 * @group 		Test Class
 * @description	Test functionality of redu_MyTranscripts_LCTRL
 * 
 */
@isTest(SeeAllData=true)
public class redu_FileViewerController_LCTRL_TEST {

     @isTest
    private static void runTest(){
        
        User usr = redu_FileViewerController_LCTRL.getCurrentLoggedInUser();
        
        System.assert(usr!=null, 'User object not returned');
        System.assertEquals(UserInfo.getUserId(), usr.Id, 'User object not returned for Current user!');
        
       //User u = [select Id from User where Id = '00503000000haTB'];
        
        //Id jobId = null;
        //System.debug('Eventbus before : '+[SELECT Name, Position, Retries, LastError FROM EventBusSubscriber WHERE Topic='Order_Event__e']);// AND Type='ApexTrigger']);
        //System.runAs(u){
            /*Transcript_Request__e patEvt = new Transcript_Request__e();
            patEvt.Enrollment_Id__c = 'a0803000000VyFZAA0';
            
            Test.startTest();
            EventBus.publish(patEvt);
            Test.stopTest();*/
            /* SDOC__SDJob__c sj = new SDOC__SDJob__c();
            
            sj.SDOC__Oid__c = 'a0803000000VyFZAA0';
            sj.SDOC__ObjApiName__c = 'hed__Program_Enrollment__c';
            sj.SDOC__Doclist__c = 'a30030000008u7zAAA';
            sj.SDOC__Start__c = true;
            //sj.SDOC__RunAs__c = 'wdewildt_nyaa@wdcigroup.net.rioed';
            Test.startTest();
            insert sj;
            jobId = sj.Id;
            Test.stopTest(); */
        //}
        //System.debug('Eventbus result: '+[SELECT Name, Position, Retries, Type, LastError FROM EventBusSubscriber WHERE Topic='Transcript_Request__e']);// AND Type='ApexTrigger']);
        //System.debug('result: jobId '+jobId+'>> '+[select SDOC__Status__c,SDOC__Status_Details__c from SDOC__SDJob__c where Id = :jobId]);
        
        
    }   
}