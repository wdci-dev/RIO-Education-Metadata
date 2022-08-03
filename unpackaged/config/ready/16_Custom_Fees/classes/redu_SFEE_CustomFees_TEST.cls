/**
 * @author 		WDCi (CM)
 * @date 		Oct 2021
 * @group 		RIO Education
 * @description	Test coverage for redu_SFEE_CustomFees_TDTM
 * 
 * @change-history   
 * - 3/08/2022 Jordan: Modified for RIO Ready
 */

@isTest
public with sharing class redu_SFEE_CustomFees_TEST {

    static final String programPlanGroupName = 'redu_SFEE_CustomFees_TEST Program Plan Group';
    static final String programPlanSingleName = 'redu_SFEE_CustomFees_TEST Program Plan Single';

    @TestSetup
    static void setupData(){
        //Create Trigger Handlers
        REDU_CustomFeesTestDataFactory_UTIL.createRIOEdTriggerHandlers();

        // Create new Trigger Handler
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

        // Create our trigger handler using the constructor
        redu_CustomFeesTriggerHandler_MANAGER.init_CustomFees_TDTM();

        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);

        //Setup RIO Education Settings
        rio_ed__RIO_Education_Settings__c customSettings = createDefaultSettings();
        insert customSettings;

        //Create Program
        List<Account> educationalInstitutions = REDU_CustomFeesTestDataFactory_UTIL.createEducationalInstitutions(1);
        insert educationalInstitutions;
        List<Account> universityDepts = REDU_CustomFeesTestDataFactory_UTIL.createUniversityDepartments(educationalInstitutions, 1);
        insert universityDepts;
        List<Account> programList = REDU_CustomFeesTestDataFactory_UTIL.createAcademicPrograms(universityDepts, 1);
        insert programList;

        //grade setting
        rio_ed__Grade_Setting__c gs1 = new rio_ed__Grade_Setting__c(
            rio_ed__Grade_Setting_Group__c = educationalInstitutions.get(0).Id,
            rio_ed__Grade_Setting_Scope__c = 'Educational Institution',
            rio_ed__Grade_Value__c = 'HD - High Distinction',
            rio_ed__Grade_Range__c  = '85-100',
            rio_ed__Grade_Points__c  = 7,
            rio_ed__Grade_Result__c = 'Pass'
        );

        rio_ed__Grade_Setting__c gs2 = new rio_ed__Grade_Setting__c(
            rio_ed__Grade_Setting_Group__c = educationalInstitutions.get(0).Id,
            rio_ed__Grade_Setting_Scope__c = 'Educational Institution',
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Grade_Range__c  = '75-84',
            rio_ed__Grade_Points__c  = 6,
            rio_ed__Grade_Result__c = 'Pass'
        );

        insert new List<rio_ed__Grade_Setting__c>{gs1, gs2};

        //Create Terms
        List<hed__Term__c> termList = REDU_CustomFeesTestDataFactory_UTIL.createTerms(educationalInstitutions[0].Id, 2);
        insert termList;
        termList[1].rio_ed__Previous_Term__c = termList[0].Id;
        //Set both terms in the same academic year
        termList[1].redu_Academic_Year__c = termList[0].redu_Academic_Year__c;
        update termList[1];

        Decimal TUITION_FEE_AMOUNT = 300;
        Decimal TERM_FEE_AMOUNT = 1000;
        Decimal ANNUAL_FEE_AMOUNT = 1500;
        Decimal COMPLETION_FEE_AMOUNT = 100;

        //Create Fees
        List<rio_ed__Fee__c> feeList = new List<rio_ed__Fee__c>();
        rio_ed__Fee__c tuitionFee = new rio_ed__Fee__c();
        tuitionFee.Name = 'tuitionFee';
        tuitionFee.rio_ed__Fee_Type__c = 'Tuition';
        tuitionFee.rio_ed__Fee_Unit__c = 'Course';
        tuitionFee.rio_ed__Description__c = 'Tuition Fee Description';
        rio_ed__Fee__c termFeeSingle = new rio_ed__Fee__c();
        termFeeSingle.Name = 'termFeeSingle';
        termFeeSingle.rio_ed__Fee_Type__c = 'Other';
        termFeeSingle.rio_ed__Fee_Unit__c = 'Term';
        termFeeSingle.rio_ed__Description__c = 'Term Fee Description';
        rio_ed__Fee__c annualFeeSingle = new rio_ed__Fee__c();
        annualFeeSingle.Name = 'annualFeeSingle';
        annualFeeSingle.rio_ed__Fee_Type__c = 'Other';
        annualFeeSingle.rio_ed__Fee_Unit__c = 'Year';
        annualFeeSingle.rio_ed__Description__c = 'Annual Fee Description';
        rio_ed__Fee__c completionFeeSingle = new rio_ed__Fee__c();
        completionFeeSingle.Name = 'completionFeeSingle';
        completionFeeSingle.rio_ed__Fee_Type__c = 'Other';
        completionFeeSingle.rio_ed__Fee_Unit__c = 'Program';
        completionFeeSingle.rio_ed__Description__c = 'Completion Fee Description';
        rio_ed__Fee__c termFeeGroup = new rio_ed__Fee__c();
        termFeeGroup.Name = 'termFeeGroup';
        termFeeGroup.rio_ed__Fee_Type__c = 'Fee Group';
        termFeeGroup.rio_ed__Description__c = 'Term Fee Group Description';
        rio_ed__Fee__c annualFeeGroup = new rio_ed__Fee__c();
        annualFeeGroup.Name = 'annualFeeGroup';
        annualFeeGroup.rio_ed__Fee_Type__c = 'Fee Group';
        annualFeeGroup.rio_ed__Description__c = 'Annual Fee Group Description';
        rio_ed__Fee__c completionFeeGroup = new rio_ed__Fee__c();
        completionFeeGroup.Name = 'completionFeeGroup';
        completionFeeGroup.rio_ed__Fee_Type__c = 'Fee Group';
        completionFeeGroup.rio_ed__Description__c = 'Completion Fee Group Description';
        feeList.add(tuitionFee);
        feeList.add(termFeeSingle);
        feeList.add(annualFeeSingle);
        feeList.add(completionFeeSingle);
        feeList.add(termFeeGroup);
        feeList.add(annualFeeGroup);
        feeList.add(completionFeeGroup);
        insert feeList;

        List<rio_ed__Fee__c> childFeeList = new List<rio_ed__Fee__c>();
        rio_ed__Fee__c termFeeA = new rio_ed__Fee__c();
        termFeeA.Name = 'termFeeA';
        termFeeA.rio_ed__Fee_Type__c = 'Other';
        termFeeA.rio_ed__Fee_Unit__c = 'Term';
        termFeeA.rio_ed__Description__c = 'Term Fee A Description';
        termFeeA.rio_ed__Parent_Fee__c = termFeeGroup.Id;
        rio_ed__Fee__c termFeeB = new rio_ed__Fee__c();
        termFeeB.Name = 'termFeeB';
        termFeeB.rio_ed__Fee_Type__c = 'Other';
        termFeeB.rio_ed__Fee_Unit__c = 'Term';
        termFeeB.rio_ed__Description__c = 'Term Fee B Description';
        termFeeB.rio_ed__Parent_Fee__c = termFeeGroup.Id;
        rio_ed__Fee__c annualFeeA = new rio_ed__Fee__c();
        annualFeeA.Name = 'annualFeeA';
        annualFeeA.rio_ed__Fee_Type__c = 'Other';
        annualFeeA.rio_ed__Fee_Unit__c = 'Year';
        annualFeeA.rio_ed__Description__c = 'Annual Fee A Description';
        annualFeeA.rio_ed__Parent_Fee__c = annualFeeGroup.Id;
        rio_ed__Fee__c annualFeeB = new rio_ed__Fee__c();
        annualFeeB.Name = 'annualFeeB';
        annualFeeB.rio_ed__Fee_Type__c = 'Other';
        annualFeeB.rio_ed__Fee_Unit__c = 'Year';
        annualFeeB.rio_ed__Description__c = 'Annual Fee B Description';
        annualFeeB.rio_ed__Parent_Fee__c = annualFeeGroup.Id;
        rio_ed__Fee__c completionFeeA = new rio_ed__Fee__c();
        completionFeeA.Name = 'completionFeeA';
        completionFeeA.rio_ed__Fee_Type__c = 'Other';
        completionFeeA.rio_ed__Fee_Unit__c = 'Program';
        completionFeeA.rio_ed__Description__c = 'Completion Fee A Description';
        completionFeeA.rio_ed__Parent_Fee__c = completionFeeGroup.Id;
        rio_ed__Fee__c completionFeeB = new rio_ed__Fee__c();
        completionFeeB.Name = 'completionFeeB';
        completionFeeB.rio_ed__Fee_Type__c = 'Other';
        completionFeeB.rio_ed__Fee_Unit__c = 'Program';
        completionFeeB.rio_ed__Description__c = 'Completion Fee B Description';
        completionFeeB.rio_ed__Parent_Fee__c = completionFeeGroup.Id;
        childFeeList.add(termFeeA);
        childFeeList.add(termFeeB);
        childFeeList.add(annualFeeA);
        childFeeList.add(annualFeeB);
        childFeeList.add(completionFeeA);
        childFeeList.add(completionFeeB);
        insert childFeeList;
        feeList.addAll(childFeeList);

        //Create Fee Schedules
        List<rio_ed__Fee_Schedule__c> feeScheduleList = new List<rio_ed__Fee_Schedule__c>();
        for (rio_ed__Fee__c fee : feeList){
            if (fee.rio_ed__Fee_Type__c != 'Fee Group'){
                rio_ed__Fee_Schedule__c fs = new rio_ed__Fee_Schedule__c();
                fs.Name = fee.Name + ' Fs';
                fs.rio_ed__Fee__c = fee.Id;
                fs.rio_ed__Fee_Start_Date__c = termList[0].hed__Start_Date__c;
                fs.rio_ed__Fee_End_Date__c = termList[1].hed__End_Date__c;
                fs.rio_ed__Current__c = true;
                if (fee.Name.contains('tuitionFee')){
                    fs.rio_ed__Fee_Amount_Domestic__c = TUITION_FEE_AMOUNT;
                } else if (fee.Name.contains('termFee')){
                    fs.rio_ed__Fee_Amount_Domestic__c = TERM_FEE_AMOUNT;
                } else if (fee.Name.contains('annualFee')){
                    fs.rio_ed__Fee_Amount_Domestic__c = ANNUAL_FEE_AMOUNT;
                } else if (fee.Name.contains('completionFee')){
                    fs.rio_ed__Fee_Amount_Domestic__c = COMPLETION_FEE_AMOUNT;
                }
                fs.rio_ed__Fee_Amount_International__c = fs.rio_ed__Fee_Amount_Domestic__c + 1;
                feeScheduleList.add(fs);
            }
            
        }
        insert feeScheduleList;

        //Create Fee Schedule Terms
        List<rio_ed__Fee_Schedule_Term__c> fstList = new List<rio_ed__Fee_Schedule_Term__c>();
        for (rio_ed__Fee_Schedule__c fs : feeScheduleList){
            for (hed__Term__c term : termList){
                rio_ed__Fee_Schedule_Term__c fst = new rio_ed__Fee_Schedule_Term__c();
                fst.rio_ed__Fee_Schedule__c = fs.Id;
                fst.rio_ed__Term__c = term.Id;
                fstList.add(fst);
            }
            
        }
        insert fstList;

        //Create Courses
        List<hed__Course__c> courseList = REDU_CustomFeesTestDataFactory_UTIL.createCourses(new List<Id>{universityDepts[0].Id}, 2);
        for (hed__Course__c c : courseList){
            c.rio_ed__Fee__c = tuitionFee.Id;
        }
        insert courseList;

        //Create Course Offerings
        List<hed__Course_Offering__c> courseOfferingList = REDU_CustomFeesTestDataFactory_UTIL.createCourseOfferings(courseList, termList[0]);
        List<hed__Course_Offering__c> courseOfferingList2 = REDU_CustomFeesTestDataFactory_UTIL.createCourseOfferings(courseList, termList[1]);
        courseOfferingList.addAll(courseOfferingList2);
        insert courseOfferingList;

        //Create Program Plan(s)
        List<hed__Program_Plan__c> ppList = REDU_CustomFeesTestDataFactory_UTIL.createProgramPlans(programList, termList[0]);
        ppList.addAll(REDU_CustomFeesTestDataFactory_UTIL.createProgramPlans(programList, termList[0])); //Add a second program plan with non-group fees
        ppList[0].Name = programPlanGroupName;
        ppList[0].redu_Annual_Fee_Group__c = annualFeeGroup.Id;
        ppList[0].redu_Term_wise_Fee_Group__c = termFeeGroup.Id;
        ppList[0].redu_Program_Completion_Fee_Group__c = completionFeeGroup.Id;
        ppList[1].Name = programPlanSingleName;
        ppList[1].redu_Annual_Fee_Group__c = annualFeeSingle.Id;
        ppList[1].redu_Term_wise_Fee_Group__c = termFeeSingle.Id;
        ppList[1].redu_Program_Completion_Fee_Group__c = completionFeeSingle.Id;
        ppList[1].hed__Is_Primary__c = false;
        insert ppList;

        //Create Plan Requrements
        List<hed__Plan_Requirement__c> groupPlanReqs = REDU_CustomFeesTestDataFactory_UTIL.createParentPlanRequirements(ppList, 1, 'Required', 10);
        insert groupPlanReqs;
        List<hed__Plan_Requirement__c> coursePlanReqs = new List<hed__Plan_Requirement__c>();
        coursePlanReqs.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPlanRequirements(groupPlanReqs[0], courseList, 'Required', 10));
        coursePlanReqs.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPlanRequirements(groupPlanReqs[1], courseList, 'Required', 10));
        insert coursePlanReqs;

        //Create Program Pathways
        List<rio_ed__Program_Pathway__c> progPathwayList = REDU_CustomFeesTestDataFactory_UTIL.createProgramPathways('Pathway', 2, ppList, 'Full-time');
        insert progPathwayList;

        //Creat Pathway Units
        List<rio_ed__Pathway_Unit__c> pathwayUnitList = new List<rio_ed__Pathway_Unit__c>();
        pathwayUnitList.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[0].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, null));
        pathwayUnitList.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[1].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[1]}, null));
        pathwayUnitList.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPathwayUnits(1, 2, null, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, groupPlanReqs[0].Id));
        pathwayUnitList.addAll(REDU_CustomFeesTestDataFactory_UTIL.createPathwayUnits(1, 2, null, new List<rio_ed__Program_Pathway__c>{progPathwayList[1]}, groupPlanReqs[1].Id));
        insert pathwayUnitList;

        //Create Student
        List<Contact> contactList = REDU_CustomFeesTestDataFactory_UTIL.createContacts(2);
        insert contactList;

        //Create Program Application
        List<rio_ed__Program_Application__c> programApplications = REDU_CustomFeesTestDataFactory_UTIL.createProgramApplications(contactList, programList, 'Approved');
        //Create a Program Enrollment for each program plan
        for (rio_ed__Program_Application__c pa : programApplications){
            pa.rio_ed__Fee_Method__c = 'Term';
            pa.rio_ed__Pay_Upfront__c = 'No';
        }
        programApplications[0].rio_ed__Program_Plan__c = ppList[0].Id;
        programApplications[0].rio_ed__Program_Pathway__c = progPathwayList[0].Id;
        programApplications[1].rio_ed__Program_Plan__c = ppList[1].Id;
        programApplications[1].rio_ed__Program_Pathway__c = progPathwayList[1].Id;
        insert programApplications;
    }

    @IsTest
    static void doTestGroup(){

        //Check that we have the Program Enrollment
        List<hed__Program_Enrollment__c> peList = [
            SELECT Id, rio_ed__Starting_Term__c, rio_ed__Program_Pathway__c, rio_ed__Fee_Method__c,
            hed__Program_Plan__r.redu_Annual_Fee_Group__c, hed__Program_Plan__r.redu_Term_wise_Fee_Group__c, hed__Program_Plan__r.redu_Program_Completion_Fee_Group__c
            FROM hed__Program_Enrollment__c 
            WHERE hed__Program_Plan__r.Name = :programPlanGroupName
        ];
        System.assert(!peList.isEmpty(), 'Program Enrollment not found');

        Set<Id> parentFeeIds = new Set<Id>();
        parentFeeIds.add(peList[0].hed__Program_Plan__r.redu_Annual_Fee_Group__c);
        parentFeeIds.add(peList[0].hed__Program_Plan__r.redu_Term_wise_Fee_Group__c);
        parentFeeIds.add(peList[0].hed__Program_Plan__r.redu_Program_Completion_Fee_Group__c);

        //Prepare list of Fees for checking later
        List<rio_ed__Fee__c> feeList = [
            SELECT Id, Name, rio_ed__Parent_Fee__c
            FROM rio_ed__Fee__c
            WHERE rio_ed__Parent_Fee__c IN :parentFeeIds
        ];
        Set<Id> annualFees = new Set<Id>();
        Set<Id> termFees = new Set<Id>();
        Set<Id> completionFees = new Set<Id>();
        for (rio_ed__Fee__c fee : feeList){
            if (fee.rio_ed__Parent_Fee__c == peList[0].hed__Program_Plan__r.redu_Annual_Fee_Group__c){
                annualFees.add(fee.Id);
            } else if (fee.rio_ed__Parent_Fee__c == peList[0].hed__Program_Plan__r.redu_Term_wise_Fee_Group__c){
                termFees.add(fee.Id);
            } else if (fee.rio_ed__Parent_Fee__c == peList[0].hed__Program_Plan__r.redu_Program_Completion_Fee_Group__c){
                completionFees.add(fee.Id);
            } 
        }
        System.assertEquals(2, annualFees.size(), 'Incorrect number of Annual child fees found');
        System.assertEquals(2, termFees.size(), 'Incorrect number of Term child fees found');
        System.assertEquals(2, completionFees.size(), 'Incorrect number of Completion child fees found');

        rio_ed__PE_Pathway_Status__c pep = [
            SELECT Id FROM rio_ed__PE_Pathway_Status__c 
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id AND rio_ed__Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        List<hed__Course_Offering__c> coList = [
            SELECT Id, hed__Course__c, hed__Term__c
            FROM hed__Course_Offering__c
            WHERE hed__Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        //Enroll into a course, creating a Student Fee and starting the whole custom Fee process
        List<hed__Course_Enrollment__c> ccList = [
            SELECT Id, rio_ed__Plan_Requirement_Course__c, rio_ed__Plan_Requirement_Course__r.hed__Course__c
            FROM hed__Course_Enrollment__c
            WHERE hed__Program_Enrollment__c = :peList[0].Id
        ];
        System.assert(!ccList.isEmpty(), 'No Course Connections found');
        List<hed__Course_Enrollment__c> updateCcList = new List<hed__Course_Enrollment__c>();
        for (hed__Course_Enrollment__c cc : ccList){
            for (hed__Course_Offering__c co : coList){
                if (co.hed__Course__c == cc.rio_ed__Plan_Requirement_Course__r.hed__Course__c){
                    cc.hed__Course_Offering__c = co.Id;
                    cc.rio_ed__Enrollment_Status__c = 'Enrolled';
                    cc.rio_ed__Allow_Pre_Enrollment__c = true;
                    cc.rio_ed__PE_Pathway__c = pep.Id;
                    updateCcList.add(cc);
                }
            }
        }
        System.assertEquals(ccList.size(), updateCcList.size(), 'Incorrect number of Course Connections updated');
        

        Test.startTest();
        update updateCcList;
        Test.stopTest();

        //Look for Student Fees
        List<rio_ed__Student_Fee__c> sfList = [
            SELECT Id, rio_ed__PE_Pathway__c, rio_ed__Main_Term_Student_Fee__c
            FROM rio_ed__Student_Fee__c
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id
        ];
        System.assertEquals(1, sfList.size(), 'Student Fee not created');

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c IN :sfList
        ];
        //Execting 1x tuition fee, 2x term fees, 2x annual fees
        //System.assertEquals(5, flList.size(), 'Incorrect number of Fee Lines found');
        Integer annualFeeLineCount = 0;
        Integer termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList){
            if (annualFees.contains(fl.rio_ed__Fee_Id__c)){
                annualFeeLineCount++;
            } else if (termFees.contains(fl.rio_ed__Fee_Id__c)){
                termFeeLineCount++;
            }
        }
        System.assertEquals(annualFees.size(), annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(termFees.size(), termFeeLineCount, 'Incorrect number of term fee lines created');

        //Create a student fee for the second PE Pathway
        rio_ed__PE_Pathway_Status__c pep2 = [
            SELECT Id FROM rio_ed__PE_Pathway_Status__c 
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id AND rio_ed__Term__c != :peList[0].rio_ed__Starting_Term__c
        ];

        hed__Term__c term2 = [
            SELECT Id, redu_Academic_Year__c FROM hed__Term__c WHERE rio_ed__Previous_Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        pep2.rio_ed__Term__c = term2.Id;
        update pep2;

        //Assert annual fee was not created, but new term fee was
        rio_ed__Student_Fee__c sf2 = new rio_ed__Student_Fee__c();
        sf2.rio_ed__Program_Enrollment__c = peList[0].Id;
        sf2.rio_ed__PE_Pathway__c = pep2.Id;
        sf2.rio_ed__Main_Term_Student_Fee__c = true;
        insert sf2;

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList2 = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c = :sf2.Id
        ];
        //Execting 2x term fees
        //System.assertEquals(2, flList2.size(), 'Incorrect number of Fee Lines found');
        annualFeeLineCount = 0;
        termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList2){
            if (annualFees.contains(fl.rio_ed__Fee_Id__c)){
                annualFeeLineCount++;
            } else if (termFees.contains(fl.rio_ed__Fee_Id__c)){
                termFeeLineCount++;
            }
        }
        System.assertEquals(0, annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(termFees.size(), termFeeLineCount, 'Incorrect number of term fee lines created');

        
        //Also test creating annual fee for a new year
        delete sf2;
        term2.redu_Academic_Year__c += 1;
        update term2;

        //Assert annual fee was not created, but new term fee was
        rio_ed__Student_Fee__c sf3 = new rio_ed__Student_Fee__c();
        sf3.rio_ed__Program_Enrollment__c = peList[0].Id;
        sf3.rio_ed__PE_Pathway__c = pep2.Id;
        sf3.rio_ed__Main_Term_Student_Fee__c = true;
        insert sf3;

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList3 = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c = :sf3.Id
        ];
        //Execting 2x term fees
        //Expecting 2x annual fees
        annualFeeLineCount = 0;
        termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList3){
            if (annualFees.contains(fl.rio_ed__Fee_Id__c)){
                annualFeeLineCount++;
            } else if (termFees.contains(fl.rio_ed__Fee_Id__c)){
                termFeeLineCount++;
            }
        }
        System.assertEquals(annualFees.size(), annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(termFees.size(), termFeeLineCount, 'Incorrect number of term fee lines created');

    }

    @IsTest
    static void doTestSingle(){

        //Check that we have the Program Enrollment
        List<hed__Program_Enrollment__c> peList = [
            SELECT Id, rio_ed__Starting_Term__c, rio_ed__Program_Pathway__c, rio_ed__Fee_Method__c,
            hed__Program_Plan__r.redu_Annual_Fee_Group__c, hed__Program_Plan__r.redu_Term_wise_Fee_Group__c, hed__Program_Plan__r.redu_Program_Completion_Fee_Group__c
            FROM hed__Program_Enrollment__c 
            WHERE hed__Program_Plan__r.Name = :programPlanSingleName];
        System.assert(!peList.isEmpty(), 'Program Enrollment not found');

        rio_ed__PE_Pathway_Status__c pep = [
            SELECT Id FROM rio_ed__PE_Pathway_Status__c 
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id AND rio_ed__Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        List<hed__Course_Offering__c> coList = [
            SELECT Id, hed__Course__c, hed__Term__c
            FROM hed__Course_Offering__c
            WHERE hed__Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        //Enroll into a course, creating a Student Fee and starting the whole custom Fee process
        List<hed__Course_Enrollment__c> ccList = [
            SELECT Id, rio_ed__Plan_Requirement_Course__c, rio_ed__Plan_Requirement_Course__r.hed__Course__c
            FROM hed__Course_Enrollment__c
            WHERE hed__Program_Enrollment__c = :peList[0].Id
        ];
        System.assert(!ccList.isEmpty(), 'No Course Connections found');
        List<hed__Course_Enrollment__c> updateCcList = new List<hed__Course_Enrollment__c>();
        for (hed__Course_Enrollment__c cc : ccList){
            for (hed__Course_Offering__c co : coList){
                if (co.hed__Course__c == cc.rio_ed__Plan_Requirement_Course__r.hed__Course__c){
                    cc.hed__Course_Offering__c = co.Id;
                    cc.rio_ed__Enrollment_Status__c = 'Enrolled';
                    cc.rio_ed__Allow_Pre_Enrollment__c = true;
                    cc.rio_ed__PE_Pathway__c = pep.Id;
                    updateCcList.add(cc);
                }
            }
        }
        System.assertEquals(ccList.size(), updateCcList.size(), 'Incorrect number of Course Connections updated');
        

        Test.startTest();
        update updateCcList;
        Test.stopTest();

        //Look for Student Fees
        List<rio_ed__Student_Fee__c> sfList = [
            SELECT Id, rio_ed__PE_Pathway__c, rio_ed__Main_Term_Student_Fee__c
            FROM rio_ed__Student_Fee__c
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id
        ];
        System.assertEquals(1, sfList.size(), 'Student Fee not created');

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c IN :sfList
        ];
        //Execting 1x tuition fee, 1x term fees, 1x annual fees
        //System.assertEquals(3, flList.size(), 'Incorrect number of Fee Lines found');
        Integer annualFeeLineCount = 0;
        Integer termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList){
            if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Annual_Fee_Group__c){
                annualFeeLineCount++;
            } else if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Term_wise_Fee_Group__c){
                termFeeLineCount++;
            }
        }
        System.assertEquals(1, annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(1, termFeeLineCount, 'Incorrect number of term fee lines created');

        //Create a student fee for the second PE Pathway
        rio_ed__PE_Pathway_Status__c pep2 = [
            SELECT Id FROM rio_ed__PE_Pathway_Status__c 
            WHERE rio_ed__Program_Enrollment__c = :peList[0].Id AND rio_ed__Term__c != :peList[0].rio_ed__Starting_Term__c
        ];

        hed__Term__c term2 = [
            SELECT Id, redu_Academic_Year__c FROM hed__Term__c WHERE rio_ed__Previous_Term__c = :peList[0].rio_ed__Starting_Term__c
        ];

        pep2.rio_ed__Term__c = term2.Id;
        update pep2;

        //Assert annual fee was not created, but new term fee was
        rio_ed__Student_Fee__c sf2 = new rio_ed__Student_Fee__c();
        sf2.rio_ed__Program_Enrollment__c = peList[0].Id;
        sf2.rio_ed__PE_Pathway__c = pep2.Id;
        sf2.rio_ed__Main_Term_Student_Fee__c = true;
        insert sf2;

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList2 = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c = :sf2.Id
        ];
        //Execting 1x term fees
        //System.assertEquals(2, flList2.size(), 'Incorrect number of Fee Lines found');
        annualFeeLineCount = 0;
        termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList2){
            if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Annual_Fee_Group__c){
                annualFeeLineCount++;
            } else if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Term_wise_Fee_Group__c){
                termFeeLineCount++;
            }
        }
        System.assertEquals(0, annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(1, termFeeLineCount, 'Incorrect number of term fee lines created');

        //Also test creating annual fee for a new year
        delete sf2;
        term2.redu_Academic_Year__c += 1;
        update term2;

        //Assert annual fee was not created, but new term fee was
        rio_ed__Student_Fee__c sf3 = new rio_ed__Student_Fee__c();
        sf3.rio_ed__Program_Enrollment__c = peList[0].Id;
        sf3.rio_ed__PE_Pathway__c = pep2.Id;
        sf3.rio_ed__Main_Term_Student_Fee__c = true;
        insert sf3;

        //Check Fee Lines for Annual and Term based fees
        List<rio_ed__Fee_Line__c> flList3 = [
            SELECT Id, rio_ed__Student_Fee__c, rio_ed__Fee_Id__c
            FROM rio_ed__Fee_Line__c
            WHERE rio_ed__Student_Fee__c = :sf3.Id
        ];
        //Execting 1x term fees
        //Expecting 1x annual fees
        annualFeeLineCount = 0;
        termFeeLineCount = 0;
        for (rio_ed__Fee_Line__c fl : flList3){
            if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Annual_Fee_Group__c){
                annualFeeLineCount++;
            } else if (fl.rio_ed__Fee_Id__c == peList[0].hed__Program_Plan__r.redu_Term_wise_Fee_Group__c){
                termFeeLineCount++;
            }
        }
        System.assertEquals(1, annualFeeLineCount, 'Incorrect number of annual fee lines created');
        System.assertEquals(1, termFeeLineCount, 'Incorrect number of term fee lines created');


    }

    public static rio_ed__RIO_Education_Settings__c createDefaultSettings() {

        rio_ed__RIO_Education_Settings__c customSettings = rio_ed__RIO_Education_Settings__c.getOrgDefaults();

        if (customSettings == null) {
            customSettings = new rio_ed__RIO_Education_Settings__c();
        }
        
        customSettings.rio_ed__Auto_Program_Enrollment__c = true; 
        customSettings.rio_ed__Auto_Student_Community_Registration__c = false;
        customSettings.rio_ed__Student_User_Profile__c = 'REDU - Student';
        customSettings.rio_ed__Faculty_User_Profile__c = 'REDU - Faculty';
        customSettings.rio_ed__Payment_URL__c = 'https://www.fakewebsite.net/payment';
        customSettings.rio_ed__Pathway_Prefix__c = 'myTerm';
        customSettings.rio_ed__Community_Username_Suffix__c = '@aim.edu.au';
        customSettings.rio_ed__Set_Program_Fee_Description__c = 'Full tuition fee for {!Program.Name}';
        customSettings.rio_ed__Auto_Lead_Conversion__c = true;
        customSettings.rio_ed__Lead_Converted_Status__c = 'Qualified';
        customSettings.rio_ed__Location_Resource_Calendar_Field__c = 'Name';
        customSettings.rio_ed__Late_Payment_Repeat_Setting__c = 'Once';
        customSettings.rio_ed__Late_Payment_Batch_Size__c = 200;
        customSettings.rio_ed__Academic_Program_Account_Record_Type__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Academic_Program').getRecordTypeId();
        customSettings.rio_ed__Educational_Institution_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Educational_Institution').getRecordTypeId();
        customSettings.rio_ed__University_Department_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('University_Department').getRecordTypeId();
        customSettings.rio_ed__Location_RT_Id__c = Schema.SObjectType.Account.getRecordtypeInfosByDeveloperName().get('Location').getRecordTypeId();
        customSettings.rio_ed__Template_Session_RT_Id__c = Schema.SObjectType.rio_ed__Session__c.getRecordtypeInfosByDeveloperName().get('Template').getRecordTypeId();
        customSettings.rio_ed__Class_Session_RT_Id__c = Schema.SObjectType.rio_ed__Session__c.getRecordtypeInfosByDeveloperName().get('Class').getRecordTypeId();
        customSettings.rio_ed__Group_Plan_Requirement_RT_Id__c = Schema.SObjectType.hed__Plan_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_Plan_Requirement_RT_Id__c = Schema.SObjectType.hed__Plan_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Group_Discipline_Requirement_Id__c = Schema.SObjectType.rio_ed__Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Group_PE_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__PE_Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Group').getRecordTypeId();
        customSettings.rio_ed__Course_PE_Discipline_Requirement_RT_Id__c = Schema.SObjectType.rio_ed__PE_Discipline_Requirement__c.getRecordtypeInfosByDeveloperName().get('Course').getRecordTypeId();
        customSettings.rio_ed__Grade_RT_Id__c = Schema.SObjectType.rio_ed__Grade__c.getRecordtypeInfosByDeveloperName().get('Grade').getRecordTypeId();
        customSettings.rio_ed__Sub_Grade_RT_Id__c = Schema.SObjectType.rio_ed__Grade__c.getRecordtypeInfosByDeveloperName().get('Sub_Grade').getRecordTypeId();
        customSettings.rio_ed__Resource_Type_Plan_RT_Id__c = Schema.SObjectType.rio_ed__Plan__c.getRecordTypeInfosByDeveloperName().get('Resource_Type').getRecordTypeId();
        customSettings.rio_ed__Session_Scheduler_REST_API_Url__c = 'https://' + System.URL.getOrgDomainUrl().getHost() + '/services/apexrest/rio_ed/calendarevent';
                   
        customSettings.redu_File_Sharing_Prefix__c = 'Official_Transcript';
        return customSettings;
    }
}