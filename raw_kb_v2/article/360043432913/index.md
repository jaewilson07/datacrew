

Intro
-------

Paydirt provides online invoicing and time tracking for freelancers and agencies.  To learn more about the Paydirt API, visit their page (

https://paydirtapp.com/documentation/api/introduction

).


 You connect to your Paydirt account in the Data Center. This topic discusses the fields and menus that are specific to the Paydirt connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Paydirt account and create a DataSet, you must have a Paydirt API key. You can find your Paydirt API key in your

Password Settings

page.


 Connecting to Your Paydirt Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Paydirt Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Paydirt account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Paydirt API key. You can find your API key in your

Password Settings

page.
  |


 Once you have entered valid Paydirt credentials, you can use the same account any time you go to create a new Paydirt DataSet. You can manage connector accounts in the
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
 Select the Paydirt report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Clients
  |
 Returns a list of clients in your account.
  |
|
 Projects
  |
 Returns a list of projects in your account.
  |
|
 Jobs
  |
 Returns a list of jobs in your account.
  |
|
 Time
  |
 Returns a list of time logs in your account.
  |
|
 Users
  |
 Returns a list of users in your account.
  |

|
|
 Start Date
  |
 Select whether to pull data for a specific or relative start date. If you select
 **Specific**
 , you will be asked to choose a specific start date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to start pulling data for).
  |
|
 Select Specific Start Date
  |
 Select the date you want to start pulling data for. Combine with
 **Select Specific End Date**
 to create a range of dates.
  |
|
 End Date
  |
 Select whether to pull data for a specific or relative end date. If you select
 **Specific**
 , you will be asked to choose a specific end date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to stop pulling data for).
  |
|
 Select Specific End Date
  |
 Select the date you want to stop pulling data for. Combine with
 **Select Specific Start Date**
 to create a range of dates.
  |
|
 Start Date Offset
  |
 Enter the number of days back you want to start pulling data for. Combine with
 **End Date Offset**
 to create a relative date range. For example, if you entered

10

for
 **Start Date Offset**
 and

5

for
 **End Date Offset**
 , each time the report ran it would pull data from the last 10 days up until the last 5 days.
  |
|
 User ID
  |
 Enter the ID of the user you want to retrieve information for.
  |
|
 Client ID
  |
 Enter the ID of the client you want to retrieve information for.
  |
|
 Project ID
  |
 Enter the ID of the project you want to retrieve information for.
  |
|
 Job ID
  |
 Enter the ID of the job you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

