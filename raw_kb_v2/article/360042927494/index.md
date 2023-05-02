

Intro
-------

Taboola is a native advertising platform making personalized recommendations to more than one billion users monthly.  To learn more about the Taboola API, visit their Github page (

https://github.com/taboola/Backstage-API

).


 You connect to your Taboola account in the Data Center. This topic discusses the fields and menus that are specific to the Taboola connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Taboola account and create a DataSet, you must have the following:

 A Taboola client ID
* A Taboola client secret

Connecting to Your Taboola Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Taboola Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Taboola account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Taboola client ID.
  |
|
 Client Secret
  |
 Enter your Taboola client secret.
  |


 Once you have entered valid Taboola credentials, you can use the same account any time you go to create a new Taboola DataSet. You can manage connector accounts in the
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
 Select the Taboola report you want to run. Currently only a single report type is available.


|  |  |
| --- | --- |
|
 Advertisers
  |
 Returns a list of Advertisers associated with the user
  |
|
 Campaigns
  |
 Returns a list of campaigns associated with the user
  |
|
 Campaign Items
  |
 Returns all campaign items of a campaign associated with the user
  |
|
 Campaign Summary
  |
 Returns a summary of the campaigns like cpm, ctr, clicks, impressions, etc.
  |
|
 Publishers
  |
 Returns a list of publishers associated with the user
  |
|
 RSS Children
  |
 Returns a list of RSS children associated with the user
  |
|
 RSS item Child
  |
 Returns all items of a RSS item associated with the user
  |
|
 Specific Campaign
  |
 Returns the data of Specific Campaign.
  |
|
 Recirculation Summary
  |
 Returns a publisher report which provides organic content performance information such as Page Views and CTR associated with the user
  |
|
 Revenue Summary
  |
 Returns revenue summary details such as Ad Revenue, Currency and more.
  |
|
 Visit Value
  |
 Provides revenue and engagement metrics for an entire visit, allowing to deduce the value of a visitor.
  |

|
|
 Container Account ID
  |
 Enter the container account id. This can be the account id of any account that contains Advertisers.
  |
|
 Account ID
  |
 Enter the account id. For the Campaign or Campaigns reports, this id must reference an Account with ADVERTISER in its partner\_types field.
  |
|
 Campaign ID
  |
 Enter the campaign ID.
  |
|
 Dimension
  |
 Select how you want the data in your report to be broken down
  |
|
 Item ID
  |
 Enter the item ID.
  |
|
 Child ID
  |
 Enter the child ID.
  |
|
 Partner ID
  |
 Enter the partner ID.
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

