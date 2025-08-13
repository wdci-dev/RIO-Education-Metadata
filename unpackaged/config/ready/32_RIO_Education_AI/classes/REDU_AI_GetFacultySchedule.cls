/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to get faculty schedule
* @change-history
*/
global with sharing class REDU_AI_GetFacultySchedule {

    @InvocableMethod(
        label='Get Faculty Schedule'
        description='Check schedule of a faculty contact and date range'
    )
    global static List<REDU_AI_InvocableResponse> getFacultySchedule(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();
        Map<Integer, REDU_AI_InvocableResponse> errorResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();

        Set<Id> contactIds = new Set<Id>();
        Integer requestCounter = 0;
        for (Request input : requests) {

            // Validate input
            if (String.isBlank(input.contactId) && input.startDate == null && input.endDate == null) {
                errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Contact ID, Start Date, and End Date cannot be null or empty.', ''));
                continue;
            }

            try {
                contactIds.add((Id)input.contactId);
            } catch (Exception e) {
                errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Invalid Contact ID: ' + input.contactId, ''));
                continue;
            }
        }

        // Validate if the Contact ID are actually present in the system
        Map<Id, Contact> contactMap = new Map<Id, Contact>();
        if (!contactIds.isEmpty()) {

            String contactQuery = 'SELECT Id ' +
                    ' FROM Contact' +
                    ' WHERE Id IN :contactIds';

            Map<String, Object> contactBindParams = new Map<String, Object>{
                'contactIds' => contactIds
            };
            for (Contact con : (List<Contact>) Database.queryWithBinds(contactQuery, contactBindParams, AccessLevel.USER_MODE)) {
                contactMap.put(con.Id, con);
            }
        }

        requestCounter = 0;
        for (Request input : requests) {
            if (!contactMap.containsKey((Id)input.contactId)) {
                errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Could not find Contact: ' + input.contactId, ''));
            }
            requestCounter++;
        }

        String attQuery = 'SELECT Id, Name, rio_ed__Session_Connection__r.rio_ed__Course_Connection__r.hed__Contact__c,' +
                        ' rio_ed__Booking_Start_Date_Time__c, rio_ed__Booking_End_Date_Time__c' +
                        ' FROM rio_ed__Attendance__c' +
                        ' WHERE rio_ed__Session_Connection__r.rio_ed__Course_Connection__r.hed__Contact__c IN :contactIds';

        Map<String, Object> attBindParams = new Map<String, Object>{
            'contactIds' => contactIds
        };

        List<rio_ed__Attendance__c> relevantAttendanceList = new List<rio_ed__Attendance__c>();
        for(rio_ed__Attendance__c att : (List<rio_ed__Attendance__c>) Database.queryWithBinds(attQuery, attBindParams, AccessLevel.USER_MODE)){
           relevantAttendanceList.add(att);
        }

        Map<Integer, List<rio_ed__Attendance__c>> requestToAttendanceListMap = new Map<Integer, List<rio_ed__Attendance__c>>();
        requestCounter = 0;
        for (Request input : requests) {

            System.debug('Input:');
            System.debug(input);

            if (errorResponseMap.containsKey(requestCounter)) {
                continue; // Skip if already has an error response
            }

            // Go through the Relevant Attendance List to check if there is any record that matches the request criteria
            for (rio_ed__Attendance__c att : relevantAttendanceList) {

                System.debug('Att:');
                System.debug(att);
                System.debug(att.rio_ed__Booking_Start_Date_Time__c);
                System.debug(att.rio_ed__Booking_End_Date_Time__c);

                if (att.rio_ed__Session_Connection__r.rio_ed__Course_Connection__r.hed__Contact__c == input.contactId &&
                    att.rio_ed__Booking_Start_Date_Time__c >= input.startDate &&
                    att.rio_ed__Booking_End_Date_Time__c <= input.endDate) {

                    System.debug('Criteria match for the above attendance');

                    if (!requestToAttendanceListMap.containsKey(requestCounter)) {
                        // Initialize the list for this request key
                        List<rio_ed__Attendance__c> attendanceList = new List<rio_ed__Attendance__c>();
                        attendanceList.add(att);
                        requestToAttendanceListMap.put(requestCounter, attendanceList);
                    } else {
                        // Add to the existing list for this request key
                        requestToAttendanceListMap.get(requestCounter).add(att);
                    }
                }
            }
        }

        requestCounter = 0;
        for (Request input : requests) {

            if (errorResponseMap.containsKey(requestCounter)) {
                responses.add(errorResponseMap.get(requestCounter));
                requestCounter++;
                continue; // Skip if already has an error response
            }

            if (requestToAttendanceListMap.containsKey(requestCounter)) {

                // Construct the response
                List<rio_ed__Attendance__c> attendanceList = requestToAttendanceListMap.get(requestCounter);
                REDU_AI_InvocableResponse response = new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(attendanceList));
                responses.add(response);
            }
            requestCounter++;
        }

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Contact ID'
        )
        global String contactId;

        @InvocableVariable(
            required=true
            description='Start Date'
        )
        global Date startDate;

        @InvocableVariable(
            required=true
            description='End Date'
        )
        global Date endDate;
    }
}