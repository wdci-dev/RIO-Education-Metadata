/**
 * @description       : Test coverage for redu_TransferCreditList_LCTRL
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : RIO Education
 * @last modified on  : 29-07-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
@isTest
public with sharing class redu_TransferCreditList_LCTRL_TEST {

    @TestSetup
    static void setupData(){
        
        //Using different value for Term, as there is currently a validation rule on ProgramPlan.Fee
        String FEE_UNIT_TERM = 'Program';

        //Create Trigger Handlers
        //Something's going wrong here - only the first set of trigger handlers runs. RIO Ed first and Crandall second, RIO Ed runs. Crandall first and RIO Ed second, NYAA runs.
        //Create RIO Ed trigger handlers
        //REDU_TC_TestDataFactory_UTIL.createRIOEdTriggerHandlers();
        //Create Crandall Trigger handlers
        //redu_TriggerHandler_MANAGER.initCustomTriggerHandler();
        //How about we create them both?
        REDU_TC_TestDataFactory_UTIL.createRIOEdTriggerHandlersAndMCHPTriggerHandlers();

        //Create default settings
        rio_ed__RIO_Education_Settings__c customSettings = REDU_TC_TestDataFactory_UTIL.createDefaultSettings();

        //Create Program
        List<Account> educationalInstitutions = REDU_TC_TestDataFactory_UTIL.createEducationalInstitutions(1);
        insert educationalInstitutions;
        List<Account> universityDepts = REDU_TC_TestDataFactory_UTIL.createUniversityDepartments(educationalInstitutions, 1);
        insert universityDepts;
        List<Account> programList = REDU_TC_TestDataFactory_UTIL.createAcademicPrograms(universityDepts, 1);
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
        List<hed__Term__c> termList = REDU_TC_TestDataFactory_UTIL.createTerms(educationalInstitutions[0].Id, 2);
        insert termList;

        Decimal TERM_FEE_AMOUNT = 1000;
        Decimal ITEM_FEE_AMOUNT = 1500;
        Decimal MAN_FEE_AMOUNT = 300;

        //Create product payable by credit card
        Product2 manFeeProduct = new Product2();
        manFeeProduct.Name = 'APP Fee';
        manFeeProduct.IsActive = true;
        insert manFeeProduct;

        //Create Fees
        List<rio_ed__Fee__c> feeList = new List<rio_ed__Fee__c>();
        rio_ed__Fee__c termFee = new rio_ed__Fee__c();
        termFee.Name = 'termFee';
        termFee.rio_ed__Fee_Type__c = 'Tuition';
        termFee.rio_ed__Fee_Unit__c = FEE_UNIT_TERM;
        termFee.rio_ed__Description__c = 'Term Fee Description';
        rio_ed__Fee__c itemFee = new rio_ed__Fee__c();
        itemFee.Name = 'itemFee';
        itemFee.rio_ed__Fee_Type__c = 'Other';
        itemFee.rio_ed__Fee_Unit__c = 'Item';
        itemFee.rio_ed__Description__c = 'Item Fee Description';
        rio_ed__Fee__c manFee = new rio_ed__Fee__c();
        manFee.Name = 'manFee';
        manFee.rio_ed__Fee_Type__c = 'Other';
        manFee.rio_ed__Fee_Unit__c = FEE_UNIT_TERM;
        manFee.rio_ed__Description__c = 'Mandatory Fee Description';
        feeList.add(termFee);
        feeList.add(itemFee);
        feeList.add(manFee);
        insert feeList;


        //Create Fee Schedules
        List<rio_ed__Fee_Schedule__c> feeScheduleList = new List<rio_ed__Fee_Schedule__c>();
        for (rio_ed__Fee__c fee : feeList){
            rio_ed__Fee_Schedule__c fs = new rio_ed__Fee_Schedule__c();
            fs.Name = fee.Name + ' Fs';
            fs.rio_ed__Fee__c = fee.Id;
            fs.rio_ed__Fee_Start_Date__c = termList[0].hed__Start_Date__c;
            fs.rio_ed__Fee_End_Date__c = termList[1].hed__End_Date__c;
            fs.rio_ed__Current__c = true;
            if (fee.Name == 'termFee'){
                fs.rio_ed__Fee_Amount_Domestic__c = TERM_FEE_AMOUNT;
            } else if (fee.Name == 'itemFee'){
                fs.rio_ed__Fee_Amount_Domestic__c = ITEM_FEE_AMOUNT;
            } else if (fee.Name == 'manFee'){
                fs.rio_ed__Fee_Amount_Domestic__c = MAN_FEE_AMOUNT;
            }
            fs.rio_ed__Fee_Amount_International__c = fs.rio_ed__Fee_Amount_Domestic__c + 1;
            feeScheduleList.add(fs);
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
        List<hed__Course__c> courseList = REDU_TC_TestDataFactory_UTIL.createCourses(new List<Id>{universityDepts[0].Id}, 2);
        insert courseList;

        //Create Course Offerings
        List<hed__Course_Offering__c> courseOfferingList = REDU_TC_TestDataFactory_UTIL.createCourseOfferings(courseList, termList[0]);
        List<hed__Course_Offering__c> courseOfferingList2 = REDU_TC_TestDataFactory_UTIL.createCourseOfferings(courseList, termList[1]);
        courseOfferingList.addAll(courseOfferingList2);
        insert courseOfferingList;

        //Create Program Plan(s)
        List<hed__Program_Plan__c> ppList = new List<hed__Program_Plan__c>();
        List<hed__Program_Plan__c> ppDrawingList = REDU_TC_TestDataFactory_UTIL.createProgramPlans(programList, termList[0]);
        List<hed__Program_Plan__c> ppPaintingList = REDU_TC_TestDataFactory_UTIL.createProgramPlans(programList, termList[0]);
        ppList.add(ppDrawingList[0]);
        ppList.add(ppPaintingList[0]);
        for (hed__Program_Plan__c pp : ppList){
            pp.rio_ed__Fee__c = feeList[0].Id;
            pp.hed__Is_Primary__c = false;
            pp.rio_ed__Fee__c = termFee.Id; //Main fee for courses
            pp.rio_ed__Fee_Method__c = 'Term';
            pp.rio_ed__Application_Fee__c = manFee.Id; //Additional mandatory fees
        }
        insert ppList;

        //Create Plan Requrements
        List<hed__Plan_Requirement__c> groupPlanReqs = REDU_TC_TestDataFactory_UTIL.createParentPlanRequirements(ppList, 1, 'Required', 10);
        insert groupPlanReqs;
        List<hed__Plan_Requirement__c> coursePlanReqs = new List<hed__Plan_Requirement__c>();
        coursePlanReqs.addAll(REDU_TC_TestDataFactory_UTIL.createPlanRequirements(groupPlanReqs[0], courseList, 'Required', 10));
        coursePlanReqs.addAll(REDU_TC_TestDataFactory_UTIL.createPlanRequirements(groupPlanReqs[1], courseList, 'Required', 10));
        insert coursePlanReqs;

        //Create Program Pathways
        List<rio_ed__Program_Pathway__c> progPathwayList = REDU_TC_TestDataFactory_UTIL.createProgramPathways('Pathway', 2, ppList, 'Full-time');
        insert progPathwayList;

        //Creat Pathway Units
        List<rio_ed__Pathway_Unit__c> pathwayUnitList = new List<rio_ed__Pathway_Unit__c>();
        pathwayUnitList.addAll(REDU_TC_TestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[0].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, null));
        pathwayUnitList.addAll(REDU_TC_TestDataFactory_UTIL.createPathwayUnits(null, 1, coursePlanReqs[1].Id, new List<rio_ed__Program_Pathway__c>{progPathwayList[1]}, null));
        pathwayUnitList.addAll(REDU_TC_TestDataFactory_UTIL.createPathwayUnits(1, 2, null, new List<rio_ed__Program_Pathway__c>{progPathwayList[0]}, groupPlanReqs[0].Id));
        pathwayUnitList.addAll(REDU_TC_TestDataFactory_UTIL.createPathwayUnits(1, 2, null, new List<rio_ed__Program_Pathway__c>{progPathwayList[1]}, groupPlanReqs[1].Id));
        insert pathwayUnitList;

        //Create Student
        List<Contact> contactList = REDU_TC_TestDataFactory_UTIL.createContacts(3);
        insert contactList;

        //Create Program Application
        List<rio_ed__Program_Application__c> programApplications = REDU_TC_TestDataFactory_UTIL.createProgramApplications(contactList, programList, 'Submitted');
        for (rio_ed__Program_Application__c pa : programApplications){
            pa.rio_ed__Fee_Method__c = 'Term';
            pa.rio_ed__Pay_Upfront__c = 'No';
        }
        insert programApplications;

    }

    @IsTest
    static void testTransferCreditListTR(){
        
        rio_ed__Program_Application__c pa = [SELECT Id, rio_ed__Program__c, rio_ed__Program_Plan__c FROM rio_ed__Program_Application__c LIMIT 1];

        redu_TransferCreditList_LCTRL.InputParams obj = new redu_TransferCreditList_LCTRL.InputParams();
        obj.context = redu_TransferCreditList_LCTRL.CONTEXT_TRANSFERCREDIT;
        obj.primaryRecordId = pa.Id;
        obj.fieldListString = 'Id,rio_ed__Transfer_Course__c,rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c, rio_ed__Credits_Attempted__c, rio_ed__Credits_Earned__c, rio_ed__Grade__c, rio_ed__Completed_Date__c';
        String inputParamsJSON = JSON.serialize(obj);
        
        Test.startTest();
        
        redu_TransferCreditList_LCTRL.UIWrapper uiw = redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON);

        System.assertEquals(false, uiw.hasError,'redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON) Error: '+uiw.message);

        Test.stopTest();       
    }

    @IsTest
    static void testTransferCreditListTR_Approval(){
        
        rio_ed__Program_Application__c pa = [SELECT Id, rio_ed__Program__c, rio_ed__Program_Plan__c FROM rio_ed__Program_Application__c LIMIT 1];

        redu_TransferCreditList_LCTRL.InputParams obj = new redu_TransferCreditList_LCTRL.InputParams();
        obj.context = redu_TransferCreditList_LCTRL.CONTEXT_TRANSFERCREDIT_APPROVAL;
        obj.fieldListString = 'Id,rio_ed__Transfer_Course__c,rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c, rio_ed__Credits_Attempted__c, rio_ed__Credits_Earned__c, rio_ed__Grade__c, rio_ed__Completed_Date__c';
        String inputParamsJSON = JSON.serialize(obj);
        
        Test.startTest();
        
        redu_TransferCreditList_LCTRL.UIWrapper uiw = redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON);

        System.assertEquals(false, uiw.hasError,'redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON) Error: '+uiw.message);

        Test.stopTest();       
    }
    
    @IsTest
    static void testTransferCreditCreateDeleteTR(){
        
        rio_ed__Program_Application__c pa = [SELECT Id, rio_ed__Program__c, rio_ed__Applicant__c, rio_ed__Program_Plan__c FROM rio_ed__Program_Application__c LIMIT 1];
        
        Test.startTest();
        
        // Test Creation

        redu_TransferCreditList_LCTRL.TCWrapper tcw = new redu_TransferCreditList_LCTRL.TCWrapper(new rio_ed__Transfer_Credit__c(
        rio_ed__Program_Application__c = pa.Id,
        rio_ed__Contact__c = pa.rio_ed__Applicant__c,
        rio_ed__Credits_Earned__c = 4,
        rio_ed__Credits_Attempted__c = 4 ,
        rio_ed__Grade__c = 'A+' ), -1);
        
        tcw.primaryRecordObjectType = 'rio_ed__Program_Application__c';
        tcw.tc.rio_ed__Transfer_Course__r = new rio_ed__Agreement_Course__c();
        tcw.tc.rio_ed__Transfer_Course__c = tcw.tc.rio_ed__Transfer_Course__r.Id = null;
        tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c = 'New Course';
        tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c = 'New Course Id';
        tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r = new rio_ed__Agreement__c();
        tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id = tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c = null;
        tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name = 'New Institute';

        redu_TransferCreditList_LCTRL.TCWrapper tcwCreated = redu_TransferCreditList_LCTRL.saveTCW(JSON.serialize(tcw));

        System.assertEquals(false, tcw.hasError,'redu_TransferCreditList_LCTRL.saveTCW Error: '+tcw.message);

        redu_TransferCreditList_LCTRL.InputParams obj = new redu_TransferCreditList_LCTRL.InputParams();
        obj.primaryRecordId = pa.Id;
        obj.fieldListString = 'rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c, rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c, rio_ed__Credits_Attempted__c, rio_ed__Credits_Earned__c, rio_ed__Grade__c, rio_ed__Completed_Date__c';
        String inputParamsJSON = JSON.serialize(obj);

        redu_TransferCreditList_LCTRL.UIWrapper uiw = redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON);

        System.assertEquals(false, uiw.hasError,'redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON) Error: '+uiw.message);
        System.assertEquals(1, uiw.listTCW.size(),'There must be 1 created Transfer credit record.');


        // Test Update
        tcwCreated.index = 0;
        tcwCreated.tc.rio_ed__Credits_Earned__c = 3;
        redu_TransferCreditList_LCTRL.TCWrapper tcwUpdated = redu_TransferCreditList_LCTRL.saveTCW(JSON.serialize(tcwCreated));
        System.assertEquals(false, tcw.hasError,'Update: redu_TransferCreditList_LCTRL.saveTCW Error: '+tcw.message);

        uiw = redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON);
        System.assertEquals(false, uiw.hasError,'Update: redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON) Error: '+uiw.message);
        System.assertEquals(1, uiw.listTCW.size(),'There must be 1 updated Transfer credit record.');
        System.assertEquals(tcwCreated.tc.rio_ed__Credits_Earned__c, uiw.listTCW[0].tc.rio_ed__Credits_Earned__c,'Transfer credit record has not been updated');

        // Test Deletion
        redu_TransferCreditList_LCTRL.TCWrapper tcwCDeleted = redu_TransferCreditList_LCTRL.deleteTCW(JSON.serialize(tcwUpdated));
        
        System.assertEquals(false, tcw.hasError,'redu_TransferCreditList_LCTRL.deleteTCW Error: '+tcw.message);
        
        uiw = redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON);

        System.assertEquals(false, uiw.hasError,'redu_TransferCreditList_LCTRL.getTCWList(inputParamsJSON) Error: '+uiw.message);
        System.assertEquals(0, uiw.listTCW.size(),'There must be 0 saved Transfer credit record after deletion.');

        Test.stopTest();       
    }
}