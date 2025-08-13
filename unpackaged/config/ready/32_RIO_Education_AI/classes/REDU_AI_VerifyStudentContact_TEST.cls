/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Test Class for REDU_AI_VerifyStudentContact
* @change-history
*/
@isTest
private class REDU_AI_VerifyStudentContact_TEST {

    // Unit Test for the REDU_AI_VerifyStudentContact class
    @testSetup
    static void setupData(){
        // Create Student Contacts
        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 5; i++) {
            testContacts.add(new Contact(
                FirstName = 'Test',
                LastName = 'Contact' + i,
                Email = 'testcontact' + i + '@example.com',
                rio_ed__Student_ID__c = 'STU' + i,
                Phone = '1234567890'
            ));
        }
        insert testContacts;

        // Create Non Student Contacts
        List<Contact> nonStudentContacts = new List<Contact>();
        for (Integer i = 0; i < 5; i++) {
            nonStudentContacts.add(new Contact(
                FirstName = 'NonStudent',
                LastName = 'Contact' + i,
                Email = 'nonstudentcontact' + i + '@example.com',
                Phone = '0987654321'
            ));
        }
    }

    @isTest
    static void testVerifyStudentContact() {
        List<REDU_AI_VerifyStudentContact.Request> requests = new List<REDU_AI_VerifyStudentContact.Request>();
        // Create a request for each test contact
        for (Contact con : [SELECT Id FROM Contact WHERE LastName LIKE 'Contact%']) {
            REDU_AI_VerifyStudentContact.Request req = new REDU_AI_VerifyStudentContact.Request();
            req.myContact = con;
            requests.add(req);
        }
        // Call the method to test
        List<REDU_AI_InvocableResponse> responses = REDU_AI_VerifyStudentContact.studentContactVerification(requests);
        // Verify the responses
        Assert.areEqual(responses.size(), requests.size(), 'The number of responses should match the number of requests.');
        for (Integer i = 0; i < responses.size(); i++) {
            REDU_AI_InvocableResponse response = responses[i];
            Assert.isTrue(response.isSuccess == true, 'The response should be successful.');
            // Convert the response.responseData to JSON
            Map<String, Object> responseJSON = (Map<String, Object>) JSON.deserializeUntyped(response.responseData);
            Assert.areNotEqual(null, responseJSON.get('contactId'), 'The contact ID should not be null.');
        }
        // Verify that the contact ID in the response matches the contact ID in the request
        for (Integer i = 0; i < responses.size(); i++) {
            REDU_AI_InvocableResponse response = responses[i];
            REDU_AI_VerifyStudentContact.Request req = requests[i];
            // Convert the response.responseData to JSON
            Map<String, Object> responseJSON = (Map<String, Object>) JSON.deserializeUntyped(response.responseData);
            Assert.areEqual(req.myContact.Id, responseJSON.get('contactId'), 'The contact ID in the response should match the contact ID in the request.');
        }
    }

    @isTest
    static void testVerifyNonStudentContact() {
        List<REDU_AI_VerifyStudentContact.Request> requests = new List<REDU_AI_VerifyStudentContact.Request>();
        // Create a request for each non-student contact
        for (Contact con : [SELECT Id FROM Contact WHERE LastName LIKE 'NonStudent%']) {
            REDU_AI_VerifyStudentContact.Request req = new REDU_AI_VerifyStudentContact.Request();
            req.myContact = con;
            requests.add(req);
        }
        // Call the method to test
        List<REDU_AI_InvocableResponse> responses = REDU_AI_VerifyStudentContact.studentContactVerification(requests);
        // Verify the responses
        Assert.areEqual(responses.size(), requests.size(), 'The number of responses should match the number of requests.');
        for (Integer i = 0; i < responses.size(); i++) {
            REDU_AI_InvocableResponse response = responses[i];
            Assert.isTrue(response.isSuccess == false, 'The response should not be successful.');
            // Convert the response.responseData to JSON
            Map<String, Object> responseJSON = (Map<String, Object>) JSON.deserializeUntyped(response.responseData);
            Assert.areEqual(null, responseJSON.get('contactId'), 'The contact ID should be null.');
        }
    }
}