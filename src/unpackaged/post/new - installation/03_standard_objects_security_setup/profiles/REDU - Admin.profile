<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
			
    <objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>Account</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
    <objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>false</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>false</modifyAllRecords>
        <object>Case</object>
        <viewAllRecords>false</viewAllRecords>
    </objectPermissions>
    <objectPermissions>
        <allowCreate>true</allowCreate>
        <allowDelete>true</allowDelete>
        <allowEdit>true</allowEdit>
        <allowRead>true</allowRead>
        <modifyAllRecords>true</modifyAllRecords>
        <object>Contact</object>
        <viewAllRecords>true</viewAllRecords>
    </objectPermissions>
	
    <custom>true</custom>
    <description>Custom Profile for RIO Education Admin Users.</description>
    
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Department Layout</layout>
        <recordType>Account.University_Department</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Location Layout</layout>
        <recordType>Account.rio_ed__Location</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Organization Layout</layout>
        <recordType>Account.Business_Organization</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Organization Layout</layout>
        <recordType>Account.Educational_Institution</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Organization Layout</layout>
        <recordType>Account.Sports_Organization</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Program Layout</layout>
        <recordType>Account.Academic_Program</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Household Layout</layout>
        <recordType>Account.Administrative</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Account-rio_ed__RIOEducation Household Layout</layout>
        <recordType>Account.HH_Account</recordType>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Contact-rio_ed__RIOEducation Contact Layout</layout>
    </layoutAssignments>
		
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.Academic_Program</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>true</default>
        <recordType>Account.Administrative</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.Business_Organization</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.Educational_Institution</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.HH_Account</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.rio_ed__Location</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.Sports_Organization</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
    <recordTypeVisibilities>
        <default>false</default>
        <recordType>Account.University_Department</recordType>
        <visible>true</visible>
    </recordTypeVisibilities>
	
    <tabVisibilities>
        <tab>standard-Account</tab>
        <visibility>DefaultOn</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>standard-Case</tab>
        <visibility>DefaultOn</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>standard-Contact</tab>
        <visibility>DefaultOn</visibility>
    </tabVisibilities>
	
    <userLicense>Salesforce</userLicense>
    
	<userPermissions>
        <enabled>true</enabled>
        <name>ActivitiesAccess</name>
    </userPermissions>
    <userPermissions>
        <enabled>true</enabled>
        <name>AllowViewKnowledge</name>
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
