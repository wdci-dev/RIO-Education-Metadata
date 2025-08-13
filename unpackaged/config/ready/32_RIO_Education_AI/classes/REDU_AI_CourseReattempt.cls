/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to reattempt Course
* @change-history
*/
global with sharing class REDU_AI_CourseReattempt {

    private static final String ENROLLED_COURSEENROLLMENT_STATUS = 'Enrolled';
    private static final String COMPLETED_COURSEENROLLMENT_STATUS = 'Completed';

    @InvocableMethod(
        label='Course Re-attempt Management'
        description='Generates a new Course Enrollment for existing Completed Course based on the specified Contact and Course'
    )
    global static List<REDU_AI_InvocableResponse> courseReattempt(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        // We need to first check if an existing Course Enrollment that was Completed exists for the Contact ID and Course Code
        // we only allow course reattempt if such Course Enrollment exists
        Set<Id> contactIdSet = new Set<Id>();
        Set<String> courseCodeSet = new Set<String>();
        for (Request req : requests) {
            if (req.contactId != null && req.courseCode != null) {
                contactIdSet.add((Id)req.contactId);
                courseCodeSet.add(req.courseCode);
            }
        }

        // Construct the map for relevant Course Enrollments based on Contact IDs and Course Codes
        Map<String, hed__Course_Enrollment__c> courseEnrollmentMap = new Map<String, hed__Course_Enrollment__c>();
        Set<Id> programEnrollmentIdSet = new Set<Id>();
        String ccQuery = 'SELECT Id, RecordTypeId, Name, hed__Contact__c, hed__Account__c, rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c,' +
                        ' hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c, rio_ed__Enrollment_Status__c, hed__Program_Enrollment__c,' +
                        ' rio_ed__PE_Group__c, hed__Contact__r.Name,' +
                        ' hed__Course_Offering__r.hed__Term__c' +
                        ' FROM hed__Course_Enrollment__c' +
                        ' WHERE hed__Contact__c IN :contactIdSet' +
                        ' AND (rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c IN :courseCodeSet ' +
                        ' OR hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c IN :courseCodeSet)' +
                        ' AND (rio_ed__Enrollment_Status__c = :statusCompleted)' +
                        ' ORDER BY CreatedDate ASC';

        Map<String, Object> ccBindParams = new Map<String, Object>{
            'contactIdSet' => contactIdSet,
            'courseCodeSet' => courseCodeSet,
            'statusCompleted' => COMPLETED_COURSEENROLLMENT_STATUS
        };
        for(hed__Course_Enrollment__c cc : (List<hed__Course_Enrollment__c>) Database.queryWithBinds(ccQuery, ccBindParams, AccessLevel.USER_MODE)){

            String mapKey = cc.hed__Contact__c + ':' + cc.rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c;
            if (cc.hed__Course_Offering__c != null) {
                mapKey = cc.hed__Contact__c + ':' + cc.hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c;
            }
            courseEnrollmentMap.put(mapKey, cc);
            programEnrollmentIdSet.add(cc.hed__Program_Enrollment__c);
        }

        Set<Id> termIdSet = new Set<Id>();
        Map<Id, rio_ed__PE_Pathway_Status__c> peToLatestPEPathwayMap = new Map<Id, rio_ed__PE_Pathway_Status__c>();
        String pepQuery = 'SELECT Id, Name, rio_ed__Program_Enrollment__c, rio_ed__Status__c, rio_ed__Term__c' +
                        ' FROM rio_ed__PE_Pathway_Status__c' +
                        ' WHERE rio_ed__Program_Enrollment__c IN :programEnrollmentIdSet' +
                        ' AND rio_ed__Status__c = :statusCurrent';

        Map<String, Object> pepBindParams = new Map<String, Object>{
            'programEnrollmentIdSet' => programEnrollmentIdSet,
            'statusCurrent' => 'Current'
        };
        for(rio_ed__PE_Pathway_Status__c pep : (List<rio_ed__PE_Pathway_Status__c>) Database.queryWithBinds(pepQuery, pepBindParams, AccessLevel.USER_MODE)){

            peToLatestPEPathwayMap.put(pep.rio_ed__Program_Enrollment__c, pep);
            termIdSet.add(pep.rio_ed__Term__c);
        }

        Map<String, hed__Course_Offering__c> courseOfferingMap = new Map<String, hed__Course_Offering__c>();
        String coQuery = 'SELECT Id, hed__Course__r.hed__Course_ID__c, hed__Term__c' +
                        ' FROM hed__Course_Offering__c' +
                        ' WHERE hed__Term__c IN :termIdSet' +
                        ' AND hed__Course__r.hed__Course_ID__c IN :courseCodeSet';

        Map<String, Object> coBindParams = new Map<String, Object>{
            'termIdSet' => termIdSet,
            'courseCodeSet' => courseCodeSet
        };
        for(hed__Course_Offering__c co : (List<hed__Course_Offering__c>) Database.queryWithBinds(coQuery, coBindParams, AccessLevel.USER_MODE)){
            String mapKey = co.hed__Term__c+ ':' +co.hed__Course__r.hed__Course_ID__c;
            courseOfferingMap.put(mapKey, co);
        }

        Map<Integer, REDU_AI_InvocableResponse> errorResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();
        Map<Integer, hed__Course_Enrollment__c> newCourseEnrollmentsMap = new Map<Integer, hed__Course_Enrollment__c>();
        Map<Integer, Integer> courseEnrollmentToRequestCounterMap = new Map<Integer, Integer>();

        Integer requestCounter = 0;
        Integer courseEnrollmentCounter = 0;

        for (Request req : requests) {
            if (req.contactId != null && req.courseCode != null) {
                String mapKey = req.contactId + ':' + req.courseCode;

                if (!courseEnrollmentMap.containsKey(mapKey))  {
                    // We cannot allow Reattempt if the Course Enrollment was not already Completed in the past
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'Course Enrollment has not been completed in the past for Contact ID: ' + req.contactId + ' and Course Code: ' + req.courseCode, ''));
                } else {
                    // Create new Course Enrollment record with the same Contact and Course Code as the existing one
                    hed__Course_Enrollment__c courseEnrollment = courseEnrollmentMap.get(mapKey);
                    hed__Course_Enrollment__c newCourseEnrollment = new hed__Course_Enrollment__c();
                    newCourseEnrollment.RecordTypeId = courseEnrollment.RecordTypeId;
                    newCourseEnrollment.hed__Account__c = courseEnrollment.hed__Account__c;
                    newCourseEnrollment.hed__Program_Enrollment__c = courseEnrollment.hed__Program_Enrollment__c;
                    newCourseEnrollment.rio_ed__Requirement_Met__c = true;

                    newCourseEnrollment.hed__Contact__c = courseEnrollment.hed__Contact__c;
                    newCourseEnrollment.rio_ed__Plan_Requirement_Course__c = courseEnrollment.rio_ed__Plan_Requirement_Course__c;
                    newCourseEnrollment.rio_ed__PE_Group__c = courseEnrollment.rio_ed__PE_Group__c;
                    newCourseEnrollment.rio_ed__Enrollment_Status__c = ENROLLED_COURSEENROLLMENT_STATUS; // Set the status to Enrolled

                    // Get the latest PE Pathway to use
                    Id currentTerm;
                    if (peToLatestPEPathwayMap.containsKey(courseEnrollment.hed__Program_Enrollment__c)) {
                        rio_ed__PE_Pathway_Status__c pePathway = peToLatestPEPathwayMap.get(courseEnrollment.hed__Program_Enrollment__c);
                        newCourseEnrollment.rio_ed__PE_Pathway__c = pePathway.Id;
                        currentTerm = pePathway.rio_ed__Term__c;
                    } else {
                        errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'No current PE Pathway found for Program Enrollment ID: ' +courseEnrollment.hed__Program_Enrollment__c, ''));
                        requestCounter++;
                        continue;
                    }

                    // Get the Course Offering based on the Term and Course Code
                    String courseOfferingKey = currentTerm + ':' + courseEnrollment.rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c;

                    if (courseOfferingMap.containsKey(courseOfferingKey)) {
                        newCourseEnrollment.hed__Course_Offering__c = courseOfferingMap.get(courseOfferingKey).Id;
                    } else {

                        errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'No Course Offering found for Term ID: ' + courseEnrollment.hed__Course_Offering__r.hed__Term__c + ' and Course Code: ' + req.courseCode, ''));
                        requestCounter++;
                        continue;
                    }

                    // Add the new Course Enrollment to the Map for insertion
                    newCourseEnrollmentsMap.put(courseEnrollmentCounter, newCourseEnrollment);
                    courseEnrollmentToRequestCounterMap.put(courseEnrollmentCounter, requestCounter);
                    courseEnrollmentCounter++;
                }
            } else {
                // If either Contact ID or Course Code is null, return an error message
                errorResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'Contact ID and Course Code must not be null', ''));
            }
            requestCounter++;
        }

        // Insert the new Course Enrollments
        try {
            if (!newCourseEnrollmentsMap.isEmpty()) {

                Map<Integer, hed__Course_Enrollment__c> courseEnrollmentToInsertMap = new Map<Integer, hed__Course_Enrollment__c>(newCourseEnrollmentsMap);
                Set<Id> successfulCCIdSet = new Set<Id>();
                courseEnrollmentCounter = 0;
                for (Database.SaveResult sr : Database.insert(newCourseEnrollmentsMap.values(), false, AccessLevel.USER_MODE)) {
                    if (!sr.isSuccess()) {
                        errorResponseMap.put(courseEnrollmentToRequestCounterMap.get(courseEnrollmentCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Course Enrollment: ' + sr.getErrors()[0].getMessage(), ''));
                    } else {
                        successfulCCIdSet.add(sr.getId());
                        courseEnrollmentToInsertMap.put(courseEnrollmentToRequestCounterMap.get(courseEnrollmentCounter), newCourseEnrollmentsMap.get(courseEnrollmentCounter));
                    }
                    courseEnrollmentCounter++;
                }

                // Requery the successful Course Enrollments to get the full records including the Name of the record
                Map<String, hed__Course_Enrollment__c> courseEnrollmentReMap = new Map<String, hed__Course_Enrollment__c>();
                String ccReQuery = 'SELECT Id, Name, hed__Contact__c, rio_ed__Plan_Requirement_Course__r.hed__Course__r.hed__Course_ID__c,' +
                                ' hed__Course_Offering__r.hed__Course__r.hed__Course_ID__c, rio_ed__Enrollment_Status__c, hed__Program_Enrollment__c' +
                                ' FROM hed__Course_Enrollment__c' +
                                ' WHERE Id IN :successfulCCIdSet';

                Map<String, Object> ccReBindParams = new Map<String, Object>{
                    'successfulCCIdSet' => successfulCCIdSet
                };
                for(hed__Course_Enrollment__c cc : (List<hed__Course_Enrollment__c>) Database.queryWithBinds(ccReQuery, ccReBindParams, AccessLevel.USER_MODE)){
                    courseEnrollmentReMap.put(cc.Id, cc);
                }

                requestCounter = 0;
                for (Request req : requests) {

                    if (errorResponseMap.containsKey(requestCounter)) {
                        responses.add(errorResponseMap.get(requestCounter));
                        requestCounter++;
                        continue;
                    }

                    if (courseEnrollmentToInsertMap.containsKey(requestCounter)) {
                        hed__Course_Enrollment__c successfulInsert = courseEnrollmentReMap.get(courseEnrollmentToInsertMap.get(requestCounter).Id);
                        Map<String, Object> responseJSON = new Map<String, Object>();
                        responseJSON.put('resp', successfulInsert);
                        responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                    }
                    requestCounter++;
                }
            }
        } catch (Exception e) {
            // Handle DML exceptions
            for (Request req : requests) {
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'Error occurred while inserting Course Enrollment: ' + e.getMessage(), ''));
            }
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
            description='Course Code'
        )
        global String courseCode;
    }
}