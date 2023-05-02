

Intro
-------

Microsoft Exchange Server acts as a centralized hub for Microsoft Exchange mailboxes. To learn more about Microsoft Exchange Server, visit their page (

https://docs.microsoft.com/en-us/exc...xchserver-2019

).


 You connect to your Microsoft Exchange Server account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Exchange Metrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your Microsoft Exchange Server account and create a Microsoft Exchange Metrics DataSet, you must have your Microsoft Exchange Server username and password.


 Connecting to Your Microsoft Exchange Server Account
------------------------------------------------------


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


 This pane contains fields for entering credentials to connect to your Microsoft Exchange Server account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Microsoft Exchange Server username. If you are using on-premise data, the username should be entered as

domain/username

or


 username@domain.com


 .
  |
|
 Password
  |
 Enter your Microsoft Exchange Server password.
  |


 Once you have entered valid Microsoft Exchange credentials, you can use the same account any time you go to create a new Microsoft Exchange Metrics DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of menus and fields for specifying the data you want to bring into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Instance Type
  |
 Select whether you want to connect to online or on-premise data.
  |
|
 Server Name
  |
 Enter the name of the server containing your on-premise data.
  |
|
 Report
  |
 Select whether you want to retrieve data based on a PowerShell script or command.
  |
|
 Script
  |
 Select the desired PowerShell report script you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 MailTraffic
  |
 Returns the mail traffic per day per user( incoming and outgoing mails) for the last 30 days.
  |
|
 LargeMailboxes
  |
 Returns the 10 largest mailboxes.
  |
|
 AverageSize
  |
 Returns the average size of your mailboxes.
  |
|
 LastDayOutbound
  |
 Returns a list of yesterday's emails sent outside your organization.
  |
|
 LastDayInbound
  |
 Returns a list of yesterday's emails sent inside your organization.
  |

|
|
 Command
  |
 Select the PowerShell command you want to run in order to retrieve data. For information about all commands, visit

https://docs.microsoft.com/en-us/pow...ew=exchange-ps

.
  |
|
 Parameters (Optional)
  |
 Enter any parameters for your selected command here, separating multiple parameters with semicolons. Use the format

key1=value2;key2=value2;...keyn=valuen.

|
|
 Device ID
  |
 Enter the ID of the device you want to retrieve information for.
  |
|
 Mailbox ID
  |
 Enter a keyword or keywords to indicate the mailbox you want to retrieve information for. You may use any of the following:
 * Alias
* Display name
* Distinguished name (DN)
* Domain/account
* Immutable ID
* Legacy exchange DN
* Object GUID
* SMTP address
* User principal name (UPN)
 |
|
 Distribution Group
  |
 Enter a keyword or keywords to indicate the distribution group you want to retrieve information for. You may use any of the following:
 * Alias
* Canonical DN
* Display name
* Distinguished name (DN)
* Domain/account
* Immutable ID
* Legacy exchange DN
* Object GUID
* SMTP address
* User principal name (UPN)
 |
|
 Folder
  |
 Enter the mailbox and folder path/folder name for the calendar folder you want to retrieve information for.
  |
|
 Restore Request ID
  |
 Enter the ID of the restore request. This consists of the alias of the mailbox to be restored and the name specified when the request was created.
  |
|
 Role Entry
  |
 Enter the role entry you want to retrieve data for. For example:

ExampleRole\Set-Mailbox

|
|
 Tracking Report ID
  |
 Enter the ID of the message tracking report you want to retrieve.
  |
|
 Email ID
  |
 Enter the email ID of the user you want to retrieve information for.
  |
|
 GUID
  |
 Enter the GUID or public folder name representing a folder you want to retrieve information for.
  |
|
 Message ID
  |
 Enter a unique quarantine message identifier.
  |
|
 Role Group
  |
 Enter the role group for which member information should be retrieved. For example:

Recipient Administrators

|
|
 Sync Request ID
  |
 Enter the ID of the sync request you want to view information for.
  |
|
 Phone Call ID
  |
 Enter the ID of the phone call you want to retrieve information for.
  |
|
 Unified Audit ID
  |
 Enter the ID of the unified audit you want to retrieve information for.
  |
|
 Domain Name
  |
 Enter the domain name you want to retrieve information for.
  |
|
 Category
  |
 Select a "MailTrafficSummaryReport" category.
  |
|
 Message Trace ID
  |
 Enter the message trace ID you want to retrieve information for.
  |
|
 Device Type
  |
 Select whether you want to retrieve data for an EAS or Intune device.
  |
|
 Schedule ID
  |
 Enter the ID of the schedule you want to retrieve information for.
  |
|
 Recipient
  |
 Enter the email ID of the recipient you want to retrieve information for.
  |
|
 Organization
  |
 Enter the organization you want to retrieve information for.
  |
|
 Version
  |
 Enter the version number you want to retrieve information for.
  |
|
 Mailbox
  |
 Enter the email ID of the user you want to retrieve information for.
  |
|
 Group By
  |
 Select whether you want your report data to be grouped by day, month, or total.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

