

Intro
-------

Cisco Webex REST is the leading enterprise solution for video conferencing, online meetings, screen share, and webinars. Webex REST is an online collaboration platform that offers highly secure integrated audio, video, and content sharing from the Cisco Webex cloud. Use Domo's Webex REST connector to connect your Webex data to Domo so you can better understand your conferencing and collaboration. To learn more about the Webex API, visit

https://developer.webex.com/docs/api/getting-started

.


 Prerequisites
---------------

To connect to your Webex account and create a DataSet, you must have the following:

 Your Webex ID
* Your Webex Password
* Your Webex Site name

Connecting to Your Webex REST Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Webex Connector page. The components of the other panes in this page,
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
 Meetings
  |
 Returns a list of meetings.
  |
|
 Meeting Attendees Summary
  |
 Returns a list of summary for the meetings attendees.
  |
|
 Meeting Participants
  |
 Returns a list of participants for selected meetings.
  |
|
 Meeting Polls
  |
 Returns a list of polls with questions.
  |
|
 Meeting Polls Results - Summary
  |
 Retrieve a list of polls with the summary of the answers.
  |
|
 Meeting Polls Results with Respondents
  |
 Returns a list of polls with detailed answers per respondent.
  |
|
 Meeting Usage
  |
 Returns the meeting usage reports for all the users for a specific site.
  |
|
 Recording Audit Report
  |
 Retrieves details for a recording audit report for all recordings.
  |
|
 Recording Audit Report (Admin)
  |
 Retrieves details for a recording audit report for all recordings as an admin.
  |
|
 Recordings
  |
 Returns a list of meeting recordings.
  |
|
 Recordings Admin
  |
 Returns a list of meeting recordings as an admin.
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
 **End Date**
 to create a range of represented days.


 For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 **Start Date**
 to create a range of represented days.


 For example, if you entered 10 for
 **Start Date**
 and 5 for
 **End Date**
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

