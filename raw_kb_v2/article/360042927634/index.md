

Intro
-------

YouGov specializes in market research through online methods.  To learn more about the YouGov API, visit their GitHub page (

https://gist.github.com/iaincollins/...720ee77f13cae8

).


 You connect to your YouGov account in the Data Center. This topic discusses the fields and menus that are specific to the YouGov connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your YouGov account and create a DataSet, you must have the following:

 A YouGov client ID
* A YouGov client secret

These credentials should have been provided to you by YouGov. If you do not have them, reach out to your YouGov account representative.


 Connecting to Your YouGov Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the YouGov Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your YouGov account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your YouGov client ID.
  |
|
 Client Secret
  |
 Enter your YouGov client secret.
  |


 Once you have entered valid YouGov credentials, you can use the same account any time you go to create a new YouGov DataSet. You can manage connector accounts in the
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
 Select the YouGov report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Multi Brand
  |
 Returns a file payload similar to simple timeline files, but instead of representing the data for one brand only, it can contain more than one brand per file.
  |
|
 Single Brand
  |
 Returns a file payload with data points by date and metric.
  |

|
|
 Region
  |
 Select the region you want to retrieve data for.
  |
|
 Sector Type
  |
 Select whether you want to retrieve data for a normal or custom sector.
  |
|
 Sector Name
  |
 Select the name of the sector you want to retrieve data for.
  |
|
 Custom Sector Name
  |
 Select the name of the custom sector you want to retrieve data for.
  |
|
 Brand Name
  |
 Select the brand name you want to retrieve data for. For the "Multi Brand" report, you can select as many brands as you want.
  |
|
 Scoring
  |
 Select the desired scoring type.
  |
|
 Metric Filters
  |
 Select the desired metric filters.
  |
|
 Demographic Filters Name
  |
 Select the desired demographic filters.
  |
|
 Metric Name
  |
 Select the desired metric names.
  |
|
 Period Type
  |
 Select the desired date granularity for your report (day, week, month, or year).
  |
|
 Period Size (Optional)
  |
 Enter the desired period size for the report.
  |
|
 Moving Average (Optional)
  |
 Enter the desired moving average for the report.
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

