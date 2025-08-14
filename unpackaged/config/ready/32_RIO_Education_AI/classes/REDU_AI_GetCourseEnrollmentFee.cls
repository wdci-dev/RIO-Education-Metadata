/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to get Course Enrollment Fee
* @change-history
*/
global with sharing class REDU_AI_GetCourseEnrollmentFee {

    @InvocableMethod(
        label='Get Course Enrollment Fee'
        description='Retrieve the Fee Line for the provided Course Enrollment ID'
    )
    global static List<REDU_AI_InvocableResponse> getCourseEnrollmentFee(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        // Map out the Course Enrollment IDs and Program IDs from the requests
        Set<Id> courseEnrollmentIds = new Set<Id>();
        for (Request input : requests) {
            if (input.ccId != null) {
                courseEnrollmentIds.add((Id)input.ccId);
            }
        }

        // Retrieve relevant Course Enrollments
        Map<Id, rio_ed__Fee_Line__c> courseEnrollmentToFeeMap = new Map<Id, rio_ed__Fee_Line__c>();
        String flQuery = 'SELECT Id, Name, rio_ed__Course_Connection__c, rio_ed__Course_Connection__r.hed__Contact__r.Name, rio_ed__Student_Fee__c, rio_ed__Fee_Amount__c' +
                        ' FROM rio_ed__Fee_Line__c' +
                        ' WHERE rio_ed__Course_Connection__c IN :courseEnrollmentIds';

        Map<String, Object> flBindParams = new Map<String, Object>{
            'courseEnrollmentIds' => courseEnrollmentIds
        };
        for(rio_ed__Fee_Line__c fl : (List<rio_ed__Fee_Line__c>) Database.queryWithBinds(flQuery, flBindParams, AccessLevel.USER_MODE)){
            if (!courseEnrollmentToFeeMap.containsKey(fl.rio_ed__Course_Connection__c)) {
                courseEnrollmentToFeeMap.put(fl.rio_ed__Course_Connection__c, fl);
            }
        }

        for (Request input : requests) {

            String courseEnrollmentId = input.ccId;
            Map<String, Object> responseJSON = new Map<String, Object>();
            if (courseEnrollmentToFeeMap.containsKey(courseEnrollmentId)) {

                responseJSON.put('resp', courseEnrollmentToFeeMap.get(courseEnrollmentId));
                System.debug('responseJSON: ' + responseJSON);
                responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));

            } else {

                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'No Fee Line found for Course Enrollment ID: ' + courseEnrollmentId, ''));
            }
        }

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Course Enrollment ID'
        )
        global String ccId;
    }
}