

Intro
-------

Microsoft Exchange Server is a mail server or messaging platform which works as a centralized hub with mailboxes for storing users' mail. To learn more about Microsoft Exchange Server, visit their page (

https://docs.microsoft.com/en-us/exc...xchserver-2019

).


 To use this connector, you must first create a Microsoft Azure Web App and set the necessary permissions. This is discussed in the "Prerequisites" section below.


 You connect to your Microsoft Exchange Metrics REST account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Exchange Metrics REST connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Exchange Metrics account and create a DataSet, you must have the following:

 A customer client ID and client secret obtained from your Microsoft Azure Web App
* Microsoft account credentials


###
 Configuring Your Azure App

To create a connection with your Microsoft Exchange Metrics account, you must first create a Microsoft Azure Web App to obtain the necessary client ID and secret.


**To configure an Azure App,**

. Login into Azure Portal.
2. Select
 **Azure Active Directory > App Registrations > Create New Application**
 .
3. In the
 **Name**
 field, enter the name of the application.
4. In the
 **Application type**
 menu, select
 **Web app /API**
 .
5. In the
 **Sign-on URL**
 , enter the sign-on URL of your application (

www.yourcompanyname.com

).
6. Click
 **Create**
 .
7. Click on your application.


 The
 **Application ID**
 that appears here is the Client ID you will enter in the
 **Connection**
 pane in Domo.
8. **Select Settings > Reply URLs.**
9. Enter the following URL in the field and click
 **Save**
 .


`https://oauth.domo.com/api/data/v1/oauth/providers/microsoft-exchange-metrics-rest/exchange`
10. Select
 **Settings > Required Permissions > Add > Microsoft Graph > Save**
 .
11. Set the following permissions:

* "Maintain access to data you have given it access to"
	* "Read all usage reports"
	* "Read user and shared contacts"
	* "Read user and shared calendars"
	* "Read all files that user can access"
12. Select
 **Settings > Required Permissions > Add > Windows Azure Active Directory > Save**
 .
13. Set the following permissions:

* "Sign in and read user profile"
	* "Read all users' basic profiles"
14. Select
 **Settings > Required Permissions > Grant Permissions > Yes**
 .


**Note:**

In some cases, an Admin has to approve grant permissions; otherwise you will see a message reading "Failed to grant permissions for application."
15. Select
 **Settings > Keys > Create New Key**
 .


 This is the Client Secret you will enter in the
 **Connection**
 pane in Domo. Be sure to save this, as you will not see it again.

Connecting to Your Microsoft Exchange Metrics Account
-------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft Exchange Metrics Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Microsoft Exchange Metrics account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Microsoft Exchange Metrics client ID.
  |
|
 Client Secret
  |
 Enter your Microsoft Exchange Metrics client secret.
  |


 After you enter a client ID and client secret, you are taken to Microsoft's OAuth page where you are requested to enter your email, phone number, or Skype name associated with your Microsoft account. Once you have connected, you can use the same account any time you go to create a new Microsoft Exchange Metrics DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


****Note:****
 If you are already logged into Microsoft when you connect in Domo, you are authenticated automatically when you click
 ****Add account****
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Microsoft.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Microsoft Exchange Metrics report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activity Counts
  |
 Returns trends on how many users organized and participated in conference sessions held in your organization through Skype for Business.
  |
|
 Activity User Counts
  |
 Returns trends on how many unique users organized and participated in conference sessions held in your organization through Skype for Business.
  |
|
 Activity User Detail
  |
 Returns details about Skype for Business activity by user.
  |
|
 Device Usage Distribution User Counts
  |
 Returns the number of users using unique devices in your organization.
  |
|
 Device Usage User Counts
  |
 Returns usage trends on how many users in your organization have connected using the Skype for Business app.
  |
|
 Device Usage User Detail
  |
 Returns details about Skype for Business device usage by user.
  |
|
 Email Activity Counts
  |
 Returns trends of email activity (like how many were sent, read, and received) in your organization.
  |
|
 Email Activity User Counts
  |
 Returns trends on the number of unique users who are performing email activities like send, read, and receive.
  |
|
 Email Activity User Detail
  |
 Returns details about email activity users have performed.
  |
