<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <classAccesses>
        <apexClass>redu_CDL_UpdateCustomerAccess_TDTM</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CDL_UpdateCustomerAccess_TEST</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CV_UpdateSDocsGeneratedFiles_TDTM</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CV_UpdateSDocsGeneratedFiles_TEST</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CommonTestDataFactory_UTIL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CustomSingleRelatedList_LCTRL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_CustomSingleRelatedList_TEST</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_FileViewerController_LCTRL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_FileViewerController_LCTRL_TEST</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_TranscriptTestDataFactory_UTIL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_TranscriptTriggerHandler_MANAGER</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <custom>false</custom>
    <fieldPermissions>
        <editable>false</editable>
        <field>ContentVersion.redu_File_Category__c</field>
        <readable>false</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>hed__Program_Enrollment__c.redu_Program_Name__c</field>
        <readable>true</readable>
    </fieldPermissions>    
	<fieldPermissions>
        <editable>true</editable>
        <field>SDOC__SDRelationship__c.Program_Enrollment__c</field>
        <readable>true</readable>
    </fieldPermissions>
</Profile>
