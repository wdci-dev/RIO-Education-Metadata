/**
 * @author 		    WDCi (VTan)
 * @date 		    Jan 2025
 * @group 		    Test
 * @description	    Test class for redu_PTXN_UpdateOrder_TDTM
 * 
 */

 @IsTest
 public with sharing class redu_PTXN_UpdateOrder_TEST {

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
        Contact newStudent = new Contact();
        newStudent.FirstName = 'redu_PayByCreditCard_TEST';
        newStudent.LastName = 'redu_PayByCreditCard_TEST';
        newStudent.Email = 'redu_PayByCreditCard_TEST@fakeemail.com';
        newStudent.hed__Preferred_Email__c = redu_PaymentConstant_UTIL.PREFERREDEMAIL_ALTERNATE;
        newStudent.hed__AlternateEmail__c = newStudent.Email;
        newStudent.rio_ed__Student_ID__c = '202112346';
        insert newStudent;
    }

    private static testMethod void runTest() {                

        Contact studentCon = [SELECT Id, AccountId FROM Contact LIMIT 1];

        rio_ed__Order__c ceOrder = new rio_ed__Order__c();
        ceOrder.rio_ed__Order_Date__c = Date.today();
        ceOrder.rio_ed__Account__c = studentCon.AccountId;
        ceOrder.rio_ed__Contact__c = studentCon.Id;
        ceOrder.rio_ed__Status__c = redu_PaymentConstant_UTIL.ORDER_STATUS_DRAFT;
        ceOrder.rio_ed__Description__c = 'CE Registration';
        insert ceOrder;

        rio_ed__Order_Line__c ceOrderLine = new rio_ed__Order_Line__c();
        ceOrderLine.rio_ed__Order__c = ceOrder.Id;
        ceOrderLine.rio_ed__Quantity__c = 1;
        ceOrderLine.rio_ed__Unit_Price__c = 1000;
        ceOrderLine.rio_ed__Description__c = 'BUS101';
        insert ceOrderLine;

        Test.startTest();

        Map<Id, rio_ed__Order__c> orderMapCheck = redu_Payment_UTIL.getOrdersInfo(new Set<Id>{ceOrder.Id});

        System.assert(!orderMapCheck.isEmpty(), 'No Order generated for redu_PTXN_UpdateOrder_TDTM testing');

        redu_PrePaymentInfo ppInfo = new redu_PrePaymentInfo(orderMapCheck.get(ceOrder.Id));

        // Generate Payment Transaction        
        AAkPay__Payment_Txn__c newTrx = redu_Payment_UTIL.initPaymentTrx(ppInfo, 1000);
        newTrx.OwnerId = UserInfo.getUserId();
        insert newTrx;

        // Simulating a paid payment transaction
        update newTrx;

        // Once the Payment Transaction is generated, check if the automatic Payment is generated
        List<rio_ed__Order__c> checkOrder = 
            [SELECT Id, rio_ed__Status__c 
                FROM rio_ed__Order__c WHERE Id =: ceOrder.Id];

        System.assert(!checkOrder.isEmpty(), 'No Order is generated');
        System.assert(checkOrder[0].rio_ed__Status__c == redu_PaymentConstant_UTIL.ORDER_STATUS_PAID, 'Order should be updated to Paid');        

        Test.stopTest();        
    }
}