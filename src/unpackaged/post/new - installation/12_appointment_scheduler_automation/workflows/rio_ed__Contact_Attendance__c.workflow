<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Email_to_Contact_Attendances</fullName>
        <description>Send Email to Contact Attendances</description>
        <protected>false</protected>
        <recipients>
            <field>rio_ed__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>rio_ed__RIO_Education/RIO_Education_Appointment_status_updated</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_new_Contact_Attendances</fullName>
        <description>Send Email to new Contact Attendances</description>
        <protected>false</protected>
        <recipients>
            <field>rio_ed__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>rio_ed__RIO_Education/RIO_Education_Appointment_new_appointment</template>
    </alerts>
</Workflow>
