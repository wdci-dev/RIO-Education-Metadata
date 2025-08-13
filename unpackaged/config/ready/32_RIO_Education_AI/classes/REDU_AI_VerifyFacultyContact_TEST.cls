/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Test Class for REDU_AI_VerifyFacultyContact
* @change-history
*/
@isTest
private class REDU_AI_VerifyFacultyContact_TEST {

    // Unit Test for the REDU_AI_VerifyStudentContact class
    @testSetup
    static void setupData() {

        // Create Faculty Contacts
        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 5; i++) {
            testContacts.add(new Contact(
                FirstName = 'Test',
                LastName = 'Faculty' + i,
                Email = 'testfaculty' + i + '@example.com',
                Phone = '1234567890',
                rio_ed__Faculty_Member__c = true
            ));
        }
        insert testContacts;

        // Create Non Faculty Contacts
        List<Contact> nonFacultyContacts = new List<Contact>();
        for (Integer i = 0; i < 5; i++) {
            nonFacultyContacts.add(new Contact(
                FirstName = 'NonFaculty',
                LastName = 'Contact' + i,
                Email = 'nonfacultycontact' + i + '@example.com',
                Phone = '0987654321',
                rio_ed__Faculty_Member__c = false
            ));
        }
    }

    @isTest
    static void testVerifyFacultyContact() {

        List<REDU_AI_VerifyFacultyContact.Request> requests = new List<REDU_AI_VerifyFacultyContact.Request>();
        // Create a request for each test contact
        for (Contact con : [SELECT Id FROM Contact WHERE LastName LIKE 'Faculty%']) {
            REDU_AI_VerifyFacultyContact.Request req = new REDU_AI_VerifyFacultyContact.Request();
            req.myContact = con;
            requests.add(req);
        }
        // Call the method to test
        List<REDU_AI_InvocableResponse> responses = REDU_AI_VerifyFacultyContact.facultyContactVerification(requests);
        // Verify the responses
        Assert.areEqual(responses.size(), requests.size(), 'The number of responses should match the number of requests.');
        for (Integer i = 0; i < responses.size(); i++) {
            REDU_AI_InvocableResponse response = responses[i];
            Assert.isTrue(response.isSuccess == true, 'The response should be successful.');
            // Convert the response.responseData to JSON
            Map<String, Object> responseJSON = (Map<String, Object>) JSON.deserializeUntyped(response.responseData);
            Assert.areNotEqual(null, responseJSON.get('contactId'), 'The contact ID should not be null.');
        }
    }

}