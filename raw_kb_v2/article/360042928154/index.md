

Intro
-------

GradLeaders provides recruitment and career services technology, connecting employers with job-seeking students and alumni from schools around the world. Use Domo's GradLeaders connector to retrieve lists of companies and recruiters. GradLeaders does not have online API documentation, but you can visit their website at

https://www.gradleaders.com/

.


 You connect to your GradLeaders account in the Data Center. This topic discusses the fields and menus that are specific to the GradLeaders connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your GradLeaders account and create a DataSet, you must have a GradLeaders API key. Contact your support representative for more information.


 Connecting to Your GradLeaders Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the GradLeaders Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your GradLeaders account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your GradLeaders API key.
  |


 Once you have entered valid GradLeaders credentials, you can use the same account any time you go to create a new GradLeaders DataSet. You can manage connector accounts in the
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
 Select the GradLeaders report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Modified Companies
  |
 Retrieves a list of modified companies.
  |
|
 Get New Companies
  |
 Retrieves a list of newly added companies.
  |
|
 Get Modified Recruiters
  |
 Retrieves a list of modified recruiters.
  |
|
 Get New Recruiters
  |
 Retrieves a list of newly added recruiters.
  |

|
|
 Custom Fields
  |
 Select all custom fields you want to appear in your report.
  |
|
 Include New
  |
 Select whether you want newly added records to appear in your report.
  |
|
 Date Type
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Date Picker
  |
 Select the date for the report.
  |
|
 Date Offset
  |
 Enter the number of past days that should appear in the report.
  |
|
 Date From
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **Date To**
 .
  |
|
 Date To
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Date From**
 .
  |
|
 Date From Picker
  |
 Select the first date in your date range.
  |
|
 Date To Picker
  |
 Select the second date in your date range.
  |
|
 Date From Offset
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Date To Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Date To Offset
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Date From Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

