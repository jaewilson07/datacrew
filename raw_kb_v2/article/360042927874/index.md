

Intro
-------

PriceSpider builds seamless shopping experiences along with highly engaging monitoring tools. You connect to your PriceSpider account in the Data Center. This topic discusses the fields and menus that are specific to the PriceSpider connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PriceSpider account and create a DataSet, you must have a PriceSpider API key. To obtain an API key, reach out to your Digital River account manager.


 Connecting to Your PriceSpider Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PriceSpider Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your PriceSpider account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your PriceSpider API key.
  |


 Once you have entered valid PriceSpider credentials, you can use the same account any time you go to create a new PriceSpider DataSet. You can manage connector accounts in the
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
 Select the PriceSpider report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Aggregates
  |
 Returns customer report data.
  |
|
 Impressions
  |
 Returns data about selected widget impressions.
  |
|
 Sales
  |
 Returns sales information for a selected time period.
  |
|
 Widgets
  |
 Returns a list of widgets.
  |

|
|
 Aggregation Period
  |
 Select how you want your report data to be aggregated (broken down).
  |
|
 Widgets
  |
 Select all of the widgets you want to retrieve information for.
  |
|
 Include Seller Details
  |
 Select
 **Yes**
 if you want your report to show seller details; otherwise select
 **No**
 .
  |
|
 Select Details to Include
  |
 Select whether you want to show seller details, product details, or none.
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

