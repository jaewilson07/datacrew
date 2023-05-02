

Intro
-------

Marin Social is a powerful campaign management, reporting, and optimization solution that helps you scale your programs, make better decisions, and acquire high-value customers across social networks. Use Domo's Marin Social connector to retrieve data about campaigns, clients, advertisements, and so on. To learn more about the Marin Social API, you can download their API documentation here:

http://kb.socialmoov.com/wp-content/uploads/2015/09/API-Documentation\_2.1.7.docx

.


 You connect to your Marin Social account in the Data Center. This topic discusses the fields and menus that are specific to the Marin Social connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Marin Social account and create a DataSet, you must have a Marin Social API key. You should receive an API key upon creating a Marin Social account.


 Connecting to Your Marin Social Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Marin Social Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Marin Social account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Marin Social API key.
  |


 Once you have entered valid Marin Social credentials, you can use the same account any time you go to create a new Marin Social DataSet. You can manage connector accounts in the
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
 Select the Marin Social report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns all accounts for your agency.
  |
|
 Account Audiences
  |
 Returns all audiences for a selected account ID.
  |
|
 Account Lead Forms
  |
 Returns all lead forms for a selected account ID.
  |
|
 Ad Statistics
  |
 Returns ad statistics for a given client ID, campaign ID, ad ID, and timeframe.
  |
|
 Advertisers
  |
 Returns all advertisers for your agency.
  |
|
 Campaigns
  |
 Returns all campaigns for your account.
  |
|
 Campaign Ads
  |
 Returns all campaign ads for a given client ID and campaign ID.
  |
|
 Campaign Statistics
  |
 Returns campaign statistics for a given client ID, campaign ID, level, and timeframe.
  |
|
 Clients
  |
 Returns all clients for your account.
  |
|
 Client Campaigns
  |
 Returns all client campaigns for a given client ID.
  |
|
 Client Users
  |
 Returns all client users for a given client ID.
  |
|
 Funding Instruments
  |
 Returns all funding instruments for a given account ID.
  |
|
 Objects
  |
 Returns all funding instruments for a given object ID.
  |
|
 Statistics
  |
 Returns statistics for a given client ID, level, and timeframe.
  |
|
 Users
  |
 Returns all users for your account.
  |

|
|
 Account ID
  |
 Select the IDs for all accounts you want to retrieve information for.
  |
|
 Client ID
  |
 Select the IDs for all clients you want to retrieve information for.
  |
|
 Campaign ID
  |
 Select the IDs for all campaigns you want to retrieve information for.
  |
|
 Ad ID
  |
 Select the IDs for all ads you want to retrieve information for.
  |
|
 Time
  |
 Select whether you want data in your report to be broken down by day, month, or period.
  |
|
 Level
  |
 Select the reporting level for the data.
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

