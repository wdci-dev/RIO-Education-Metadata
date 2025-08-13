/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to Faculty Contact verification
* @change-history
*/
global with sharing class REDU_AI_VerifyFacultyContact {

    /**
     * @description     Agentforce support class to verify Faculty Contact
     * @param           requests - List of Request objects
    */
    @InvocableMethod(
        label='Faculty Contact Verification'
        description='Verify the Faculty Contact provided and return the Contact ID if Faculty Member? is true'
    )
    global static List<REDU_AI_InvocableResponse> facultyContactVerification(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();
        Set<Id> contactIdSet = new Set<Id>();
        for (Request req : requests) {
            // Check if the contactId is not null
            if (req.myContact != null) {
                contactIdSet.add(req.myContact.Id);
            }
        }

        // Construct the map for relevant Contacts based on Contact IDs
        Map<Id, Contact> contactMap = new Map<Id, Contact>();
        String conQuery = 'SELECT Id,' +
                        ' FirstName, LastName, rio_ed__Faculty_Member__c' +
                        ' FROM Contact' +
                        ' WHERE Id IN :contactIdSet';

        Map<String, Object> conBindParams = new Map<String, Object>{
            'contactIdSet' => contactIdSet
        };

        for (Contact con : (List<Contact>) Database.queryWithBinds(conQuery, conBindParams, AccessLevel.USER_MODE)) {
            contactMap.put(con.Id, con);
        }

        for (Request req : requests) {
            if (req.myContact != null && req.myContact.Id != null) {

                // Check if the Contact ID is in the map
                Map<String, Object> responseJSON = new Map<String, Object>();
                if (contactMap.containsKey(req.myContact.Id) && contactMap.get(req.myContact.Id).rio_ed__Faculty_Member__c) {
                    responseJSON.put('contactId', req.myContact.Id);
                    responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                } else {
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Invalid Faculty Contact.', ''));
                }
            } else {
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Contact ID is null.', ''));
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
            description='Contact Record'
        )
        global Contact myContact;
    }
}