

Intro
-------

Cisco Webex is the leading enterprise solution for video conferencing, online meetings, screen share, and webinars. Webex is an online collaboration platform that offers highly secure integrated audio, video, and content sharing from the Cisco Webex cloud. Use Domo's Webex connector to connect your Webex data to Domo so you can better understand your conferencing and collaboration. To learn more about the Webex API, visit

https://developer.webex.com/docs/api/getting-started

.


 You connect to your Webex account in the Data Center. This topic discusses the fields and menus that are specific to the Webex connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Webex account and create a DataSet, you must have the following:

 Your Webex ID
* Your Webex Password
* Your Webex Site name

Connecting to Your Webex Account
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Webex Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Webex account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Webex ID
  |
 Enter your Webex ID.
  |
|
 Password
  |
 Enter your Webex password.
  |
|
 Site Name
  |
 Enter your Webex site name.
  |


 Once you have entered valid Webex credentials, you can use the same account any time you go to create a new Webex DataSet. You can manage connector accounts in the
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
 Select the

Webex

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Attendees
  |
 Returns a list of attendees for meetings that start within the selected date range.
  |
|
 Enrollments
  |
 Returns a list of enrollments for sessions that start within the selected date range.
  |
|
 Event Attendee History
  |
 Returns a list of detailed attendee information for the event sessions previously hosted on the site.
  |
|
 Events
  |
 Returns a list of events that start within the selected date range.
  |
|
 Event Session History
  |
 Returns a list of detailed usage data for previously hosted events.
  |
|
 Feedback
  |
 Returns feedback for sessions that start within the selected date range.
  |
|
 Get Meeting
  |
 Returns detailed information about the selected meetings.
  |
|
 Meetings
  |
 Returns a list of meetings that start within the selected date range.
  |
|
 Programs
  |
 Returns a list of programs.
  |
|
 Record Access Detailed History
  |
 Returns a list of the recorded training access.
  |
|
 Recorded Events
  |
 Returns a list of recorded events that start within the selected date range.
  |
|
 Recording
  |
 Returns a list of all recordings.
  |
|
 Sessions
  |
 Returns a list of sessions that start within the selected date range.
  |
|
 Users
  |
 Returns a list of users.
  |

|
|
 Bring Data For Specific Date Range?
  |
 Select 'Yes' to bring data for a specific date range. Select 'No' to bring all data.
  |
|
 Meeting Key
  |
 Select one or more meeting keys.
  |
|
 Record ID
  |
 Select one or more record ID.

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
 Single Date - Specific
  |
 Select the specific date using the date selector.
  |
|
 Single Date - Relative
  |
 Choose which day you would like to start receiving data for by entering a number relative to today. Example: enter 1 for a start date of yesterday, 7 for a start date of 1 week ago, and 30 for a start date of 1 month ago.
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
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

