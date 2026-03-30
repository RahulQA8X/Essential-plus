<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_mail_to_user</fullName>
        <description>Send mail to user</description>
        <protected>false</protected>
        <recipients>
            <recipient>rahul@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Send_to_user</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approved</fullName>
        <field>Discount_Percent_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Discount_percent</fullName>
        <field>Discount_Percent_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Discount percent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Not_Approved</fullName>
        <field>Discount_Percent_Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reject</fullName>
        <field>Discount_Percent_Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
</Workflow>
