/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class for Verification of Student Contact
* @change-history
*/
global with sharing class REDU_AI_VerifyStudentContact {

    /**
     * @description     Agentforce support class to verify Student Contact
     * @param           requests - List of Request objects
     * @return          List<REDU_AI_InvocableResponse> - List of Response objects
    */
    @InvocableMethod(label='Student Contact Verification' description='Verify the Student Contact provided and return the Contact ID if Student ID is found for the Contact')
    global static List<REDU_AI_InvocableResponse> studentContactVerification(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();
        Set<Id> contactIdSet = new Set<Id>();
        for(Request req : requests) {
            if (req.myContact != null && req.myContact.Id != null) {
                // Add the Contact ID to the set
                contactIdSet.add(req.myContact.Id);
            }
        }

        Map<Id, Contact> contactMap = new Map<Id, Contact>();
        if (!contactIdSet.isEmpty()) {
            // Construct the map for relevant Contacts based on Contact IDs
            String conQuery = 'SELECT Id,' +
                            ' FirstName, LastName, rio_ed__Student_ID__c' +
                            ' FROM Contact' +
                            ' WHERE Id IN :contactIdSet';

            Map<String, Object> conBindParams = new Map<String, Object>{
                'contactIdSet' => contactIdSet
            };

            for (Contact con : (List<Contact>) Database.queryWithBinds(conQuery, conBindParams, AccessLevel.USER_MODE)) {
                contactMap.put(con.Id, con);
            }
        }

        for (Request req : requests) {
            if (req.myContact != null && req.myContact.Id != null) {

                // Check if the Contact ID is in the map
                Map<String, Object> responseJSON = new Map<String, Object>();
                if (contactMap.containsKey(req.myContact.Id) && String.isNotBlank(contactMap.get(req.myContact.Id).rio_ed__Student_ID__c)) {
                    responseJSON.put('contactId', req.myContact.Id);
                    responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                } else {
                    responseJSON.put('contactId', null);
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Invalid Student Contact.', ''));
                }
            }
        }

        return responses;
    }

    /**
     * @description      Request class for the Contact Verification
    */
    global class Request {
        @InvocableVariable(
            required=true
            description='Student contact record'
        )
        global Contact myContact;
    }
}