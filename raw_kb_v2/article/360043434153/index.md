

Intro
-------

Spredfast is a social software platform which allows large companies to manage their online social media presence, build social media campaigns, and analyze social media performance. To learn more about the Spredfast API, visit their page (

http://dev.massrelevance.com/docs/ap...0/leaderboard/

).


 You connect to your Spredfast account in the Data Center. This topic discusses the fields and menus that are specific to the Spredfast connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Spredfast account and create a DataSet, you must have your Spredfast username and password.


 Connecting to Your Spredfast Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Spredfast Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Spredfast account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Spredfast username.
  |
|
 Password
  |
 Enter your Spredfast password.
  |


 Once you have entered valid Spredfast credentials, you can use the same account any time you go to create a new Spredfast DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains three primary menus—
 **Account Name**
 ,
 **Stream Name**
 , and
 **Reports**
 , along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter the name of the account you want to pull information for.
  |
|
 Stream Name
  |
 Enter the name of the stream you want to pull information for.
  |
|
 Report
  |
 Select the Spredfast report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Top Hashtags
  |
 Returns the most frequently mentioned hashtags (minus the #) in a stream.
  |
|
 Top URLs
  |
 Returns the most frequently mentioned URLs in a stream.
  |
|
 Top Terms
  |
 Returns dynamically-discovered top-mentioned words and 2-word phrases.
  |
|
 Top User Mentions
  |
 Returns the users who have been most frequently @-mentioned in a stream. Currently, only Twitter content is included.
  |
|
 Top Constrained Topics
  |
 Returns the top constrained topics for a stream.
  |
|
 Top Shares
  |
 Returns content that has been shared the most. Currently, only tweets from Twitter are included.
  |

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
 Resolution
  |
 Enter the resolution. The time range derived between
 **Start Days**
 and
 **End Days**
 will be divided into windows of the size specified by the resolution.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

