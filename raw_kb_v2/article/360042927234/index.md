

Intro

﻿
------------

Salesforce Radian6 enables users to listen to, analyze, and be engaged in customers’ conversations about their company, products, and competitors.


 Use Domo's Salesforce Radian6 connector to extend the functionality of the Salesforce Marketing Cloud. With the Radian6 API, you can

 create custom reporting and make your own visualizations.
* extract post data directly from your Topic Profiles.
* extract the data from visualizations or widgets from the Radian6 Dashboard.
* access appended post data like post tags and source tags.

To learn more about the Salesforce Radian6 API, visit their website (

https://developer.salesforce.com/docs/atlas.en-us.salesforce1api.meta/salesforce1api/radian6\_intro.htm

).


 The Salesforce Radian6 connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Salesforce Radian6 account in the

Data Center

. This topic discusses the fields and menus that are specific to the Radian6 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 This is the "advanced" version of the connector, which includes more report types and configuration options than the standard version. For more information about the standard version, see

Salesforce Radian6 Connector

.


 Prerequisites
---------------

To connect to your Salesforce Radian6 account and create a DataSet, you must have the following:

 Your Radian6 username and password.
* Your Radian6 API key. If you do not know your API key, contact your Salesforce Radian6 account representative.

Connecting to Your Salesforce Radian6 Account
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Salesforce Radian6 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Salesforce Radian6 account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Radian6 Environment
  |
 Select the Radian6 environment you want to connect to.
  |
|
 Username
  |
 Enter the username you use to log into your Radian6 account.
  |
|
 Password
  |
 Enter the password you use to log into your Radian6 account.
  |
|
 API Key
  |
 Enter your Radian6 API key. If you do not know your API key, contact your account representative.
  |

Once you have entered valid Radian6 credentials, you can use the same account any time you go to create a new Radian6 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a
 **Report**
 menu in which you can select a Radian6 report type. Other menus and fields may appear depending on the report you've selected.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Radian6 report. The following reports are available:


|  |  |
| --- | --- |
|
 Conversation Cloud
  |
 Returns Conversation Cloud information for a given number of past hours, with filters on topics, advanced filter types and extended media types.
  |
|
 Insight Segmentation
  |
 Returns insight segmentation information for the given date or date range.
  |
|
 Number of Posts
  |
 Returns the number of posts for all topics.
  |
|
 Radian6 River of News
  |
 Returns River of News post content for a given number of past hours.
  |
|
 Radian6 River of News by Keyword Group
  |
 Returns River of News post content for a given number of past hours, broken down by keyword group.
  |
|
 Topic Information
  |
 Returns topic information for the given set of credentials.
  |
|
 Topic Trends
  |
 Returns time series data for a selected topic.
  |


 |
|
 Topic ID/Topic Profile ID
  |
 Enter the topic ID(s) you want to retrieve information for. Enter

All

to retrieve information for all topics. To retrieve multiple topics for the "River of News" reports, enter the names separated by commas. For example:

123,456,789.

Multiple IDs are not supported in the "Insight Segmentation" report.
  |
|
 Topics/Topics Profile
  |
 Select the topics you want to retrieve report data for.
  |
|
 Advanced Filter Types
  |
 Select all of the advanced filter types you want to use to pull data.
  |
|
 Extended Media Types
  |
 Select all of the extended media types you want to use to pull data.
  |
|
 Hours
  |
 Enter the number of past hours you want to retrieve data for.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date, a date range, or a given number of hours back.
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
 View By
  |
 Select the first insight that will be shown in the report.
  |
|
 Segment By
  |
 Select the insight that will be used to segment the results in the report after the
 **View By**
 insight.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

