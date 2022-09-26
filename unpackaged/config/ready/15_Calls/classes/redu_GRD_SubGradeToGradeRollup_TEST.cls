/**
 * @Author     WDCi (Jordan)
 * @Date     July 2022
 * @group     Test
 * @Description Test class for redu_GRD_SubGradeToGradeRollup_TDTM
 *
 */

@IsTest
public class redu_GRD_SubGradeToGradeRollup_TEST {
    // Class Setup:
    static final Integer EDUCATIONAL_INSTITUTIONS_QTY = 1;
    static final Integer UNIVERSITY_DEPARTMENTS_QTY = 1;   // per Educational Institution
    static final Integer ACADEMIC_PROGRAMS_QTY = 1;        // per University Department        
    static final Integer COURSES_PER_PROGRAM = 1;
    static final Integer NUMBER_OF_TERMS = 1;
    static final Integer NUMBER_OF_STUDENTS = 1;
    static final Integer NUMBER_OF_TERM_GRADES = 1;

    @TestSetup
    static void makeData() {
        //Create Trigger Handler
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

        // Create our trigger handler using the constructor
        redu_GradesRollupTriggerHandler_MANAGER.init_SubGradeToGradeRollup_TDTM();

        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);

        //Setup RIO Education Settings
        rio_ed__RIO_Education_Settings__c customSettings = createDefaultSettings();
        insert customSettings;

        // Create Educational Institutions (i.e. Account RT: Educational Institution):
        List<Id> educationalInstitutionIdList = new List<Id>();
        educationalInstitutionIdList = REDU_GradesRollupTestDataFactory_UTIL.createEducationalInstitutions(EDUCATIONAL_INSTITUTIONS_QTY);
        
        // Create University Departments (i.e. Account RT: University Department):
        List<Id> universityDepartmentIdList = new List<Id>();
        universityDepartmentIdList = REDU_GradesRollupTestDataFactory_UTIL.createUniversityDepartments(educationalInstitutionIdList, UNIVERSITY_DEPARTMENTS_QTY);
        
        // Create Academic Programs (i.e. Account RT: Academic Program):
        List<Id> academicProgramIdList = new List<Id>();
        academicProgramIdList = REDU_GradesRollupTestDataFactory_UTIL.createAcademicPrograms(universityDepartmentIdList, ACADEMIC_PROGRAMS_QTY);
        
        // Create Courses:
        List<hed__Course__c> listCourses = REDU_GradesRollupTestDataFactory_UTIL.createCourseList(academicProgramIdList, COURSES_PER_PROGRAM, true);
        
        // Create Terms:
        List<hed__Term__c> listTerms = REDU_GradesRollupTestDataFactory_UTIL.createTerms(educationalInstitutionIdList[0], NUMBER_OF_TERMS);
        
        // Create Course Offerings:
        List<hed__Course_Offering__c> listCourseOfferings = REDU_GradesRollupTestDataFactory_UTIL.createCourseOfferings(listCourses, listTerms[0]);

        // Create Program Plans:
        List<hed__Program_Plan__c> listProgramPlans = REDU_GradesRollupTestDataFactory_UTIL.createProgramPlans(academicProgramIdList, listTerms[0]);
        insert listProgramPlans;

        // Create Contacts:
        List<Id> listContactIds = REDU_GradesRollupTestDataFactory_UTIL.createContacts(NUMBER_OF_STUDENTS);

        // Create Program Applications:
        List<rio_ed__Program_Application__c> listProgramApplications = REDU_GradesRollupTestDataFactory_UTIL.createProgramApplications(listContactIds, academicProgramIdList, 'Approved', true);

        // Create Program Enrollments:
        List<hed__Program_Enrollment__c> listProgramEnrollments = REDU_GradesRollupTestDataFactory_UTIL.createProgramEnrollments(listProgramApplications, listProgramPlans);
        insert listProgramEnrollments;

        // Get PE Ids
        List<Id> peIdList = new List<Id>();

        for (hed__Program_Enrollment__c pe : listProgramEnrollments) {
            peIdList.add(pe.Id);
        }

        // Get CO Ids
        List<Id> coIdList = new List<Id>();

        for (hed__Course_Offering__c co : listCourseOfferings) {
            coIdList.add(co.Id);
        }

        // Create Course Connections:
        List<hed__Course_Enrollment__c> listCourseConnections = REDU_GradesRollupTestDataFactory_UTIL.createCourseEnrollments(peIdList, coIdList, 1, true);

        // Create Term Grades
        List<hed__Term_Grade__c> listTermGrades = new List<hed__Term_Grade__c>();
        
        for (Integer i = 0; i < NUMBER_OF_TERM_GRADES; i++) {
            hed__Term_Grade__c tg = new hed__Term_Grade__c(
                hed__Course_Connection__c = listCourseConnections[0].Id
            );

            listTermGrades.add(tg);
        }

