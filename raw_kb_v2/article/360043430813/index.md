

Intro
-------

AdGear is an online advertising technology company that provides a full stack of real-time advertising products. To learn more about these APIs, visit their page (

https://adgear.atlassian.net/wiki/sp...nsole+REST+API

).


 You connect to your AdGear account in the Data Center. This topic discusses the fields and menus that are specific to the AdGear connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AdGear account and create a DataSet, you must have the following:

 The username for your AdGear account.
* An AdGear API key.

*To generate an API key, do the following:**

. Log into your AdGear account.
2. Click your username in the top-right corner of the user interface.
3. Check the checkbox reading
 **Enable HTTP Digest API?**
4. Save.


 An API key should now be automatically generated.

Connecting to Your AdGear Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AdGear Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AdGear account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your AdGear account.
  |
|
 API Key
  |
 Enter your AdGear API key. For information about obtaining an API key, see "Prerequisites," above.
  |
|
 Reporting Service Type
  |
 Select the AdGear API you want to retrieve reports from.
  |


 Once you have entered valid AdGear credentials, you can use the same account any time you go to create a new AdGear DataSet. You can manage connector accounts in the
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
 Select an AdGear reporting option. The following reports are available:


|  |  |
| --- | --- |
|
 Create Report
  |
 Lets you configure a report with your desired dimensions, metrics, and date options.
  |
|
 Public Report
  |
 Lets you choose a public report from the selected API.
  |
|
 Report List
  |
 Retrieves all reports in the selected API.
  |
|
 Retrieve a Report
  |
 Lets you choose an individual report from the selected API.
  |

|
|
 Query Type
  |
 Select the desired query type for your report.
  |
|
 Dimension
  |
 Select the dimensions you want to appear your report.
  |
|
 Metrics
  |
 Select the metrics you want to appear in your report.
  |
|
 Report Title
  |
 Select the report you want to pull into Domo.
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

Adding a DataSet Using a Data Connector

.

