/**
 * @author          WDCi(LKoh)
 * @date            Jan 2022
 * @group           Util
 * @description     Testdata factory for redu test classes/methods
 */
@isTest
public without sharing class redu_CommonTestDataFactory_UTIL {
    
    /**
     * @description Creates default RIO Education custom settings
     * @return RIO_Education_Settings
     */
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

    /**
    * @description Create image files
    * @param numOfFiles Number of files to create
    * @param nameString Name of file(s)
    * @param fileType File type (e.g. Portfolio or Reference)
    * @return List<ContentVersion>
    */
    public static List<ContentVersion> createFiles(Integer numOfFiles, String nameString, String fileCategory){

        //Fake image
        Blob body = Blob.valueOf('data:image/gif;base64,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');

        List<ContentVersion> cvList = new List<ContentVersion>();
        
        for (Integer i = 1; i < numOfFiles + 1; i++){
            ContentVersion cv = new ContentVersion();
            cv.Title = nameString + i + '.png';
            cv.VersionData = body;
            cv.PathOnClient = '/' + cv.Title;
            cv.Description = cv.Title + ' description';
            cv.redu_File_Category__c = fileCategory;
            cvList.add(cv);
        }

        return cvList;

    }

    /**
     * @description Creates default RIO Education user for flows. Call this before inserting the customSettings
     */
    public static void createDefaultUser(rio_ed__RIO_Education_Settings__c customSettings){
        
        Profile p = [SELECT id, Name FROM Profile where name = 'System Administrator' ].get(0);  
        User u = new User(firstname= 'Tester',
                    lastname='Admin1',
                    Alias='tadmin1',
                    email = 'tadmin1@fakeemail.com',
                    username= 'tadmin1@fakeemail.com', 
                    profileId= p.id, 
                    emailencodingkey='UTF-8',
                    languagelocalekey='en_US',
                    localesidkey='en_US',
                    timezonesidkey='America/Los_Angeles');
        insert u;
    }

    /**
    * @description Create educational institutions
    * @param numRecords number of EducationalInstitution to be created
    * @return List<Account>
    */
    public static List<Account> createEducationalInstitutions(Integer numRecords) {

        Id eiRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Educational Institution').getRecordTypeId();
        List<Account> eiList = new List<Account>();

        for (Integer i = 0; i < numRecords; i++) {
            Account ei = new Account(Name = 'EducationalInstitution-'+i, 
                                     rio_ed__EFTSL_Credit_Points__c = 100, 
                                     RecordTypeId = eiRecordTypeId);
            eiList.add(ei);
        }
        return eiList;
    }

    /**
    * @description Create terms.
    * @param instituteId educational institution id
    * @param numberOfTerms number of terms to be created
    * @return List<hed__Term__c>
    */
    public static List<hed__Term__c> createTerms(Id instituteId, Integer numberOfTerms){
        List<hed__Term__c> listTerms = new List<hed__Term__c>();
        Integer term_length_in_months = 11;
        Integer number_of_months_in_term = 12;
        //Date termStartDate = Date.newInstance(Date.today().Year(),01,01);
        Date termStartDate = System.today().addDays(-30);
        Date termEndDate   = termStartDate.addMonths(term_length_in_months);
        
        List<Account> checkInstitute = [SELECT Id, RecordType.Name FROM Account WHERE Id = :instituteId];

        System.debug('checkInstitute recordType: ' +checkInstitute[0].RecordType.Name);

        for (Integer i = 0; i < numberofTerms; i++ ) {
            hed__Term__c term = new hed__Term__c(hed__Account__c = instituteId);
            term.Name = termStartDate.year() +' - Term '+i;
            term.hed__Start_Date__c = termStartDate;
            term.hed__End_Date__c = termEndDate;
            listTerms.add(term);
            
            termStartDate = termStartDate.addMonths(number_of_months_in_term);
            termEndDate = termStartDate.addMonths(term_length_in_months);
        }
        
        return listTerms;
    }
    
    /**
    * @description Creates the dummy account
    * @return Account
    */
    public static Account createAdminAccount(String name) {
        Account adminAccount = new Account();
        adminAccount.Name = name + ' Admin Account';
        adminAccount.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Administrative').getRecordTypeId();
        return adminAccount;
    }

    /**
    * @description Create contacts, skipping the dummyaccount flow
    * @param numContacts number of contacts to be created
    * @return List<Contact>
    */
    public static List<Contact> createContacts(Integer numContacts) {

        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < numContacts; i++) {
            Account acc = createAdminAccount('Test-' +i);
            accs.add(acc);
        }
        insert accs;

        Integer conCounter = 0;
        List<Contact> cons = new List<Contact>();
        for (Account acc : accs) {
            Contact con = new Contact(
                FirstName = acc.Name.substringBefore(' '),
                LastName = acc.Name.substringBefore(' '),
                Email = acc.Name.substringBefore('-') + acc.Name.substringAfter('-').left(1) + '.' + 
                        acc.Name.substringBefore('-') + acc.Name.substringAfter('-').left(1) + '@email.com', 
                AccountId = acc.Id);
            con.rio_ed__Community_Username__c = con.Email;
            con.rio_ed__Community_Username_Prefix__c = 'testStud_'+conCounter+'_'+numContacts;
            con.hed__Preferred_Email__c = 'Alternate Email';
            con.hed__AlternateEmail__c = con.Email;
            cons.add(con);
            conCounter++;
        }
        
        return cons;
    }
    
    /**
    * @description Create university departments
    * @param educationalInstitutionList list of educational institutions
    * @param universityDepartmentNum number of contacts to be created
    * @return List<Account>
    */
    public static List<Account> createUniversityDepartments(List<Account> educationalInstitutionList, 
                                                       Integer universityDepartmentNum) {

        Id udRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('University Department').getRecordTypeId();

        List<Account> universityDepartmentList = new List<Account>();

        for (Account ei : educationalInstitutionList) {
            for (Integer i = 0; i < universityDepartmentNum; i++) {
                Account universityDepartment = 
                    new Account(Name = ei.Name + '-UniversityDepartment-' + i, 
                                ParentId = ei.Id, 
                                rio_ed__EFTSL_Credit_Points__c = 100, 
                                RecordTypeId = udRecordTypeId);
                universityDepartmentList.add(universityDepartment);
            }
        }
        return universityDepartmentList;
    }

    /**
    * @description Create academic programs
    * @param universityDepartmentList list of university departments
    * @param academicProgramNum number of contacts to be created
    * @return List<Account>
    */
    public static List<Account> createAcademicPrograms(List<Account> universityDepartmentList, 
                                                  Integer academicProgramNum) {

        Id apRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId();

        List<Account> academicProgramList = new List<Account>();        
        for (Account ud : universityDepartmentList) {
            for (Integer i = 0; i < academicProgramNum; i++) {
                Account academicProgram = 
                    new Account(Name = ud.Name + '-AcademicProgram-' + i, 
                                ParentId = ud.Id, 
                                rio_ed__EFTSL_Credit_Points__c = 100,
                                rio_ed__Program_Code__c = 'AP' + i,
                                rio_ed__Fee_Due_Days__c = 60,                                
                                RecordTypeId = apRecordTypeId);
                academicProgramList.add(academicProgram);
            }
        }
        return academicProgramList;
    }
    
    /**
    * @description Create program applications
    * @param applicantList list of contacts
    * @param programList list of academic programs
    * @param applicationStatus default program application status
    * @return List<SObject>
    */
    public static List<SObject> createProgramApplications(List<Contact> applicantList, 
                                                          List<Account> programList, 
                                                          String applicationStatus) {

        List<SObject> papList = new List<SObject>();
        Integer j = programList.size() - 1;

        for (Integer i = 0; i < applicantList.size(); i++) {
            rio_ed__Program_Application__c pap = 
                new rio_ed__Program_Application__c(rio_ed__Applicant__c = applicantList[i].Id, 
                                                rio_ed__Program__c = programList[j].Id, 
                                                rio_ed__Study_Mode__c = 'Full-time',
                                                rio_ed__Status__c = applicationStatus, 
                                                rio_ed__Status_Date__c = null, 
                                                rio_ed__Start_Month__c = 'February', 
                                                rio_ed__Start_Year__c = String.valueOf(System.today().year() + 1));
            papList.add(pap);
            j--;
            if (j == -1) 
                j = programList.size() - 1;
        }
         
        return papList;
    }

    /**
    * @description Create program enrollment (skipping the program application approval flow).
    * @param applicationList list of program applications
    * @param programPlanList list of primary program plans
    * @return List<hed__Program_Enrollment__c>
    */
    public static List<hed__Program_Enrollment__c> createProgramEnrollments(List<rio_ed__Program_Application__c> applicationList, 
                                                                              List<hed__Program_Plan__c> programPlanList) {

        List<hed__Program_Enrollment__c> peList = new List<hed__Program_Enrollment__c>();

        for (rio_ed__Program_Application__c pa : applicationList) {
            for (hed__Program_Plan__c pp : programPlanList){
                if (pa.rio_ed__Program__c == pp.hed__Account__c){
                    hed__Program_Enrollment__c pe = 
                        new hed__Program_Enrollment__c(rio_ed__ProgramApplication__c = pa.Id, 
                                                       hed__Contact__c = pa.rio_ed__Applicant__c, 
                                                       hed__Account__c = pa.rio_ed__Program__c,
                                                       hed__Enrollment_Status__c = pa.rio_ed__Study_Mode__c, 
                                                       hed__Eligible_to_Enroll__c = true, 
                                                       hed__Admission_Date__c = system.today(),
                                                       rio_ed__Fee_Type__c = 'Self Paid',
                                                       rio_ed__Fee_Method__c = 'Term',
                                                       hed__Program_Plan__c = pp.Id);
                    peList.add(pe);
                }
            }
            
        }
        system.assertEquals(applicationList.size(), peList.size(), 'Failed to create Program Enrollment for each Program Application - redu_PaymentTestDataFactory_UTIL');
        return peList;
    }

    /**
    * @description Create program offerings (Intakes)
    * @param programList list of academic programs
    * @return List<SObject>
    */
    public static List<SObject> createProgramOfferings(List<Account> programList) {

        List<SObject> poList = new List<SObject>();

        for (Integer i = 0; i < programList.size(); i++) {
            rio_ed__Program_Offering__c po = 
                new rio_ed__Program_Offering__c(Name = 'Intake ' + i + ' Rolling Decision', 
                                                rio_ed__Program__c = programList[i].Id);
            poList.add(po);
        }
         
        return poList;
    }
    
    /**
    * @description Create Program Plans.
    * @param programList List of Academic Programs to create plans for
    * @param termList List of Terms, mainly just used to determine dates of the Program Plan
    * @return List<hed__Program_Plan__c>
    */
    public static List<hed__Program_Plan__c> createProgramPlans(List<Account> programList, hed__Term__c term) {
        List<hed__Program_Plan__c> programPlanList = new List<hed__Program_Plan__c>();
        for (Account program : programList){
            hed__Program_Plan__c pp = new hed__Program_Plan__c();
            pp.Name = 'Program Plan ' + term.Name; //Program name makes it too long
            pp.hed__Account__c = program.Id;
            pp.hed__Start_Date__c = term.hed__Start_Date__c;
            pp.hed__End_Date__c = term.hed__End_Date__c;
            pp.hed__Is_Primary__c = true;
            pp.hed__Status__c = 'Current';
            pp.rio_ed__Next_Starting_Term__c = term.Id;            
            pp.rio_ed__Fee_Method__c = 'Term';
            programPlanList.add(pp);
        }
        return programPlanList;
    }

    /**
    * @description Create course.
    * @param departmentsId list of department id
    * @param coursesPerDept maximum course per department to be created
    * @return List<hed__Course__c>
    */
    public static List<hed__Course__c> createCourses(List<Id> departmentsId, 
                                                     Integer coursesPerDept) {
        
        List<hed__Course__c> courseList = new List<hed__Course__c>();
        
        Integer courseCounter = 1;
        for (Id dptmentId: departmentsId) {
            for (Integer i = 0; i < coursesPerDept; i++) {
                hed__Course__c course = new hed__Course__c();
                course.hed__Account__c = dptmentId;
                course.Name = 'COURSE_'+ courseCounter;
                course.hed__Course_ID__c = 'CO_'+ courseCounter;
                course.hed__Credit_Hours__c = 4.000;
                course.rio_ed__Credit_Points__c = 4;
                courseCounter++;
                courseList.add(course);
            }
        }

        return courseList;
    }

    /**
    * @description Create Parent Plan Requirements (ie. Plan Requirements that will create PE Groups)
    * @param programPlanList List of Program Plans to create Plan Requirements for
    * @param numOfReqs Number of Plan Requirements to create
    * @param cat Category of this requirement
    * @param credits Number of credits needed to complete this requirement
    * @return List<hed__Plan_Requirement__c>
    */
    public static List<hed__Plan_Requirement__c> createParentPlanRequirements(List<hed__Program_Plan__c> programPlanList, Integer numOfReqs, String cat, Integer credits){
        List<hed__Plan_Requirement__c> planRequirementList = new List<hed__Plan_Requirement__c>();
        for (hed__Program_Plan__c programPlan : programPlanList){
            for (Integer i = 0; i < numOfReqs; i++){
                hed__Plan_Requirement__c planReq = new hed__Plan_Requirement__c();
                planReq.Name = programPlan.Name + ' Parent Plan Requirement - ' + i;
                planReq.hed__Program_Plan__c = programPlan.Id;
                planReq.hed__Category__c = cat;
                planReq.hed__Credits__c = credits;
                planReq.RecordTypeId = Schema.SObjectType.hed__Plan_Requirement__c.getRecordTypeInfosByDeveloperName().get('Group').getRecordTypeId();
                planRequirementList.add(planReq);
            }
        }
        return planRequirementList;
    }
    
    /**
    * @description Create Plan Requirements (ie. Plan Requirements that will create Course Connection Requirements)
    * @param planReq Plan Requirement to make these Plan Requirements for
    * @param courseList List of courses to create requirements for
    * @param cat Category of this requirement
    * @param credits Number of credits earned by completing this requirement
    * @return List<hed__Plan_Requirement__c>
    */
    public static List<hed__Plan_Requirement__c> createPlanRequirements(hed__Plan_Requirement__c planReq, List<hed__Course__c> courseList, String cat, Integer credits){
        List<hed__Plan_Requirement__c> planRequirementList = new List<hed__Plan_Requirement__c>();
        for (hed__Course__c course : courseList){
            hed__Plan_Requirement__c pr = new hed__Plan_Requirement__c();
            pr.Name = course.Name;
            pr.hed__Program_Plan__c = planReq.hed__Program_Plan__c;
            pr.hed__Plan_Requirement__c = planReq.Id;
            pr.hed__Course__c = course.Id;
            pr.hed__Category__c = cat;
            pr.hed__Credits__c = credits;
            pr.RecordTypeId = Schema.SObjectType.hed__Plan_Requirement__c.getRecordTypeInfosByDeveloperName().get('Course').getRecordTypeId();
            planRequirementList.add(pr);
        }
        return planRequirementList;
    }
    
    /**
    * @description Create course offering.
    * @param courseList list of course (hed__Course__c)
    * @param term related term (hed__Term__c)
    * @return List<hed__Course_Offering__c>
    */
    public static List<hed__Course_Offering__c> createCourseOfferings(List<hed__Course__c> courseList, hed__Term__c term) {
        
        List<hed__Course_Offering__c> listCO = new List<hed__Course_Offering__c>();
        Integer counter = 1;

        for (hed__Course__c c : courseList) {
            hed__Course_Offering__c co = new hed__Course_Offering__c();
            co.hed__Course__c = c.Id;
            co.hed__Capacity__c = 100;
            co.hed__Term__c = term.Id;
            co.hed__Start_Date__c = term.hed__Start_Date__c;
            co.hed__End_Date__c = term.hed__End_Date__c;
            co.Name = 'COURSE_OFFERING_'+ counter;
            counter++;
            listCO.add(co);

        }

        return listCO;
    }

    /**
    * @description Create program pathway.
    * @param noteStr note or description for a program pathway
    * @param noOfTerm number of term to complete a pathway
    * @param programPlanList list of program plans
    * @param studyModeStr default study mode
    * @return List<rio_ed__Program_Pathway__c>
    */
    public static List<rio_ed__Program_Pathway__c> createProgramPathways(String noteStr, 
                                                      Integer noOfTerm, 
                                                      List<hed__Program_Plan__c> programPlanList, 
                                                      String studyModeStr) {
        
        List<rio_ed__Program_Pathway__c> progPathways = new List<rio_ed__Program_Pathway__c>();
                                                          
        for (hed__Program_Plan__c progPlan: programPlanList) {
            rio_ed__Program_Pathway__c pp = new rio_ed__Program_Pathway__c();
            pp.rio_ed__Notes__c = noteStr;
            pp.rio_ed__Number_of_Terms__c = noOfTerm;
            pp.rio_ed__Program_Plan__c = progPlan.Id;
            pp.rio_ed__Study_Mode__c = studyModeStr;
            
            progPathways.add(pp);
        }
        
        return progPathways;
    }
 
    /**
    * @description Create pathway units.
    * @param numCourseFromGroup number of elective courses to be completed for a pathway unit if there is no specific core course to be done 
    * @param termNum number of term to complete a pathway
    * @param progCourseId program course (rio_ed__Program_Course__c) id
    * @param progPathwayIdList list of program pathway (rio_ed__Program_Pathway__c) id
    * @param progGroupId program group (rio_ed__Program_Group__c) id
    * @return List<rio_ed__Pathway_Unit__c>
    */
    public static List<rio_ed__Pathway_Unit__c> createPathwayUnits(Integer numCourseFromGroup, 
                                                   Integer termNum, 
                                                   Id progCourseId, 
                                                   List<rio_ed__Program_Pathway__c> progPathwayIdList, 
                                                   Id progGroupId){
    
        List<rio_ed__Pathway_Unit__c> pathwayUnits = new List<rio_ed__Pathway_Unit__c>();
        
        for (rio_ed__Program_Pathway__c pp: progPathwayIdList) {
            rio_ed__Pathway_Unit__c pu = new rio_ed__Pathway_Unit__c();
            
            if (progCourseId != null){
                pu.rio_ed__Plan_Requirement_Course__c = progCourseId;
            } else {
                pu.rio_ed__Number_of_Courses_from_Group__c = numCourseFromGroup;
                pu.rio_ed__Plan_Requirement_Group__c = progGroupId;
            }
            
            pu.rio_ed__Program_Pathway__c = pp.Id;
            pu.rio_ed__Term_Number__c = termNum;
            
            pathwayUnits.add(pu);
        }
        
        return pathwayUnits;
    }
    
    /**
    * @description Create session.
    * @param sessionType type of session (e.g, Recurring, Block, One Off, Exam)
    * @param noOfSessions number of session (mainly for recurring type of session)
    * @param courseOfferings list of course offering (hed__Course_Offering__c)
    * @param sStatus default session status
    * @return List<rio_ed__Session__c>
    */
    public static List<rio_ed__Session__c> createSessions(String sessionType, Integer noOfSessions, List<hed__Course_Offering__c> courseOfferings, String sStatus){
    
        List<rio_ed__Session__c> sessions = new List<rio_ed__Session__c>();
        Integer sessionCounter = 0;
        for (hed__Course_Offering__c co: courseOfferings) {
            rio_ed__Session__c s = new rio_ed__Session__c();
            s.Name = 'Test_Session_'+sessionCounter;
            s.rio_ed__Number_of_Sessions__c = noOfSessions;
            s.rio_ed__Session_Type__c = sessionType;
            s.rio_ed__Status__c = sStatus;
            s.rio_ed__Course_Offering__c = co.Id;
            s.rio_ed__Capacity__c = 10;
            s.rio_ed__Published__c = true;
            s.rio_ed__Session_Status_Override__c = 'Enrollment Opened';
            
            sessions.add(s);
        }
        
        return sessions;
        
    }

    /**
    * @description Create session time.
    * @param sessions list of session (rio_ed__Session__c)
    * @param dayOfWeek day of week (e.g, Sunday, Monday and etc)
    * @param startTime start time in 24 hour format (e.g, 09:00 or 13:00)
    * @param endTime end time in 24 hour format (e.g, 09:00 or 13:00)
    * @param startDate start date
    * @param endDate end date
    * @param recurrenceStr recurrence type (e.g, Weekly, Bi-Weekly, One-Off, Daily)
    * @return List<rio_ed__Session_Time__c>
    */
    public static List<rio_ed__Session_Time__c> createSessionTime(List<rio_ed__Session__c> sessions, String dayOfWeek, String startTime, String endTime, Date startDate, Date endDate, String recurrenceStr){
        
        List<rio_ed__Session_Time__c> sessionTimes = new List<rio_ed__Session_Time__c>();
        
        for(rio_ed__Session__c s: sessions){
            
            rio_ed__Session_Time__c st = new rio_ed__Session_Time__c();
            st.rio_ed__Day_of_week__c = dayOfWeek;
            st.rio_ed__End_Date__c = endDate;
            st.rio_ed__End_Time__c = endTime;
            st.rio_ed__Recurrence__c = recurrenceStr;
            st.rio_ed__Session__c = s.Id;
            st.rio_ed__Start_Date__c = startDate;
            st.rio_ed__Start_Time__c = startTime;
            st.rio_ed__Status__c = 'Active';
            st.rio_ed__Update_Settings__c = 'Create/Update all';
            
            sessionTimes.add(st);
        }
        
        return sessionTimes;
    }

    public static Map<String, SObject> createBasicTestData() {

        Map<String, SObject> basicTestMap = new Map<String, SObject>();

        List<Account> testEIAccounts = createEducationalInstitutions(1);
        insert testEIAccounts;
        basicTestMap.put('TEST EI Account', testEIAccounts[0]);

        List<hed__Term__c> testTerms = createTerms(testEIAccounts[0].Id, 1);
        insert testTerms;
        basicTestMap.put('semester1', testTerms[0]);

        List<Account> testDepartments = createUniversityDepartments(testEIAccounts, 1);
        insert testDepartments;
        basicTestMap.put('Department Music', testDepartments[0]);

        List<Account> testPrograms = createAcademicPrograms(testDepartments, 1);
        insert testPrograms;
        basicTestMap.put('Bachelor of Music (Contemporary)', testPrograms[0]);

        List<hed__Program_Plan__c> testProgramPlans = createProgramPlans(testPrograms, testTerms[0]);
        insert testProgramPlans;
        basicTestMap.put('BMUS-CONT17 Bachelor of Music (Contemporary)', testProgramPlans[0]);

        return basicTestMap;
    }  
}