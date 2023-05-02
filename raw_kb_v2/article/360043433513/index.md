

Intro
---------

PagerDuty is an operations performance platform designed to make businesses more reliable by eliminating the chaos across the entire operations lifecycle. Use Domo's PagerDuty V2 connector to get reports about schedule management, notifications, incident tracking, and more. To learn more about the PagerDuty API, visit their website (

https://developer.pagerduty.com/documentation/rest

).


 The PagerDuty V2 connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your PagerDuty account in the

Data Center

. This topic discusses the fields and menus that are specific to the PagerDuty V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PagerDuty account and create a DataSet, you must have the API key for your PagerDuty account. For information about generating a PagerDuty API key, see

https://support.pagerduty.com/hc/en-us/articles/202829310-Generating-an-API-Key

.


 Connecting to Your PagerDuty Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PagerDuty V2 Connector page. The components of the other panes in this page,
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
 Enter the API Key for your PagerDuty account. For information about generating a PagerDuty API key, see

https://support.pagerduty.com/hc/en-us/articles/202829310-Generating-an-API-Key

.
  |

Once you have entered valid PagerDuty credentials, you can use the same account any time you go to create a new PagerDuty V2 DataSet. You can manage connector accounts in the
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
 Abilities
  |
 Retrieves all abilities for your account.
  |
|
 Addons
  |
 Retrieves all of the add-ons installed in your account.
  |
|
 Escalation Policies
  |
 Retrieves all existing escalation policies.
  |
|
 Extensions
  |
 Retrieves all existing extensions.
  |
|
 Incident Alerts
  |
 Retrieves alerts for the specified incident.
  |
|
 Incident Log Entries
  |
 Returns log entries for a specified incident.
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
 Notifications
  |
 Returns all existing notifications across the entire account.
  |
|
 On-Calls
  |
 Returns all on-call entries for the account.
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
 Schedules Users
  |
 Returns a list of all users on call in a given schedule.
  |
|
 Services
  |
 Retrieves existing services.
  |
|
 Teams
  |
 Returns all teams on your account.
  |
|
 Users
  |
 Retrieves existing users.
  |
|
 Vendors
  |
 Retrieves all vendors on the account.
  |

|
|
 Query (Optional)
  |
 Enter a term to filter the results of your report.
  |
|
 User ID(s) (Optional)
  |
 Enter the ID(s) of the user(s) you want to retrieve information for. Separate multiple IDs with commas.
  |
|
 Team IDs (Optional)
  |
 Enter the ID(s) of the team(s) you want to retrieve information for. Separate multiple IDs with commas. The account must have the "Teams" ability enabled for this option to work.
  |
|
 Sort By
  |
 Choose how you want to sort the data in your report, either by name, ascending name, or descending name.
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
 Date Range
  |
 Select whether you want to pull data for all time or for a selected date range. When you select
 **All**
 , the
 **SINCE**
 and
 **UNTIL**
 parameters and defaults are ignored.
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
|
 Incident ID
  |
 Select the ID of the incident you want to retrieve data for.
  |
|
 Schedule ID
  |
 Enter the ID of the schedule you want to retrieve information for.
  |
|
 Time Zone
  |
 Select the time zone for the dates in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

