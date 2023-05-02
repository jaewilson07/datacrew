

Intro
-------

Toggl offers online time tracking and reporting services thr


 ough their website and mobile and desktop applications. Toggl tracks time spent on tasks and projects, either through an interactive task timer or manual entry.  There is a free personal edition and a professional edition for team collaboration. You can use Domo's Toggl connector to extract project and workspace data from Toggl. For information about the Toggl API, see

https://github.com/toggl/toggl\_api\_docs

.


 The Toggl connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Toggl account in the

Data Center

. This topic discusses the fields and menus that are specific to the Toggl connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for retrieving data related to time tracking on projects and tasks.
  |
|
**Primary Metrics**
 | * Billable hours to clients
* Hours against projects
* Hours charged by employee
* Hours to specific clients
* Users assigned to a project
* Specific user hours across projects
* Summary results by user
* User results to task level in detail reports
* Hours charged to tasks
 |
|
**Primary Company Roles**
 | * Project manager
* Individual consultant
* HR manager
* Client manager
 |
|
**Average Implementation Time**
 |
 3 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Prerequisites
---------------

To connect to your Toggl account and create a DataSet, you must have a Toggl API token. You can find the API token for your Toggl account in the
 **My Profile**
 section.


 Connecting to Your Toggl Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Toggl Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

In this pane, you connect to Toggl by entering your Toggl API key in the
 **API Key**
 field. For information about obtaining an API key, see "Prerequisites," above.


 Once you have entered a valid API token and connected to Toggl, you can use the same account any time you go to create a new Toggl DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a menu in which you select a Toggl report, along with other menus and fields that may or may not appear depending on the selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Toggl report type. The following reports are available:


|  |  |
| --- | --- |
|
 All Clients
  |
 Returns information about all clients.
  |
|
 All Time Entries
  |
 Returns all time entries within a specified workspace and for a specified date.
  |
|
 All Workspaces
  |
 Returns information about all workspaces.
  |
|
 Client Details
  |
 Returns details on a specified client.
  |
|
 Client Projects
  |
 Returns the projects for a specified client.
  |
|
 Current User Data
  |
 Returns data for the current user.
  |
|
 Detailed Report
  |
 Returns time entries based on specified fields.
  |
|
 Project Data
  |
 Returns data for a specified project.
  |
|
 Project Tasks
  |
 Returns the tasks for a specified project.
  |
|
 Project Users
  |
 Returns the users for a specified project.
  |
|
 Single Workspace
  |
 Returns details about a specified workspace.
  |
|
 Summary Report
  |
 Returns aggregated time entry data.
  |
|
 Weekly Report
  |
 Returns aggregated duration or earnings data for the past 7 days, grouped by users or projects.
  |
|
 Workspace Clients
  |
 Returns the clients for a specified workspace.
  |
|
 Workspace Projects
  |
 Returns the projects for a specified workspace.
  |
|
 Workspace Tags
  |
 Returns tags for a specified workspace.
  |
|
 Workspace Tasks (only for Pro Workspaces)
  |
 Returns the tasks for a specified workspace.
  |
|
 Workspace User Objects
  |
 Returns the user objects for a specified workspace.
  |
|
 Workspace Users
  |
 Returns all users for a specified workspace.
  |


 |
|
 Calculation
  |
 Select the desired calculation for the report data.
  |
|
 Client Name
  |
 Select the client you want to retrieve data for.
  |
|
 Date From Offset
  |
 Enter the number of days before the current date to use as the start date.


 For example, if you enter

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |
|
 Date Offset
  |
 Enter the number of days before the current date to retrieve data for.
  |
|
 Date To Offset
  |
 Enter the number of days before the current date to use as the end date.


 For example, if you enter

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.
  |
|
 Duration
  |
 Select whether the report data is for a single date or a range of dates.
  |
|
 End Date
  |
 Select whether the end date for the report is a specific or relative date.


 Select
 **Specific**
 if you want to specify a specific end date. Then select the date in the
 **Specific Date To**
 field.


 Select
 **Relative**
 if you want to use an end date a relative number of days before the current date. Then enter the relative number of days in the
 **Date To Offset**
 field.


 If using
 **Relative**
 for the
 **End Date**
 , you must also select
 **Relative**
 for the
 **Start Date**
 .

|
|
 Grouping
  |
 Select how you want the data in the report to be grouped.
  |
|
 Project Name
  |
 Select the project you want to retrieve data for.
  |
|
 Report Date
  |
 Select whether the report contains data for a specific or relative date.


 Select
 **Specific**
 if you want to retrieve data for a specific date. Then set the date in the
 **Specific Date**
 field.


 Select
 **Relative**
 if you want to retrieve data for a relative number of days before the current date. Then enter the relative number of days in the
 **Date Offset**
 field. For example, if you enter

5

as the
 **Date Offset**
 and set the DataSet to update daily, each day the updated report shows data for the date 5 days in the past.
  |
|
 Specific Date
  |
 Select the date you want to retrieve data for.
  |
|
 Specific Date From
  |
 Select the first date in your date range.
  |
|
 Specific Date To
  |
 Select the last date in your date range.
  |
|
 Start Date
  |
 Select whether the start date for the report is a specific or relative date.


 Select
 **Specific**
 if you want to specify a specific start date. Then select the date in the
 **Specific Date From**
 field.


 Select
 **Relative**
 if you want to use a start date a relative number of days before the current date. Then enter the relative number of days in the
 **Date From Offset**
 field.


 If using
 **Relative**
 for the
 **Start Date**
 , you must also select
 **Relative**
 for the
 **End Date**
 .
  |
|
 Sub Grouping
  |
 Select the secondary grouping for the report.
  |
|
 Workspace Name
  |
 Select the workspace you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

If the credentials fail, check your permissions in Toggl's system.

