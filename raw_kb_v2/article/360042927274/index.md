

Intro
-------

Silverpop is a cloud-based marketing automation provider that offers email marketing and lead management. To learn more about the Silverpop API, visit their page (

https://www.programmableweb.com/api/silverpop

).


 You connect to your Silverpop account in the Data Center. This topic discusses the fields and menus that are specific to the Silverpop connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Silverpop account and create a DataSet, you must have the following:

 Your Silverpop Engage pod number (i.e. the number of the "Engage" instance you created the application in)
* Your Silverpop client ID
* Your Silverpop client secret
* Your Silverpop refresh token (which you should have received via email from Silverpop)
* An FTP username and password (only required if you plan to run "Export" reports to download reports from the Silverpop file server)

Connecting to Your Silverpop Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Silverpop Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Silverpop account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Silverpop Engage Pod Number
  |
 Enter your Silverpop Engage pod number, which is the number of the "Engage" instance you created your application in.
  |
|
 Client ID
  |
 Enter your Silverpop client ID.
  |
|
 Client Secret
  |
 Enter your Silverpop client secret.
  |
|
 Refresh Token
  |
 Enter your Silverpop refresh token (which you should have received via email from Silverpop)
  |
|
 Unique Account Name (optional)
  |
 Enter a unique name for your account
  |
|
 FTP Username
  |
 Enter the username you use to connect to your FTP server (only required if you plan to run "Export" reports to download reports from the Silverpop file server)
  |
|
 FTP Password
  |
 Enter the password you use to connect to your FTP server (only required if you plan to run "Export" reports to download reports from the Silverpop file server)
  |


 Once you have entered valid Silverpop credentials, you can use the same account any time you go to create a new Silverpop DataSet. You can manage connector accounts in the
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
 Select the Silverpop report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Export List
  |
 Exports contact data from a database, query, or contact list.
  |
|
 Export Table
  |
 Exports Engage data from a CSV file into Domo.
  |
|
 Lists
  |
 Returns a list of databases for an organization.
  |
|
 List Metadata
  |
 Returns the metadata for a database, query, or relational table.
  |
|
 Mailing Metrix
  |
 Returns metrics for a selected mailing.
  |
|
 Mailings Sent for List
  |
 Returns a list of mailings sent for a particular database.
  |
|
 Mailings Sent for Organization
  |
 Returns a list of mailings sent for an organization for a specified date range.
  |
|
 Mailings Sent for User
  |
 Returns a list of mailings sent for the authenticated user for a specified date range.
  |
|
 Organization Mailing Metrix
  |
 Returns a list of mailings sent for an organization for a specified date range and provides metrics for those mailings.
  |
|
 Programs
  |
 Returns a list of programs for an organization.
  |
|
 Raw Recipient Data
  |
 Brings raw recipient data from a ZIP file into Domo.
  |
|
 User Mailing Metrix
  |
 Returns a list of mailings sent by a user for a specified date range and provides metrics for those mailings.
  |
|
 Web Tracking Data
  |
 Returns reports of unique web tracking events.
  |

|
|
 List ID
  |
 Enter the ID of the list you want to retrieve data for.
  |
|
 Table Name
  |
 Enter the name of the table you want to export.
  |
|
 List Type
  |
 Select the type of list you want to retrieve data for.
  |
|
 List Visibility
  |
 Select whether you want to pull data for shared or private lists.
  |
|
 Mailing ID
  |
 Enter the ID of the mailing list you want to pull data for.
  |
|
 Report ID
  |
 Enter the ID of the report you want to retrieve data for.
  |
|
 List
  |
 Select the list you want to retrieve data for.
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

a DataSet Using a Data Connector

.

