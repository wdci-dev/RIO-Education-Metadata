# RIO-Education-Metadata
This contains all files needed to set up the RIO Education product in the <a href='https://rioed-installer.herokuapp.com/products/RIO_Education/latest'>RIO Education installer</a>, as well as all metadata that it deploys.

The following is the folder structure (not all folders included here - many are set up automatically by CumulusCI). Instructions for how to deploy this metadata can be found on the installer webpage.

* apex (scripts run as part of the installation)
* bin (zip versions of metadata found in unpackaged / upgrade metadata)
* datasets (data mapping and sample dataset loaded by installer)
* unpackaged
  * config (metadata deployed in additional plans)
    * community
      * 01_student_community_security_setup (profile security for student community)
      * 02_faculty_community_security_setup (profile security for faculty community)
      * 03_combined_community_security_setup (profile security for combined community)
    * ready (RIO Ready metadata)
      * 01_AccountsReceivableDisplay
      * 02_Community_Transcript
      * 03_FeeLine
      * 04_LoginAndRegister_preDeploy
      * 05_LoginAndRegister
      * 06_Payment2us
      * 07_ProgramApplication
      * 08_Refund
      * 09_RIO Education Community
      * 10_Scholarship
      * 11_StudentID
      * 12_StudentRequest
      * 13_Withdrawal
    * sharing
      * 00_orgwide_default_sharing (org-wide default sharing settings)
  * pre (for pre RIO Education installation)
    * 01_heda_object_tracking.zip (field history tracking for EDA)
  * post (for post RIO Education installation)
    * 01_standard_objects_ui (lightning page and configuration for standard object)
    * 02_eda_objects_ui (lightning page and configuration for EDA object)
    * 03_standard_objects_security_setup (objects and apps security setup for standard objects)
    * 04_eda_security_setup (objects and apps security setup for EDA)
    * 05_redu_security_setup (objects and apps security setup for RIO Education)
    * 06_standard_object_tracking
    * 07_heda_object_tracking
    * 08_redu_object_tracking
    * 12_appointment_scheduler_automation
    * 13_eda_object_picklist
