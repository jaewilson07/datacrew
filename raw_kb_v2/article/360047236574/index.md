

Intro
-------

As a cloud software provider with services that range from video conferences to virtual meeting rooms and webinars, Zoom is a heavyweight in the video and teleconference industry for businesses around the world.

Domo

helps you to get the most out of Zoom with interactive, out-of-the-box visualizations that can be set up in minutes, as well as automated access to raw Zoom data for you to explore and understand.


 In order to help you get the most out of your Zoom data, here are some points to consider and other best practices that you might find useful.


 What do I need to set up my Zoom app or Connector?
----------------------------------------------------


* An admin-level account in Zoom
* An Editor-level or equivalent account in your

Domo

instance
* Access to the Zoom app in

Domo's

App Store

here

which will set up a Zoom dashboard and all the required

DataSets
* If you prefer to connect directly using the Zoom Connector, please access the connector

here


**Important:**
 Each account can only be used once to authenticate to Zoom.

Make your Zoom data more robust with Departments & Groups
-----------------------------------------------------------


 Domo

gives you several options to easily augment your Zoom data with your departments and groups making your Zoom data more robust.

###
 Manage departments and groups in Zoom


* Integrate Zoom with your company's directory service or identity provider (

Idp

) solution, like Active Directory, to capture existing departments/groups data.
* Users and departments/groups can also be managed manually assigning users to specific departments or groups in Zoom itself.
* Access the Zoom department data in

Domo

using the "Users" report in the

Zoom Connector

.


####
 Bring department or group data directly into

Domo


* If your

Domo

instance is already syncing

Domo

Groups with the department/group information in your company's

Idp

using

SSO

, consider creating a

DataFlow

to combine your department/groups with the "Users" report from the

Creating a SQL DataFlow

.
* If you are not using

SSO

, but can still provide department/groups from your

Idp

via an automated report, Workbench, database export, etc., you can still consider combining your department/groups

DataSet

with the "Users" report from the Zoom Connector.
* This kind of dynamic connection for department data will be reflected in your Zoom data anytime something changes in your directory provider and/or

Idp

.


####
 Manage departments and groups in

Domo


* If you are manually maintaining departments or groups directly in

Domo

using

Domo

Groups and are not able to bring in this information from your

Idp

, you can add

Domo

Groups to your Zoom data by creating a

DataFlow

using the

DomoStats

User Activity Report and the Users report from the Zoom Connector. For more information on how to access

DomoStats

reports, see

DomoStats Connector

.
* This gives you the flexibility to see group-level data in Zoom and to do so from the same place that you already manage permissions and access for users.

Secure your Zoom data using Personalized Data Permissions (

PDP

)
-------------------------------------------------------------------------

Due to the potentially sensitive nature of meeting data,

Domo

makes it easy to secure your data using

PDP

rules on your Zoom

DataSets

. For more information on setting up and using

PDP

, see

Personalized Data Permissions (PDP)

.

 By default, Zoom day will be unfiltered with no additional

PDP

policies applied.
* Consider using

Domo

Groups to make sure that people only see meeting details that meet certain conditions.
* Consider using a trusted attribute like email to create a

PDP

policy to dynamically secure your Zoom data.
* If your

Domo

instance and Zoom are both integrated with your

Idp

, setting up

PDP

on trusted attributes is easy and may not require joining

Domo

Group data with the Zoom Users report.

Understand your Zoom data
---------------------------

Make sure that you understand the settings that you have in your Zoom configuration in order to properly understand the data.

 Names of meetings in Zoom may not necessarily be the same as the subject line of your calendar invite. For example, if you sue the Zoom extension inside of your email client, it may use a default meeting name for the Zoom meeting. For example, John Smith's Zoom Meeting or John Smith's Personal Meeting Room.
* It is possible for somebody to join a meeting without being an authenticated user. This is a setting that is configurable for an Admin in Zoom. If your Zoom account has been configured to allow users to join a meeting without being authenticated, you may see entries in the All Meeting Participants report that have entries such as "Call-in User\_1", a phone number, or possibly a null entry.
* In order to add more richness to your data, you may consider encouraging best practices for your users to join in certain ways so data is recorded properly.

+ Encourage users to always join as an authenticated user.
	+ If possible, avoid direct dial-ins wherever possible.
* What about the participant data with people outside of your organization?

+ The All Meeting Participants

 DataSet

 will include the user data for any participant that joined a Zoom-hosted meeting, including those outside of your organization.
	+ If those users from outside your organization have a Zoom account of their own, then the user information for them will be available in the All Meeting Participants

 DataSet

 . This will include their user name and user email.

Advanced options
------------------

Need to customize your data even more? Consider using

Domo's

Magic

ETL

or MySQL

DataFlows

to configure things even more to meet your specialized needs. If that's not enough or there is more data form the Zoom API that you would like to see in

Domo

, here are some helpful resources:

 Zoom API Documentation
* Create your own Connector
* Speed up the updating cycle on a

custom Zoom Connector using a webhook

.

Uninstalling the Zoom app from Domo
--------------------------------------


1. Log in to your Domo instance and navigate to the Domo Appstore.
2. Click
 **Installed Apps**
 .
3. Click
 **Your Apps**
 .
4. Select the Zoom app from the list of apps.
5. Click
 **Uninstall**
 .


 Uninstalling the Domo app from Zoom
--------------------------------------


1. Log in to your Zoom account and navigate to the Zoom App Marketplace.
2. Click
 **Manage > Installed Apps**
 or search for the
 **Domo**
 app.
3. Select the
 **Domo**
 app.
4. Click
 **Uninstall**
 .

