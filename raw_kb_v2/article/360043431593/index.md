

Intro
-------

Moat is a SaaS analytics company focused on transforming brand advertising online. To learn more about the Moat API, visit their page (

https://moat.com/analytics

).


 You connect to your Moat account in the Data Center. This topic discusses the fields and menus that are specific to the Moat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Moat account and create a DataSet, you must have a Moat username and password.


 Connecting to Your Moat Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Moat Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Moat account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Moat account.
  |
|
 Password
  |
 Enter the password for your Moat account.
  |


 Once you have entered valid Moat credentials, you can use the same account any time you go to create a new Moat DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a menu from which you select a report, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Moat report you want to run. Currently only one report is available.


|  |  |
| --- | --- |
|
 Stats
  |
 Retrieves statistics for selected columns in your Moat account for a specified timeframe.
  |

|
|
 Columns
  |
 Check the boxes for all fields you want to be pulled into your Moat report in Domo.
  |
|
 Level 1 ID (Optional)
  |
 Enter the Level 1 ID you want to retrieve data for. This is equivalent to an Advertiser.
  |
|
 Level 2 ID (Optional)
  |
 Enter the Level 2 ID you want to retrieve data for. This is equivalent to a Campaign.
  |
|
 Level 3 ID (Optional)
  |
 Enter the Level 3 ID you want to retrieve data for. This is equivalent to a Line Item.
  |
|
 Level 4 ID (Optional)
  |
 Enter the Level 4 ID you want to retrieve data for. This is equivalent to a Creative.
  |
|
 Slicer 1 ID (Optional)
  |
 Enter the Slicer 1 ID you want to retrieve data for. This is equivalent to a Site ID.
  |
|
 Slicer 2 ID (Optional)
  |
 Enter the Slicer 2 ID you want to retrieve data for. This is equivalent to a Placement/Position.
  |
|
 Width Height (Optional)
  |
 Enter the width height you want to retrieve data for. Example:

300\_250

|
|
 OS Browser (Optional)
  |
 Enter the browser you want to retrieve data for. The following browsers are available:
 * Android
* BlackBerry
* iPad
* iPhone
* iPod
* Kindle
* Chrome
* Firefox
* MSIE (Microsoft Internet Explorer)
* Opera
* Safari
* Desktop
* Mobile
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

