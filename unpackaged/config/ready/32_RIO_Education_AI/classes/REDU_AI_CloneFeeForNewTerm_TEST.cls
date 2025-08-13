/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Test Class for REDU_AI_CloneFeeForNewTerm
* @change-history
*/
@isTest
private class REDU_AI_CloneFeeForNewTerm_TEST {

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
            hed__Account__c = educationalInstitution.Id,
            hed__Start_Date__c = System.today().addDays(-30),
            hed__End_Date__c = System.today().addDays(30)
        );

        insert term;

        // Create Fee
        rio_ed__Fee__c fee = new rio_ed__Fee__c(
            Name = 'Test Fee',
            rio_ed__Fee_Type__c = '	Tuition'
        );
        insert fee;

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

        // Create course enrollment
        hed__Course_Enrollment__c ce = new hed__Course_Enrollment__c();
        ce.hed__Program_Enrollment__c = pe.Id;
        ce.hed__Contact__c = pe.hed__Contact__c;
        ce.hed__Course_Offering__c = co.Id;

        insert ce;

        // Create Student Fee record
        rio_ed__Student_Fee__c sf = new rio_ed__Student_Fee__c();
        sf.rio_ed__Program_Enrollment__c = pe.Id;
        insert sf;

        // Create Fee Line
        rio_ed__Fee_Line__c fl = new rio_ed__Fee_Line__c();
        fl.rio_ed__Student_Fee__c = sf.Id;
        fl.rio_ed__Course_Connection__c = ce.Id;
        insert fl;

        // Create Fee Schedule
        rio_ed__Fee_Schedule__c feeSchedule = new rio_ed__Fee_Schedule__c(
            Name = 'Test Fee Schedule',
            rio_ed__Fee__c = fee.Id,
            rio_ed__Fee_Amount_Domestic__c = 1000,
            rio_ed__Fee_Amount_International__c = 2000,
            rio_ed__Fee_Start_Date__c = System.today().addDays(-60),
            rio_ed__Fee_End_Date__c = System.today().addDays(60)
        );
        insert feeSchedule;
    }

    @isTest
    static void testCloneFeeForNewTerm() {

        Id feeScheduleId = [SELECT Id FROM rio_ed__Fee_Schedule__c LIMIT 1].Id;
        Id termId = [SELECT Id FROM hed__Term__c LIMIT 1].Id;

        // Create Fee Schedule Terms
        List<rio_ed__Fee_Schedule_Term__c> feeScheduleTerms = new List<rio_ed__Fee_Schedule_Term__c>();
        for (Integer i = 0; i < 3; i++) {
            rio_ed__Fee_Schedule_Term__c feeScheduleTerm = new rio_ed__Fee_Schedule_Term__c(
                rio_ed__Fee_Schedule__c = feeScheduleId,
                rio_ed__Term__c = termId
            );
            feeScheduleTerms.add(feeScheduleTerm);
        }
        insert feeScheduleTerms;

        // Create New Term
        hed__Term__c newTerm = new hed__Term__c(
            Name = 'New Term',
            hed__Account__c = [SELECT Id FROM Account WHERE Name = 'EducationalInstitution' LIMIT 1].Id
        );
        insert newTerm;

        Test.startTest();

        List<REDU_AI_CloneFeeForNewTerm.Request> requests = new List<REDU_AI_CloneFeeForNewTerm.Request>();
        REDU_AI_CloneFeeForNewTerm.Request req = new REDU_AI_CloneFeeForNewTerm.Request();
        req.existingTermId = termId;
        req.newTermId = newTerm.Id;
        requests.add(req);

        List<REDU_AI_InvocableResponse> responses = REDU_AI_CloneFeeForNewTerm.cloneFeeForNewTerm(requests);

        Assert.isTrue(responses.size() > 0, 'Response list should not be empty');

        Test.stopTest();
        // Verify that the Fee Schedule Terms were cloned correctly
        List<rio_ed__Fee_Schedule_Term__c> clonedTerms = [
            SELECT Id, rio_ed__Fee_Schedule__c, rio_ed__Term__c
            FROM rio_ed__Fee_Schedule_Term__c
            WHERE rio_ed__Term__c = :req.newTermId
        ];
        Assert.isTrue(clonedTerms.size() > 0, 'Cloned Fee Schedule Terms should exist');
        for (rio_ed__Fee_Schedule_Term__c clonedTerm : clonedTerms) {
            Assert.isTrue(clonedTerm.rio_ed__Term__c == req.newTermId, 'Cloned Term ID should match new Term ID');
        }
    }

    // Test method for error handling
    @isTest
    static void testCloneFeeForNewTermFSTerror() {

        Id termId = [SELECT Id FROM hed__Term__c LIMIT 1].Id;

        Test.startTest();

        List<REDU_AI_CloneFeeForNewTerm.Request> requests = new List<REDU_AI_CloneFeeForNewTerm.Request>();
        REDU_AI_CloneFeeForNewTerm.Request req = new REDU_AI_CloneFeeForNewTerm.Request();
        req.existingTermId = termId;
        req.newTermId = 'invalid_new_term_id';
        requests.add(req);

        List<REDU_AI_InvocableResponse> responses = REDU_AI_CloneFeeForNewTerm.cloneFeeForNewTerm(requests);

        Assert.isTrue(responses.size() > 0, 'Response list should not be empty');
        for (REDU_AI_InvocableResponse resp : responses) {
            Assert.isFalse(resp.isSuccess, 'Response should not be successful');
        }

        Test.stopTest();
    }
}