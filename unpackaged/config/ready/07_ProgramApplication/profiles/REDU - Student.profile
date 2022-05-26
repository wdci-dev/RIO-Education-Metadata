﻿<?xml version="1.0" encoding="utf-8"?><Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <customPermissions>
        <enabled>false</enabled>
        <name>rio_ed__REDU_Admin</name>
    </customPermissions>
	<customPermissions>
        <enabled>false</enabled>
        <name>rio_ed__REDU_Faculty</name>
    </customPermissions>
    <customPermissions>
        <enabled>false</enabled>
        <name>rio_ed__REDU_Scheduler</name>
    </customPermissions>
    <customPermissions>
        <enabled>false</enabled>
        <name>rio_ed__REDU_Student</name>
    </customPermissions>

    <custom>true</custom>
    <description>Custom Profile for RIO Education Student Users.</description>
    <fieldPermissions>
        <editable>false</editable>
        <field>hed__Program_Plan__c.rio_ed__Fee__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>hed__Program_Plan__c.rio_ed__Non_Tuition_Fee__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>hed__Program_Plan__c.rio_ed__Use_Default_Fee__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>rio_ed__Program_Application__c.rio_ed__Starting_Term__c</field>
        <readable>true</readable>
    </fieldPermissions>
</Profile>