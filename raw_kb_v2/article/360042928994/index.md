

Intro
-------

Pingdom monitors sites and servers on the Internet and alerts the site owners if any problems are detected. Use the Domo's Pingdom Connector to receive details about probe servers, maintenance occurrences, checks, and more. To learn more about the Pingdom API, visit their page (

https://docs.pingdom.com/api/

).


 You connect to your Pingdom account in the Data Center. This topic discusses the fields and menus that are specific to the Pingdom connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pingdom account and create a DataSet, you must have your Pingdom Access token.


 Connecting to Your Pingdom Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pingdom Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Pingdom account. The following table describes what is needed for each field:


|
 Field
  |
 Description
  |
| --- | --- |
|
 Access Token
  |
 Enter your Pingdom Access Token.
  |

Once you have entered valid Pingdom credentials, you can use the same account any time you go to create a new Pingdom DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the Pingdom report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Actions
  |
 This Report returns a list of actions (alerts) that have been generated for your account.
  |
|
 Check Information
  |
 This report returns a detailed description of a specified check.
  |
|
 Check List
  |
 This report returns a list overview of all checks.
  |
|
 Contacts
  |
 Returns a list of all contacts with their contact methods.
  |
|
 Credits List
  |
 This report returns information about remaining checks, SMS credits and SMS auto-refill status.
  |
|
 Maintenance Occurrence
  |
 Gets maintenance occurrence details specified by its identifier.
  |
|
 Maintenance Occurrences List
  |
 This report returns a list of maintenance occurrences.
  |
|
 Maintenance Windows Detail
  |
 This report returns the maintenance window specified by its id.
  |
|
 Maintenance Windows List
  |
 This report returns a list of user's maintenance windows.
  |
|
 Probe Server List
  |
 This report returns a list of all Pingdom probe servers for Uptime and Transaction checks.
  |
|
 Raw Check Results
  |
 This report return a list of raw test results for a specified check.
  |
|
 Reference
  |
 This report returns a reference of regions, time zones and date/time/number formats, and their identifiers.
  |
|
 Root Cause Analysis Results
  |
 This report returns a list of the latest root cause analysis results for a specified check.
  |
|
 Summary Average
  |
 This report returns the average time/uptime value for a specified check and time period.
  |
|
 Summary Hours Of the Day
  |
 This report returns the average response time for each hour of the day (0-23) for a specific check over a selected time period.
  |
|
 Summary Outage
  |
 This report returns a list of status changes for a specified check and time period.
  |
|
 Summary Performance
  |
 This report returns a list of subintervals with the given resolution.
  |
|
 Summary Probes
  |
 Get a list of probes that performed tests for a specified check during a specified period.
  |
|
 Teams
  |
 Returns a list of all teams and their members.
  |

|
|
 Retrieve All Data?
  |
 Select
 **Yes**
 to import all available data. Select
 **No**
 if you want to retrieve specific data based on IDs.
  |
|
 Check ID
  |
 Select the ID of the check you want to retrieve information for.
  |
|
 Occurrence ID
  |
 Select the occurrence ID.
  |
|
 Maintenance ID
  |
 Select the maintenance ID you want to retrieve information for.
  |
|
 Resolution
  |
 Select the resolution you want to return subintervals for.
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


 FAQs
------


####
 What version of the Pingdom API does this connector use?

This connector uses version 3.1 of the Pingdom API (

https://api.pingdom.com/api/3.1

).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Actions
  |
 /actions
  |
|
 Check Information
  |
 /checks/{checkid}
  |
|
 Check List
  |
 /checks
  |
|
 Contacts
  |
 /alerting/contacts
  |
|
 Credits List
  |
 /credits
  |
|
 Maintenance Occurrence
  |
 /maintenance.occurrences/{occurrenceId}
  |
|
 Maintenance Occurrences List
  |
 /maintenance.occurrences
  |
|
 Maintenance Windows Detail
  |
 /maintenance/{maintainence\_Id}
  |
|
 Maintenance Windows List
  |
 /maintenance
  |
|
 Probe Server List
  |
 /probes
  |
|
 Raw Check Results
  |
 /results/{checkId}
  |
|
 Reference
  |
 /reference
  |
|
 Root Cause Analysis Results
  |
 /analysis/{checkId}
  |
|
 Summary Average
  |
 /summary.average/{checkId}
  |
|
 Summary Hours Of the Day
  |
 /summary.hoursofday/{checkId}
  |
|
 Summary Outage
  |
 /summary.outage/{checkId}
  |
|
 Summary Performance
  |
 /summary.performance/{checkId}
  |
|
 Summary Probes
  |
 /summary.probes/{checkId}
  |
|
 Teams
  |
 /alerting/teams
  |


####
 What kind of credentials do I need to power up this connector?

You need the access token associated with your Pingdom account.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

Limits may vary with different accounts.

