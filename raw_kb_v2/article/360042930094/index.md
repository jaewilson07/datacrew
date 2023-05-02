

Intro
-------

Twitter is an online social networking and microblogging service that enables users to send and read short messages called "tweets." To learn more about the Twitter API, visit their page (

https://dev.twitter.com/rest/reference

).


 You connect to your Twitter app in the Data Center. This topic discusses the fields and menus that are specific to the Twitter Engagement connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

Because this connector uses the Twitter Engagement API, one of Twitter’s Enterprise-level APIs, your business will need to sign a contract with Twitter to use this API. See

Twitter Enterprise data

for more information and to set up a contract with Twitter to access this API.


 To connect to your Twitter app and create a DataSet, you must have the following:

 A Twitter consumer key
* A Twitter consumer secret

These credentials are associated with the Twitter app you created at

https://developer.twitter.com

. For more information, see

https://developer.twitter.com/en/docs/basics/authentication/guides/access-tokens

.


 When you create your Twitter app, you will need to enter the following redirect URIs:

 https://oauth.dev.domo.com/api/data/v1/oauth/providers/twitter-engagement/callback
* https://oauth.domo.com/api/data/v1/oauth/providers/twitter-engagement/callback

Connecting to your Twitter app
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter Engagement Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Twitter account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Consumer Key
  |
 Enter the consumer key associated with your Twitter app.
  |
|
 Consumer Secret
  |
 Enter the consumer secret associated with your Twitter app.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Twitter Engagement DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus and options.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Twitter Engagement report you want to run. Currently only a single report is available.


|  |  |
| --- | --- |
|
 Historical Engagement
  |
 Return engagement metrics broken down by Tweet, engagement type, date, and/or hour of the day.
  |

|
|
 Tweet Selection
  |
 Select whether you want to retrieve a specified number of recent tweets to retrieve data for or manually select the tweets.
  |
|
 Number of Tweets
  |
 Enter the number of recent tweets you want to retrieve.
  |
|
 Tweets
  |
 Select the tweets you want to retrieve data for. Only 100 tweets can be returned.
  |
|
 Engagement Metrics
  |
 Select the engagement metrics you want to be calculated and returned.
  |
|
 Group By
  |
 Select the categories that will be used to aggregate your report data.
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


 FAQs
------


####
 Can I use the same account to create multiple DataSets?

Yes.

###
 How often can the data be updated?

Most information is available immediately. It is recommended that you configure the DataSets to run every 24 hours.

###
 Are there any API limits I should be aware of?

No.

