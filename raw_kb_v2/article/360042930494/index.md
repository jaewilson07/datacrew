

Intro
-------

Teamwork  provides online project management, help desk, and team messaging software.  To learn more about the Teamwork API, visit their page (

https://developer.teamwork.com/

).


 You connect to your Teamwork account in the Data Center. This topic discusses the fields and menus that are specific to the Teamwork connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Teamwork account and create a DataSet, you must have a Teamwork API key. To learn how to obtain an API key, visit this page:

https://developer.teamwork.com/projects/apikey/key

Connecting to Your Teamwork Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Teamwork Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Teamwork account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Teamwork API key.
  |


 Once you have entered valid Teamwork credentials, you can use the same account any time you go to create a new Teamwork DataSet. You can manage connector accounts in the
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
 Select the Teamwork report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns details about your Teamwork accounts.
  |
|
 Activity
  |
 Returns a list of the latest activity across all projects ordered chronologically.
  |
|
 Archived Message
  |
 Returns a summary record for each message in the specified project.
  |
|
 Billing Expenses
  |
 Returns all expenses across your projects.
  |
|
 Billing Invoices
  |
 Returns all invoices across your projects.
  |
|
 Calendar Events
  |
 Returns all calendar events that the current user can see in the provided date range.
  |
|
 Comments
  |
 Returns comments for all projects.
  |
|
 Companies
  |
 Returns a list of companies in your account.
  |
|
 Company People
  |
 Returns all of the people assigned to a given company.
  |
|
 Company Project
  |
 Returns all of the projects assigned to a given company.
  |
|
 Completed Task
  |
 Returns all completed tasks.
  |
|
 File on Project
  |
 Returns a list of files for a given project.
  |
|
 File on Task
  |
 Returns a list of files for a given task.
  |
|
 Link
  |
 Returns all links on projects the authenticated user is associated with.
  |
|
 Message Reply
  |
 Returns all replies to the 25 most recent messages.
  |
|
 Milestones
  |
 Returns all milestones on projects the authenticated user is associated with.
  |
|
 Notebook
  |
 Returns all notebooks on projects the authenticated user is associated with.
  |
|
 People
  |
 Returns all people visible to the user.
  |
|
 People in Project
  |
 Returns all people assigned to a given project.
  |
|
 People Status
  |
 Returns all of the latest status posts for all users in the parent company.
  |
|
 Project
  |
 Returns all accessible projects.
  |
|
 Project Categories
  |
 Returns all project categories.
  |
|
 Project Link Categories
  |
 Returns all link categories for your project.
  |
|
 Project Notebook Categories
  |
 Returns all notebook categories for your project.
  |
|
 Project Risk
  |
 Returns all risks for a given project.
  |
|
 Project Roles
  |
 Returns a list of roles for a given project.
  |
|
 Project File Categories
  |
 Returns all the file categories for your project.
  |
|
 Project Message Categories
  |
 Returns all message categories for your project.
  |
|
 Project Total Time
  |
 Returns time totals per project.
  |
|
 Retrieve Latest Message
  |
 Returns the 25 most recent messages for the given project.
  |
|
 Starred Project
  |
 Retrieves all of your starred projects.
  |
|
 Tasks
  |
 Returns all tasks across all projects.
  |
|
 Task Dependencies
  |
 Returns a list of tasks that rely on the specified task to be completed first.
  |
|
 Task Followers
  |
 Returns a list of users following the activity of a given task.
  |
|
 Task List
  |
 Returns all project task lists.
  |
|
 Task Reminder
  |
 Returns reminders on all tasks.
  |
|
 Time Entries
  |
 Returns time entries for all projects.
  |
|
 Workload
  |
 Returns a list of workloads across all projects.
  |

|
|
 Project
  |
 Select the project you want to retrieve information for.
  |
|
 Task Filter
  |
 Select the filter you want to apply to the tasks in your report.
  |
|
 Status
  |
 Select the project status you want to use to filter data in your report.
  |
|
 Company
  |
 Select the company you want to retrieve information for.
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

