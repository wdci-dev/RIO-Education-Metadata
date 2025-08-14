/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to get Course Enrollment Fee
* @change-history
*/
@isTest
public with sharing class REDU_AI_TestDataFactory_UTIL {

    static final String REQUIREMENTTYPE_PREREQUISITE = 'Pre-Requisite';
    static final String REQUIREMENTTYPE_COREQUISITE = 'Co-Requisite';
    static final String REQUIREMENTTYPE_CREDITPOINTS = 'Credit Points';

    /**
     * @description Creates default RIO Education custom settings
     * @return RIO_Education_Settings
     */
    public static rio_ed__RIO_Education_Settings__c createDefaultSettings() {

        // Create the 'REDU_Settings' Custom Settings:
        rio_ed__RIO_Education_Settings__c customSettings =
        new rio_ed__RIO_Education_Settings__c(
            rio_ed__Auto_Program_Enrollment__c = true,
            rio_ed__Auto_Student_Community_Registration__c = false,
            rio_ed__Student_User_Profile__c = 'REDU - Student',
            rio_ed__Faculty_User_Profile__c = 'REDU - Teaching/Advising',
            rio_ed__Payment_URL__c = 'https://www.wdcigroup.net/payment',
            rio_ed__Pathway_Prefix__c = 'myTerm',
            rio_ed__Community_Username_Suffix__c = '@rioedu.net',
            rio_ed__Set_Program_Fee_Description__c = 'Full tuition fee for {!Program.Name}',
            rio_ed__Auto_Lead_Conversion__c = true,
            rio_ed__Lead_Converted_Status__c = 'Closed - Converted',
            rio_ed__Location_Resource_Calendar_Field__c = 'Name',
            rio_ed__Late_Payment_Repeat_Setting__c = 'Once',
            rio_ed__Late_Payment_Batch_Size__c = 200
        );

        // Create Public groups for Students and Faculty  (This Group creation is added to avoid possible Public Group locking errors while tests run in parallel)
        List<Group> listGr = new List<Group>();
        String randomStr = getRandomIntStrValBetween0to1000();
        Group stGr = new Group(Name='REDU_Student_'+randomStr, DeveloperName = 'REDU_Student_'+randomStr);
        listGr.add(stGr);

        Group faGr = new Group(Name='REDU_Faculty_'+randomStr, DeveloperName = 'REDU_Faculty_'+randomStr);
        listGr.add(faGr);
        insert listGr;

        customSettings.rio_ed__Faculty_Group__c = faGr.Name;
        customSettings.rio_ed__Student_Group__c = stGr.Name;

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
        // Create custom settings record

        insert customSettings;

        hed__Hierarchy_Settings__c hsConfig = new hed__Hierarchy_Settings__c(hed__Student_RecType__c = Schema.SObjectType.hed__Course_Enrollment__c.getRecordtypeInfosByDeveloperName().get('Student').getRecordTypeId());
        insert hsConfig;

        return customSettings;
    }

    /**
    * @description generate random digit string value
    * @return String random Int String Value Between 0 to 1000
    */
    public static String getRandomIntStrValBetween0to1000(){
        return String.valueOf((Integer)(Math.random()*1000));
    }


    public static hed__Hierarchy_Settings__c createEdaSettings() {
        hed__Hierarchy_Settings__c setting = new hed__Hierarchy_Settings__c();
        setting.SetupOwnerId = UserInfo.getOrganizationId();

        return setting;
    }

    /**
     * @description Creates default RIO Education trigger handlers and MCHP trigger handlers at the same time
     *              Should return here and disable any manually deactivated trigger handlers
     * @return hed__Trigger_Handler__c
     */
    // public static void createRIOEdTriggerHandlersAndTCTriggerHandlers(){
    public static void createRIOEdTriggerHandlers() {

        List<hed__Trigger_Handler__c> tHandlers = new List<hed__Trigger_Handler__c>();
        //RIO Ed
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate; AfterInsert; AfterUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'Course_Offering__c', 'AfterUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'Program_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'rio_ed__Grade_Setting__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'rio_ed__PE_Group_Status__c', 'BeforeInsert; BeforeUpdate; AfterUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseOfferingAction', 'Course_Offering__c', 'AfterInsert; AfterUpdate; AfterDelete', 'rio_ed.PL_CourseOffering_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseOfferingsRollup', 'Course_Enrollment__c', 'AfterInsert; AfterUpdate; AfterDelete', 'rio_ed.CSOF_CourseConnection_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_PEGroupStatus', 'rio_ed__PE_Group_Status__c', 'BeforeInsert; AfterInsert', 'rio_ed.PRSDST_PEGroupStatus_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_PlanAction', 'rio_ed__Plan__c', 'AfterInsert', 'rio_ed.CSOF_Plan_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_PlanLineAction', 'rio_ed__Role__c', 'AfterInsert; AfterUpdate', 'rio_ed.BK_PlanLine_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_ProgramApplication', 'rio_ed__Program_Application__c', 'BeforeInsert; BeforeUpdate; BeforeDelete; AfterUpdate', 'rio_ed.PRAP_ProgramApplication_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ProgramEnrollment', 'Program_Enrollment__c', 'AfterInsert', 'rio_ed.PRGPST_ProgramEnrollment_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_RequirementMet', 'Program_Enrollment__c', 'AfterUpdate', 'rio_ed.PECRS_RequirementMet_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_RP_Booking', 'rio_ed__Allocation__c', 'BeforeInsert; BeforeUpdate; AfterInsert; AfterUpdate', 'rio_ed.RP_AllocationHandler_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_RP_ResourceValidation', 'rio_ed__Resource_Validation__c', 'AfterUpdate', 'rio_ed.RP_ResourceValidationHandler_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_RP_ResourceValidation', 'rio_ed__Resource__c', 'BeforeDelete', 'rio_ed.RP_ResourceHandler_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_SessionConnectionRollup', 'rio_ed__Session_Connection__c', 'AfterInsert; AfterUpdate; AfterDelete', 'rio_ed.SE_SessionConnection_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_SessionPL', 'rio_ed__Session__c', 'BeforeDelete; AfterInsert; AfterUpdate', 'rio_ed.PL_Session_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentCommunity', 'Contact', 'AfterUpdate', 'rio_ed.PRAP_StudentCommunity_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentCommunity', 'rio_ed__Program_Application__c', 'AfterInsert; AfterUpdate', 'rio_ed.PRAP_StudentCommunity_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentCommunity', 'User', 'AfterInsert; AfterUpdate', 'rio_ed.PRAP_StudentCommunity_TDTM', 1, true, true));
        tHandlers.add(createTriggerHAndler('REDU_FacultyCommunity', 'Contact', 'BeforeUpdate; AfterInsert; AfterUpdate', 'rio_ed.CON_FacultyCommunity_TDTM', 3, true, true));
        tHandlers.add(createTriggerHAndler('REDU_FacultyCommunity', 'User', 'AfterInsert; AfterUpdate', 'rio_ed.CON_FacultyCommunity_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_Contact', 'Contact', 'BeforeInsert; BeforeUpdate', 'rio_ed.CON_Contact_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ReleaseGrades', 'Course_Offering__c', 'AfterUpdate', 'rio_ed.CSOF_ReleaseGrades_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_UnenrollmentProcess', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.PECS_UnenrolmentProcess_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_CSENRequirement', 'Course_Enrollment__c', 'AfterInsert', 'rio_ed.CSENRQ_CSENRequirement_TDTM', 5, true, true));
        tHandlers.add(createTriggerHandler('REDU_RequirementMet', 'rio_ed__Course_Connection_Requirement__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.PECRS_RequirementMet_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_RequirementMet', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.PECRS_RequirementMet_TDTM', 6, true, true));
        tHandlers.add(createTriggerHandler('REDU_RequirementLogic', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.PECS_RequirementLogic_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_RequirementLogic', 'rio_ed__Course_Connection_Requirement__c', 'AfterInsert; AfterUpdate; AfterDelete', 'rio_ed.PECS_RequirementLogic_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CompletionEngine', 'rio_ed__PE_Pathway_Status__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.PREN_CompletionEngine_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentFees', 'Program_Enrollment__c', 'AfterInsert', 'rio_ed.SFEE_ProgramEnrollment_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_AssignOwnership', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_AssignOwnership_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_AssignOwnership', 'rio_ed__Program_Application__c', 'AfterUpdate', 'rio_ed.PRAP_AssignOwnership_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DefaultFeeInfo', 'rio_ed__Program_Application__c', 'BeforeInsert', 'rio_ed.PRAP_DefaultFeeInfo_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ProgramFee', 'Program_Enrollment__c', 'BeforeInsert', 'rio_ed.PREN_ProgramFee_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseFee', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_CourseFee_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DefaultFeeInfo', 'Course_Offering__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSOF_DefaultFeeInfo_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PopulateDate', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_PopulateDate_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseDeliveryMethod', 'Course_Offering__c', 'BeforeInsert', 'rio_ed.CSOF_CourseDeliveryMethod_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'rio_ed__PE_Pathway_Status__c', 'AfterUpdate', 'rio_ed.PEP_AutoEnrollment_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_PreviousTerm', 'Term__c', 'AfterInsert; AfterUpdate', 'rio_ed.TERM_PreviousTerm_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'rio_ed__PE_Pathway_Status__c', 'AfterInsert; BeforeUpdate; AfterUpdate', 'rio_ed.CSEN_AutoEnrollment_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.SCEN_AutoEnrollment_TDTM', 8, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentFees', 'rio_ed__Student_Fee__c', 'AfterInsert', 'rio_ed.SFEE_StudentFees_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PrimaryFaculty', 'rio_ed__Session__c', 'BeforeInsert; BeforeUpdate; AfterInsert; AfterUpdate', 'rio_ed.SE_PrimaryFaculty_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_PEDCompletionEngine', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.CSEN_PEDCompletionEngine_TDTM', 9, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreatePEDRs', 'rio_ed__PE_Discipline__c', 'AfterInsert', 'rio_ed.PED_CreatePEDRs_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PEDCompletionEngine', 'rio_ed__PE_Discipline_Requirement__c', 'AfterInsert; AfterUpdate', 'rio_ed.PEDR_PEDCompletionEngine_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_HoursAttended', 'rio_ed__Attendance__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.ATTD_HoursAttended_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdateScheduledHours', 'Course_Offering__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSOF_UpdateScheduledHours_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_PrimaryFaculty', 'Course_Offering__c', 'AfterUpdate;', 'rio_ed.CSOF_SessionPrimaryFaculty_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_DeleteCourseConnection', 'Program_Enrollment__c', 'BeforeDelete', 'rio_ed.PREN_DeleteCourseConnection_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreateEnrollment', 'rio_ed__Program_Application__c', 'AfterInsert; AfterUpdate', 'rio_ed.PRAP_CreateEnrollment_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_DeleteEnrollment', 'rio_ed__Program_Application__c', 'BeforeDelete; AfterUpdate', 'rio_ed.PRAP_DeleteEnrollment_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_ConvertLead', 'rio_ed__Program_Application__c', 'AfterUpdate', 'rio_ed.PRAP_ConvertLead_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_UnenrollmentProcess', 'Program_Enrollment__c', 'AfterUpdate', 'rio_ed.PREN_UnenrollmentProcess_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_RemoveFeeLines', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.CSEN_RemoveFeeLines_TDTM', 10, true, true));
        tHandlers.add(createTriggerHandler('REDU_DeleteSessionConnection', 'Course_Enrollment__c', 'BeforeDelete', 'rio_ed.CSEN_DeleteSessionConnection_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ClearClonedFields', 'rio_ed__Session__c', 'BeforeInsert', 'rio_ed.SE_ClearClonedFields_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ClearClonedFields', 'Course_Offering__c', 'BeforeInsert', 'rio_ed.CSOF_ClearClonedFields_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_PopulateLookupFields', 'Error__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.ERR_PopulateLookupFields_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdatedBooking', 'rio_ed__Allocation__c', 'BeforeUpdate', 'rio_ed.BK_UpdatedBooking_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdatedBooking', 'rio_ed__Attendance__c', 'AfterInsert; AfterUpdate', 'rio_ed.ATTD_UpdatedBooking_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreditTransfer', 'Program_Enrollment__c', 'BeforeInsert', 'rio_ed.CCON_CreditTransfer_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreditTransfer', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate; AfterUpdate', 'rio_ed.CCON_CreditTransfer_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_DualQualification', 'Program_Plan__c', 'AfterInsert; AfterUpdate', 'rio_ed.PECC_DualQualification_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DualQualification', 'Program_Enrollment__c', 'BeforeInsert; AfterInsert; AfterUpdate', 'rio_ed.PECC_DualQualification_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_DualQualification', 'Course_Enrollment__c', 'BeforeInsert', 'rio_ed.PECC_DualQualification_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DateValidation', 'rio_ed__Session_Connection__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.SECN_DateValidation_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ApprovedAttendance', 'rio_ed__Leave_Request__c', 'AfterInsert; AfterUpdate', 'rio_ed.LR_ApprovedAttendance_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdatePlanLineInfo', 'rio_ed__Session__c', 'AfterUpdate', 'rio_ed.SE_UpdatePlanLineInfo_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DoubleBooking', 'rio_ed__Session__c', 'BeforeUpdate', 'rio_ed.SE_DoubleBooking_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_DoubleBooking', 'rio_ed__Attendance__c', 'AfterInsert;AfterUpdate;AfterDelete', 'rio_ed.ATTD_DoubleBooking_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_FacultyAttendance', 'rio_ed__Session_Connection__c', 'AfterInsert; AfterUpdate; AfterDelete', 'rio_ed.SECN_FacultyAttendance_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpsertResource', 'Facility__c', 'AfterInsert; AfterUpdate', 'rio_ed.FAC_UpsertResource_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PopulateFromCO', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_PopulateFromCO_TDTM', 5, true, true));
        tHandlers.add(createTriggerHandler('REDU_FacultySharingForStudent', 'Course_Enrollment__c', 'AfterInsert;AfterUpdate;BeforeDelete', 'rio_ed.CSEN_FacultySharingForStudent_TDTM', 11, true, true));
        tHandlers.add(createTriggerHandler('REDU_AssignOwnershipFaculty', 'Course_Enrollment__c', 'BeforeInsert;BeforeUpdate', 'rio_ed.CSEN_AssignOwnershipFaculty_TDTM', 3, true, true));
        //Only includes up to 2.8

        tHandlers.add(createTriggerHandler('REDU_WaitlistDate', 'Course_Enrollment__c', 'BeforeInsert;BeforeUpdate', 'rio_ed.CSEN_WaitlistDate_TDTM', 6, true, true));
        tHandlers.add(createTriggerHandler('REDU_WaitlistDate', 'rio_ed__Session_Connection__c', 'BeforeInsert;BeforeUpdate', 'rio_ed.SECN_WaitlistDate_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentFees', 'Course_Enrollment__c', 'AfterInsert;AfterUpdate', 'rio_ed.SFEE_CourseConnection_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_LinkFundingAllocation', 'rio_ed__Funding_Allocation__c', 'BeforeInsert;BeforeUpdate', 'rio_ed.FA_LinkFundingAllocation_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_LinkFundingAllocation', 'rio_ed__Program_Application__c', 'AfterUpdate', 'rio_ed.PRAP_LinkFundingAllocation_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdateSessionRules', 'rio_ed__Session_Connection__c', 'AfterInsert;AfterUpdate;AfterDelete;AfterUndelete', 'rio_ed.SECN_UpdateSessionRules_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_AllocationRollup', 'rio_ed__Funding_Allocation__c', 'AfterInsert;AfterUpdate;AfterDelete;AfterUndelete', 'rio_ed.FA_AllocationRollup_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_AppointmentUpdateStatus', 'rio_ed__Contact_Attendance__c', 'AfterInsert;AfterUpdate', 'rio_ed.CA_UpdateStatus_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ReassignPEDRs', 'Course_Enrollment__c', 'BeforeDelete;AfterInsert', 'rio_ed.CSEN_ReassignPEDRs_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_UpdatedPathways', 'Program_Enrollment__c', 'AfterUpdate', 'rio_ed.PREN_UpdatedPathway_TDTM', 5, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreateFixedTermFee', 'rio_ed__PE_Pathway_Status__c', 'AfterInsert;BeforeUpdate', 'rio_ed.PEP_CreateFixedTermFee_TDTM', 5, true, true));
        tHandlers.add(createTriggerHandler('REDU_CreateFixedTermFees', 'Term__c', 'AfterUpdate', 'rio_ed.TERM_CreateFixedTermFees_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_CopyFeeDetails', 'rio_ed__Fee_Schedule__c', 'BeforeUpdate', 'rio_ed.FS_CopyFeeDetails_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ProgramStatusChange', 'Program_Enrollment__c', 'BeforeUpdate', 'rio_ed.PREN_ProgramStatusChange_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_CoursesCompleted', 'Course_Enrollment__c', 'AfterInsert;AfterUpdate;AfterDelete', 'rio_ed.PEP_CoursesCompleted_TDTM', 7, true, true));
        tHandlers.add(createTriggerHandler('REDU_LockedFee', 'rio_ed__Fee_Line__c', 'AfterInsert;BeforeUpdate;BeforeDelete', 'rio_ed.FL_LockedFee_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_LockedFee', 'rio_ed__Student_Fee__c', 'BeforeUpdate;BeforeDelete', 'rio_ed.SFEE_LockedFee_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DisbursedRollup', 'rio_ed__Fee_Line__c', 'AfterInsert;AfterUpdate;AfterDelete', 'rio_ed.FL_DisbursedRollup_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_DeleteBookings', 'rio_ed__Session_Time__c', 'BeforeDelete', 'rio_ed.ST_DeleteBookings_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_InfoUpdate', 'rio_ed__Session_Time__c', 'BeforeInsert', 'rio_ed.ST_InfoUpdate_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DeleteAttendance', 'rio_ed__Session_Connection__c', 'BeforeDelete', 'rio_ed.SECN_DeleteAttendance_TDTM', 1, true, true));
        //Only includes up to 2.13

        tHandlers.add(createTriggerHandler('REDU_ManualFee', 'rio_ed__Fee_Line__c', 'BeforeInsert;BeforeUpdate', 'rio_ed.FL_ManualFee_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_ApplyFunding', 'rio_ed__Fee_Line__c', 'BeforeInsert;BeforeUpdate;AfterInsert;AfterUpdate;AfterDelete', 'rio_ed.FL_ApplyFunding_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_ApplyFunding', 'rio_ed__Funding_Allocation__c', 'AfterInsert;AfterUpdate;BeforeDelete', 'rio_ed.FA_ApplyFunding_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_VoidFeeLines', 'rio_ed__Student_Fee__c', 'AfterUpdate', 'rio_ed.SFEE_VoidFeeLines_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_AssignOwnership', 'Program_Enrollment__c', 'BeforeInsert;AfterInsert', 'rio_ed.PREN_AssignOwnership_TDTM', 1, true, true));
        //Only inlcudes up to 3.0

        insert tHandlers;
    }

    /**
    * @description TDTM Trigger Handler set up for RIO Ed
    * @param nameStr - Name String
    * @param objectName - Object Name
    * @param triggerAction - Trigger Action
    * @param className - Class Name
    * @param loadOrder - Load Order
    * @param userManaged - User Managed
    * @param isActive - Is Active
    * @return hed__Trigger_Handler__c
    */
    private static hed__Trigger_Handler__c createTriggerHandler(String nameStr, String objectName, String triggerAction, String className, Integer loadOrder, Boolean userManaged, Boolean isActive){

        hed__Trigger_Handler__c tHandler = new hed__Trigger_Handler__c();

        tHandler.Name = nameStr;
        tHandler.hed__Active__c = isActive;
        tHandler.hed__Class__c = className;
        tHandler.hed__Load_Order__c = loadOrder;
        tHandler.hed__Object__c= objectName;
        tHandler.hed__Trigger_Action__c = triggerAction;
        tHandler.hed__User_Managed__c = userManaged;
        tHandler.rio_ed__Unique_Key__c = objectName + '_' + className + '_' + String.valueOf(loadOrder);

        return tHandler;
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
            con.hed__AlternateEmail__c = con.Email;
            cons.add(con);
            conCounter++;
        }

        return cons;
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
    * @description Create External educational institutions
    * @param numRecords number of EducationalInstitution to be created
    * @return List<Account>
    */
    public static List<Account> getExternalEducationalInstitutions(Integer numRecords) {

        Id eiRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('External Educational Institution').getRecordTypeId();
        List<Account> eiList = new List<Account>();

        for (Integer i = 0; i < numRecords; i++) {
            Account ei = new Account(Name = 'ExternalEducationalInstitution-'+i,
                                     RecordTypeId = eiRecordTypeId);
            eiList.add(ei);
        }

        return eiList;
    }


    /**
    * @description get Agreements list
    * @param List<Account> extEduInstitutionList
    * @param Integer numberOfAgreements
    * @return List<Account>
    **/
    public static List<rio_ed__Agreement__c> getAgreements(List<Account> extEduInstitutionList){

        List<rio_ed__Agreement__c> listA = new List<rio_ed__Agreement__c>();

        for (Account a : extEduInstitutionList) {
            listA.add(new rio_ed__Agreement__c(Name = a.Name, rio_ed__Partner_External_Educational_Institution__c = a.Id, rio_ed__Status__c='Active'));
        }

        return listA;
    }

    /**
    * @description Create university departments
    * @param educationalInstitutionList list of educational institutions
    * @param universityDepartmentNum number of universityDepartment to be created
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
            courseList = [
                SELECT Id, Name, hed__Account__c, hed__Course_ID__c,
                        hed__Credit_Hours__c, rio_ed__Credit_Points__c
                FROM hed__Course__c
                ORDER BY Name
            ];
        }
        System.assert(!courseList.isEmpty(), 'Create Course fail in redu_TestDataFactory_UTIL');
        return courseList;
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

    /**
    * @description Create Grade Settings records for each Account that has a Record Type of either 'Educational Institution', 'University Department' or  'Academic Program'.
    * @return List<rio_ed__Grade_Setting__c>
    */
    public static List<rio_ed__Grade_Setting__c> createGradeSettings() {

        List<rio_ed__Grade_Setting__c> gradeSettingsList = new List<rio_ed__Grade_Setting__c>();
        List<String> gsScopeNameList =
            getPickListValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Setting_Scope__c.getDescribe());

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

        List<String> gradeValues =
            getPickListValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Value__c.getDescribe());
        //Updated by CM: 01/02/2019 - Due to way Fail picklist value is chosen, remove RPL from this list
        List<String> gsResultList1 =
            getPicklistValues(rio_ed__Grade_Setting__c.rio_ed__Grade_Result__c.getDescribe());
        List<String> gsResultList = new List<String>();
        for (String s : gsResultList1){
            if (s != 'RPL'){
                gsResultList.add(s);
            }
        }

        Decimal maxGrade = 100;
        Decimal maxGradePoints = (Decimal)gradeValues.size();
        Integer gradeRange = (Integer)(maxGrade.divide(maxGradePoints, 0));
        Integer maxGradeRange;
        Integer minGradeRange;
        Decimal gradePoints;
        rio_ed__Grade_Setting__c gradeSetting;
        String gradeResult;

        for (Account acct : accts) {
            maxGradeRange = (Integer)maxGrade;
            minGradeRange = maxGradeRange - gradeRange + 1;
            gradePoints = maxGradePoints;
            for (String gv : gradeValues) {

                if (!gv.contains('Fail')) {
                    gradeResult  = gsResultList[0]; // 'Pass'
                } else {
                    gradeResult  = gsResultList[gsResultList.size()-1]; // 'Fail'
                }

                gradeSetting = new rio_ed__Grade_Setting__c(
                    rio_ed__Grade_Setting_Group__c = acct.Id,
                    rio_ed__Grade_Setting_Scope__c = acct.RecordType.Name,
                    rio_ed__Grade_Range__c = String.valueOf(minGradeRange) + ' - ' + String.valueOf(maxGradeRange),
                    rio_ed__Grade_Value__c = gv,
                    rio_ed__Grade_Points__c = gradePoints,
                    rio_ed__Grade_Result__c = gradeResult,
                    Name = acct.Name + '-' + gv.substringBefore('-').trim(),
                    rio_ed__Grade_Description__c = 'Test> Grade Setting Record.'
                );

                // If Grade Value is 'WF - Withdrawn Fail' or 'FA - Fail Absent' set the Grade Range to null:
                if ((gradeSetting.rio_ed__Grade_Value__c == gradeValues[gradeValues.size()-1]) ||
                    (gradeSetting.rio_ed__Grade_Value__c == gradeValues[gradeValues.size()-2])) {
                    gradeSetting.rio_ed__Grade_Range__c = null;
                }
                // Else if Grade Value is 'FL - Fail' set the Grade Range to '0-maxGradeRange':
                else if (gradeSetting.rio_ed__Grade_Value__c == gradeValues[gradeValues.size()-3]) {
                    gradeSetting.rio_ed__Grade_Range__c = '0 - ' + String.valueOf(maxGradeRange);
                    minGradeRange = 0;
                }
                gradeSettingsList.add(gradeSetting);

                if (minGradeRange <= 0) {
                    break;
                } else {
                    maxGradeRange = minGradeRange - 1;
                    minGradeRange = minGradeRange - gradeRange;
                    if (minGradeRange < 0) {
                        minGradeRange = 0;
                    }
                    if (maxGradeRange < minGradeRange) {
                        maxGradeRange = minGradeRange + gradeRange;
                    }
                    gradePoints = gradePoints - 1;
                    if (gradePoints < 0) {
                        gradePoints = 1;
                    }
                }
            }
        }
        if (gradeSettingsList.size() > 0) {
            insert gradeSettingsList;
            gradeSettingsList = [
                SELECT Id, Name, rio_ed__Grade_Setting_Group__c, rio_ed__Grade_Setting_Scope__c,
                    rio_ed__Grade_Range__c, rio_ed__Grade_Value__c, rio_ed__Grade_Points__c,
                    rio_ed__Grade_Result__c, rio_ed__Grade_Description__c
                FROM rio_ed__Grade_Setting__c
                WHERE rio_ed__Grade_Setting_Unique_Key__c != null
            ];

        }
        System.assert(!gradeSettingsList.isEmpty(), 'Create Grade Setting fail in redu_TestDataFactory_UTIL');
        return gradeSettingsList;
    }

    /**
    * @description Create program course requirement.
    * @param programCourseList list of program course (rio_ed__Program_Course__c) id
    * @param reqTypeStr requirement type for a program course (e.g, Pre-requisite/Co-requisite/Credit Points/Other)
    * @param dmlInsert indicate to create or just initialise the records
    * @return List<SObject>
    */
    public static List<SObject> createProgramCourseRequirement(List<hed__Plan_Requirement__c> programCourseList, String reqTypeStr, Boolean dmlInsert) {

        List<rio_ed__Program_Course_Requirement__c> progCourseReqs = new List<rio_ed__Program_Course_Requirement__c>();
        Integer counter = 1;
        for (hed__Plan_Requirement__c progCourse: programCourseList) {
            rio_ed__Program_Course_Requirement__c progCourseReq = new rio_ed__Program_Course_Requirement__c();
            progCourseReq.Name = progCourse.Name + '_Requirement';
            //progCourseReq.rio_ed__Program_Course__c = progCourse.Id;
            progCourseReq.rio_ed__Course__c = progCourse.hed__Course__c;
            progCourseReq.rio_ed__Plan_Requirement__c = progCourse.Id;
            progCourseReq.rio_ed__Requirement_Type__c = reqTypeStr;
            progCourseReq.rio_ed__Requirement_ID__c = 'ID'+counter;
            progCourseReq.rio_ed__Credit_Points__c = 2;
            counter++;

            progCourseReqs.add(progCourseReq);
        }

        if (dmlInsert) {
            insert progCourseReqs;
        }

        return progCourseReqs;
    }

    /**
    * @description Create a course based program course requirement.
    * @param planReq hed__Plan_Requirement__c to assign this Program Course Requirement to
    * @param reqId Id for this requirement
    * @param course indicate to create or just initialise the records
    * @param isCoReq True - Is a Co-requisite type, False - is a Pre-requisite type
    * @return List<SObject>
    */
    public static rio_ed__Program_Course_Requirement__c createProgramCourseRequirement(hed__Plan_Requirement__c planReq, String reqId, hed__Course__c course, Boolean isCoReq) {

        rio_ed__Program_Course_Requirement__c progCourseReq = new rio_ed__Program_Course_Requirement__c();
        progCourseReq.Name = planReq.Name + '_Requirement ' + reqId;
        progCourseReq.rio_ed__Plan_Requirement__c = planReq.Id;
        progCourseReq.rio_ed__Course__c = course.Id;
        if (isCoReq){
            progCourseReq.rio_ed__Requirement_Type__c = REQUIREMENTTYPE_COREQUISITE;
        } else {
            progCourseReq.rio_ed__Requirement_Type__c = REQUIREMENTTYPE_PREREQUISITE;
        }
        progCourseReq.rio_ed__Requirement_ID__c = reqId;

        return progCourseReq;
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
                                                rio_ed__Start_Month__c = 'April',
                                                rio_ed__Start_Year__c = String.valueOf(System.today().year()));
            papList.add(pap);
            j--;
            if (j == -1) {
                j = programList.size() - 1;
            }
        }

        return papList;
    }

    /**
    * @description      Create program application.
    * @param            applicantIdList - list of Applicant (Contact) id
    * @param            academicProgramIdList - list of academic program id
    * @param            applicationStatus - default program application status
    * @param            dmlInsert - indicate to create or just initialise the records
    * @return           List<SObject>
    */
    public static List<SObject> createProgramApplications(
        List<Id> applicantIdList,
        List<Id> academicProgramIdList,
        String applicationStatus,
        Boolean dmlInsert
    ) {

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
                                                rio_ed__Start_Year__c = String.valueOf(System.today().year() + 1));
            papList.add(pap);
            j--;
            if (j == -1) {
                j = programList.size() - 1;
            }
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
    * @description      Create program application.
    * @param            applicantIdList - list of Applicant (Contact) id
    * @param            academicProgramIdList - list of academic program id
    * @param            studentsPerProgram - maximum number of students per program to be created
    * @param            dmlInsert - indicate to create or just initialise the records
    * @return           List<rio_ed__Program_Application__c>
    */
    public static List<rio_ed__Program_Application__c> createProgramApplications(
        List<Id> applicantIdList,
        List<Id> academicProgramIdList,
        Integer studentsPerProgram,
        String applicationStatus,
        Boolean dmlInsert
    ) {

        List<rio_ed__Program_Application__c> papList = new List<rio_ed__Program_Application__c>();
        List<Account> programList = [SELECT Id FROM Account WHERE Id IN :academicProgramIdList ORDER BY Name];
        Integer appCount = 0;
        Integer programNum = 0;

        for (Integer appNum = 0; appNum < applicantIdList.size(); appNum++) {
            rio_ed__Program_Application__c pap = new rio_ed__Program_Application__c(
                rio_ed__Applicant__c = applicantIdList[appNum],
                rio_ed__Program__c = programList[programNum].Id,
                rio_ed__Study_Mode__c = 'Full-time',
                rio_ed__Status__c = applicationStatus,
                rio_ed__Status_Date__c = null,
                rio_ed__Start_Month__c = 'February',
                rio_ed__Start_Year__c = String.valueOf(System.today().year())
            );
            ++appCount;
            papList.add(pap);

            if (appCount == studentsPerProgram - 1) {
                ++programNum;
                appCount = 0;
            }
            if (programNum == programList.size()) {
                programNum = 0;
            }
        }
        // System.debug('>>> papList '+papList);
        if (dmlInsert == true) {
            insert papList;
            papList = [SELECT Id, Name, rio_ed__Applicant__c, rio_ed__Program__c, rio_ed__Study_Mode__c,
                              rio_ed__Status__c, rio_ed__Status_Date__c, rio_ed__Start_Month__c, rio_ed__Start_Year__c
                       FROM rio_ed__Program_Application__c
                       WHERE rio_ed__Applicant__c IN : applicantIdList
                       ORDER BY Name];

        }

        System.assert(!papList.isEmpty(), 'Program Application creation fail in redu_TestDataFactory_UTIL');
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
                    hed__Program_Enrollment__c pe = new hed__Program_Enrollment__c(
                        rio_ed__ProgramApplication__c = pa.Id,
                        hed__Contact__c = pa.rio_ed__Applicant__c,
                        hed__Account__c = pa.rio_ed__Program__c,
                        hed__Enrollment_Status__c = pa.rio_ed__Study_Mode__c,
                        hed__Eligible_to_Enroll__c = true,
                        hed__Admission_Date__c = system.today(),
                        //rio_ed__Fee_Type__c = pa.rio_ed__Fee_Type__c, //Not retrieved
                        //rio_ed__Fee_Type_Option__c = pa.rio_ed__Fee_Type_Option__c, //Not retrieved
                        rio_ed__Fee_Type__c = 'Self Paid',
                        hed__Program_Plan__c = pp.Id
                    );
                    peList.add(pe);
                }
            }

        }
        return peList;
    }

    /**
    * @description Create terms.
    * @param instituteId educational institution id
    * @param numberOfTerms number of terms to be created
    * @return List<hed__Term__c>
    */
    public static List<hed__Term__c> createTerms(Id instituteId, Integer numberOfTerms){
        List<hed__Term__c> listTerms = new List<hed__Term__c>();
        Integer termLengthInMonths = 11;
        Integer numberOfMonthsInTerm = 12;
        //Date termStartDate = Date.newInstance(Date.today().Year(),01,01);
        Date termStartDate = System.today().addDays(-30);
        Date termEndDate   = termStartDate.addMonths(termLengthInMonths);

        for (Integer i = 0; i < numberofTerms; i++ ) {
            hed__Term__c term = new hed__Term__c(hed__Account__c = instituteId);
            term.Name = termStartDate.year() +' - Term '+i;
            term.hed__Start_Date__c = termStartDate;
            term.hed__End_Date__c = termEndDate;
            listTerms.add(term);

            termStartDate = termStartDate.addMonths(numberOfMonthsInTerm);
            termEndDate = termStartDate.addMonths(termLengthInMonths);
        }

        return listTerms;
    }

    /**
    * @description      Create Program Plans.
    * @param            programList - List of Academic Programs to create plans for
    * @param            termList - List of Terms, mainly just used to determine dates of the Program Plan
    * @return           List<hed__Program_Plan__c> - List of new Program Plans
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
            pp.rio_ed__Support_Pre_Acceptance_Enrollment__c = 'Always';

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
    public static List<hed__Course__c> createCourses(List<Id> departmentsId, Integer coursesPerDept) {

        List<hed__Course__c> courseList = new List<hed__Course__c>();

        Integer courseCounter = 1;
        for (Id dptmentId: departmentsId) {
            for (Integer i = 0; i < coursesPerDept; i++) {
                hed__Course__c course = new hed__Course__c();
                course.hed__Account__c = dptmentId;
                course.Name = 'COURSE_'+ courseCounter;
                course.hed__Course_ID__c = 'CO_'+ courseCounter;
                course.hed__Credit_Hours__c = 7.000;
                course.rio_ed__Credit_Points__c = 7;
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
    * @description Create a credits based program course requirement.
    * @param planReq hed__Plan_Requirement__c to assign this Program Course Requirement to
    * @param reqId Id for this requirement
    * @param credits indicate to create or just initialise the records
    * @return rio_ed__Program_Course_Requirement__c
    */
    public static rio_ed__Program_Course_Requirement__c createProgramCourseRequirement(hed__Plan_Requirement__c planReq, String reqId, Integer credits) {

        rio_ed__Program_Course_Requirement__c progCourseReq = new rio_ed__Program_Course_Requirement__c();
        progCourseReq.Name = planReq.Name + '_Requirement ' + reqId;
        progCourseReq.rio_ed__Plan_Requirement__c = planReq.Id;
        progCourseReq.rio_ed__Requirement_Type__c = REQUIREMENTTYPE_CREDITPOINTS;
        progCourseReq.rio_ed__Requirement_ID__c = reqId;
        progCourseReq.rio_ed__Credit_Points__c = credits;

        return progCourseReq;
    }

    /**
    * @description Create an other based program course requirement.
    * @param planReq hed__Plan_Requirement__c to assign this Program Course Requirement to
    * @param reqId Id for this requirement
    * @param other Description of this other requirement
    * @return rio_ed__Program_Course_Requirement__c
    */
    public static rio_ed__Program_Course_Requirement__c createProgramCourseRequirement(hed__Plan_Requirement__c planReq, String reqId, String other) {

        rio_ed__Program_Course_Requirement__c progCourseReq = new rio_ed__Program_Course_Requirement__c();
        progCourseReq.Name = planReq.Name + '_Requirement ' + reqId;
        progCourseReq.rio_ed__Plan_Requirement__c = planReq.Id;
        progCourseReq.rio_ed__Requirement_Type__c = 'Other';
        progCourseReq.rio_ed__Requirement_ID__c = reqId;
        progCourseReq.rio_ed__Other__c = other;

        return progCourseReq;
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

    /**
    * @description      Create image files
    * @param            numOfFiles - Number of files to create
    * @param            nameString - Name of file(s)
    * @return           List<ContentVersion> - List of the created Files (ContentVersion)
    */
    public static List<ContentVersion> createFiles(Integer numOfFiles, String nameString){

        //Fake image
        Blob body = Blob.valueOf('data:image/gif;base64,R0lGODlhPQBEAPeoAJosM//AwO/AwHVYZ/z595kzAP/s7P+goOXMv8+fhw/v739/f+8PD98fH/8mJl+fn/9ZWb8/PzWlwv///6wWGbImAPgTEMImIN9gUFCEm/gDALULDN8PAD6atYdCTX9gUNKlj8wZAKUsAOzZz+UMAOsJAP/Z2ccMDA8PD/95eX5NWvsJCOVNQPtfX/8zM8+QePLl38MGBr8JCP+zs9myn/8GBqwpAP/GxgwJCPny78lzYLgjAJ8vAP9fX/+MjMUcAN8zM/9wcM8ZGcATEL+QePdZWf/29uc/P9cmJu9MTDImIN+/r7+/vz8/P8VNQGNugV8AAF9fX8swMNgTAFlDOICAgPNSUnNWSMQ5MBAQEJE3QPIGAM9AQMqGcG9vb6MhJsEdGM8vLx8fH98AANIWAMuQeL8fABkTEPPQ0OM5OSYdGFl5jo+Pj/+pqcsTE78wMFNGQLYmID4dGPvd3UBAQJmTkP+8vH9QUK+vr8ZWSHpzcJMmILdwcLOGcHRQUHxwcK9PT9DQ0O/v70w5MLypoG8wKOuwsP/g4P/Q0IcwKEswKMl8aJ9fX2xjdOtGRs/Pz+Dg4GImIP8gIH0sKEAwKKmTiKZ8aB/f39Wsl+LFt8dgUE9PT5x5aHBwcP+AgP+WltdgYMyZfyywz78AAAAAAAD///8AAP9mZv///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAKgALAAAAAA9AEQAAAj/AFEJHEiwoMGDCBMqXMiwocAbBww4nEhxoYkUpzJGrMixogkfGUNqlNixJEIDB0SqHGmyJSojM1bKZOmyop0gM3Oe2liTISKMOoPy7GnwY9CjIYcSRYm0aVKSLmE6nfq05QycVLPuhDrxBlCtYJUqNAq2bNWEBj6ZXRuyxZyDRtqwnXvkhACDV+euTeJm1Ki7A73qNWtFiF+/gA95Gly2CJLDhwEHMOUAAuOpLYDEgBxZ4GRTlC1fDnpkM+fOqD6DDj1aZpITp0dtGCDhr+fVuCu3zlg49ijaokTZTo27uG7Gjn2P+hI8+PDPERoUB318bWbfAJ5sUNFcuGRTYUqV/3ogfXp1rWlMc6awJjiAAd2fm4ogXjz56aypOoIde4OE5u/F9x199dlXnnGiHZWEYbGpsAEA3QXYnHwEFliKAgswgJ8LPeiUXGwedCAKABACCN+EA1pYIIYaFlcDhytd51sGAJbo3onOpajiihlO92KHGaUXGwWjUBChjSPiWJuOO/LYIm4v1tXfE6J4gCSJEZ7YgRYUNrkji9P55sF/ogxw5ZkSqIDaZBV6aSGYq/lGZplndkckZ98xoICbTcIJGQAZcNmdmUc210hs35nCyJ58fgmIKX5RQGOZowxaZwYA+JaoKQwswGijBV4C6SiTUmpphMspJx9unX4KaimjDv9aaXOEBteBqmuuxgEHoLX6Kqx+yXqqBANsgCtit4FWQAEkrNbpq7HSOmtwag5w57GrmlJBASEU18ADjUYb3ADTinIttsgSB1oJFfA63bduimuqKB1keqwUhoCSK374wbujvOSu4QG6UvxBRydcpKsav++Ca6G8A6Pr1x2kVMyHwsVxUALDq/krnrhPSOzXG1lUTIoffqGR7Goi2MAxbv6O2kEG56I7CSlRsEFKFVyovDJoIRTg7sugNRDGqCJzJgcKE0ywc0ELm6KBCCJo8DIPFeCWNGcyqNFE06ToAfV0HBRgxsvLThHn1oddQMrXj5DyAQgjEHSAJMWZwS3HPxT/QMbabI/iBCliMLEJKX2EEkomBAUCxRi42VDADxyTYDVogV+wSChqmKxEKCDAYFDFj4OmwbY7bDGdBhtrnTQYOigeChUmc1K3QTnAUfEgGFgAWt88hKA6aCRIXhxnQ1yg3BCayK44EWdkUQcBByEQChFXfCB776aQsG0BIlQgQgE8qO26X1h8cEUep8ngRBnOy74E9QgRgEAC8SvOfQkh7FDBDmS43PmGoIiKUUEGkMEC/PJHgxw0xH74yx/3XnaYRJgMB8obxQW6kL9QYEJ0FIFgByfIL7/IQAlvQwEpnAC7DtLNJCKUoO/w45c44GwCXiAFB/OXAATQryUxdN4LfFiwgjCNYg+kYMIEFkCKDs6PKAIJouyGWMS1FSKJOMRB/BoIxYJIUXFUxNwoIkEKPAgCBZSQHQ1A2EWDfDEUVLyADj5AChSIQW6gu10bE/JG2VnCZGfo4R4d0sdQoBAHhPjhIB94v/wRoRKQWGRHgrhGSQJxCS+0pCZbEhAAOw==');

        List<ContentVersion> cvList = new List<ContentVersion>();

        for (Integer i = 1; i < numOfFiles + 1; i++){
            ContentVersion cv = new ContentVersion();
            cv.Title = nameString + i + '.png';
            cv.VersionData = body;
            cv.PathOnClient = '/' + cv.Title;
            cv.Description = cv.Title + ' description';
            cvList.add(cv);
        }

        return cvList;
    }

    /**
    * @description      Create locations
    * @param            numRecords - number of Locations to be created
    * @param            educationalInstId - Id of the Educational Institution
    * @return           List<Account> - List of the created Locations
    */
    public static List<Account> createLocations(Integer numRecords, Id educationalInstId) {

        Id eiRecordTypeId =
            Schema.SObjectType.Account.getRecordTypeInfosByName().get('Location').getRecordTypeId();
        List<Account> locList = new List<Account>();

        for (Integer i = 0; i < numRecords; i++) {
            Account loc = new Account(Name = 'Location-'+i,
                                     parentId = educationalInstId,
                                     RecordTypeId = eiRecordTypeId,
                                     rio_ed__Campus__c = true,
                                     rio_ed__Timezone__c = 'Australia/Sydney');
            locList.add(loc);
        }
        return locList;
    }

    /**
    * @description      Create program offerings (Intakes)
    * @param            programList - list of academic programs
    * @param            locationId - Id of the Campus location
    * @return           List<SObject> - List of created Program Offerings
    */
    public static List<SObject> createProgramOfferings(List<Account> programList, Id locationId) {

        List<SObject> poList = new List<SObject>();

        for (Integer i = 0; i < programList.size(); i++) {
            rio_ed__Program_Offering__c po =
                new rio_ed__Program_Offering__c(Name = 'Intake ' + i + ' Rolling Decision', rio_ed__Campus__c = locationid,
                                                rio_ed__Program__c = programList[i].Id);
            poList.add(po);
        }

        return poList;
    }
}