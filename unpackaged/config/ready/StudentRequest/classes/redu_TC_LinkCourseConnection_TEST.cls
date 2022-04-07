/**
 * @author     WDCi (Pasan)
 * @date     Aug 2021
 * @group     Test
 * @description  Test class for redu_TC_LinkCourseConnection_TDTM
 * 
 */

@IsTest
public without sharing class redu_TC_LinkCourseConnection_TEST{

    static final Integer EDUCATIONAL_INSTITUTIONS_QTY = 1;                 // EI: Educational Institution
    static final Integer UNIVERSITY_DEPARTMENTS_PER_EI_QTY = 1;            // UD: University Department
    static final Integer ACADEMIC_PROGRAMS_PER_UD_QTY = 1;                 // AP: Academic Program
    static final Integer COURSES_PER_AP_QTY = 10;
    static final Integer APPLICANTS_QTY = 2;                               
    static final Integer PE_PER_AP_QTY = 2;                                // PE: Program Enrollment
    static final Integer PEGS_PER_PE_QTY = 2;                              // PEGS: PE Group Status
    static final Integer PECS_PER_PEGS_QTY = COURSES_PER_AP_QTY/PEGS_PER_PE_QTY; // PECS: PE Course Status



    @TestSetup
    static void createData(){

        // Create the RIO Edu Custom Settings:
        rio_ed__RIO_Education_Settings__c reduCustomSettings = 
            REDU_TC_TestDataFactory_UTIL.createDefaultSettings();

        // Set the RIO Edu Custom Settings for Auto-Program-Enrollment: 
        //reduCustomSettings.rio_ed__Auto_Program_Enrollment__c = true;
        //reduCustomSettings.rio_ed__GPA_includes_all_repeated_Courses__c = false;
        upsert reduCustomSettings;
        
        // Create Trigger Handler records (TDTM):
        //REDU_TC_TestDataFactory_UTIL.createTdtmTriggerHandlers();
        REDU_TC_TestDataFactory_UTIL.createRIOEdTriggerHandlersAndMCHPTriggerHandlers();

        // Create Educational Institutions (i.e. Account RT: Educational Institution):
        List<Account> educationalInstitutionList = new List<Account>();
        educationalInstitutionList = REDU_TC_TestDataFactory_UTIL.createEducationalInstitutions(EDUCATIONAL_INSTITUTIONS_QTY);
        insert educationalInstitutionList;
            System.assertEquals(EDUCATIONAL_INSTITUTIONS_QTY, educationalInstitutionList.size());

        // Create University Departments (i.e. Account RT: University Department):
        List<Account> universityDepartmentList = new List<Account>();
        universityDepartmentList = 
            REDU_TC_TestDataFactory_UTIL.createUniversityDepartments(educationalInstitutionList, 
                                                                        UNIVERSITY_DEPARTMENTS_PER_EI_QTY);
        System.assertEquals(UNIVERSITY_DEPARTMENTS_PER_EI_QTY, universityDepartmentList.size());
        insert universityDepartmentList;

        // Create Academic Programs (i.e. Account RT: Academic Program):
        List<Account> academicProgramList = new List<Account>();
        academicProgramList = REDU_TC_TestDataFactory_UTIL.createAcademicPrograms(universityDepartmentList, 
                                                                    ACADEMIC_PROGRAMS_PER_UD_QTY);
        System.assertEquals(UNIVERSITY_DEPARTMENTS_PER_EI_QTY * ACADEMIC_PROGRAMS_PER_UD_QTY, 
                            academicProgramList.size());
        insert academicProgramList;

        // Create Courses:
        Map <Id, Account> mapPrograms = new Map <Id, Account>(academicProgramList);
        List<hed__Course__c> courseList = REDU_TC_TestDataFactory_UTIL.createCourseList( new List<Id>(mapPrograms.keySet()), COURSES_PER_AP_QTY, true);
        
        System.assertEquals(EDUCATIONAL_INSTITUTIONS_QTY * UNIVERSITY_DEPARTMENTS_PER_EI_QTY * 
                            ACADEMIC_PROGRAMS_PER_UD_QTY, academicProgramList.size());

        System.assertEquals(EDUCATIONAL_INSTITUTIONS_QTY * UNIVERSITY_DEPARTMENTS_PER_EI_QTY * 
                            ACADEMIC_PROGRAMS_PER_UD_QTY * COURSES_PER_AP_QTY, courseList.size());
        for (hed__Course__c course : courseList) {
            System.assert(course.Name.contains('COURSE_'));
            System.assertNotEquals(null, course.rio_ed__Credit_Points__c);
        }

        // Create External institutes
        List<Account> listExtInst = REDU_TC_TestDataFactory_UTIL.getExternalEducationalInstitutions(1);
        insert listExtInst;
        // Create External institute Agreements
        List<rio_ed__Agreement__c> listAgreement = REDU_TC_TestDataFactory_UTIL.getAgreements(listExtInst);
        insert listAgreement;
        // Create External institute Agreement Courses
        List<rio_ed__Agreement_Course__c> listAgreementCourse = REDU_TC_TestDataFactory_UTIL.getAgreementCourses(listAgreement, courseList);
        insert listAgreementCourse;
        

        // Create Terms:
        List<hed__Term__c> termList = new List<hed__Term__c>();
        termList = REDU_TC_TestDataFactory_UTIL.createTerms(educationalInstitutionList[0].Id, 2);

        // Create Course Offerings:
        List<hed__Course_Offering__c> courseOfferingList = new List<hed__Course_Offering__c>();
        courseOfferingList = REDU_TC_TestDataFactory_UTIL.createCourseOfferings(courseList, termList[0]);
        List<Id> courseOfferingIdList = new List<Id>();
        for (hed__Course_Offering__c courseOffering : courseOfferingList)
            courseOfferingIdList.add(courseOffering.Id);

        // Create grade Setting records:
        List<rio_ed__Grade_Setting__c> gradeSettings = REDU_TC_TestDataFactory_UTIL.createGradeSettings();
        System.assertNotEquals(0, gradeSettings.size());

        //======= Added 12/10/2018 by CM - PAN:5205 - Removed PE Course, replaced with Course Connection/PE Group, and Plan Requirement ====
        //Create Program Plan
        List<Account> programList = [SELECT Id, Name FROM Account WHERE Id IN :academicProgramList];
        List<hed__Program_Plan__c> programPlans = REDU_TC_TestDataFactory_UTIL.createProgramPlans(programList, termList[0]);
        insert programPlans;
        System.assertEquals(programList.size(), programPlans.size());
        
        //Create Plan Requirements (Parents)
        List<hed__Plan_Requirement__c> parentPlanRequirements = REDU_TC_TestDataFactory_UTIL.createParentPlanRequirements(programPlans, 2, 'Required', 20);
        for (Integer i = 0; i < parentPlanRequirements.size() - 1; i += 2){
            parentPlanRequirements[i+1].hed__Category__c = 'Optional';
        }

        insert parentPlanRequirements;
        System.assertEquals(programPlans.size() * 2, parentPlanRequirements.size());
        
        //Create Plan Requirements (Courses)
        List<hed__Course__c> requiredCourses = new List<hed__Course__c>();
        requiredCourses.add(courseList[0]);
        requiredCourses.add(courseList[1]);
        requiredCourses.add(courseList[2]);
        requiredCourses.add(courseList[3]);
        requiredCourses.add(courseList[4]);
        List<hed__Course__c> optionalCourses = new List<hed__Course__c>();
        optionalCourses.add(courseList[5]);
        optionalCourses.add(courseList[6]);
        optionalCourses.add(courseList[7]);
        optionalCourses.add(courseList[8]);
        optionalCourses.add(courseList[9]);
        List<hed__Plan_Requirement__c> planRequirements = new List<hed__Plan_Requirement__c>();
        for (Integer i = 0; i < parentPlanRequirements.size() - 1; i += 2){
            planRequirements.addAll(REDU_TC_TestDataFactory_UTIL.createPlanRequirements(parentPlanRequirements[i], requiredCourses, 'Required', 10));
            planRequirements.addAll(REDU_TC_TestDataFactory_UTIL.createPlanRequirements(parentPlanRequirements[i+1], optionalCourses, 'Optional', 10));
        }
        
        insert planRequirements;
        System.assertEquals(courseList.size(), planRequirements.size());
        
        //Create Program Course Requirements
        List<rio_ed__Program_Course_Requirement__c> programCourseReqList = new List<rio_ed__Program_Course_Requirement__c>();
        for (hed__Plan_Requirement__c planReq : planRequirements){
            if (planReq.hed__Course__c == courseList[1].Id){
                programCourseReqList.add(REDU_TC_TestDataFactory_UTIL.createProgramCourseRequirement(planReq, 'A', courseList[0], false));
                planReq.rio_ed__Requirement_Logic__c = 'A';
            } else if (planReq.hed__Course__c == courseList[6].Id){
                programCourseReqList.add(REDU_TC_TestDataFactory_UTIL.createProgramCourseRequirement(planReq, 'A', courseList[5], true));
                programCourseReqList.add(REDU_TC_TestDataFactory_UTIL.createProgramCourseRequirement(planReq, 'B', 40));
                planReq.rio_ed__Requirement_Logic__c = 'A AND B';
            } else if (planReq.hed__Course__c == courseList[9].Id){
                programCourseReqList.add(REDU_TC_TestDataFactory_UTIL.createProgramCourseRequirement(planReq, 'A', 'Work Experience'));
                planReq.rio_ed__Requirement_Logic__c = 'A';
            }
        }
        insert programCourseReqList;
        update planRequirements;
        //========= End PAN:5205 =========

        //Create Program Pathway
        List<rio_ed__Program_Pathway__c> programPathwayList = new List<rio_ed__Program_Pathway__c>();
        List<hed__Program_Plan__c> planList2UpdPathway = new List<hed__Program_Plan__c>();
        
        programPathwayList = REDU_TC_TestDataFactory_UTIL.createProgramPathways('Test', 1, programPlans, 'Full-time');
        for (rio_ed__Program_Pathway__c pp : programPathwayList){
            pp.rio_ed__Enrollment_Method__c = 'Manual';
        }
        insert programPathwayList;

        //for (rio_ed__Program_Pathway__c pp : programPathwayList){
        //    planList2UpdPathway.add(new hed__Program_Plan__c(Id = pp.rio_ed__Program_Plan__c, rio_ed__Default_Program_Pathway__c = pp.Id));
        //}

        update planList2UpdPathway;
        
        //Create Program Pathway Unit
        List<rio_ed__Pathway_Unit__c> pathwayUnitList = new List<rio_ed__Pathway_Unit__c>();
        List<rio_ed__Pathway_Unit__c> pathwayUnitList1 = REDU_TC_TestDataFactory_UTIL.createPathwayUnits(null, 1, planRequirements[0].Id, programPathwayList, null);
        List<rio_ed__Pathway_Unit__c> pathwayUnitList2 = REDU_TC_TestDataFactory_UTIL.createPathwayUnits(null, 1, planRequirements[1].Id, programPathwayList, null);
        List<rio_ed__Pathway_Unit__c> pathwayUnitList3 = REDU_TC_TestDataFactory_UTIL.createPathwayUnits(null, 2, planRequirements[2].Id, programPathwayList, null);
        pathwayUnitList.addAll(pathwayUnitList1);
        pathwayUnitList.addAll(pathwayUnitList2);
        pathwayUnitList.addAll(pathwayUnitList3);
        insert pathwayUnitList;

        //Will set default Pathways on Program Plans
        for (hed__Program_Plan__c progPlan : programPlans){
            for (rio_ed__Program_Pathway__c progPathway : programPathwayList){
                if (progPlan.Id == progPathway.rio_ed__Program_Plan__c){
                    progPlan.rio_ed__Default_Program_Pathway__c = progPathway.Id;
                }
            }
        }
        update programPlans;
        
        // Create Applicants (i.e. Contacts):
        List<Contact> listCon = REDU_TC_TestDataFactory_UTIL.createContacts(APPLICANTS_QTY);
        insert listCon;

        List<Id> applicantIdList = new List<Id>(new Map<Id,Contact>(listCon).keySet());
        System.assertEquals(APPLICANTS_QTY, listCon.size());

        // Create Program Applications: 
        List<rio_ed__Program_Application__c> papList = new List<rio_ed__Program_Application__c>();
        papList =
            REDU_TC_TestDataFactory_UTIL.createProgramApplications(applicantIdList, 
            new List<Id>(new Map<Id,Account>(academicProgramList).keyset()),
                                                                    PE_PER_AP_QTY, 
                                                                    'Submitted',
                                                                    true);
        System.assertEquals(APPLICANTS_QTY, papList.size());

        // Get Program Enrollment records (created automatically from Approved Program Application records):
        for (rio_ed__Program_Application__c pap : papList)
            pap.rio_ed__Status__c = 'Applicant Accepted';
        update papList;
    }

    @IsTest
    static void doTest(){
        //rio_ed__Program_Application__c pa = [SELECT Id, rio_ed__Program__c, rio_ed__Program_Plan__c FROM rio_ed__Program_Application__c LIMIT 1];
        //pa.rio_ed__Status__c = 'Accepted Offer';
        //update pa;

        List<hed__Program_Enrollment__c> listPE = [SELECT Id, hed__Contact__c, hed__Program_Plan__c, rio_ed__ProgramApplication__c, Name FROM hed__Program_Enrollment__c];
        List<hed__Plan_Requirement__c> prList = [SELECT Id, hed__Category__c FROM hed__Plan_Requirement__c WHERE hed__Program_Plan__c = :listPE[0].hed__Program_Plan__c AND hed__Course__c = null];
        
        //hed__Program_Enrollment__c> listPE
        List<rio_ed__PE_Group_Status__c> listPEGroupCreate = new List<rio_ed__PE_Group_Status__c>();
        for (hed__Program_Enrollment__c pe : listPE) {
            pe.rio_ed__Program_Status__c = 'Current';
            for(hed__Plan_Requirement__c pr : prList){
                rio_ed__PE_Group_Status__c pegroup = new rio_ed__PE_Group_Status__c();
                pegroup.rio_ed__Program_Enrollment__c = pe.Id;
                pegroup.rio_ed__Plan_Requirement__c = pr.Id;
                pegroup.rio_ed__Category__c = pr.hed__Category__c;

                listPEGroupCreate.add(pegroup);
            }
        }

        update listPE;

        insert listPEGroupCreate;

        List<rio_ed__PE_Group_Status__c> listPEGroup = [select Id from rio_ed__PE_Group_Status__c where rio_ed__Program_Enrollment__c in :listPE];
        //System.assert(listPEGroup.size()>0, 'PE Groups were not created!');

        Test.startTest();

        hed__Program_Enrollment__c pe = listPE[0];

        List<rio_ed__Transfer_Credit__c> listTC = new List<rio_ed__Transfer_Credit__c>();

        List<rio_ed__Agreement_Course__c> listAC = [select Id from rio_ed__Agreement_Course__c];

        for (rio_ed__Agreement_Course__c ac : listAC) {
            rio_ed__Transfer_Credit__c tc = new rio_ed__Transfer_Credit__c();
            tc.rio_ed__Contact__c = pe.hed__Contact__c;
            tc.rio_ed__Program_Application__c = pe.rio_ed__ProgramApplication__c;
            tc.rio_ed__Transfer_Course__c = ac.Id;
            tc.rio_ed__Status__c = 'Approved';
            listTC.add(tc);
        }

        insert listTC;

        // Update status back
        for (rio_ed__Transfer_Credit__c tc : listTC) {
            tc.rio_ed__Status__c = 'Draft';
        }

        update listTC;

        // Update status back
        for (rio_ed__Transfer_Credit__c tc : listTC) {
            tc.rio_ed__Status__c = 'Approved';
        }

        update listTC;

        // Delete TC
        delete listTC;

        Test.stopTest();
    }
}