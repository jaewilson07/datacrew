

Intro
-------

Gong is a real-time insights platform for sales conversations. With its Revenue Intelligence, Gong enables you to gain critical insights into what’s happening with your remote sales team, your deals, and your market. Use Domo’s Gong Connector to get real-time insights into your sales conversations and adapt your revenue strategy for success.


 You connect to your Gong account in the Data Center. This topic discusses the fields and menus that are specific to the Gong connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Gong account and create a DataSet, you must have the following:

 The Access Key for your Gong API user
* The Access Key Secret for your Gong API user

To obtain your credentials, go to the

Gong API Page

and click
 **Create**
 to receive the
 **Access Key**
 and
 **Access Key Secret**
 .


**NOTE**
 : To receive the Access Key and Access Key Secret, you must be a technical administrator in Gong.


 Connecting to Your Gong Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Gong

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

Gong

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter the access key for your Gong API user. For more information, see

Prerequisites

.
  |
|
 Access Key Secret
  |
 Enter the access key secret for your Gong API user. For more information, see

Prerequisites

.
  |


 Once you have entered valid

Gong

credentials, you can use the same account any time you go to create a new

Gong

DataSet. You can manage connector accounts in the
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
 Select the Gong report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Calls
  |
 This report returns the call data for calls that occurred in the selected date range.
  |
|
 Call Details
  |
 This report returns the call detail information broken down by the selected sub report for the selected date range.
  |
|
 Call Transcripts
  |
 This report returns the call transcripts broken down by sentence for the selected date range.
  |
|
 Company Productivity (Calls & Interaction Stats)
  |
 Returns the metrics on the basis of calls & interaction stats data for the selected date range.
  |
|
 Interaction Stats
  |
 This report returns the interaction statistics for calls that occurred in the selected date range.
  |
|
 Scorecards
  |
 This report returns the scorecard data for scorecards with a review date in the selected range.
  |
|
 User Activity
  |
 This report returns the user activity by selected aggregation and date range.
  |
|
 Users
  |
 This report returns a list of users.
  |
|
 Workspaces
  |
 This report returns a list of workspaces.
  |

|
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 **Days Back**
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ********End Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Start Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |
|
 Aggregation Period
  |
 Select the period you would like the data to be aggregated for.
  |
|
 Subreport
  |
 Select the sub report data you are interested in.
  |
|
 Context Links
  |
 Returns the user activity for selected aggregation and date range with respect to the context links.
  |
|
 Points of Interest
  |
 Returns the user activity for selected aggregation and date range with respect to the user's points of interests.
  |
|
 Topics
  |
 Returns the user activity for selected aggregation and date range with respect to the user's topics.
  |
|
 Trackers
  |
 Returns the user activity for selected aggregation and date range with respect to the user's trackers.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