        insert listTermGrades;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = listTermGrades[0].Id
        );
        
        insert grade;

        // Create Grade Settings
        List<rio_ed__Grade_Setting__c> listGradeSettings = REDU_GradesRollupTestDataFactory_UTIL.createGradeSettings();
    }

    @IsTest
    static void testInsertSubGradeRollUpToGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        test.startTest();
        insert subGrades;
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(79.0, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('D - Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);
        
        test.startTest();
        insert subGrades;
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(80.8, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('D - Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueLowerRange() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Settings Grade Value Scoring Range to lower range
        List<rio_ed__Grade_Setting__c> gradeSettings = new List<rio_ed__Grade_Setting__c>();

        for (rio_ed__Grade_Setting__c gs : [
            SELECT rio_ed__Grade_Value_Scoring_Range__c
            FROM rio_ed__Grade_Setting__c
            WHERE rio_ed__Grade_Setting_Group__c = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId
        ]) {
            gs.rio_ed__Grade_Value_Scoring_Range__c = 'Lower Range';
            gradeSettings.add(gs);
        }

        update gradeSettings;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);
        
        test.startTest();
        insert subGrades;
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(69.8, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('CR - Credit', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueDepartmentGS() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Setting Type on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'University Department';
        update course;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);
        
        test.startTest();
        insert subGrades;
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(80.8, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('D - Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueProgramGS() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Get Academic Program
        Account academicProgram = [SELECT Id FROM Account 
        WHERE RecordTypeId = :Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId()
        LIMIT 1];

        // Update Grade Setting Type and Grading Academic Program on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'Academic Program';
        course.rio_ed__Grading_Academic_Program__c = academicProgram.Id;
        update course;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);
        
        test.startTest();
        insert subGrades;
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(80.8, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('D - Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 2'];
        subGrade2Update.rio_ed__Grade_Points__c = 100;
        update subGrade2Update;
        
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(94.0, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('HD - High Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 2'];
        subGrade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update subGrade2Update;
        
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(95.2, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('HD - High Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueLowerRange() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Settings Grade Value Scoring Range to lower range
        List<rio_ed__Grade_Setting__c> gradeSettings = new List<rio_ed__Grade_Setting__c>();

        for (rio_ed__Grade_Setting__c gs : [
            SELECT rio_ed__Grade_Value_Scoring_Range__c
            FROM rio_ed__Grade_Setting__c
            WHERE rio_ed__Grade_Setting_Group__c = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId
        ]) {
            gs.rio_ed__Grade_Value_Scoring_Range__c = 'Lower Range';
            gradeSettings.add(gs);
        }

        update gradeSettings;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 2'];
        subGrade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update subGrade2Update;
        
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(84.2, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('D - Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueDepartmentGS() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Setting Type on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'University Department';
        update course;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 2'];
        subGrade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update subGrade2Update;
        
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(95.2, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('HD - High Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueProgramGS() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Get Academic Program
        Account academicProgram = [SELECT Id FROM Account 
        WHERE RecordTypeId = :Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId()
        LIMIT 1];

        // Update Grade Setting Type and Grading Academic Program on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tg.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'Academic Program';
        course.rio_ed__Grading_Academic_Program__c = academicProgram.Id;
        update course;

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 2'];
        subGrade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update subGrade2Update;
        
        test.stopTest();

        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(95.2, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('HD - High Distinction', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testDeleteSubGradeRollUpToGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade1Delete = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 1'];
        delete subGrade1Delete;
        
        test.stopTest();
        
        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(75.0, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('CR - Credit', gradeAfter.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testDeleteSubGradeRollUpToGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tg = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Grade
        rio_ed__Grade__c gradeBefore = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade' LIMIT 1];

        // Create Sub Grades
        List<rio_ed__Grade__c> subGrades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c subGrade1 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        subGrades.add(subGrade1);

        rio_ed__Grade__c subGrade2 = new rio_ed__Grade__c(
        	Name = 'Test Sub Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Sub Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tg.Id,
            rio_ed__Parent_Grade__c = gradeBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        subGrades.add(subGrade2);

        insert subGrades;

        test.startTest();
        
        rio_ed__Grade__c subGrade1Delete = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Sub Grade 1'];
        delete subGrade1Delete;
        
        test.stopTest();
        
        // Get Grade
        rio_ed__Grade__c gradeAfter = [SELECT Id, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM rio_ed__Grade__c LIMIT 1];
        
        // Check Grade fields
        System.assertEquals(gradeBefore.Id, gradeAfter.Id);
        System.assertEquals(76.0, gradeAfter.rio_ed__Grade_Points__c);
        System.assertEquals('CR - Credit', gradeAfter.rio_ed__Grade_Value__c);
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
                   
        return customSettings;
    }
}