

Intro
-------

Zabbix is enterprise open source monitoring software for networks and applications designed to monitor and track the status of various network services, servers, and other network hardware. To learn more about the Zabbix API, visit their page (

https://www.zabbix.com/documentation/3.0/manual/api

).


 You connect to your Zabbix account in the Data Center. This topic discusses the fields and menus that are specific to the Zabbix connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zabbix account and create a DataSet, you must have the following:

 A Zabbix username and password
* The host URL for your Zabbix front end

Connecting to Your Zabbix Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zabbix Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zabbix account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Zabbix username.
  |
|
 Password
  |
 Enter your Zabbix password.
  |
|
 Host
  |
 Enter the host URL for your Zabbix front end.
  |


 Once you have entered valid Zabbix credentials, you can use the same account any time you go to create a new Zabbix DataSet. You can manage connector accounts in the
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
 Select the Zabbix report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Actions
  |
 Retrieves a list of actions.
  |
|
 Alerts
  |
 Retrieves a list of alerts.
  |
|
 Applications
  |
 Retrieves a list of applications.
  |
|
 Correlations
  |
 Retrieves correlations.
  |
|
 Discovered Hosts
  |
 Retrieves a list of discovered hosts.
  |
|
 Discovered Services
  |
 Retrieves a list of discovered services.
  |
|
 Events
  |
 Retrieves a list of events.
  |
|
 Graphs
  |
 Retrieves a list of graphs.
  |
|
 History
  |
 Retrieves historical data.
  |
|
 Hosts
  |
 Retrieves a list of hosts.
  |
|
 Host Groups
  |
 Retrieves a list of host groups.
  |
|
 Items
  |
 Retrieves a list of items.
  |
|
 IT Services
  |
 Retrieves a list of IT services.
  |
|
 IT Services SLA
  |
 Retrieves availability information.
  |
|
 Maintenance
  |
 Retrieves a list of maintenances performed.
  |
|
 Problems
  |
 Retrieves problems (This report is for retrieving unresolved problems only).
  |
|
 Scripts
  |
 Retrieves a list of scripts.
  |
|
 Services
  |
 Retrieves all the data about all services and their dependencies.
  |
|
 SLA
  |
 Retrieves SLI data for all SLA`s on all the services.
  |
|
 Tasks
  |
 Retrieves tasks (This report is only available to Super admin user type and returns details only about 'diagnostic information' tasks).
  |
|
 Trends
  |
 Retrieves data trends.
  |
|
 Triggers
  |
 Retrieves a list of triggers.
  |
|
 Templates
  |
 Retrieves a list of templates.
  |

|
|
 Filter By
  |
 Select a filter for your data.
  |
|
 Host Groups
  |
 Select the host groups you want to show in your report.
  |
|
 Host Names
  |
 Select the host names you want to show in your report.
  |
|
 History Object Type
  |
 Select the history object type you want to retrieve data for.
  |
|
 Which Items
  |
 Select whether you want to show data for all items in your report or only selected items (which you select in the
 **Items**
 menu).
  |
|
 Items
  |
 Select the items you want to retrieve data for.
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

Adding a DataSet Using a Data Connector

.