|
 Email App Usage User Detail
  |
 Returns details about which activities users performed on the various email apps.
  |
|
 Email App Usage Apps User Counts
  |
 Returns the count of unique users per email app.
  |
|
 Email App Usage User Counts
  |
 Returns the count of unique users that connected to Exchange Online using any email app.
  |
|
 Email App Usage Versions User Counts
  |
 Returns the count of unique users by Outlook desktop version.
  |
|
 Mailbox User Detail
  |
 Returns details about mailbox usage.
  |
|
 Mailbox Usage Mailbox Counts
  |
 Returns the total number of user mailboxes in your organization and how many are active each day of the reporting period.
  |
|
 Mailbox Usage Quota Status Mailbox Counts
  |
 Returns the count of user mailboxes in each quota category.
  |
|
 Mailbox Usage Storage
  |
 Returns the amount of storage used in your organization.
  |
|
 Office365 Groups Activity Detail
  |
 Returns details about Office 365 Groups activity by group.
  |
|
 Office365 Groups Activity Counts
  |
 Returns the number of group activities across group workloads.
  |
|
 Office365 Groups Activity Group Counts
  |
 Returns the daily total number of groups and how many of them were active based on email conversations, Yammer posts, and SharePoint file activities.
  |
|
 Office365 Groups Activity Storage
  |
 Returns the total storage used across all group mailboxes and group sites.
  |
|
 Office365 Groups Activity File Counts
  |
 Returns the total number of files and how many of them were active across all group sites associated with an Office 365 Group.
  |
|
 OneDrive Activity File Counts
  |
 Returns the number of unique, licensed users that performed file interactions against any OneDrive account.
  |
|
 OneDrive Activity User Counts
  |
 Returns the trends in the number of active OneDrive users.
  |
|
 Organizer Activity Minute Counts
  |
 Returns usage trends on the length in minutes and type of conference sessions held and organized by users in your organization.
  |
|
 Organizer Activity Counts
  |
 Returns usage trends on the number and type of conference sessions held and organized by users in your organization.
  |
|
 Participant Activity Counts
  |
 Returns usage trends on the number and type of conference sessions that users from your organization participated in.
  |
|
 Participant Activity User Counts
  |
 Returns usage trends on the number of unique users and type of conference sessions that users from your organization participated in.
  |
|
 Participant Activity Minute Counts
  |
 Returns usage trends on the length in minutes and type of conference sessions that users from your organization participated in.
  |
|
 PeerToPeer Activity User Counts
  |
 Returns usage trends on the number of unique users and type of peer-to-peer sessions held in your organization.
  |
|
 PeerToPeer Activity Counts
  |
 Returns usage trends on the number and type of sessions held in your organization.
  |
|
 PeerToPeer Activity Minute Counts
  |
 Returns usage trends on the length in minutes and type of peer-to-peer sessions held in your organization.
  |
|
 SharePoint Activity User Counts
  |
 Returns trends in the number of active users. A user is considered active if he or she has executed a file activity (save, sync, modify, or share) or visited a page within the specified time
  |
|
 SharePoint Site Usage Storage
  |
 Returns trends of storage allocated and consumed during the reporting period.
  |
|
 Teams User Activity User Detail
  |
 Returns details about Microsoft Teams user activity by a user.
  |
|
 Teams User Activity Counts
  |
 Returns the number of Microsoft Teams activities by activity type. The activities are performed by Microsoft Teams licensed users.
  |
|
 Teams User Activity User Counts
  |
 Returns the number of Microsoft Teams users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings.
  |
|
 Teams Device Usage User Detail
  |
 Returns the details about Microsoft Teams device usage by user.
  |
|
 Teams Device Usage User Counts
  |
 Returns the number of Microsoft Teams daily unique users by device type.
  |
|
 Teams Device Usage Distribution User Counts
  |
 Returns the number of Microsoft Teams unique users by device type over the selected time period.
  |

|
|
 Parameter Type
  |
 Select whether you want to pull data for a selected period of days (
 **Period**
 ) or for a specified date or date range (
 **Date**
 ).
  |
|
 Period
  |
 Select the number of days you want to retrieve data for. ("D" refers to days. So
 **D7**
 would pull data for 7 days,
 **D30**
 would pull data for 30 days, etc.)
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

