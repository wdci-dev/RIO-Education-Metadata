/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Test Class for REDU_AI_Program_Transfer
* @change-history
*/
@isTest
private class REDU_AI_Program_Transfer_TEST {

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

        // Create another Program and Program Plan
        Account newAcademicProgram = new Account(Name = 'NewAcademicProgram',
                    ParentId = universityDepartment.Id,
                    rio_ed__EFTSL_Credit_Points__c = 100,
                    rio_ed__Program_Code__c = 'NAP',
                    rio_ed__Fee_Due_Days__c = 60,
                    RecordTypeId = apRecordTypeId);
        insert newAcademicProgram;

        hed__Program_Plan__c newPP = new hed__Program_Plan__c();
        newPP.Name = 'New Program Plan';
        newPP.hed__Account__c = newAcademicProgram.Id;
        newPP.hed__Start_Date__c = System.today().addDays(-30);
        newPP.hed__End_Date__c = System.today().addDays(30);
        newPP.hed__Is_Primary__c = true;
        newPP.hed__Status__c = 'Current';
        newPP.rio_ed__Fee_Method__c = 'Term';
        insert newPP;

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
    static void testProgramTransfer() {
        // Get the test data
        List<hed__Program_Enrollment__c> pes = [SELECT Id, hed__Account__c FROM hed__Program_Enrollment__c];
        Assert.areEqual(1, pes.size(), 'There should be one Program Enrollment for the test.');
        hed__Program_Enrollment__c pe = pes[0];

        // Get the new additional Program that will be used for the transfer
        List<Account> newAcademicPrograms = [SELECT Id FROM Account WHERE Name = 'NewAcademicProgram'];
        Assert.areEqual(1, newAcademicPrograms.size(), 'There should be one new Academic Program for the test.');

        // Generate the request for the program transfer
        REDU_AI_Program_Transfer.Request request = new REDU_AI_Program_Transfer.Request();
        request.peId = pe.Id;
        request.programId = newAcademicPrograms[0].Id;
        List<REDU_AI_Program_Transfer.Request> requests = new List<REDU_AI_Program_Transfer.Request>();
        requests.add(request);

        // Call the method to test
        List<REDU_AI_InvocableResponse> responses = REDU_AI_Program_Transfer.programTransfer(requests);
        for (REDU_AI_InvocableResponse response : responses) {
            System.debug('Response: ' + response);
            Assert.isTrue(response.isSuccess, 'Expected success to be true');
        }
    }

}