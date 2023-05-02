

Intro
-------


 Percolate's complete web and mobile marketing software increases productivity, elevates your brand, and helps you generate more sales.

To learn more about the Percolate API, visit their page (

https://percolate.com/docs/api/

).


 You connect to your Percolate account in the Data Center. This topic discusses the fields and menus that are specific to the Percolate connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Percolate account and create a DataSet, you must have a Percolate API key. For information about obtaining an API key, contact your Percolate account representative.


 Connecting to Your Percolate Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Percolate Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Percolate account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Percolate API key.
  |


 Once you have entered valid Percolate credentials, you can use the same account any time you go to create a new Percolate DataSet. You can manage connector accounts in the
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
 Select the Percolate report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Analytics
  |
 Returns data on the selected channels and metrics.
  |
|
 Export
  |
 Returns export data for the selected license IDs.
  |
|
 Fulfillment
  |
 Returns data for the selected brief ID.
  |
|
 Partners
  |
 Returns data about the selected partner.
  |
|
 Post Analytics
  |
 Returns post data for the selected channels and metrics.
  |
|
 Post by Brand
  |
 Returns post data for the provided brand IDs.
  |
|
 Post by License
  |
 Returns post data for the selected license IDs.
  |

|
|
 Interval Unit
  |
 Select whether you want the report data to be broken down by day, week, or month.
  |
|
 Type
  |
 Select the type of data you want to retrieve.
  |
|
 Channels
  |
 Select all the channels you want to retrieve data for.
  |
|
 Metrics
  |
 Select all the metrics you want to retrieve data for.
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
 License IDs
  |
 Select the license IDs you want to retrieve information for.
  |
|
 Export Type
  |
 Select the export type you want to retrieve information for.
  |
|
 Rows to Return
  |
 Enter the number of rows of data you want to be returned in the report. The default is 5,000.
  |
|
 Brief ID
  |
 Enter the brief ID you want to retrieve information for.
  |
|
 Partner ID
  |
 Enter the partner ID you want to retrieve information for.
  |
|
 Brand IDs
  |
 Enter a list of brand IDs you want to retrieve information for, separated by commas.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

