

Intro
-------

Sysomos Expion lets users manage content and relationships across social channels at scale by integrating content marketing, social management, and analytics. Use Domo's Sysomos Expion connector to retrieve ad data, insights, messages, account information, and more. To learn more about the Sysomos Expion API, visit their page (

https://sysomos.com/services/api/

).


 You connect to your Sysomos Expion account in the Data Center. This topic discusses the fields and menus that are specific to the Sysomos Expion connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sysomos Expion account and create a DataSet, you must have the following:

 The client ID for your Sysomos Expion application
* The client secret for your Sysomos Expion application

If you do not know your credentials, reach out to your Sysomos support representative.


 Connecting to Your Sysomos Expion Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sysomos Expion Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Sysomos Expion account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the client ID for your Sysomos application.
  |
|
 Client Secret
  |
 Enter the client secret for your Sysomos application.
  |


 Once you have entered valid Sysomos Expion credentials, you can use the same account any time you go to create a new Sysomos Expion DataSet. You can manage connector accounts in the
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
 Select the Sysomos Expion report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Insights
  |
 Returns account-level insight data.
  |
|
 Account Stats
  |
 Returns historical data about account metrics.
  |
|
 Accounts
  |
 Returns data about accounts.
  |
|
 Ad Data
  |
 Returns ads generated from this account.
  |
|
 Ad Insights - Actions
  |
 Returns ad-level insight data for action items via account or message ID.
  |
|
 Ad Insights - Metrics
  |
 Returns ad-level insight data for metrics via account or message ID.
  |
|
 Message Insights
  |
 Returns message-level insight data.
  |
|
 Message Stats
  |
 Returns lifetime values of metrics for a message, such as comments, likes, and share counts.
  |
|
 Messages
  |
 Returns messages generated from the account.
  |
|
 Reviews
  |
 Returns reviews on the account.
  |
|
 Tag Messages
  |
 Returns tag messages generated from the account.
  |
|
 Tags
  |
 Returns details for a tag.
  |
|
 UGC Messages
  |
 Returns messages from your account that have user-generated approval rights.
  |
|
 User-Assigned Ad Accounts
  |
 Returns your users' ad accounts.
  |

|
|
 Channel
  |
 Select the social media channel you want to retrieve data for.
  |
|
 Accounts
  |
 Select all accounts you want to retrieve data for.
  |
|
 Account
  |
 Select the account you want to retrieve data for.
  |
|
 Ad Account
  |
 Select the ad account you want to retrieve data for.
  |
|
 Message Filtering Criteria
  |
 Select whether messages in your report will be manually selected or filtered by date.
  |
|
 Messages (Optional)
  |
 Select all messages you want to retrieve data for.
  |
|
 Tags
  |
 Select all tags you want to retrieve data for.
  |
|
 Topic
  |
 Select the topics you want to retrieve data for.
  |
|
 Ads (Optional)
  |
 Select all ads you want to retrieve data for.
  |
|
 Period
  |
 Select the period you want to aggregate your report data by.
  |
|
 Sort
  |
 Select whether report rows will be sorted by post date or the date of the last tag change.
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
 Enter the number of past days that should appear in the report. Use

0

or

today

for today's date,

1

or

yesterday

for yesterday's date, or

X

or

today-X

to get data for X days ago.  For example, if you entered

today-10

, your report would return data for 10 days in the past.
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
 to create a range of represented days. Use

0

or

today

for today's date,

1

or

yesterday

for yesterday's date, or

X

or

today-X

to get data for X days ago.


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
 to create a range of represented days. Use

0

or

today

for today's date,

1

or

yesterday

for yesterday's date, or

X

or

today-X

to get data for X days ago.


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

Adding a DataSet Using a Data Connector

.

