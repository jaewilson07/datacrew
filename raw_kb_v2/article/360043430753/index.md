

Intro
-------

10,000ft is an online collaboration, project management, and resource management tool for planning and scheduling use of resources. To learn more about the 10,000ft API, visit their Github page (

https://github.com/10Kft/10kft-api

).


 You connect to your 10,000ft account in the Data Center. This topic discusses the fields and menus that are specific to the 10,000ft connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your 10,000ft account and create a DataSet, you must have a 10,000ft API token. 10,000ft account administrators can obtain an API token from
 **Settings > Account Settings > Developer API**
 in the application.


 Connecting to Your 10,000ft Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the 10,000ft Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your 10,000ft account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your 10,000ft API token. For information about obtaining a token, see "Prerequisites," above.
  |


 Once you have entered valid 10,000ft credentials, you can use the same account any time you go to create a new 10,000ft DataSet. You can manage connector accounts in the
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
 Select the 10,000ft report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Time Entries
  |
 Retrieves a list of all time entries.
  |
|
 All Time Entries by Projects
  |
 Retrieves a list of time entries, broken down by project.
  |
|
 All Time Entries by Users
  |
 Retrieves a list of time entries, broken down by user.
  |
|
 Assignments
  |
 Retrieves a list of assignments.
  |
|
 Bill Rates
  |
 Retrieves a list of bill rates.
  |
|
 Holidays
  |
 Retrieves a list of holidays.
  |
|
 Phases
  |
 Retrieves a list of project phases.
  |
|
 Project Budgets
  |
 Retrieves a list of project budgets.
  |
|
 Projects
  |
 Retrieves a list of projects.
  |
|
 Project Tags
  |
 Retrieves a list of project tags.
  |
|
 Time Entries
  |
 Retrieves a list of time entries by user or project.
  |
|
 Time & Expense Approvals
  |
 Retrieves a list of time and expense approvals.
  |
|
 Users
  |
 Retrieves a list of users.
  |
|
 Users by Project
  |
 Retrieves a list of users by project.
  |
|
 User Tags
  |
 Retrieves a list of tags by user.
  |

|
|
 Include Suggestions
  |
 Check this box if you want your report to include suggestions.
  |
|
 Assignments By
  |
 Select whether you want assignments in your report to be filtered by project or user.
  |
|
 Project
  |
 Select the project you want to retrieve information for.
  |
|
 User
  |
 Select the user you want to retrieve information for.
  |
|
 Project State
  |
 Select whether you want to pull data for all projects or filter by a given state (confirmed, internal, or tentative).
  |
|
 Include Archived
  |
 Check this box if you want your report to pull data on archived or deleted projects/users.
  |
|
 Time Entries
  |
 Select whether you want time entries in your report to be filtered by project or user.
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
 Specific Date
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
 Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Specific End Date
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


 FAQ
-----


#####
 How often should the data be updated?

DataSets should be set to update once a day.

####
 Are there any API limits I should be aware of?

There are rate limits, but they vary per endpoint and are subject to change. The connector should handle rate limits automatically; howevers data returns may be slower because of the rate limits.

