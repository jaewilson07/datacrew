

Intro
-------

Yahoo! Japan Corporation is a Japanese internet company originally formed as a joint venture between the American internet company Yahoo! (now Altaba) and the Japanese company SoftBank. To learn more about the Yahoo! Japan Marketing Solutions API, visit their page (

https://biz.marketing.yahoo.co.jp/de...er-en/program/

).


 You connect to your Yahoo! Japan Search Ads account in the Data Center. This topic discusses the fields and menus that are specific to the Yahoo! Search Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Yahoo! Japan Search Ads account and create a DataSet, you must have the following:

 An API access-exclusive account ID (Application Account ID), in the format xxxx-xxxx-xxxx-xxxx
* A password set to the Application Account ID (onBehalfOfAccountId)
* A Sponsored Search or Yahoo! Japan Display Ads Network account ID for access via API

To obtain these credentials, reach out to your Yahoo! Japan account representative.


 Connecting to Your Yahoo! Japan Search Ads Account
----------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Yahoo! Search Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Yahoo! Search Ads account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Application Account ID
  |
 Enter an API access-exclusive account ID (Application Account ID), in the format xxxx-xxxx-xxxx-xxxx.
  |
|
 Application Account Password
  |
 Enter your application account password.
  |
|
 Account ID
  |
 Enter your Sponsored Search or Yahoo! Japan Display Ads Network account ID.
  |


 Once you have entered valid Yahoo! Search Ads credentials, you can use the same account any time you go to create a new Yahoo! Search Ads DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Yahoo! Japan Search Ads report you want to run. Currently only one report is available.


|  |  |
| --- | --- |
|
 Impossible Field Combinations
  |
 Returns impossible field combinations data for the selected Report Type.
  |
|
 Report Service
  |
 Returns data from Yahoo! JAPAN Search Ads based on the Account ID and Report Type selected.
  |

|
|
 Report Type
  |
 Select the desired report type.


|
 Report Type
  |
 Description
  |
| --- | --- |
|
 Account
  |
 Returns account data.
  |
|
 Ad
  |
 Returns Ad data.
  |
|
 Ad Display Option
  |
 Returns Ad Display Option data.
  |
|
 Ad Group
  |
 Returns Ad Group data.
  |
|
 Bidding
  |
 Returns Bidding data.
  |
|
 Campaign
  |
 Returns Campaign data.
  |
|
 Geo
  |
 Returns Geo data.
  |
|
 Geo Targeting
  |
 Returns Geo Targeting data.
  |
|
 Keyword
  |
 Returns Keyword data.
  |
|
 Landing Page
  |
 Returns Landing Page data.
  |
|
 Schedule Targeting
  |
 Returns Schedule Targeting data.
  |
|
 Search Query
  |
 Returns Search Query data.
  |

|
|
 Account ID
  |

Select account ID.

|
|
 Report Fields
  |
 Select the columns you want to appear in your report.
  |
|
 Language
  |
 Select the language you want to filter your results by (the default is English).
  |
|
 Sort Type
  |
 Select whether you want to sort your data in ascending or descending order, or not at all.
  |
|
 Sort Field
  |
 Select a column to sort by.
  |
|
 Filter
  |
 Select whether you want to set a filter on your report.
  |
|
 Filter 1...6
  |
 Select a filter for your report.
  |
|
 Operator 1...6
  |
 Select an operator for your report.
  |
|
 Filter Value 1...6
  |
 Select a value for your report filter.
  |
|
 Date Range
  |
 Select the date range.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

