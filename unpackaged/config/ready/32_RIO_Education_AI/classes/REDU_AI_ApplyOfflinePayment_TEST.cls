/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Test Class for REDU_AI_ApplyOfflinePayment
* @change-history
*/
@isTest
private class REDU_AI_ApplyOfflinePayment_TEST {

    // Generate test data using REDU_AI_TestDataFactory
    @testSetup
    static void setupData() {

        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

        // Create Settings for RIO Education
        REDU_AI_TestDataFactory_UTIL.createDefaultSettings();

        //Create our trigger handlers
        REDU_AI_TestDataFactory_UTIL.createRIOEdTriggerHandlers();

        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);

        //Create Educational Institution Account
        Id eiRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Educational Institution').getRecordTypeId();

        Account educationalInstitution = new Account(
            Name = 'EducationalInstitution',
            rio_ed__EFTSL_Credit_Points__c = 100,
            RecordTypeId = eiRecordTypeId
        );

        insert educationalInstitution;

        //Create department account
        Id udRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('University Department').getRecordTypeId();
        Account universityDepartment = new Account(Name = 'UniversityDepartment',
                    ParentId = educationalInstitution.Id,
                    rio_ed__EFTSL_Credit_Points__c = 100,
                    RecordTypeId = udRecordTypeId);
        insert universityDepartment;

        //Create academic program account
        Id apRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId();
        Account academicProgram = new Account(Name = 'AcademicProgram',
                    ParentId = universityDepartment.Id,
                    rio_ed__EFTSL_Credit_Points__c = 100,
                    rio_ed__Program_Code__c = 'AP',
                    rio_ed__Fee_Due_Days__c = 60,
                    RecordTypeId = apRecordTypeId);

        insert academicProgram;

        //Create program plan
        hed__Program_Plan__c pp = new hed__Program_Plan__c();
        pp.Name = 'Program Plan';
        pp.hed__Account__c = academicProgram.Id;
        pp.hed__Start_Date__c = System.today().addDays(-30);
        pp.hed__End_Date__c = System.today().addDays(30);
        pp.hed__Is_Primary__c = true;
        pp.hed__Status__c = 'Current';
        pp.rio_ed__Fee_Method__c = 'Term';
        insert pp;

        //Create contact for course enrollment
        Contact con = new Contact(
            LastName = 'Doe'
        );

        insert con;

        //Create term
        hed__Term__c term = new hed__Term__c(
            hed__Account__c = educationalInstitution.Id
        );

        insert term;

        //Create course
        hed__Course__c course = new hed__Course__c(
            Name = 'Test Course',
            hed__Course_ID__c = 'Test Course',
            hed__Account__c = educationalInstitution.Id
        );

        insert course;

        //Create course offering
        hed__Course_Offering__c co = new hed__Course_Offering__c(
            Name = 'Test CO',
            hed__Course__c = course.Id,
            hed__Term__c = term.Id
        );

        insert co;

        hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c();
        pe.hed__Account__c = academicProgram.Id;
        pe.hed__Contact__c = con.Id;
        pe.hed__Program_Plan__c = pp.Id;
        pe.rio_ed__Fee_Method__c = 'Term';
        pe.rio_ed__Pay_Upfront__c = 'No';

        insert pe;

        // Create PE Pathway
        rio_ed__PE_Pathway_Status__c pathway = new rio_ed__PE_Pathway_Status__c();
        pathway.rio_ed__Program_Enrollment__c = pe.Id;
        pathway.rio_ed__Term__c = term.Id;
        insert pathway;

        // Create course enrollment
        hed__Course_Enrollment__c ce = new hed__Course_Enrollment__c();
        ce.hed__Program_Enrollment__c = pe.Id;
        ce.hed__Contact__c = pe.hed__Contact__c;
        ce.hed__Course_Offering__c = co.Id;

        insert ce;

        // Create Student Fee record
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c();
        sf.rio_ed__Program_Enrollment__c = pe.Id;
        sf.rio_ed__PE_Pathway__c = pathway.Id;
        insert sf;

        // Create Fee Line
        rio_ed__Fee_Line__c fl = new rio_ed__Fee_Line__c();
        fl.rio_ed__Student_Fee__c = sf.Id;
        fl.rio_ed__Course_Connection__c = ce.Id;
        insert fl;
    }

    @isTest
    static void testApplyOfflinePayment() {

        REDU_AI_ApplyOfflinePayment.Request req = new REDU_AI_ApplyOfflinePayment.Request();
        req.contactId = [SELECT Id FROM Contact LIMIT 1].Id;
        req.termId = [SELECT Id FROM hed__Term__c LIMIT 1].Id;
        req.paymentAmount = '100';
        List<REDU_AI_ApplyOfflinePayment.Request> requests = new List<REDU_AI_ApplyOfflinePayment.Request>();
        requests.add(req);

        // Call the method to test
        List<REDU_AI_InvocableResponse> responses = REDU_AI_ApplyOfflinePayment.addStudentFee(requests);

        for (REDU_AI_InvocableResponse response : responses) {
            System.debug('Response: ' + response);
            Assert.areEqual(true, response.isSuccess);
        }

        // Confirm the presence of the Fee Payment record
        List<rio_ed__Fee_Payment__c> feePayments = [SELECT Id, rio_ed__Payment_Amount__c FROM rio_ed__Fee_Payment__c];
        Assert.areEqual(1, feePayments.size(), 'Fee Payment record should be created');
        for (rio_ed__Fee_Payment__c feePayment : feePayments) {
            Assert.areEqual(100, feePayment.rio_ed__Payment_Amount__c, 'Payment amount should match the request');
        }
    }
}