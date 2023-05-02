

Intro
-------

Mavenlink provides software and services for advanced project management, task collaboration, resource allocation, work management and professional services automation.  To learn more about the Mavenlink API, visit their page (

http://developer.mavenlink.com/

).


 You connect to your Mavenlink account in the Data Center. This topic discusses the fields and menus that are specific to the Mavenlink connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Mavenlink account and create a DataSet, you must have a Mavenlink username and password.


 Connecting to Your Mavenlink Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Mavenlink Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Mavenlink connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Mavenlink accounts in Domo) to open the Mavenlink OAuth screen where you can enter your Mavenlink credentials. Once you have entered valid Mavenlink credentials, you can use the same account any time you go to create a new Mavenlink DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Mavenlink when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Mavenlink.


 Once you have entered valid Mavenlink credentials, you can use the same account any time you go to create a new Mavenlink DataSet. You can manage connector accounts in the
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
 Select the Mavenlink report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Memberships
  |
 Returns memberships within your account.
  |
|
 Custom Fields
  |
 Returns a list of custom fields.
  |
|
 Custom Field Choices
  |
 Returns a list of custom field choices.
  |
|
 Custom Field Sets
  |
 Returns a list of custom field sets.
  |
|
 Custom Field Values
  |
 Returns a list of custom field values.
  |
|
 Expenses
  |
 Returns expenses that allows users to track non-timed items of work or expense.
  |
|
 Expense Categories
  |
 Returns a list of expense categories.
  |
|
 Invoices
  |
 Returns a list of invoices.
  |
|
 Invoice Time Entries
  |
 Returns a list of invoice time entries.
  |
|
 Invoice Fixed Fee Items
  |
 Returns a list of fixed fee items.
  |
|
 Invoice Workspaces
  |
 Returns a list of invoice workspaces.
  |
|
 Project Templates
  |
 Returns a list of project templates.
  |
|
 Project Template Assignments
  |
 Returns a list of project template assignments.
  |
|
 Stories
  |
 Returns a list of stories (tasks) used to track productivity.
  |
|
 Story Allocation Days
  |
 Returns a list of story allocation days, which allocate a planned amount of time to an assignment for a given day.
  |
|
 Story Assignments
  |
 Returns a list of story assignments, which connect users with stories (tasks).
  |
|
 Story Tags
  |
 Returns a list of story tags.
  |
|
 Story Tasks
  |
 Returns a list of story tasks.
  |
|
 Time Entries
  |
 Returns a list of time entries, which allow Mavenlink users to tracked timed items of work.
  |
|
 Users
  |
 Returns a list of users participating in Mavenlink workspaces.
  |
|
 Workspaces
  |
 Returns a list of Mavenlink workspaces or projects.
  |
|
 Workspace Groups
  |
 Returns a list of workspace groups.
  |
|
 Workspace Group Projects
  |
 Returns a list of workspace group projects.
  |
|
 Workspace Participants
  |
 Returns a list of workspace participants.
  |
|
 Workspace Timesheet Submissions
  |
 Returns a list of workspace timesheet submissions.
  |

|
|
 Show Archived Stories
  |
 Select whether you want your report to include archived stories.
  |
|
 Include Archived Workspaces
  |
 Select whether you want your report to include archived workspaces.
  |
|
 Show Deleted Stories
  |
 Select whether you want your report to include deleted stories.
  |
|
 Subject Type
  |
 Select whether you want to retrieve data about stories, workspaces, or users.
  |
|
 Date Type
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Date Picker
  |
 Select the date for the report.
  |
|
 Date Offset
  |
 Enter the number of past days that should appear in the report.
  |
|
 Date From
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **Date To**
 .
  |
|
 Date To
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Date From**
 .
  |
|
 Date From Picker
  |
 Select the first date in your date range.
  |
|
 Date To Picker
  |
 Select the second date in your date range.
  |
|
 Date From Offset
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Date To Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Date To Offset
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Date From Offset**
 to create a range of represented days.


 For example, if you entered

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

