

Intro
-------

Zingfit is a system that allows fitness industry users to schedule cycling classes, customize pricing details, and monitor website content. To learn more about the Zingfit API, visit their page (

https://zingfit.com/support-center/d...per-resources/

).


 You connect to your Zingfit account in the Data Center. This topic discusses the fields and menus that are specific to the Zingfit connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zingfit account and create a DataSet, you must have the following:

 A Zingfit client ID
* A Zingfit client secret

If you do not have these credentials, reach out to your Zingfit client representative.


 Connecting to Your Zingfit Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zingfit Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zingfit account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Zingfit client ID.
  |
|
 Client Secret
  |
 Enter your Zingfit client secret.
  |


 Once you have entered valid Zingfit credentials, you can use the same account any time you go to create a new Zingfit DataSet. You can manage connector accounts in the
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
 Select the Zingfit report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Attendance
  |
 Returns attendance figures for your classes.
  |
|
 Classes
  |
 Returns a list of your classes.
  |
|
 Customers
  |
 Returns a list of your customers.
  |
|
 Products
  |
 Returns a list of your products.
  |
|
 Sales
  |
 Returns sales data for your account.
  |
|
 Series
  |
 Returns series information.
  |

|
|
 Region
  |
 Select the region you want to pull data for.
  |
|
 Site
  |
 Select the site you want to pull data for.
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
 Modified Date Type
  |
 Select whether you want your "Last modified" date to be for a specific date or a relative number of days back.
  |
|
 Specific Modified Date
  |
 Select the desired "Last modified" date for your report data.
  |
|
 Modified Date Offset
  |
 Select the desired offset (number of relative days back) for your report data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

