

Intro
---------

PagerDuty is an operations performance platform designed to make businesses more reliable by eliminating the chaos across the entire operations lifecycle. Use Domo's PagerDuty connector to get reports about schedule management, alerting, and incident tracking. To learn more about the PagerDuty API, visit their website (

https://developer.pagerduty.com/documentation/rest

).


 The PagerDuty connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This is the simplified version of this connector, which allows you to simply pull data for a previous month instead of specifying a date range. There is also an advanced version of the connector, which provides options for setting up a date range. For more information, see

PagerDuty Advanced Connector

.


 You connect to your PagerDuty account in the

Data Center

. This topic discusses the fields and menus that are specific to the PagerDuty connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PagerDuty account and create a DataSet, you must have the following:

 The API key for your PagerDuty account. For information about generating a PagerDuty API key, see

https://support.pagerduty.com/hc/en-us/articles/202829310-Generating-an-API-Key

.
* The domain for your PagerDuty URL. For example, if your PagerDuty URL was
 `domo.pagerduty.com`
 , you would enter
 `domo`
 as the domain.

Connecting to Your PagerDuty Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PagerDuty Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your PagerDuty account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter the API Key for your PagerDuty account.
  |
|
 Domain
  |
 Enter the domain for your PagerDuty URL.
  |

For information about obtaining these credentials, see "Prerequisites," above.


 Once you have entered valid PagerDuty credentials, you can use the same account any time you go to create a new PagerDuty DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary menu from which you can select a report, along with various other fields and menus that may or may not appear depending on your selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a PagerDuty report. The following reports are available:


|  |  |
| --- | --- |
|
 Alerts
  |
 Retrieves existing alerts for a given time range.
  |
|
 Alerts Rollup
  |
 Retrieves existing alerts by day, week, or month for a given period of time.
  |
|
 Escalation Policies
  |
 Retrieves all existing escalation policies.
  |
|
 Escalation Policies On Call
  |
 Retrieves all existing escalation policies with currently on-call users.
  |
|
 Escalation Rules
  |
 Retrieves rules for a specified escalation policy.
  |
|
 Incident Notes
  |
 Retrieves existing notes for a specified incident.
  |
|
 Incidents
  |
 Retrieves existing incidents.
  |
|
 Incidents Count
  |
 Retrieves the count of the number of incidents matching the specified criteria.
  |
|
 Incidents Rollup
  |
 Retrieves existing incidents by day, week, or month for a given period of time.
  |
|
 Log Entries
  |
 Retrieves all incident log entries across the entire account.
  |
|
 Maintenance Windows
  |
 Retrieves existing maintenance windows.
  |
|
 Schedule Overrides
  |
 Retrieves overrides for a given time range.
  |
|
 Schedules
  |
 Retrieves existing on-call schedules.
  |
|
 Services
  |
 Retrieves existing services.
  |
|
 Users
  |
 Retrieves existing users.
  |
|
 Users on Call
  |
 Retrieves existing on-call users.
  |

|
|
 Duration
  |
 Select whether the data in this report is for a single specified date or for the past month.
  |
|
 Report Date
  |
 Specify whether the data is for a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Date Offset**
 ) from the current date. For example, if you enter

5

for
 **Date Offset**
 and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.
  |
|
 Select Specific Date
  |
 Select the date you want to retrieve information for.
  |
|
 Date Offset
  |
 Enter the number of days back from the current date that will be presented in the report.
  |
|
 Date Granularity
  |
 Select whether you want report data to be shown by day, week, or month.
  |
|
 Policy Name
  |
 Enter the name of the policy you want to retrieve information for.
  |
|
 Policy ID
  |
 Enter ID of the policy you want to retrieve information for.
  |
|
 Incident ID
  |
 Enter the ID of the incident you want to retrieve information for.
  |
|
 User ID(s)
  |
 Enter the ID(s) of the user(s) you want to retrieve information for. Separate multiple IDs with commas.
  |
|
 Description
  |
 Enter description text to filter the data in your report.
  |
|
 Schedule ID
  |
 Enter the ID of the schedule you want to retrieve information for.
  |
|
 Schedule Name
  |
 Enter the name of the schedule you want to retrieve information for.
  |
|
 Username/Email Address
  |
 Enter a username or email address to filter the data in your report.
  |
|
 Rollup
  |
 Select the desired grain for your report data--either daily, weekly, or monthly.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

