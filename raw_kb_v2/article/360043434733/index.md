

Intro
-------

WeChat is a social media platform used primarily in China. It allows businesses to interact with followers and to post articles directly to their followers' feeds. To learn more about the WeChat API, visit their page (

http://admin.wechat.com/wiki/index.p...I\_Introduction

).


 You connect to your WeChat account in the Data Center. This topic discusses the fields and menus that are specific to the WeChat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your WeChat account and create a DataSet, you must have the following:

 A WeChat app ID
* A WeChat app secret

You can obtain these credentials by signing up to use the WeChat General API.


 Connecting to Your WeChat Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the WeChat Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your WeChat account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 App ID
  |
 Enter your WeChat app ID.
  |
|
 App Secret
  |
 Enter your WeChat app secret.
  |
|
 Account Type
  |
 Select whether you have a "China" or "International" account.
  |


 Once you have entered valid WeChat credentials, you can use the same account any time you go to create a new WeChat DataSet. You can manage connector accounts in the
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
 Select the WeChat report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Article Summary
  |
 Returns daily summary data for articles.
  |
|
 Article Total
  |
 Returns cumulative data for articles.
  |
|
 Interface Summary
  |
 Returns callback data.
  |
|
 UpStream Message
  |
 Returns profile data for user-sent messages.
  |
|
 UpStream Message Distribution
  |
 Returns distribution data for user-sent messages.
  |
|
 User Cumulate
  |
 Returns accumulated followers data.
  |
|
 User Read
  |
 Returns data about users who have been reading messages.
  |
|
 User Share
  |
 Returns data about users who have been sharing messages.
  |
|
 User Summary
  |
 Returns user summary data.
  |

|
|
 Duration
  |
 Select the duration for your report.
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


#####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 Are there any API restrictions I should be aware of?

To prevent loading exceptions caused by program errors, each official account can only call APIs a limited number of times per day.

