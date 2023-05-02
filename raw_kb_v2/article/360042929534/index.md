

Intro
-------

Five9 provides cloud call center software. To learn more about the Five9 API, visit their page (

https://www.five9.com/products/appli...ion/cloud-apis

).


 You connect to your Five9 account in the Data Center. This topic discusses the fields and menus that are specific to the Five9 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Five9 account and create a DataSet, you must have a Five9 username and password.


 Connecting to Your Five9 Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Five9 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Five9 account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Five9 username.
  |
|
 Password
  |
 Enter your Five9 password.
  |
|
 Domain
  |
 Select the appropriate Five9 domain:
 * US if you get your data from

https://api.five9.com
* EU if you get your data from

https://api.five9.eu
 |


 Once you have entered valid Five9 credentials, you can use the same account any time you go to create a new Five9 DataSet. You can manage connector accounts in the
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
 Select the Five9 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 ACD Status
  |
 Returns Automatic Call Distributor (ACD) status data.
  |
|
 Standard Five9 Reports
  |
 Returns existing reports from Five9, including ACD Queue reports, Call Log reports, IVR reports, and Agent reports.
  |

|
|
 Folder
  |
 Select the Five9 folder containing the report you want to import into Domo.
  |
|
 Report Name
  |
 Select the existing Five9 report you want to import into Domo.
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

a DataSet Using a Data Connector

.


 FAQs
------


####
 Can I use the same account multiple times to create DataSets?

Yes.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No.

