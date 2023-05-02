

Intro
-------

Workiva is a leading cloud platform for connected reporting across accounting, finance, audit, and internal controls. To learn more about the Workiva API, visit their page (

https://success.workiva.com/developers/api-reference

).


 You connect to your Workiva account in the Data Center. This topic discusses the fields and menus that are specific to the Workiva connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Workiva account and create a DataSet, you must have the following:

 A Workiva client ID
* A Workiva client secret

To learn how to obtain credentials, see

https://success.workiva.com/developers/guides/setup

.


 Connecting to Your Workiva Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Workiva Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Workiva account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Workiva client ID.
  |
|
 Client Secret
  |
 Enter your Workiva client secret.
  |


 Once you have entered valid Workiva credentials, you can use the same account any time you go to create a new Workiva DataSet. You can manage connector accounts in the
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
 Select the Workiva report you want to run. Currently only a single report type is available.


|  |  |
| --- | --- |
|
 Spreadsheets
  |
 Returns data from a specified spreadsheet and region.
  |

|
|
 Spreadsheet ID
  |
 Enter the ID of your Workiva spreadsheet. This can be found in the spreadsheet URL. For example, in the URL


 https://app

.

wdesk.com/a/aabbccddeeffgghhkkllXTest/spreadsheet/aaaa-bbbb-cccc-dddd-eeee


 , the ID is

aaaa-bbbb-cccc-dddd-eeee

.
  |
|
 Sheet ID
  |
 Select the specific sheet you want to retrieve data from.
  |
|
 Region
  |
 Enter the region of the spreadsheet you want to pull into Domo. Formatting guidelines are as follows:


|
 If you were to enter this...
  |
 ...the following data would be pulled into Domo
  |
| --- | --- |
|

A1

|
 Data from the cell A1
  |
|

A2:D8

|
 All data in the range between A2 and D8 (inclusive)
  |
|

A:A

|
 All data in column A
  |
|

1:3

|
 All data in rows 1 through 3
  |
|

B3:

|
 All data below and to the right of B3 (inclusive)
  |
|

:

|
 All data in the sheet
  |

|
|
 Value Style
  |
 Select whether you want cell values to be returned as raw or calculated. If you select
 **Raw**
 ,

raw values are returned (such as

1 + 1

instead of

2

). If you select
 **Calculated**
 , values are calculated before being pulled into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 What endpoint is the base URL for this connector?


 https://api.app.wdesk.com


#####
 How frequently will my data update?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

####
 Can I use the same account to create multiple DataSets?

Yes.

