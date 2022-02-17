﻿<?xml version="1.0" encoding="utf-8"?><Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <classAccesses>
        <apexClass>redu_CustomLookupController_LCTRL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <classAccesses>
        <apexClass>redu_TransferCreditList_LCTRL</apexClass>
        <enabled>true</enabled>
    </classAccesses>
    <custom>true</custom>
    <description>Custom Profile for RIO Education Admin Users.</description>
    <fieldPermissions>
        <editable>true</editable>
        <field>Case.redu_Related_Course_Enrollment__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Case.redu_Related_Program_Enrollment__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Case.redu_Type_of_Variation__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>rio_ed__Program_Offering__c.redu_Approved_Applications__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>rio_ed__Program_Offering__c.redu_Maximum_Approved_Applicant_Count__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>rio_ed__Program_Offering__c.redu_Program_Name_F__c</field>
        <readable>true</readable>
    </fieldPermissions>
	<fieldPermissions>
        <editable>false</editable>
        <field>hed__Program_Enrollment__c.redu_Program_Name__c</field>
        <readable>true</readable>
    </fieldPermissions>
	<recordTypeVisibilities>
        <default>true</default>
        <recordType>Case.Student_Request</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <layoutAssignments>
        <layout>Case-Case Layout</layout>
        <recordType>Case.Student_Request</recordType>
    </layoutAssignments>
    <tabVisibilities>
        <tab>Transfer_Credits_Approval</tab>
        <visibility>Hidden</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>rio_ed__Agreement_Course__c</tab>
        <visibility>Hidden</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>rio_ed__Agreement__c</tab>
        <visibility>Hidden</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>rio_ed__Transfer_Credit__c</tab>
        <visibility>Hidden</visibility>
    </tabVisibilities>
    <userLicense>Salesforce</userLicense>
</Profile>