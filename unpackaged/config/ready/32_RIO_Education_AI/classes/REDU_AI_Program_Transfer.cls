/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class for Transfer of Program
* @change-history
*/
global with sharing class REDU_AI_Program_Transfer {

    private static final String CANCELLED_PROGRAM_STATUS = 'Cancelled';
    private static final String CURRENT_PROGRAM_STATUS = 'Current';

    @InvocableMethod(
        label='Program Transfer Management'
        description='Cancels specified Program Enrollment and creates new Program Enrollment for the student based on the Program specified'
    )
    global static List<REDU_AI_InvocableResponse> programTransfer(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        // Map out the Program Enrollment IDs and Program IDs from the requests
        Set<Id> peIds = new Set<Id>();
        Set<Id> programIds = new Set<Id>();
        for (Request input : requests) {
            if (input.peId != null && input.programId != null) {
                peIds.add((Id)input.peId);
                programIds.add((Id)input.programId);
            }
        }

        // Retrieve relevant Program and Program Plan
        Map<Id, Id> programToProgramPlanMap = new Map<Id, Id>();
        String ppQuery = 'SELECT Id, Name, hed__Account__c, hed__Is_Primary__c' +
                        ' FROM hed__Program_Plan__c' +
                        ' WHERE hed__Account__c IN :programIds' +
                        ' ORDER BY CreatedDate DESC';

        Map<String, Object> ppBindParams = new Map<String, Object>{
            'programIds' => programIds
        };
        for(hed__Program_Plan__c pp : (List<hed__Program_Plan__c>) Database.queryWithBinds(ppQuery, ppBindParams, AccessLevel.USER_MODE)){

            if (programToProgramPlanMap.containsKey(pp.hed__Account__c)) {
                continue; // Skip if already exists
            }

            // Map the Program ID to the Program Plan ID
            if (pp.hed__Is_Primary__c) {
                programToProgramPlanMap.put(pp.hed__Account__c, pp.Id);
            }
        }

        //Get related Program Enrollment
        // Map<Id, hed__Program_Enrollment__c> peToUpdateMap = new Map<Id, hed__Program_Enrollment__c>();
        // Map<String, hed__Program_Enrollment__c> peToInsertMap = new Map<String, hed__Program_Enrollment__c>();

        Map<Id, hed__Program_Enrollment__c> relevantPEMap = new Map<Id, hed__Program_Enrollment__c>();

        String peQuery = 'SELECT Id, Name, hed__Account__c, hed__Contact__c, rio_ed__Program_Status__c, rio_ed__Fee_Method__c, hed__Program_Plan__c,' +
                        ' hed__Enrollment_Status__c, rio_ed__Pay_Upfront__c, hed__Eligible_to_Enroll__c, hed__Contact__r.Name' +
                        ' FROM hed__Program_Enrollment__c' +
                        ' WHERE Id IN :peIds';

        Map<String, Object> peBindParams = new Map<String, Object>{
            'peIds' => peIds
        };
        for(hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>) Database.queryWithBinds(peQuery, peBindParams, AccessLevel.USER_MODE)){
            System.debug('pe: ' + pe);

            // Create a map for the Program Enrollment in order to utilize it later when iterating through the requests
            relevantPEMap.put(pe.Id, pe);
        }

        // Iterate through the Request, generating map of PE to update and insert

        Map<Integer, REDU_AI_InvocableResponse> errResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();
        Map<Integer, hed__Program_Enrollment__c> peToUpdateMap = new Map<Integer, hed__Program_Enrollment__c>();
        Map<Integer, hed__Program_Enrollment__c> peToInsertMap = new Map<Integer, hed__Program_Enrollment__c>();
        Map<Integer, Integer> peUpdateCounterToRequestCounter = new Map<Integer, Integer>();
        Map<Integer, Integer> peInsertCounterToRequestCounter = new Map<Integer, Integer>();

        Integer requestCounter = 0;
        Integer peUpdateCounter = 0;
        Integer peInsertCounter = 0;

        for (Request input : requests) {

            // Only parse requests with complete parameters
            if (input.peId == null || input.programId == null) {
                errResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Invalid Program Enrollment or Program.', ''));
                requestCounter++;
                continue; // Skip to next request
            }

            hed__Program_Enrollment__c pe = relevantPEMap.get(input.peId);

            // If the Program Enrollment does not exist, add an error response
            if (pe == null) {
                errResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Program Enrollment not found for ID: ' + input.peId, ''));
                requestCounter++;
                continue; // Skip to next request
            }

            // Check if the Program Enrollment is already in the intended Program to transfer into
            if (pe.hed__Account__c == input.programId) {
                errResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Program Enrollment already in the specified Program.', ''));
                requestCounter++;
                continue; // Skip to next request
            }

            // Cancel the existing Program Enrollment and generate new one with the new Program
            hed__Program_Enrollment__c updatePE = new hed__Program_Enrollment__c();
            updatePE.Id = pe.Id; // Set the ID of the existing Program Enrollment to update
            updatePE.hed__Enrollment_Status__c = CANCELLED_PROGRAM_STATUS; // Set to Cancelled
            peToUpdateMap.put(requestCounter, updatePE); // Add to update map
            peUpdateCounterToRequestCounter.put(peUpdateCounter, requestCounter);
            peUpdateCounter++;

            // Create a new Program Enrollment for the new Program
            hed__Program_Enrollment__c newPE = new hed__Program_Enrollment__c();
            newPE.hed__Account__c = input.programId;
            newPE.hed__Contact__c = pe.hed__Contact__c; // Copy Contact from existing PE
            newPE.hed__Program_Plan__c = programToProgramPlanMap.get(input.programId); // Get the Program Plan for the new Program
            newPE.rio_ed__Program_Status__c = CURRENT_PROGRAM_STATUS; // Set to Current
            newPE.hed__Enrollment_Status__c = pe.hed__Enrollment_Status__c; // Copy Enrollment Status from existing PE
            newPE.rio_ed__Fee_Method__c = pe.rio_ed__Fee_Method__c; // Copy Fee Method from existing PE
            newPE.rio_ed__Pay_Upfront__c = pe.rio_ed__Pay_Upfront__c; // Copy Pay Upfront from existing PE
            newPE.hed__Eligible_to_Enroll__c = pe.hed__Eligible_to_Enroll__c; // Copy Eligible to Enroll from existing PE

            peToInsertMap.put(requestCounter, newPE);
            peInsertCounterToRequestCounter.put(peInsertCounter, requestCounter);
            peInsertCounter++;

            requestCounter++;
        }

        // Process the PE to Update (this Cancels the existing Program Enrollment)
        if (!peToUpdateMap.isEmpty()) {

            peUpdateCounter = 0;
            for (Database.SaveResult sr : Database.update(peToUpdateMap.values(), false, AccessLevel.USER_MODE)) {
                if (!sr.isSuccess()) {
                    errResponseMap.put(peUpdateCounterToRequestCounter.get(peUpdateCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Updating Program Enrollment: ' + sr.getErrors()[0].getMessage(), ''));
                }
                peUpdateCounter++;
            }
        }

        // Process the PE to Insert (this Creates the new Program Enrollment with the new Program)
        Set<Id> peInsertIdSet = new Set<Id>();
        if (!peToInsertMap.isEmpty()) {

            peInsertCounter = 0;
            for (Database.SaveResult sr : Database.insert(peToInsertMap.values(), false, AccessLevel.USER_MODE)) {
                if (!sr.isSuccess()) {
                    errResponseMap.put(peInsertCounterToRequestCounter.get(peInsertCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Program Enrollment: ' + sr.getErrors()[0].getMessage(), ''));
                } else {
                    peInsertIdSet.add(sr.getId());
                }
                peInsertCounter++;
            }
        }

        // Requery the new Program Enrollments to get the Name
        Map<Id, hed__Program_Enrollment__c> peToInsertReMap = new Map<Id, hed__Program_Enrollment__c>();
        String peReQuery = 'SELECT Id, Name, hed__Account__c, hed__Contact__c, rio_ed__Program_Status__c, rio_ed__Fee_Method__c, hed__Program_Plan__c,' +
                        ' hed__Enrollment_Status__c, rio_ed__Pay_Upfront__c, hed__Eligible_to_Enroll__c, hed__Account__r.Name, hed__Contact__r.Name' +
                        ' FROM hed__Program_Enrollment__c' +
                        ' WHERE Id IN :peIds';

        Map<String, Object> peReBindParams = new Map<String, Object>{
            'peIds' => peInsertIdSet
        };
        for(hed__Program_Enrollment__c pe : (List<hed__Program_Enrollment__c>) Database.queryWithBinds(peReQuery, peReBindParams, AccessLevel.USER_MODE)) {
            System.debug('pe: ' + pe);
            peToInsertReMap.put(pe.Id, pe);
        }

        // Prepare the response for each request
        requestCounter = 0;
        for (Request input : requests) {

            // Process the error responses first
            if (errResponseMap.containsKey(requestCounter)) {
                responses.add(errResponseMap.get(requestCounter));
                requestCounter++;
                continue; // Skip to next request if there was an error
            }

            // Process the responses for new Program Enrollment
            if (peToInsertMap.containsKey(requestCounter)) {

                hed__Program_Enrollment__c peToInsert = peToInsertReMap.get(peToInsertMap.get(requestCounter).Id);

                // Check if the new Program Enrollment was created
                if (peToInsert != null) {
                    Map<String, Object> responseJSON = new Map<String, Object>();
                    responseJSON.put('resp', peToInsert);

                    System.debug('responseJSON: ' + responseJSON);
                    responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                } else {
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - New Program Enrollment not found for ID: ' + input.peId, ''));
                }
            } else {
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No changes made to Program Enrollment.', ''));
            }

        }

        System.debug('responses: ' + responses);
        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Program ID'
        )
        global String programId;

        @InvocableVariable(
            required=true
            description='Program Enrollment ID'
        )
        global String peId;
    }
}