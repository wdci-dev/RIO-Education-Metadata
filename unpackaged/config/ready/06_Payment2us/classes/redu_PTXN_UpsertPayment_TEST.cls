/**
 * @author 		    WDCi (LKoh)
 * @date 		    Jan 2022
 * @group 		    Test
 * @description	    Test class for redu_PTXN_UpsertPayment_TDTM
 * 
 */

@IsTest
public with sharing class redu_PTXN_UpsertPayment_TEST {
    
    @TestSetup
    static void setupData() {        

        redu_PaymentTestDataFactory_UTIL.setupPayment2UsData();

        rio_ed__RIO_Education_Settings__c defaultSetting = redu_PaymentTestDataFactory_UTIL.createDefaultSettings();
        redu_PaymentTestDataFactory_UTIL.createDefaultUser(defaultSetting);
        insert defaultSetting;

        redu_PaymentCustomSetting_UTIL.getPaymentRecordTypeId();
        redu_PaymentCustomSetting_UTIL.getPaymentTrxDefaultStatus();

        redu_PaymentTriggerHandler_MANAGER.initCustomTriggerHandler();

        //Create Trigger Handler
        // first retrieve default EDA trigger handlers
        List<hed.TDTM_Global_API.TdtmToken> tokens = hed.TDTM_Global_API.getTdtmConfig();

        //Create RIO Ed trigger handlers using global method        
        rio_ed.REDU_PostInstallation rpi = new rio_ed.REDU_PostInstallation();
        rpi.createAllTriggerHandlers();                

        // Pass trigger handler config to set method for this test run
        hed.TDTM_Global_API.setTdtmConfig(tokens);        
    }

    private static testMethod void runTest() {                

        //Create Educational Instituition
        List<Account> educationalInstitutions = redu_PaymentTestDataFactory_UTIL.createEducationalInstitutions(1);
        insert educationalInstitutions;

        //Create University Department
        List<Account> uniDepts = redu_PaymentTestDataFactory_UTIL.createUniversityDepartments(educationalInstitutions, 1);
        insert uniDepts;

        //Create Program
        List<Account> programList = redu_PaymentTestDataFactory_UTIL.createAcademicPrograms(uniDepts, 1);
        insert programList;


        //Create Term
        List<hed__Term__c> termList = redu_PaymentTestDataFactory_UTIL.createTerms(educationalInstitutions[0].Id, 1);
        termList[0].rio_ed__Census_Date__c = system.today();
        termList[0].hed__Type__c = 'Study Period';
        insert termList;

        //Create Fees
        Decimal TUITION_FEE_AMOUNT = 300;

        //Create Fees
        List<rio_ed__Fee__c> feeList = new List<rio_ed__Fee__c>();
        rio_ed__Fee__c tuitionFee = new rio_ed__Fee__c();
        tuitionFee.Name = 'tuitionFee';
        tuitionFee.rio_ed__Fee_Type__c = 'Tuition';
        tuitionFee.rio_ed__Fee_Unit__c = 'Course';
        tuitionFee.rio_ed__Description__c = 'Tuition Fee Description';
        feeList.add(tuitionFee);
        insert feeList;

        //Create Fee Schedules
        List<rio_ed__Fee_Schedule__c> feeScheduleList = new List<rio_ed__Fee_Schedule__c>();
        for (rio_ed__Fee__c fee : feeList){
            if (fee.rio_ed__Fee_Type__c != 'Fee Group'){
                rio_ed__Fee_Schedule__c fs = new rio_ed__Fee_Schedule__c();
                fs.Name = fee.Name + ' Fs';
                fs.rio_ed__Fee__c = fee.Id;
                fs.rio_ed__Fee_Start_Date__c = termList[0].hed__Start_Date__c;
                fs.rio_ed__Fee_End_Date__c = termList[0].hed__End_Date__c;
                fs.rio_ed__Current__c = true;
                if (fee.Name.contains('tuitionFee')){
                    fs.rio_ed__Fee_Amount_Domestic__c = TUITION_FEE_AMOUNT;
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
        List<hed__Course__c> courseList = redu_PaymentTestDataFactory_UTIL.createCourses(new List<Id>{uniDepts[0].Id}, 2);
        for (hed__Course__c c : courseList){
            c.rio_ed__Fee__c = tuitionFee.Id;
        }
        insert courseList;

        //Create Course Offerings
        List<hed__Course_Offering__c> courseOfferingList = redu_PaymentTestDataFactory_UTIL.createCourseOfferings(courseList, termList[0]);
        insert courseOfferingList;

        //Create Program Plan(s)
        List<hed__Program_Plan__c> ppList = redu_PaymentTestDataFactory_UTIL.createProgramPlans(programList, termList[0]);        
        insert ppList;

        //Create Plan Requrements
        List<hed__Plan_Requirement__c> groupPlanReqs = redu_PaymentTestDataFactory_UTIL.createParentPlanRequirements(ppList, 1, 'Required', 10);
        insert groupPlanReqs;
        List<hed__Plan_Requirement__c> coursePlanReqs = redu_PaymentTestDataFactory_UTIL.createPlanRequirements(groupPlanReqs[0], courseList, 'Required', 10);
        insert coursePlanReqs;

        //Create Program Pathway
        List<rio_ed__Program_Pathway__c> progPathwayList = redu_PaymentTestDataFactory_UTIL.createProgramPathways('Pathway', 1, ppList, 'Full-time');
        insert progPathwayList;

        //Create Pathway Units
        List<rio_ed__Pathway_Unit__c> pathwayUnitList = new List<rio_ed__Pathway_Unit__c>();
        pathwayUnitList.addAll(redu_PaymentTestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[0].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, null));
        pathwayUnitList.addAll(redu_PaymentTestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[1].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, null));
        insert pathwayUnitList;
        
        //Create Student
        //Create Student
        Contact newStudent = new Contact();
        newStudent.FirstName = 'redu_PayByCreditCard_TEST';
        newStudent.LastName = 'redu_PayByCreditCard_TEST';
        newStudent.Email = 'redu_PayByCreditCard_TEST@fakeemail.com';
        newStudent.hed__Preferred_Email__c = redu_PaymentConstant_UTIL.PREFERREDEMAIL_ALTERNATE;
        newStudent.hed__AlternateEmail__c = newStudent.Email;
        newStudent.rio_ed__Student_ID__c = '202112346';
        insert newStudent;

        Test.startTest();

        //Create Program Enrollment
        hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c();
        pe.hed__Contact__c = newStudent.Id;
        pe.hed__Program_Plan__c = ppList[0].Id;
        pe.rio_ed__Program_Pathway__c = progPathwayList[0].Id;
        pe.rio_ed__Fee_Method__c = 'Term';
        pe.rio_ed__Pay_Upfront__c = 'No';
        insert pe;

        //Make sure Course Connections were created
        List<hed__Course_Enrollment__c> ccList = [
            SELECT Id, rio_ed__Target_Course__c
            FROM hed__Course_Enrollment__c
            WHERE hed__Program_Enrollment__c = :pe.Id
        ];
        System.assertEquals(courseOfferingList.size(), ccList.size(), 'Incorrect number of Course Connections created');

        //Enroll in courses
            //Creating student fees
        for (hed__Course_Enrollment__c cc : ccList){
            for (hed__Course_Offering__c co : courseOfferingList){
                if (cc.rio_ed__Target_Course__c == co.hed__Course__c){
                    cc.hed__Course_Offering__c = co.Id;
                    cc.rio_ed__Enrollment_Status__c = 'Enrolled';
                    break;
                }
            }
        }

        update ccList;
        
        Set<Id> generatedSFIdSet = new Set<Id>();
        for (rio_ed__Student_Fee__c sf : [SELECT Id FROM rio_ed__Student_Fee__c]) {
            generatedSFIdSet.add(sf.Id);
        }
            
        Map<Id, rio_ed__Student_Fee__c> studentFeeMapCheck = redu_Payment_UTIL.getStudentFeesInfo(generatedSFIdSet);

        System.debug('studentFeeMapCheck:');
        System.debug(studentFeeMapCheck);

        System.assert(!studentFeeMapCheck.isEmpty(), 'No Student Fee generated for redu_PTXN_UpsertPayment_TDTM testing');

        rio_ed__Student_Fee__c sfeeToPay = studentFeeMapCheck.values()[0];
        System.debug('sfeeToPay:');
        System.debug(sfeeToPay);

        redu_PrePaymentInfo ppInfo = new redu_PrePaymentInfo(sfeeToPay);

        // Generate Payment Transaction        
        AAkPay__Payment_Txn__c newTrx = redu_Payment_UTIL.initPaymentTrx(ppInfo, sfeeToPay.rio_ed__Outstanding_Amount__c);
        newTrx.OwnerId = UserInfo.getUserId();
        insert newTrx;

        // Simulating a paid payment transaction
        update newTrx;

        // Once the Payment Transaction is generated, check if the automatic Payment is generated
        List<rio_ed__Fee_Payment__c> checkPayments = 
            [SELECT Id, rio_ed__Student_Fee__c, rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c, rio_ed__Payment_Method__c 
                FROM rio_ed__Fee_Payment__c];

        System.debug('checkPayments:');
        System.debug(checkPayments);

        System.assert(!checkPayments.isEmpty(), 'No Fee Payment generated');
        System.assert(checkPayments[0].rio_ed__Student_Fee__c == sfeeToPay.Id, 'Fee Payment Student Fee linkage missing');        

        Test.stopTest();        
    }
}