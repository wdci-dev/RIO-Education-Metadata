<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <custom>true</custom>
    <description>Custom Profile for RIO Education Platform Faculty Users.</description>
    <fieldPermissions>
        <editable>false</editable>
        <field>redu_Program_Offering_Capacity__c.redu_Available_Places__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>redu_Program_Offering_Capacity__c.redu_Booked_Places__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>redu_Program_Offering_Capacity__c.redu_Capacity__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>redu_Program_Offering_Capacity__c.redu_Category__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>redu_Program_Offering_Capacity__c.redu_Seat_Category__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>rio_ed__Program_Application__c.redu_Applicant_Seat_Category__c</field>
        <readable>true</readable>
    </fieldPermissions>
	<objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>redu_Program_Offering_Capacity__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
	<objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>rio_ed__Program_Offering__c</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
    <userLicense>Salesforce Platform</userLicense>
</Profile>