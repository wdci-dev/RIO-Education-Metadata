/**
* @author           WDCi (VTan)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class for withdrawing student from course enrollment
* @change-history   23-04-2025 - LKoh - Updated based on the latest requirements
*/
global with sharing class REDU_AI_Course_Withdrawal {

    private static final String WITHDRAW_STATUS = 'Withdrawn';

    @InvocableMethod(
        label='Course Withdrawal Management'
        description='Withdraw the student from the course enrollment'
    )
    global static List<REDU_AI_InvocableResponse> courseWithdrawalManager(List<Request> requests) {

        // Retrieve the Contact IDs and Course Codes from the requests
        Map<Id, String> conCourseCode = new Map<Id, String>();
        Set<String> courseCodeSet = new Set<String>();
        for (Request input : requests) {
            if(input.contactId != null && input.courseCode != null){
                conCourseCode.put(input.contactId, input.courseCode);
                courseCodeSet.add(input.courseCode);
            }
        }

        // Construct the map for relevant Course Enrollments based on Contact IDs and Course Codes
        Map<String, hed__Course_Enrollment__c> courseEnrollmentMap = new Map<String, hed__Course_Enrollment__c>();
        Set<Id> ccIdSet = new Set<Id>();
        String ccQuery = 'SELECT Id, Name, hed__Contact__r.Id, rio_ed__Enrollment_Status__c,' +
                        ' hed__Contact__r.Name,' +
                        ' rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c, hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c' +
                        ' FROM hed__Course_Enrollment__c' +
                        ' WHERE hed__Contact__r.Id IN :contactIdSet' +
                        ' AND (rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c IN :courseCodeSet' +
                        ' OR hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c IN :courseCodeSet)';

        Map<String, Object> ccBindParams = new Map<String, Object>{
            'contactIdSet' => conCourseCode.keySet(),
            'courseCodeSet' => courseCodeSet
        };
        for(hed__Course_Enrollment__c cc : (List<hed__Course_Enrollment__c>) Database.queryWithBinds(ccQuery, ccBindParams, AccessLevel.USER_MODE)) {

            // System.debug('cc: ' + cc);

            String mapKey = cc.hed__Contact__r.Id + ':' + cc.rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c;
            if (cc.hed__Course_Offering__c != null) {
                mapKey = cc.hed__Contact__r.Id + ':' + cc.hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c;
            }
            courseEnrollmentMap.put(mapKey, cc);
            ccIdSet.add(cc.Id);
        }

        // Withdraw the Course Enrollments that matched the Request by setting Status to Withdrawn
        // List<hed__Course_Enrollment__c> courseEnrollmentsToUpdate = new List<hed__Course_Enrollment__c>();
        Map<Integer, hed__Course_Enrollment__c> requestCounterToCourseEnrollmentsToUpdate = new Map<Integer, hed__Course_Enrollment__c>();

        Map<Integer, Integer> courseEnrollmentToRequestCounterMap = new Map<Integer, Integer>();
        Integer requestCounter = 0;
        Integer courseEnrollmentCounter = 0;
        Map<Integer, REDU_AI_InvocableResponse> errorResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();

        for (Request input : requests) {
            if (input.contactId != null && input.courseCode != null) {
                String mapKey = input.contactId + ':' + input.courseCode;

                // Check if the Course Enrollment exists in the map
                hed__Course_Enrollment__c courseEnrollment = courseEnrollmentMap.get(mapKey);
                if (courseEnrollment != null) {
                    // Perform the withdrawal operation
                    hed__Course_Enrollment__c courseEnrollmentToUpdate = new hed__Course_Enrollment__c(
                        Id = courseEnrollment.Id,
                        rio_ed__Enrollment_Status__c = WITHDRAW_STATUS
                    );

                    requestCounterToCourseEnrollmentsToUpdate.put(requestCounter, courseEnrollmentToUpdate);
                    courseEnrollmentToRequestCounterMap.put(courseEnrollmentCounter, requestCounter);
                    courseEnrollmentCounter++;
                } else {
                    errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Course Enrollment not found for Contact ID: ' + input.contactId + ' and Course Code: ' + input.courseCode, ''));
                }
            }
            requestCounter++;
        }

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        // Update the Course Enrollments in bulk
        if (!requestCounterToCourseEnrollmentsToUpdate.isEmpty()) {
            try {
                courseEnrollmentCounter = 0;
                for (Database.SaveResult sr : Database.update(requestCounterToCourseEnrollmentsToUpdate.values(), false, AccessLevel.USER_MODE)) {
                    if (!sr.isSuccess()) {
                        // System.debug('Error updating course enrollment: ' + sr.getErrors()[0].getMessage());
                        errorResponseMap.put(courseEnrollmentToRequestCounterMap.get(courseEnrollmentCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Course Enrollment: ' + sr.getErrors()[0].getMessage(), ''));
                    }
                    courseEnrollmentCounter++;
                }

                // Prepare the response list and return all the updated Course Enrollments as JSON

                // Requery the Course Enrollments
                // Construct the map for relevant Course Enrollments based on Contact IDs and Course Codes
                Map<Id, hed__Course_Enrollment__c> courseEnrollmentReMap = new Map<Id, hed__Course_Enrollment__c>();
                String ccRequery = 'SELECT Id, Name, hed__Contact__r.Id, rio_ed__Enrollment_Status__c,' +
                                ' hed__Contact__r.Name,' +
                                ' rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c, hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c' +
                                ' FROM hed__Course_Enrollment__c' +
                                ' WHERE Id IN :ccIdSet';

                Map<String, Object> ccReBindParams = new Map<String, Object>{
                    'ccIdSet' => ccIdSet
                };
                for(hed__Course_Enrollment__c cc : (List<hed__Course_Enrollment__c>) Database.queryWithBinds(ccRequery, ccReBindParams, AccessLevel.USER_MODE)){
                    courseEnrollmentReMap.put(cc.Id, cc);
                }

                requestCounter = 0;
                for (Request input : requests) {

                    if (errorResponseMap.containsKey(requestCounter)) {
                        responses.add(errorResponseMap.get(requestCounter));
                        requestCounter++;
                        continue;
                    } else {

                        hed__Course_Enrollment__c oldCourseEnrollment = requestCounterToCourseEnrollmentsToUpdate.get(requestCounter);
                        // Retrieve the updated Course Enrollment from the requery map
                        hed__Course_Enrollment__c newCourseEnrollment = courseEnrollmentReMap.get(oldCourseEnrollment.Id);

                        // Prepare the response JSON
                        Map<String, Object> responseJSON = new Map<String, Object>();
                        responseJSON.put('resp', newCourseEnrollment);
                        responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                    }
                    requestCounter++;
                }

            } catch (DmlException e) {
                // Handle the exception as needed
                System.debug('Error updating course enrollments: ' + e.getMessage());
                for (Request input : requests) {

                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error: ' + e.getMessage(), ''));
                }
            }
        } else {
            // If no Course Enrollments were found to update, return an empty response
            for (Request input : requests) {

                // Add the error response to the list
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No Course Enrollments found for withdrawal.', ''));
            }
        }

        return responses;
    }

    // The variables in this class need to match the prompt template inputs,
    // that may be different on each prompt template
    global class Request {
        @InvocableVariable(
            required=true
            description='Student contact ID'
        )
        global String contactId;

        @InvocableVariable(
            required=true
            description='Course Code to be withdrawn'
        )
        global String courseCode;
    }
}