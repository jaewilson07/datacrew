

Intro
-------


 Adap.tv

, a part of ONE by AOL, transforms the way programmatic video advertising is bought and sold. To learn more about the

Adap.tv

API, visit their page (

https://learn.onevideo.aol.com/APIs/Reporting\_API#/

). You will need to sign in to view this content.


 You connect to your

Adap.tv

account in the Data Center. This topic discusses the fields and menus that are specific to the

Adap.tv

connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your

Adap.tv

account and create a DataSet, you must have an

Adap.tv

username and password.


 Connecting to Your

Adap.tv

Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Adap.tv

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Adap.tv

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your

Adap.tv

username.
  |
|
 Password
  |
 Enter your

Adap.tv

password.
  |


 Once you have entered valid

Adap.tv

credentials, you can use the same account any time you go to create a new

Adap.tv

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of menus in which you can select and configure your

Adap.tv

report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Organization ID
  |
 If you want to enter your own organization ID, select
 **Override**
 . Otherwise, leave this set to
 **Default**
 .
  |
|
 Enter Your Organization ID
  |
 Enter the ID of the organization you want to retrieve data for.
  |
|
 Report
  |
 Select the

Adap.tv

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ad Hoc Report
  |
 Allows you to build out your own customized report by selecting keys and metrics and indicating a date range.
  |
|
 Generated Report
  |
 Lets you import a report that already exists in your

Adap.tv

account.
  |
|
 List Reports
  |
 Returns a list of all reports in your

Adap.tv

account.
  |

|
|
 Report Name
  |
 Select the existing report you want to pull into Domo.
  |
|
 Keys
  |
 Select all of the keys you want to import into your report.
  |
|
 Metrics
  |
 Select all of the metrics you want to appear in your report.
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

