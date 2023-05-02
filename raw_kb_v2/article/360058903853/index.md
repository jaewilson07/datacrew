

Intro
-------

Microsoft Teams is a unified communication and collaboration platform that combines persistent workplace chat, video meetings, file storage (including collaboration on files), and application integration. The service integrates with the Office 365 subscription office productivity suite and features extensions that can integrate with non-Microsoft products. Microsoft Teams is a competitor to the business communication services such as Slack, and is the evolution and upgrade path from Microsoft Skype for Business. Use Domo's Microsoft Teams connector to retrieve the details about teams and groups conversations in your organization. To learn more about the Microsoft Teams API, visit

https://docs.microsoft.com/en-us/graph/teams-concept-overview

.


 You connect to your Microsoft Teams account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Teams connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Teams account and create a DataSet, you must have the following:

 An installed Microsoft Azure app.
* The client ID for your Azure app.
* The client secret for your Azure app. This is generated when you create your Azure app.


####
****To find the Client ID, do the following:****


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ********Azure Active Directory > App registrations********
 .
3. Find your app and click on it.
4. Locate the "Application ID" from the web app (this is the client ID).


####
****To generate a new Client Secret, do the following:****


1. Go to

https://portal.azure.com

and sign in using your Microsoft credentials.
2. Select
 ********Azure Active Directory > App registrations********
 .
3. Find your app and click on it.
4. Open
 ********Certificates and secrets********
 .
5. Click
 **+New Client secret**
 in the Client secret section.


###
 Creating an Azure App for Enterprise OAuth

To create a Microsoft Azure app, do the following:


 1. Log into

https://portal.azure.com

.


 2. Click on
 ********App registrations********
 .

3. Click
 ********New registration********
 .


 4. Enter the application name, and select the supported account types for your application. Here, the supported accounts MUST be Multitenant.

5. Enter the Redirect URI for as

https://oauth.domo.com/api/data/v1/oauth/providers/microsoft-teams/exchange

.

6. Click
 ********Register********
 .


 7. Once the application is registered, assign the required API permissions for your application.


 8. Click
 **API Permissions > +Add a permission**
 .

9. Request API Permissions page appears displaying the commonly used Microsoft APIs.

10. Select the desired API, and add the Delegated and Application permissions as required.

11. Click on
 **Grant admin consent**
 , then click
 **Yes**
 to allow the admin consent for your permissions.

The added permissions will appear in the
 **Configured permissions**
 section with their details.

12. Now, click on
 ****Certificates & Secrets****
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.

13. Click on
 ****+ New Client Secret****
 button.

14. Specify the client secret description and the expiry period for your client secret, and click
 ********Add********
 .

15. Copy the
 **value**
 and paste it into the
 ********Client Secret********
 field in the Connector credentials section in Domo.

Connecting to Your Microsoft Teams Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Microsoft Teams

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Microsoft Teams

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your installed Azure web app. For more information, see "Prerequisites."
  |
|
 Client Secret
  |
 Enter the client secret that was generated when you created your app. For more information, see "Prerequisites."
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Microsoft Teams DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the Microsoft Teams report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Channels
  |
 Returns a list of all channels for the selected team ID.
  |
|
 All Events
  |
 Returns a list of event objects from the specified group.
  |
|
 All Joined Teams
  |
 Returns a list of the teams in Microsoft Teams that the user is a direct member of.
  |
|
 All Teams
  |
 Returns a list of all teams in an organization.
  |
|
 Calendar View
  |
 Returns the occurrences, exceptions, and single instances of events in a calendar view defined by a time range, from a specified group.
  |
|
 Groups
  |
 Returns a list of groups in an organization.
  |
|
 Group Attachments
  |
 Returns a list of attachment objects attached to a post.
  |
|
 Group Conversations
  |
 Returns a list of conversations in the group.
  |
|
 Group Members
  |
 Returns a list of group's direct members.
  |
|
 Group Owners
  |
 Returns a list of group owners.
  |
|
 Group Posts
  |
 Returns a list of the posts for the specified thread.
  |
|
 Group Threads
  |
 Returns a list of all threads of a group.
  |

|
|
 Group ID
  |
 Select the group ID.
  |
|
 Team ID
  |
 Select the team ID.
  |
|
 Thread ID
  |
 Select the thread ID.
  |
|
 Post ID
  |
 Select the post ID.
  |
|
 Dates Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

