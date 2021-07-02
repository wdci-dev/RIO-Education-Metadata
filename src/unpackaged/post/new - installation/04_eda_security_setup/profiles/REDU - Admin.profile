<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
	
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>hed__Course_Enrollment__c.Faculty</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>true</default>
        <recordType>hed__Course_Enrollment__c.Student</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>hed__Plan_Requirement__c.rio_ed__Course</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>true</default>
        <recordType>hed__Plan_Requirement__c.rio_ed__Group</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
	
    <applicationVisibilities>
        <application>hed__HEDA</application>
        <default>false</default>
        <visible>true</visible>
    </applicationVisibilities>
	
	<fieldPermissions>
        <editable>false</editable>
        <field>Contact.Primary_Department__c</field>
        <readable>true</readable>
		<editable>true</editable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Contact.Primary_Educational_Institution__c</field>
        <readable>true</readable>
		<editable>true</editable>
    </fieldPermissions>
	
	<objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>hed__Contact_Language__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
    <objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>hed__Course__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
	<objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>hed__Course_Offering__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
    <objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>hed__Term__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
    <custom>true</custom>
    <description>Custom Profile for RIO Education Admin Users.</description>
    
    <layoutAssignments>
        <layout>hed__Course_Enrollment__c-rio_ed__RIOEducation Faculty Course Enrollment Layout</layout>
        <recordType>hed__Course_Enrollment__c.Faculty</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Course_Enrollment__c-rio_ed__RIOEducation Student Course Enrollment Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Course_Enrollment__c-rio_ed__RIOEducation Student Course Enrollment Layout</layout>
        <recordType>hed__Course_Enrollment__c.Student</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Course_Offering__c-rio_ed__RIOEducation Course Offering Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Course__c-rio_ed__RIOEducation Course Layout</layout>
    </layoutAssignments>
	<layoutAssignments>
        <layout>hed__Facility__c-rio_ed__RIOEducation Facility Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Plan_Requirement__c-rio_ed__RIOEducation Plan Requirement %28Course%29 Layout</layout>
        <recordType>hed__Plan_Requirement__c.rio_ed__Course</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Plan_Requirement__c-rio_ed__RIOEducation Plan Requirement %28Group%29 Layout</layout>
        <recordType>hed__Plan_Requirement__c.rio_ed__Group</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Program_Enrollment__c-rio_ed__RIOEducation Program Enrollment Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Program_Plan__c-rio_ed__RIOEducation Program Plan Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Term__c-rio_ed__RIOEducation Term Layout</layout>
    </layoutAssignments>
	<layoutAssignments>
        <layout>hed__Term_Grade__c-rio_ed__RIOEducation Term Grade Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>hed__Trigger_Handler__c-rio_ed__RIOEducation Trigger Handler Layout</layout>
    </layoutAssignments>
	
    <pageAccesses>
        <apexPage>hed__STG_Settings</apexPage>
        <enabled>true</enabled>
    </pageAccesses>
		
    <userLicense>Salesforce</userLicense>
    
	<userPermissions>
        <enabled>true</enabled>
        <name>ActivitiesAccess</name>
    </userPermissions>
    <userPermissions>
        <enabled>true</enabled>
        <name>ChatterInternalUser</name>
    </userPermissions>
    <userPermissions>
        <enabled>true</enabled>
        <name>LightningConsoleAllowedForUser</name>
    </userPermissions>
    <userPermissions>
        <enabled>true</enabled>
        <name>LightningExperienceUser</name>
    </userPermissions>
    <userPermissions>
        <enabled>true</enabled>
        <name>ViewHelpLink</name>
    </userPermissions>
</Profile>
