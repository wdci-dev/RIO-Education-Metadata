/**
 * @author      WDCi (Jordan)
 * @date        July 2022
 * @group       Util
 * @description Testdata factory for RIO Ready custom fees.
 */

@isTest
public with sharing class REDU_CustomFeesTestDataFactory_UTIL {
    /**
    * @description Enrollment Method for Manual enrollment
    */
    public static final String ENROLLMENT_METHOD_MANUAL = 'Manual';

    /**
     * @description Creates default RIO Education trigger handlers
     *              Should return here and disable any manually deactivated trigger handlers
     * @return hed__Trigger_Handler__c
     */
    public static void createRIOEdTriggerHandlers(){

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
        //tHandlers.add(createTriggerHandler('REDU_AssignOwnership', 'Program_Enrollment__c', 'AfterInsert', 'rio_ed.PREN_AssignOwnership_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DefaultFeeInfo', 'rio_ed__Program_Application__c', 'BeforeInsert', 'rio_ed.PRAP_DefaultFeeInfo_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_ProgramFee', 'Program_Enrollment__c', 'BeforeInsert', 'rio_ed.PREN_ProgramFee_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseFee', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_CourseFee_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_DefaultFeeInfo', 'Course_Offering__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSOF_DefaultFeeInfo_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PopulateDate', 'Course_Enrollment__c', 'BeforeInsert; BeforeUpdate', 'rio_ed.CSEN_PopulateDate_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_CourseDeliveryMethod', 'Course_Offering__c', 'BeforeInsert', 'rio_ed.CSOF_CourseDeliveryMethod_TDTM', 2, true, true));
        //tHandlers.add(createTriggerHandler('REDU_CoursesCompleted', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.PEP_CoursesCompleted_TDTM', 7, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'rio_ed__PE_Pathway_Status__c', 'AfterUpdate', 'rio_ed.PEP_AutoEnrollment_TDTM', 3, true, true));
        tHandlers.add(createTriggerHandler('REDU_PreviousTerm', 'Term__c', 'AfterInsert; AfterUpdate', 'rio_ed.TERM_PreviousTerm_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'rio_ed__PE_Pathway_Status__c', 'AfterInsert; BeforeUpdate; AfterUpdate', 'rio_ed.CSEN_AutoEnrollment_TDTM', 4, true, true));
        tHandlers.add(createTriggerHandler('REDU_AutoEnrollment', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.SCEN_AutoEnrollment_TDTM', 8, true, true));
        tHandlers.add(createTriggerHandler('REDU_StudentFees', 'rio_ed__Student_Fee__c', 'AfterInsert', 'rio_ed.SFEE_StudentFees_TDTM', 1, true, true));
        tHandlers.add(createTriggerHandler('REDU_PrimaryFaculty', 'rio_ed__Session__c', 'BeforeInsert; BeforeUpdate; AfterInsert; AfterUpdate', 'rio_ed.SE_PrimaryFaculty_TDTM', 2, true, true));
        tHandlers.add(createTriggerHandler('REDU_PEDCompletionEngine', 'Course_Enrollment__c', 'AfterUpdate', 'rio_ed.CSEN_PEDCompletionEngine_TDTM', 9, true, true));
        //tHandlers.add(createTriggerHandler('REDU_ReassignPEDRs', 'Course_Enrollment__c', 'BeforeDelete', 'rio_ed.CSEN_ReassignPEDRs_TDTM', 1, true, true));
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
        
        for (Integer i = 0; i < numberofTerms; i++ ) {
            hed__Term__c term = new hed__Term__c(hed__Account__c = instituteId);
            term.Name = termStartDate.year() +' - Term '+i;
            term.hed__Start_Date__c = termStartDate;
            term.hed__End_Date__c = termEndDate;
            term.redu_Academic_Year__c = termStartDate.year();
            listTerms.add(term);
            
            termStartDate = termStartDate.addMonths(number_of_months_in_term);
            termEndDate = termStartDate.addMonths(term_length_in_months);
        }
        
        return listTerms;
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
                course.hed__Credit_Hours__c = 7.000;
                course.rio_ed__Credit_Points__c = 7;
                courseCounter++;
                courseList.add(course);
            }
        }

        return courseList;
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
    * @description Create Program Plans.
    * @param programList List of Academic Programs to create plans for
    * @param termList List of Terms, mainly just used to determine dates of the Program Plan
    * @return List<hed__Program_Plan__c>
    */
    public static List<hed__Program_Plan__c> createProgramPlans(List<Account> programList, hed__Term__c term){
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
            //con.redu_Contact_Type__c = redu_Constant_UTIL.CONTACT_TYPE_APPLICANT;
            //con.hed__Preferred_Email__c = redu_Constant_UTIL.PREFERREDEMAIL_ALTERNATE;
            con.hed__AlternateEmail__c = con.Email;
            //con.Birthdate = Date.newInstance(1999, 11, 22);
            //con.rio_ed__External_Id__c = con.Birthdate.Year()+''+con.Birthdate.Month()+''+con.Birthdate.Day()+'1234';
            //System.debug('>>>>>>>>>>con.rio_ed__External_Id__c '+con.rio_ed__External_Id__c);
            cons.add(con);
            conCounter++;
        }
        
        return cons;
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
            if (j == -1) 
                j = programList.size() - 1;
        }
         
        return papList;
    }

    /**
    * @description generate random digit string value
    * @return String random Int String Value Between 0 to 1000
    */
    public static String getRandomIntStrValBetween0to1000(){
        return String.valueOf((Integer)(Math.random()*1000));
    }
}