

Intro
-------

SpotX is a global video ad serving platform that allows digital media owners to monetize their content with video advertising across desktop, mobile and connected devices. To learn more about the SpotX API, visit their page (

https://developer.spotxchange.com/co...cs/overview.md

).


 You connect to your SpotX account in the Data Center. This topic discusses the fields and menus that are specific to the SpotX connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SpotX account and create a DataSet, you must have a SpotX username and password.


 Connecting to Your SpotX Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SpotX Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SpotX account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your SpotX username.
  |
|
 Password
  |
 Enter your SpotX password.
  |


 Once you have entered valid SpotX credentials, you can use the same account any time you go to create a new SpotX DataSet. You can manage connector accounts in the
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
 Select the SpotX report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Advertiser
  |
 Provides advertiser-level performance data including the advertiser by domain and ad partner (e.g., TubeMogul, Turn, DataXu, etc.) against performance

metrics like bids, impressions, average bid CPM, and revenue.
  |
|
 Deal
  |
 Provides metrics against error conditions (VAST Time-Outs, VAST Opt-Outs, VPAID Opt-Outs and

Technical Errors) in third party demand sources that contribute to a failure to monetize a publisher’s

impression opportunities.
  |
|
 Referrer
  |
 Provides ad impression performance data at the referrer level. This report provides performance data for each referrer URL.
  |
|
 Revenue
  |
 Provides channel-level performance data including metrics like impressions, clicks, net revenue, etc.
  |
|
 Traffic
  |
 Provides ad impression funnel data, allowing you to evaluate the decay from ad requests to ads

available and finally impressions with the resulting net revenue.
  |

|
|
 Date Range
  |
 Select the date range you want to retrieve data for. You can input a custom start and end date by selecting
 **Custom Date Range**
 .
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
 Currency Code
  |
 Select the currency to use in the report. For the current month, the most recent daily exchange rate is used. For past months, the exchange rate of the last day of the month is used.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

