<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_an_email</fullName>
        <description>Send an email</description>
        <protected>false</protected>
        <recipients>
            <recipient>kantijadhav@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rahul@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Trip_mail</template>
    </alerts>
    <alerts>
        <fullName>Send_mail_when_Amount_is_above_5lac</fullName>
        <description>Send mail when Amount is above 5lac</description>
        <protected>false</protected>
        <recipients>
            <recipient>kantijadhav@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rahul@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Exceed_Amount_mail</template>
    </alerts>
</Workflow>
