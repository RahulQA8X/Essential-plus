<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Trip_is_created</fullName>
        <description>Trip is created</description>
        <protected>false</protected>
        <recipients>
            <field>Email_ID__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>rahul@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Trip_mail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Filed_update</fullName>
        <field>Trip_Ower_Name__c</field>
        <formula>&apos;Mr.&apos; +  Trip_Ower_Name__c</formula>
        <name>Filed update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Amount</fullName>
        <field>Trip_Amount__c</field>
        <formula>500 +  Trip_Amount__c</formula>
        <name>Update Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Send_outboond_msg</fullName>
        <apiVersion>51.0</apiVersion>
        <endpointUrl>https://mail.google.com/mail/u/1/#spam</endpointUrl>
        <fields>Id</fields>
        <fields>Trip_Locations__c</fields>
        <fields>Trip_Ower_Name__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>rahul@force.com</integrationUser>
        <name>Send outboond msg</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Create Task</fullName>
        <actions>
            <name>Test_the_trip_Data</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Trip__c.Trip_Locations__c</field>
            <operation>equals</operation>
            <value>Goa,Keral</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Outbound msg</fullName>
        <actions>
            <name>Send_outboond_msg</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Trip__c.Trip_Locations__c</field>
            <operation>equals</operation>
            <value>Goa,Keral</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send mail</fullName>
        <actions>
            <name>Trip_is_created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Trip__c.Trip_Locations__c</field>
            <operation>equals</operation>
            <value>Goa,Keral</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Trip__c.Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Fields</fullName>
        <actions>
            <name>Filed_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Trip__c.Trip_Locations__c</field>
            <operation>equals</operation>
            <value>Goa,Keral</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Test_the_trip_Data</fullName>
        <assignedTo>rahul@force.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>pls look into this matter</description>
        <dueDateOffset>3</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Trip__c.Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Test the trip Data</subject>
    </tasks>
</Workflow>
