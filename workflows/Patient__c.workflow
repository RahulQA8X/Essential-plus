<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>well_being_of_the_patient</fullName>
        <description>well-being of the patient</description>
        <protected>false</protected>
        <recipients>
            <field>Mail_Id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/well_being_of_the_patient</template>
    </alerts>
    <rules>
        <fullName>After 15 days of discharge</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Patient__c.Date_of_Discharge__c</field>
            <operation>lessThan</operation>
            <value>NEXT 15 DAYS</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Task for Discharge</fullName>
        <actions>
            <name>well_being_of_the_patient</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ask_wellbeing_of_Patient</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Patient__c.Date_of_Discharge__c</field>
            <operation>lessThan</operation>
            <value>NEXT 5 DAYS</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Ask_wellbeing_of_Patient</fullName>
        <assignedToType>owner</assignedToType>
        <description>What is the condition of patient, feeling well  or not ?</description>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Patient__c.Date_of_Discharge__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ask wellbeing of Patient</subject>
    </tasks>
</Workflow>
