/**
 * @author      WDCi (Jordan)
 * @date        July 2022
 * @group       Util
 * @description Testdata factory for RIO Ready grades rollup.
 */

@isTest
public with sharing class REDU_GradesRollupTestDataFactory_UTIL { 

    /**
     * @description Course connection status - Current
     */
    public static final String COURSE_CONNECTION_STATUS_CURRENT = 'Current';

    /**
     * @description Course enrollment RPL grade
     */
    public static final String COURSECONNECTION_RESULT_RPL = 'RPL';

    /**
     * @description Course enrollment Credit Transfer grade
     */
    public static final String COURSECONNECTION_RESULT_CREDITTRANSFER = 'Credit Transfer';
    
    /**
    * @description Create educational institution.
    * @param numRecords number of contacts to be created
    * @return List<Id>
    */
    public static List<Id> createEducationalInstitutions(Integer numRecords) {

        Id eiRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Educational Institution').getRecordTypeId();
        List<Account> eiList = new List<Account>();

        for (Integer i = 0; i < numRecords; i++) {
            Account ei = new Account(Name = 'EducationalInstitution-'+i, 
                                     rio_ed__EFTSL_Credit_Points__c = 100, 
                                     RecordTypeId = eiRecordTypeId);
            eiList.add(ei);
        }
        insert eiList;
        
        List<Id> eiIds = new List<Id>();        
        for (Account ei : eiList)
            eiIds.add(ei.Id);

        return eiIds;
    }

    /**
    * @description Create university department.
    * @param educationalInstitutionIds list of educational institution record id
    * @param universityDepartmentNum number of contacts to be created
    * @return List<Id>
    */
    public static List<Id> createUniversityDepartments(List<Id> educationalInstitutionIds, 
                                                       Integer universityDepartmentNum) {

        Id eiRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Educational Institution').getRecordTypeId();
        Id udRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('University Department').getRecordTypeId();

        List<Account> educationalInstitutionList = 
            [SELECT Id, Name FROM Account WHERE Id IN :educationalInstitutionIds];
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
        insert universityDepartmentList;

        List<Id> udIdList = new List<Id>();
        for (Account ud : universityDepartmentList)
            udIdList.add(ud.Id);

        return udIdList;
    }

    /**
    * @description Create academic program.
    * @param universityDepartmentIds list of university department record id
    * @param academicProgramNum number of contacts to be created
    * @return List<Id>
    */
    public static List<Id> createAcademicPrograms(List<Id> universityDepartmentIds, 
                                                  Integer academicProgramNum) {

        Id udRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('University Department').getRecordTypeId();
        Id apRecordTypeId = 
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId();

        List<Account> universityDepartmentList = 
            [SELECT Id, Name FROM Account WHERE Id IN :universityDepartmentIds];

        List<Account> academicProgramList = new List<Account>();        
        for (Account ud : universityDepartmentList) {
            for (Integer i = 0; i < academicProgramNum; i++) {
                Account academicProgram = 
                    new Account(Name = ud.Name + '-AcademicProgram-' + i, 
                                ParentId = ud.Id, 
                                rio_ed__EFTSL_Credit_Points__c = 100,
                                rio_ed__Program_Code__c = 'AP' + i, //CM 26/11/2018 - Added for Grade Setting unique name assignment
                                rio_ed__Fee_Due_Days__c = 60, //CM 24/06/2019 - ISS-000135
                                RecordTypeId = apRecordTypeId);
                academicProgramList.add(academicProgram);
            }
        }
        insert academicProgramList;

        List<Id> apIdList = new List<Id>();
        for (Account ap : academicProgramList)
            apIdList.add(ap.Id);

        return apIdList;
    }

    /**
    * @description Create course.
    * @param programIdList list of academic program id
    * @param coursesPerProgram maximum course per academic program to be created
    * @param dmlInsert indicate to create or just initialise the records
    * @return List<hed__Course__c>
    */
    public static List<hed__Course__c> createCourseList(List<Id> programIdList, 
                                                        Integer coursesPerProgram, 
                                                        Boolean dmlInsert) {
        
        List<hed__Course__c> courseList = new List<hed__Course__c>();
        List<Account> programList = [SELECT Id, ParentId 
                                    FROM Account 
                                    WHERE Id IN :programIdList
                                    ORDER BY Name];

        Integer courseCounter = 1;
        for (Account ap : programList) {
            for (Integer i = 0; i < coursesPerProgram; i++) {
                hed__Course__c course = new hed__Course__c();
                course.hed__Account__c = ap.ParentId;
                course.Name = 'COURSE_'+ courseCounter;
                course.hed__Course_ID__c = 'CO_'+ courseCounter;
                course.hed__Credit_Hours__c = 7.000;
                course.rio_ed__Credit_Points__c = 7;
                courseCounter++;
                courseList.add(course);
            }
        }
        
        if (dmlInsert == true) {
            insert courseList;
            courseList = [SELECT Id, Name, hed__Account__c, hed__Course_ID__c, 
                                 hed__Credit_Hours__c, rio_ed__Credit_Points__c 
                          FROM hed__Course__c
                          ORDER BY Name];
                                     
        }
        System.assert(!courseList.isEmpty(), 'Create Course fail in REDU_TestDataFactory_Util');
        return courseList;
    }

    /**
    * @description Create term.
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
        
        for (Integer i = 0; i < numberofTerms; i++ ) {
            hed__Term__c term = new hed__Term__c(hed__Account__c = instituteId);
            term.Name = termStartDate.year() +' - Term '+i;
            term.hed__Start_Date__c = termStartDate;
            term.hed__End_Date__c = termEndDate;
            listTerms.add(term);
            
            termStartDate = termStartDate.addMonths(number_of_months_in_term);
            termEndDate = termStartDate.addMonths(term_length_in_months);
        }
        
        insert listTerms;
        
        return listTerms;
    }

    /**
    * @description Create course offering.
    * @param courseList list of course (hed__Course__c)
    * @param term related term (hed__Term__c)
    * @return List<SObject>
    */
    public static List<SObject> createCourseOfferings(List<hed__Course__c> courseList, hed__Term__c term) {
        
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
            
            // Add multiple offerings
            co = new hed__Course_Offering__c();
            co.hed__Course__c = c.Id;
            co.hed__Capacity__c = 100;
            co.hed__Term__c = term.Id;
            co.rio_ed__Description__c = 'Course offering (multiple)';
            co.Name = 'COURSE_OFFERING_ multiple_'+ counter;
            listCO.add(co);            
        }

        insert listCO;
        return listCO;
    }

    /**
    * @description Create Program Plans.
    * @param programList List of Academic Programs's Ids
    * @param termList List of Terms, mainly just used to determine dates of the Program Plan
    * @return List<hed__Program_Plan__c>
    */
    public static List<hed__Program_Plan__c> createProgramPlans(List<Id> programList, hed__Term__c term){
        List<hed__Program_Plan__c> programPlanList = new List<hed__Program_Plan__c>();
        for (Id programId : programList){
            hed__Program_Plan__c pp = new hed__Program_Plan__c();
            pp.Name = 'Program Plan ' + term.Name; //Program name makes it too long
            pp.hed__Account__c = programId;
            pp.hed__Start_Date__c = term.hed__Start_Date__c;
            pp.hed__End_Date__c = term.hed__End_Date__c;
            pp.hed__Is_Primary__c = true;
            pp.hed__Status__c = 'Current';
            //Added 19/06/2019 by CM - ISS-000139
            pp.rio_ed__Next_Starting_Term__c = term.Id;
            programPlanList.add(pp);
        }
        return programPlanList;
    }

    /**
    * @description Create contacts.
    * @param numContacts number of contacts to be created
    * @return List<Id>
    */
    public static List<Id> createContacts(Integer numContacts) {

        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < numContacts; i++) {
            Account acc = new Account(
                Name = 'Test-' + i + '  Administrative Account'+getRandomIntStrValBetween0to1000(), 
                RecordTypeId = 
                Schema.SObjectType.Account.getRecordTypeInfosByName().get('Administrative').getRecordTypeId());
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
                        acc.Name.substringBefore('-') + acc.Name.substringAfter('-').left(1) + getRandomIntStrValBetween0to1000()+'@email.com', 
                AccountId = acc.Id);
            //Added 16/05/2018 by CM
            //con.Community_Username__c = con.Email;
            //Added 29/05/2018 by KH
            con.rio_ed__Community_Username_Prefix__c = System.now().getTime()+'testStud_'+conCounter+'_'+numContacts;
            System.debug('rio_ed__Community_Username_Prefix__c : ' + con.rio_ed__Community_Username_Prefix__c);
            cons.add(con);
            conCounter++;
        }
        
        insert cons;
        
        List<Id> conIds = new List<Id>();
        for (Contact con : cons)
            conIds.add(con.Id);

        return conIds;
    }

    /**
    * @description Create program application.
    * @param applicationIdList list of contact id
    * @param academicProgramIdList list of academic program id
    * @param applicationStatus default program application status
    * @param dmlInsert indicate to create or just initialise the records
    * @return List<SObject>
    */
    public static List<rio_ed__Program_Application__c> createProgramApplications(List<Id> applicantIdList, 
                                                          List<Id> academicProgramIdList, 
                                                          String applicationStatus, 
                                                          Boolean dmlInsert) {

        List<Account> programList = [SELECT Id FROM Account WHERE Id IN :academicProgramIdList];
        List<SObject> papList = new List<SObject>();
        Integer j = academicProgramIdList.size() - 1;

        for (Integer i = 0; i < applicantIdList.size(); i++) {
            rio_ed__Program_Application__c pap = 
                new rio_ed__Program_Application__c(rio_ed__Applicant__c = applicantIdList[i], 
                                                rio_ed__Program__c = programList[j].Id, 
                                                rio_ed__Study_Mode__c = 'Full-time',
                                                rio_ed__Status__c = applicationStatus, 
                                                rio_ed__Status_Date__c = null, 
                                                rio_ed__Start_Month__c = 'February', 
                                                rio_ed__Start_Year__c = String.valueOf(System.today().year()));
            papList.add(pap);
            j--;
            if (j == -1) 
                j = programList.size() - 1;
        }
        
        if (dmlInsert == true) {
            insert papList;
            papList = [SELECT Id, Name, rio_ed__Applicant__c, rio_ed__Program__c, rio_ed__Study_Mode__c, 
                              rio_ed__Status__c, rio_ed__Status_Date__c, rio_ed__Start_Month__c, rio_ed__Start_Year__c
                       FROM rio_ed__Program_Application__c
                       WHERE rio_ed__Applicant__c IN : applicantIdList];
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
				                                       //rio_ed__Fee_Type__c = pa.rio_ed__Fee_Type__c, //Not retrieved  
				                                       //rio_ed__Fee_Type_Option__c = pa.rio_ed__Fee_Type_Option__c, //Not retrieved
				                                       rio_ed__Fee_Type__c = 'Self Paid',
				                                       hed__Program_Plan__c = pp.Id);
			    	peList.add(pe);
        		}
        	}
            
        }
        system.assertEquals(applicationList.size(), peList.size(), 'Failed to create Program Enrollment for each Program Application - REDU_TestDataFactory_UTIL');
        return peList;
    }

    /**
    * @description Create course enrollment.
    * @param peIdList list of program enrollment (hed__Program_Enrollment__c) id
    * @param coIdList list of course offering (hed__Course_Offering__c) id
    * @param coursesPerPe maximum number of course connection to be created per program enrollment
    * @param dmlInsert indicate to create or just initialise the records
    * @return List<hed__Course_Enrollment__c>
    */
    public static List<hed__Course_Enrollment__c> createCourseEnrollments(List<Id> peIdList, 
                                                                          List<Id> coIdList,
                                                                          Integer coursesPerPe, 
                                                                          Boolean dmlInsert) {
        
        // Note that 'Course Enrollment' is also known as 'Course Connection' in the User Interface.

        List<hed__Course_Enrollment__c> ceAllList = new List<hed__Course_Enrollment__c>();

        Id ceRecordTypeId = Schema.SObjectType.hed__Course_Enrollment__c.getRecordtypeInfosByDeveloperName().get('Student').getRecordTypeId();	// ISS-000081 - Enhance Course Connection Record Type Identification
//        Id apRecordTypeId = 
//            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Academic Program').getRecordTypeId();

        List<hed__Program_Enrollment__c> peList = new List<hed__Program_Enrollment__c>();
        peList = [SELECT Id, hed__Contact__c, hed__Account__c, hed__Account__r.ParentId
                  FROM hed__Program_Enrollment__c
                  WHERE Id IN : peIdList
                  ORDER BY Name];

        List<hed__Course_Offering__c> coList = new List<hed__Course_Offering__c>();
        coList = [SELECT Id, hed__Course__r.hed__Account__c
                  FROM hed__Course_Offering__c
                  WHERE Id IN : coIdList
                  AND Name LIKE '%multiple_%'
                  ORDER BY Name];

        System.debug(peList);
        System.debug(coList);

        for (hed__Program_Enrollment__c pe : peList) {
            List<hed__Course_Enrollment__c> cePeList = new List<hed__Course_Enrollment__c>();
            for (hed__Course_Offering__c co : coList) {
                if ((pe.hed__Account__r.ParentId == co.hed__Course__r.hed__Account__c) && 
                    (cePeList.size() < coursesPerPe)) {
                    hed__Course_Enrollment__c ce = new hed__Course_Enrollment__c();
                    ce.hed__Contact__c = pe.hed__Contact__c;
                    ce.RecordTypeId = ceRecordTypeId;
                    ce.hed__Status__c = COURSE_CONNECTION_STATUS_CURRENT;
                    ce.hed__Primary__c = true;
                    ce.hed__Account__c = pe.hed__Account__c;
                    ce.hed__Program_Enrollment__c = pe.Id;
                    ce.hed__Course_Offering__c = co.Id;
                    ce.rio_ed__Grade_Setting_Type__c = null;
                    ce.hed__Grade__c = null;
                    ce.rio_ed__Grade_Value__c = null;
                    ce.rio_ed__Grade_Result__c = null;
                    ce.rio_ed__Grade_Points__c = null;
                    ce.hed__Credits_Attempted__c = null;
                    ce.hed__Credits_Earned__c = null;

                    cePeList.add(ce);
                }
            }
            ceAllList.addAll(cePeList);
        }

        if ((dmlInsert == true) && (ceAllList.size() > 0)) {
            insert ceAllList;
            ceAllList = 
                [SELECT Id, hed__Contact__c, RecordTypeId, hed__Status__c, hed__Primary__c, hed__Account__c, 
                        hed__Program_Enrollment__c, hed__Course_Offering__c, rio_ed__Grade_Setting_Type__c, 
                        hed__Grade__c, rio_ed__Grade_Value__c, rio_ed__Grade_Result__c, rio_ed__Grade_Points__c, 
                        hed__Credits_Attempted__c, hed__Credits_Earned__c
                 FROM hed__Course_Enrollment__c
                 ORDER BY Name];
                      
        }
        System.assert(!ceAllList.isEmpty(), 'Create Course Enrollment fail in REDU_TestDataFactory_UTIL');
        return ceAllList;
    }

    /**
    * @description Create Grade Settings records for each Account that has a Record Type of either 'Educational Institution', 'University Department' or  'Academic Program'.
    * @return List<rio_ed__Grade_Setting__c>
    */
    public static List<rio_ed__Grade_Setting__c> createGradeSettings() {

        List<rio_ed__Grade_Setting__c> gradeSettingsList = new List<rio_ed__Grade_Setting__c>();
        List<String> gsScopeNameList = getPickListValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Setting_Scope__c.getDescribe());

        Map<String, Id> gsScopeNameRecordTypeIdMap = new Map<String, Id>();
        Id gsScopeRecordTypeId;
        for (String gsScopeName : gsScopeNameList) {
            gsScopeRecordTypeId = 
                Schema.SObjectType.Account.getRecordTypeInfosByName().get(gsScopeName).getRecordTypeId();
                gsScopeNameRecordTypeIdMap.put(gsScopeName, gsScopeRecordTypeId);
        }
        List<Account> accts = 
            [SELECT Id, Name, RecordType.Name 
             FROM Account 
             WHERE RecordTypeId IN :gsScopeNameRecordTypeIdMap.values()
             ORDER BY Name];

        List<String> gradeValues = getPickListValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Value__c.getDescribe());
        //Updated by CM: 01/02/2019 - Due to way Fail picklist value is chosen, remove RPL from this list
        List<String> gsResultList1 = getPicklistValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Result__c.getDescribe());
        List<String> gsResultList = new List<String>();
        for (String s : gsResultList1){
            //Updated 31/08/2021 by CM - Ignore credit transfer, and Use constant instead of hard coded string
            if (s != COURSECONNECTION_RESULT_RPL && s != COURSECONNECTION_RESULT_CREDITTRANSFER){
                gsResultList.add(s);
            }
        }

        System.debug('gradeValues :: ' + gradeValues);

        final Decimal MAX_GRADE = 100, MAX_GRADE_POINTS = (Decimal)gradeValues.size();
        final Integer GRADE_RANGE = (Integer)(MAX_GRADE.divide(MAX_GRADE_POINTS, 0));
        Integer maxGradeRange, minGradeRange;
        Decimal gradePoints;
        rio_ed__Grade_Setting__c gradeSetting;
        String gradeResult;
        for (Account acct : accts) {
            maxGradeRange = (Integer)MAX_GRADE;
            minGradeRange = maxGradeRange - GRADE_RANGE + 1;
            gradePoints = MAX_GRADE_POINTS;
            for (String gv : gradeValues) {
                System.debug('gv ::' + gv);

                if (!gv.contains('Fail'))
                    gradeResult  = gsResultList[0]; // 'Pass'
                else
                    gradeResult  = gsResultList[gsResultList.size()-1]; // 'Fail'

                gradeSetting = new rio_ed__Grade_Setting__c(
                    rio_ed__Grade_Setting_Group__c = acct.Id,
                    rio_ed__Grade_Setting_Scope__c = acct.RecordType.Name,
                    rio_ed__Grade_Range__c = String.valueOf(minGradeRange) + '-' + String.valueOf(maxGradeRange),
                    rio_ed__Grade_Value__c = gv,
                    rio_ed__Grade_Points__c = gradePoints,
                    rio_ed__Grade_Result__c = gradeResult,
                    Name = acct.Name + '-' + gv.substringBefore('-').trim(),
                    rio_ed__Grade_Description__c = 'Test> Grade Setting Record.'
                );
                // If Grade Value is 'WF - Withdrawn Fail' or 'FA - Fail Absent' set the Grade Range to null:
                if (gradeSetting.rio_ed__Grade_Value__c == 'WF - Withdrawn Fail') {
                    gradeSetting.rio_ed__Grade_Range__c = null;
                } else if (gradeSetting.rio_ed__Grade_Value__c == 'FA - Fail Absent') {
                    gradeSetting.rio_ed__Grade_Range__c = null;
                    gradeSetting.rio_ed__For_Fail_Absent__c = true; //ISS-001006
                }// Else if Grade Value is 'FL - Fail' set the Grade Range to '0-maxGradeRange':
                else if (gradeSetting.rio_ed__Grade_Value__c == 'FL - Fail') {
                    gradeSetting.rio_ed__Grade_Range__c = '0-' + String.valueOf(maxGradeRange);
                    minGradeRange = 0;
                }
                gradeSettingsList.add(gradeSetting);

                System.debug('gradeSetting :: ' + gradeSetting);

                if (minGradeRange < 0)
                    break;
                else {
                    maxGradeRange = minGradeRange - 1;
                    minGradeRange = minGradeRange - GRADE_RANGE;
                    if (minGradeRange < 0)
                        minGradeRange = 0;
                    if (maxGradeRange < minGradeRange)
                        maxGradeRange = minGradeRange + GRADE_RANGE;
                    gradePoints = gradePoints - 1;
                    if (gradePoints < 0)
                        gradePoints = 1;
                }
            }
        }
        if (gradeSettingsList.size() > 0) {
            insert gradeSettingsList;
            gradeSettingsList = 
                        [SELECT Id, Name, rio_ed__Grade_Setting_Group__c, rio_ed__Grade_Setting_Scope__c,
                                rio_ed__Grade_Range__c, rio_ed__Grade_Value__c, rio_ed__Grade_Points__c, 
                                rio_ed__Grade_Result__c, rio_ed__Grade_Description__c
                         FROM rio_ed__Grade_Setting__c];
                                  
        }
        System.assert(!gradeSettingsList.isEmpty(), 'Create Grade Setting fail in REDU_TestDataFactory_UTIL');
        return gradeSettingsList;
    }

    /**
    * @description generate random digit string value
    * @return String random Int String Value Between 0 to 1000
    */
    public static String getRandomIntStrValBetween0to1000(){
        return String.valueOf((Integer)(Math.random()*1000));
    }

    /**
     * @description Get list of picklist value from Schema.DescribeFieldResult.
     * @param fieldResult Schema.DescribeFieldResult
     * @return List<String>
     */
    public static List<String> getPickListValues(Schema.DescribeFieldResult fieldResult) {

        // Schema.DescribeFieldResult fieldResult = ObjectApiName.FieldApiName.getDescribe();

        List<String> pickListValuesList = new List<String>();
        List<Schema.PicklistEntry> pleList = fieldResult.getPicklistValues();

        for(Schema.PicklistEntry ple : pleList) {

            pickListValuesList.add(ple.getLabel());
        }

        return pickListValuesList;
    }

}