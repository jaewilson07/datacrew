

Intro
-------

SalesSeek is Sales CRM and marketing software designed to support businesses by attracting, engaging, and winning big deals.  To learn more about the SalesSeek API, visit their page (

https://salesseekapi.github.io/salesseek-api/#introduction

).


 You connect to your SalesSeek account in the Data Center. This topic discusses the fields and menus that are specific to the SalesSeek connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SalesSeek account and create a DataSet, you must have the following:

 The email address associated with your SalesSeek account
* Your SalesSeek password
* Your SalesSeek client ID

Connecting to Your SalesSeek Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SalesSeek Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SalesSeek account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Email Address
  |
 Enter the email address associated with your SalesSeek account.
  |
|
 Password
  |
 Enter your SalesSeek password.
  |
|
 Client ID
  |
 Enter your SalesSeek client ID.
  |


 Once you have entered valid SalesSeek credentials, you can use the same account any time you go to create a new SalesSeek DataSet. You can manage connector accounts in the
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
 Select the SalesSeek report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns a list of all activities.
  |
|
 Automation
  |
 Returns automation information.
  |
|
 Buckets
  |
 Returns the list of revenue buckets
  |
|
 Client Marketing Group
  |
 Returns the list of groups configured to be the focus on the marketing dashboard for the specific client.
  |
|
 Forecasts
  |
 Returns the list of forecastss
  |
|
 Group
  |
 Returns the list of groups.
  |
|
 Individuals
  |
 Returns the list of individuals.
  |
|
 Leads
  |
 Returns the list of leads.
  |
|
 Lead Sources
  |
 Returns the list of lead sources.
  |
|
 Opportunities
  |
 Returns the list of opportunities.
  |
|
 Organizations
  |
 Returns the list of organizations.
  |
|
 Organization Activities
  |
 Returns the list of activities associated with this organization.
  |
|
 Organization Individual
  |
 Returns the list of individuals related to this organization.
  |
|
 Organization Opportunity
  |
 Returns the list of opportunities associated with this organization.
  |
|
 Revenue Planner Config
  |
 Returns the unique revenue planner configuration.
  |
|
 Search
  |
 Returns data based on a provided search term.
  |
|
 Social
  |
 Returns social information for your account.
  |
|
 Tasks
  |
 Returns the list of tasks.
  |
|
 Teams
  |
 Returns the list of teams.
  |
|
 Team Hierarchy
  |
 Returns the team hierarchy for your organization.
  |
|
 Users
  |
 Returns a list of SalesSeek users.
  |
|
 Web Tracking by Time Period
  |
 Returns web tracking statistics broken down by time period.
  |
|
 Web Tracking by Source
  |
 Returns web tracking statistics broken down by source.
  |
|
 Web Tracking by Visited Pages
  |
 Returns web tracking statistics broken down by visited pages.
  |

|
|
 Completed?
  |
 Select
 **Yes**
 to only pull in data for completed tasks; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 My Tasks?
  |
 Select
 **Yes**
 to only pull in data for your own tasks; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 Assigned to Me?
  |
 Select
 **Yes**
 to only pull in data for tasks that have been assigned to you; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 Due Today?
  |
 Select
 **Yes**
 to only pull in data for tasks due today; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 Due This Week?
  |
 Select
 **Yes**
 to only pull in data for tasks due this week; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 Delegated?
  |
 Select
 **Yes**
 to only pull in data for delegated tasks; otherwise select
 **No**
 to pull data for all tasks.
  |
|
 Search
  |
 Enter the search term you want to retrieve data for in your "Search" report.
  |
|
 Segments
  |
 Select the segment you want to retrieve data for in your "Web Tracking" report.
  |
|
 Time
  |
 Select the desired time period for the report.
  |
|
 Config ID
  |
 Enter the config ID for your "Revenue Planner Config" report.
  |
|
 Owner Name
  |
 Select the name of the owner you want to retrieve information for.
  |
|
 Organization
  |
 Select the organization you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

