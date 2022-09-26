/**
 * @Author     WDCi (Jordan)
 * @Date     July 2022
 * @group     Test
 * @Description Test class for redu_GRD_GradeToTermGradeRollup_TDTM
 *
 * @changehistory
 * ISS-001328 09/09/2022 Jordan - Added calls functionality for Calls RIO Ready component
 */

@IsTest
public class redu_GRD_GradeToTermGradeRollup_TEST {
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
        redu_GradesRollupTriggerHandler_MANAGER.init_GradeToTermGradeRollup_TDTM();

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
                hed__Course_Connection__c = listCourseConnections[0].Id,
                hed__Term_Grade_Type__c = 'Final Grade'
            );

            listTermGrades.add(tg);
        }

        insert listTermGrades;

        // Create Grade Settings
        List<rio_ed__Grade_Setting__c> listGradeSettings = REDU_GradesRollupTestDataFactory_UTIL.createGradeSettings();
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        test.startTest();
        insert grades;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(79.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        test.startTest();
        insert grades;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(80.8, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueLowerRange() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Settings Grade Value Scoring Range to lower range
        List<rio_ed__Grade_Setting__c> gradeSettings = new List<rio_ed__Grade_Setting__c>();

        for (rio_ed__Grade_Setting__c gs : [
            SELECT rio_ed__Grade_Value_Scoring_Range__c
            FROM rio_ed__Grade_Setting__c
            WHERE rio_ed__Grade_Setting_Group__c = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId
        ]) {
            gs.rio_ed__Grade_Value_Scoring_Range__c = 'Lower Range';
            gradeSettings.add(gs);
        }

        update gradeSettings;

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        test.startTest();
        insert grades;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(69.8, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('CR - Credit', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(6, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueDepartmentGS() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Setting Type on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'University Department';
        update course;

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        test.startTest();
        insert grades;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(80.8, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testInsertGradeRollUpToTermGradeValueProgramGS() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id, hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Get Academic Program
        Account academicProgram = [SELECT Id FROM Account 
        WHERE RecordTypeId = :Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId()
        LIMIT 1];

        // Update Grade Setting Type and Grading Academic Program on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'Academic Program';
        course.rio_ed__Grading_Academic_Program__c = academicProgram.Id;
        update course;

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        test.startTest();
        insert grades;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(80.8, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade 2'];
        grade2Update.rio_ed__Grade_Points__c = 100;
        update grade2Update;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(94.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('HD - High Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(8, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade 2'];
        grade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update grade2Update;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(95.2, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('HD - High Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(8, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueLowerRange() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId 
        FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        // Update Grade Settings Grade Value Scoring Range to lower range
        List<rio_ed__Grade_Setting__c> gradeSettings = new List<rio_ed__Grade_Setting__c>();

        for (rio_ed__Grade_Setting__c gs : [
            SELECT rio_ed__Grade_Value_Scoring_Range__c
            FROM rio_ed__Grade_Setting__c
            WHERE rio_ed__Grade_Setting_Group__c = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__r.hed__Account__r.ParentId
        ]) {
            gs.rio_ed__Grade_Value_Scoring_Range__c = 'Lower Range';
            gradeSettings.add(gs);
        }

        update gradeSettings;

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade 2'];
        grade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update grade2Update;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(84.2, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueDepartmentGS() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Update Grade Setting Type on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'University Department';
        update course;

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade 2'];
        grade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update grade2Update;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(95.2, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('HD - High Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(8, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testUpdateGradeRollUpToTermGradeValueProgramGS() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c 
        FROM hed__Term_Grade__c LIMIT 1];

        // Get Academic Program
        Account academicProgram = [SELECT Id FROM Account 
        WHERE RecordTypeId = :Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId()
        LIMIT 1];

        // Update Grade Setting Type and Grading Academic Program on Course
        hed__Course__c course = [SELECT rio_ed__Grade_Setting_Type__c FROM hed__Course__c 
        WHERE Id = :tgBefore.hed__Course_Connection__r.hed__Course_Offering__r.hed__Course__c];

        course.rio_ed__Grade_Setting_Type__c = 'Academic Program';
        course.rio_ed__Grading_Academic_Program__c = academicProgram.Id;
        update course;

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade2Update = [SELECT rio_ed__Grade_Value__c, rio_ed__Grade_Points__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade 2'];
        grade2Update.rio_ed__Grade_Value__c = 'HD - High Distinction';
        update grade2Update;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(95.2, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('HD - High Distinction', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(8, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testDeleteGradeRollUpToTermGradeScore() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 75,
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade1Delete = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade 1'];
        delete grade1Delete;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(75.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('CR - Credit', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(6, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testDeleteGradeRollUpToTermGradeValue() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grades
        List<rio_ed__Grade__c> grades = new List<rio_ed__Grade__c>();

        rio_ed__Grade__c grade1 = new rio_ed__Grade__c(
        	Name = 'Test Grade 1',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'D - Distinction',
            rio_ed__Weight__c = 40
        );

        grades.add(grade1);

        rio_ed__Grade__c grade2 = new rio_ed__Grade__c(
        	Name = 'Test Grade 2',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Value__c = 'CR - Credit',
            rio_ed__Weight__c = 60
        );
        
        grades.add(grade2);

        insert grades;

        test.startTest();
        
        rio_ed__Grade__c grade1Delete = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade 1'];
        delete grade1Delete;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT Id, hed__Course_Connection__c, hed__Numerical_Grade__c, hed__Letter_Grade__c, REDU_Grade__c FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(76.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('CR - Credit', tgAfter.hed__Letter_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(6, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
    }

    @IsTest
    static void testCallsInsert() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'Postponed'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsInsertNoGradeOverride() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assert(String.isBlank(tgAfter.REDU_Grade_Override__c));
        System.assertEquals('D - Distinction (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsInsertNoCallOverride() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Grade_Override__c = 'Postponed'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsInsertCompletedCourseConnection() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT hed__Status__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Completed
        ccBefore.hed__Status__c = 'Completed';
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'Postponed'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(null, cc.hed__Grade__c);
        System.assertEquals(null, cc.rio_ed__Grade_Points__c);
        System.assert(String.isBlank(cc.rio_ed__Grade_Value__c));
        System.assertEquals('Final Grade', cc.REDU_Grade_Type__c);
        System.assert(String.isBlank(cc.REDU_Grade_Override__c));
    }

    @IsTest
    static void testCallsInsertCourseConnectionReleaseGrades() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT rio_ed__Release_Grades__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Release Grades
        ccBefore.rio_ed__Release_Grades__c = true;
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'Postponed'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(null, cc.hed__Grade__c);
        System.assertEquals(null, cc.rio_ed__Grade_Points__c);
        System.assert(String.isBlank(cc.rio_ed__Grade_Value__c));
        System.assertEquals('Final Grade', cc.REDU_Grade_Type__c);
        System.assert(String.isBlank(cc.REDU_Grade_Override__c));
    }

    @IsTest
    static void testCallsInsertNoShowExistingGrade() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT rio_ed__Grade_Result__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Release Grades
        ccBefore.rio_ed__Grade_Result__c = 'Fail';
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'No Show'
        );

        test.startTest();
        insert grade;
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('No Show', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('No Show (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c ccAfter = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Result__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, ccAfter.hed__Grade__c);
        System.assertEquals(7, ccAfter.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, ccAfter.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, ccAfter.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, ccAfter.REDU_Grade_Override__c);
        System.assert(String.isBlank(ccAfter.rio_ed__Grade_Result__c));
    }

    @IsTest
    static void testCallsUpdate() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id, hed__Course_Connection__c FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'No Show'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Call_Override__c = 'Extraordinary';
        gradeUpdate.REDU_Grade_Override__c = 'Postponed';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Extraordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (ExOrd)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Result__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsUpdateNoGradeOverride() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Call_Override__c = 'Extraordinary';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Extraordinary', tgAfter.REDU_Call_Override__c);
        System.assert(String.isBlank(tgAfter.REDU_Grade_Override__c));
        System.assertEquals('D - Distinction (ExOrd)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsUpdateNoCallOverride() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id, hed__Course_Connection__c FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Grade_Override__c = 'No Show'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Grade_Override__c = 'Postponed';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, cc.hed__Grade__c);
        System.assertEquals(7, cc.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, cc.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, cc.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, cc.REDU_Grade_Override__c);
    }

    @IsTest
    static void testCallsUpdateCompletedCourseConnection() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT hed__Status__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Completed
        ccBefore.hed__Status__c = 'Completed';
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'No Show'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Call_Override__c = 'Extraordinary';
        gradeUpdate.REDU_Grade_Override__c = 'Postponed';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Extraordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (ExOrd)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(null, cc.hed__Grade__c);
        System.assertEquals(null, cc.rio_ed__Grade_Points__c);
        System.assert(String.isBlank(cc.rio_ed__Grade_Value__c));
        System.assertEquals('Final Grade', cc.REDU_Grade_Type__c);
        System.assert(String.isBlank(cc.REDU_Grade_Override__c));
    }

    @IsTest
    static void testCallsUpdateCourseConnectionReleaseGrades() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT rio_ed__Release_Grades__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Release Grades
        ccBefore.rio_ed__Release_Grades__c = true;
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'No Show'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Call_Override__c = 'Extraordinary';
        gradeUpdate.REDU_Grade_Override__c = 'Postponed';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Extraordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('Postponed', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('Postponed (ExOrd)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(null, cc.hed__Grade__c);
        System.assertEquals(null, cc.rio_ed__Grade_Points__c);
        System.assert(String.isBlank(cc.rio_ed__Grade_Value__c));
        System.assertEquals('Final Grade', cc.REDU_Grade_Type__c);
        System.assert(String.isBlank(cc.REDU_Grade_Override__c));
    }

    @IsTest
    static void testCallsUpdateNoShowExistingGrade() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Get Course Connection
        hed__Course_Enrollment__c ccBefore = [SELECT rio_ed__Grade_Result__c, REDU_Grade_Override__c, REDU_Grade_Type__c FROM hed__Course_Enrollment__c LIMIT 1];

        // Set Course Connection to Release Grades
        ccBefore.rio_ed__Grade_Result__c = 'Fail';
        update ccBefore;

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'Postponed'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeUpdate = [SELECT REDU_Call_Override__c, REDU_Grade_Override__c FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        gradeUpdate.REDU_Grade_Override__c = 'No Show';
        update gradeUpdate;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(85.0, tgAfter.hed__Numerical_Grade__c);
        System.assertEquals('D - Distinction', tgAfter.hed__Letter_Grade__c);
        System.assertEquals('Ordinary', tgAfter.REDU_Call_Override__c);
        System.assertEquals('No Show', tgAfter.REDU_Grade_Override__c);
        System.assertEquals('No Show (Ord)', tgAfter.REDU_Grade__c);

        // Get Course Connection
        hed__Course_Enrollment__c ccAfter = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Result__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(tgAfter.hed__Numerical_Grade__c, ccAfter.hed__Grade__c);
        System.assertEquals(7, ccAfter.rio_ed__Grade_Points__c);
        System.assertEquals(tgAfter.hed__Letter_Grade__c, ccAfter.rio_ed__Grade_Value__c);
        System.assertEquals(tgAfter.REDU_Call_Override__c, ccAfter.REDU_Grade_Type__c);
        System.assertEquals(tgAfter.REDU_Grade_Override__c, ccAfter.REDU_Grade_Override__c);
        System.assert(String.isBlank(ccAfter.rio_ed__Grade_Result__c));
    }

    @IsTest
    static void testCallsDelete() {
        // Get Term Grade
        hed__Term_Grade__c tgBefore = [SELECT Id FROM hed__Term_Grade__c LIMIT 1];

        // Create Grade
        rio_ed__Grade__c grade = new rio_ed__Grade__c(
        	Name = 'Test Grade',
            RecordTypeId = Schema.SObjectType.rio_ed__Grade__c.getRecordTypeInfosByName().get('Grade').getRecordTypeId(),
            rio_ed__Term_Grade__c = tgBefore.Id,
            rio_ed__Grade_Points__c = 85,
            rio_ed__Weight__c = 100,
            REDU_Call_Override__c = 'Ordinary',
            REDU_Grade_Override__c = 'Postponed'
        );

        insert grade;

        test.startTest();
        
        rio_ed__Grade__c gradeDelete = [SELECT Id FROM rio_ed__Grade__c WHERE Name = 'Test Grade'];
        delete gradeDelete;
        
        test.stopTest();

        // Get Term Grade
        hed__Term_Grade__c tgAfter = [SELECT hed__Course_Connection__c, hed__Letter_Grade__c, hed__Numerical_Grade__c, REDU_Call_Override__c, REDU_Grade__c, REDU_Grade_Override__c 
        FROM hed__Term_Grade__c LIMIT 1];
        
        System.assertEquals(tgBefore.Id, tgAfter.Id);
        System.assertEquals(null, tgAfter.hed__Numerical_Grade__c);
        System.assert(String.isBlank(tgAfter.hed__Letter_Grade__c));
        System.assert(String.isBlank(tgAfter.REDU_Call_Override__c));
        System.assert(String.isBlank(tgAfter.REDU_Grade_Override__c));
        System.assert(String.isBlank(tgAfter.REDU_Grade__c));

        // Get Course Connection
        hed__Course_Enrollment__c cc = [SELECT hed__Grade__c, rio_ed__Grade_Points__c, rio_ed__Grade_Value__c, REDU_Grade_Type__c, REDU_Grade_Override__c 
        FROM hed__Course_Enrollment__c WHERE Id = :tgAfter.hed__Course_Connection__c];

        //Check Course Connection fields
        System.assertEquals(null, cc.hed__Grade__c);
        System.assertEquals(null, cc.rio_ed__Grade_Points__c);
        System.assert(String.isBlank(cc.rio_ed__Grade_Value__c));
        System.assertEquals('Final Grade', cc.REDU_Grade_Type__c);
        System.assert(String.isBlank(cc.REDU_Grade_Override__c));
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