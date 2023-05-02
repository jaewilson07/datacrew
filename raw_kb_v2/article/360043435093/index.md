

Intro
-------

Workfront (formerly called AtTask) develops web-based work management and project management software. Use Domo's Workfront Advanced connector to retrieve data relating to customers, work assignments, projects, milestones, documents, and so on. To learn more about the Workfront API, visit their page (

https://developers.attask.com/api-docs/

).


 You connect to your Workfront account in the Data Center. This topic discusses the fields and menus that are specific to the Workfront Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Workfront account and create a DataSet, you must have the following:

 The username and password for your Workfront account.
* The URL for your AtTask/Workfront server (for example,

https://yourcompany.attask.ondemand.com

).

Connecting to Your Workfront Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Workfront Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Workfront account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Workfront account.
  |
|
 Password
  |
 Enter the password you use to log into your Workfront account.
  |


 Once you have entered valid Workfront credentials, you can use the same account any time you go to create a new Workfront Advanced DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a menu in which you select a report. Two fields also appear in which you can specify custom and reference columns for your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Workfront Advanced report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Approval
  |
 Returns a list of approvals for the account.
  |
|
 Assignment
  |
 Returns a list of assignments, including assigner and assignee, average work per day, project, current status, etc.
  |
|
 Baseline
  |
 Returns a list of project baselines, including project ID, start and completion dates, customer ID, budget, planned hours, etc.
  |
|
 Category
  |
 Returns a list of categories (custom data forms).
  |
|
 Group
  |
 Returns a list of groups, including group ID, customer ID, description, etc.
  |
|
 Hour
  |
 Returns the number of hours entered for users in the account.
  |
|
 Hour Type
  |
 Returns a list of hour types used in the account, with  name, description, etc.
  |
|
 Issue
  |
 Returns a list of issues, including start date, assignee, current status, description, planned hours, responsible team, etc.
  |
|
 Job Role
  |
 Returns a list of job roles used in the account, with name, description, cost per hour, etc.
  |
|
 Milestone
  |
 Returns a list of milestones, including name, description, customer ID, etc.
  |
|
 Milestone Path
  |
 Returns a list of milestone paths, including name, description, customer ID, etc.
  |
|
 Note
  |
 Returns a list of notes, including note subject, note text, project, owner, etc.
  |
|
 Parameter
  |
 Returns a list of parameters (fields in custom data forms).
  |
|
 Portfolio
  |
 Returns a list of portfolios, including name, customer, entry date, etc.
  |
|
 Program
  |
 Returns a list of programs, including name, owner, description, etc.
  |
|
 Project
  |
 Returns a list of projects, including name, budget, actual costs, hours worked, status, owner, etc.
  |
|
 Project User
  |
 Returns a list of project users, including customer ID, project ID, and user ID.
  |
|
 Resource Allocation
  |
 Returns information about resource allocation for given projects and customers, including scheduled hours, budgeted hours, etc.
  |
|
 Resource Pool
  |
 Returns a list of available resource pools, including customer ID and description.
  |
|
 Schedule
  |
 Returns a list of schedules in the account.
  |
|
 Task
  |
 Returns a list of tasks, including start date, assignee, current status, description, planned hours, responsible team, etc.
  |
|
 Team
  |
 Returns a list of teams in the account.
  |
|
 Template
  |
 Returns a list of templates in the account.
  |
|
 Timesheet
  |
 Returns timesheet information for all users in the account.
  |
|
 Users
  |
 Returns information for all users in the account, including name, title, email address, billing information, etc.
  |
|
 Work
  |
 Returns information about work done, including expense and labor cost, duration, revenue, etc.
  |
|
 Work Item
  |
 Returns a list of work items, including task ID, user ID, status, scope, etc.
  |

|
|
 Custom Fields
  |
 Enter a comma-separated list of custom fields you want to appear in your report.
  |
|
 Reference Fields
  |
 Enter a comma-separated list of reference fields you want to appear in your report. This must use the format

reference object:reference field

. For example, to retrieve the customer name reference field, you would enter

customer:name

.
  |


###
 Advanced Pane

In this pane, you can build up to three specialized filters. The options in this pane allow you to specify a filter name, a modifier, and, in most cases, a field value. For example, if you wanted to filter tasks to show only those with an "Hours" value of 5 or under, you would enter

Hours

in
 **Filter 1 - Field Name**
 , set
 **Filter 1 - Modifier**
 to
 **Less Than or Equal**
 , and enter

5

in
 **Filter 1 - Field Value**
 .


 When In is selected as your modifier, you can specify a series of field values using a specified delimiter. For example:

UT,WY,ID

Additional menus may display, depending on the selected modifier. The following table lists and describes these additional menus:


 Menu
  |
 Selected Modifier(s)
  |
 Description
  |
| --- | --- | --- |
|
 Case-Sensitive
  |
 Equals, Not Equals, Contains
  |
 Lets you specify whether filter results are case-sensitive.
  |
|
 Field Value 2
  |
 Between
  |
 Lets you create a range of values by specifying an additional field value.
  |
|
 Delimiter
  |
 In
  |
 Lets you select the delimiter for a series of values.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

