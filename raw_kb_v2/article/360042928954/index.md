

Intro
---------

PagerDuty is an operations performance platform designed to make businesses more reliable by eliminating the chaos across the entire operations lifecycle. Use Domo's PagerDuty connector to get reports about schedule management, alerting, and incident tracking. To learn more about the PagerDuty API, visit their website (

https://developer.pagerduty.com/documentation/rest

).


 Ben Green

Sep 29, 2016, 12:59 PM

The PagerDuty connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This is the advanced version of the PagerDuty connector, which allows you to set up a date range for your report data. There is also a simplified version, which instead gives you the simpler option of pulling data for a previous month. For more information about this version, see

PagerDuty Connector

.


 You connect to your PagerDuty account in the

Data Center

. This topic discusses the fields and menus that are specific to the PagerDuty Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PagerDuty account and create a PagerDuty Advanced DataSet, you must have the following:

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
 panes in the PagerDuty Advanced Connector page. The components of the other panes in this page,
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


 Once you have entered valid PagerDuty credentials, you can use the same account any time you go to create a new PagerDuty Advanced DataSet. You can manage connector accounts in the
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


 For example, if you entered 10 for
 **Days Back to Start From**
 and 5 for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered 10 for
 **Days Back to Start From**
 and 5 for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
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

