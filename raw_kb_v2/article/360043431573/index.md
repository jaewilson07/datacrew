

Intro
-------

Maropost is a leading provider of on-demand marketing, sales, e-commerce and infrastructure platforms with the power to execute sophisticated email marketing campaigns. Use Domo's Maropost connector to create reports about contacts, campaigns, email data, and so on. To learn more about the Maropost API, visit their page (

http://api.maropost.com/api

).


 You connect to your Maropost account in the Data Center. This topic discusses the fields and menus that are specific to the Maropost connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Maropost account and create a DataSet, you must have the following:

 Your Maropost account ID
* A Maropost API key

For information about obtaining these credentials, see

http://help.limelightcrm.com/hc/en-u...g-MaroPost-API

.


 Connecting to Your Maropost Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Maropost Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Maropost account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account ID
  |
 Enter your Maropost account ID.
  |
|
 API Key
  |
 Enter your Maropost API key.
  |

For information about obtaining these credentials, see

http://help.limelightcrm.com/hc/en-u...g-MaroPost-API

.

Once you have entered valid Maropost credentials, you can use the same account any time you go to create a new Maropost DataSet. You can manage connector accounts in the
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
 Select the Maropost report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Campaign
  |
 Retrieves a list of campaigns in your account.
  |
|
 Campaign Report
  |
 Returns all or specified campaign reports for a selected campaign type.
  |
|
 Custom Campaign
  |
 Returns a list of all custom campaigns in your account.
  |
|
 Custom Field
  |
 Returns  a list of custom fields in your account.
  |
|
 Custom Report List
  |
 Returns a list of custom reports in your account.
  |
|
 Email Bounce
  |
 Returns email bounce records for a specified time period.
  |
|
 Email Click
  |
 Returns email click records for a specified time period.
  |
|
 Email Complaints
  |
 Returns email complaint records for a specified time period.
  |
|
 Email Open
  |
 Returns email open records for a specified time period.
  |
|
 Email Unsubscribers
  |
 Returns email unsubscriber records for a specified time period.
  |
|
 Get Contents
  |
 Returns a list of contents for your account.
  |
|
 Get Lists
  |
 Returns all lists for your account.
  |
|
 Global Unscubscribers
  |
 Returns a list of global unsubscribers for your account.
  |
|
 Journey Contacts
  |
 Returns a list of contacts for all journeys or specified journeys.
  |
|
 Journeys
  |
 Returns a list of journeys for your account.
  |
|
 Push Notifications
  |
 Returns a list of push notifications for your account.
  |
|
 Reports
  |
 Returns a list of reports for your account.
  |
|
 Tags
  |
 Returns a list of tags for your account.
  |
|
 Test Reports
  |
 Returns a list of test reports.
  |
|
 YTD Reports
  |
 Returns a list of YTD reports.
  |

|
|
 Campaign Type
  |
 Select a filter for the campaigns that will appear in your report.
  |
|
 Which Campaigns
  |
 Select whether to pull all campaigns for the selected
 **Campaign Type**
 or just those you specify.
  |
|
 Campaign ID
  |
 Select the campaigns you want to retrieve data for.
  |
|
 Unique
  |
 Select
 **True**
 to pull all unique records, or select
 **False**
 to pull all records.
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
 Specific Date
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
 Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Specific End Date
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
 Which Journeys
  |
 Select whether to pull all campaigns or just those you specify.
  |
|
 Journey ID
  |
 Select the journeys you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

