

Intro
-------

Voluum is a real-time SaaS analytics platform, designed for performance marketers and self-service advertisers. To learn more about the Voluum API, visit their page (

https://developers.voluum.com/

).


 You connect to your Voluum account in the Data Center. This topic discusses the fields and menus that are specific to the Voluum connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Voluum account and create a DataSet, you must have the following:

 The email address associated with your Voluum account
* The password for your Voluum account

Connecting to Your Voluum Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Voluum Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Voluum account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Email
  |
 Enter the email address associated with your Voluum account.
  |
|
 Password
  |
 Enter the password for your Voluum account.
  |


 Once you have entered valid Voluum credentials, you can use the same account any time you go to create a new Voluum DataSet. You can manage connector accounts in the
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
 Select the Voluum report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Clicks Live Report
  |
 Returns clicks live data.
  |
|
 Conversion Report
  |
 Returns data about your conversions.
  |
|
 Error by Category Report
  |
 Returns data about errors, broken down by category.
  |
|
 Error Detail Report
  |
 Returns detailed information about errors.
  |
|
 Error Report
  |
 Returns information about errors.
  |
|
 Manual Cost Update Constraint Report
  |
 Returns information about manual cost update constraints.
  |
|
 Standard Report
  |
 Returns basic information.
  |
|
 Time Aggregated Report
  |
 Returns time-aggregated data.
  |
|
 Visits Live Report
  |
 Returns data about live visits.
  |

|
|
 Include
  |
 Select what you want to include in your "Standard Report." You can choose to include all data or just data that is archived, active, or traffic.
  |
|
 Group By
  |
 Enter a column name to group your report data by, such as

campaignId

,

clientId

, etc.
  |
|
 Campaign ID
  |
 Select the ID of the campaign you want to retrieve data for.
  |
|
 Time Zone
  |
 Select the time zone for your report data.
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
|
 Conversion Time Mode
  |
 Select whether to aggregate conversions by number of conversions or visits.
  |
|
 Unit
  |
 Select the time unit to use to aggregate your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

