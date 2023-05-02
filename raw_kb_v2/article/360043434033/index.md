

Intro
-------

New Relic is a software analytics tool suite.  To learn more about the New Relic API, visit their website (

https://docs.newrelic.com/docs/apis/...ic-rest-api-v2

).


 The New Relic connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your New Relic account in the

Data Center

. This topic discusses the fields and menus that are specific to the New Relic connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for understanding how a new software product is performing with regards to user experience.
  |
|
**Primary Metrics**
 | * Apdex
* Response time
* Throughput
* Error rate
* CPU usage
* Memory
 |
|
**Primary Company Roles**
 | * Software developers
* Product managers
 |
|
**Average Implementation Time**
 |
 It takes about 15 to 30 minutes to set up an API key. The rest of the implementation is straightforward and should not take long.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------

Ensure that your tags for tracking user experience are clearly defined in New Relic and you are tagging the specifics of what you want to measure.


 Prerequisites
---------------

To connect to your New Relic account and create a DataSet, you must have a New Relic API key. For information about generating an API key, see

https://docs.newrelic.com/docs/apm/apis/requirements/api-key

.


 Connecting to Your New Relic Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the New Relic Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your New Relic account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter the API key you use to log into your New Relic account.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new New Relic DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains two primary menus,
 **Connector Version**
 and

*Report**
 ,

along with various other menus which may or may not appear depending on the connector version and report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a New Relic report. The following reports are available:


|  |  |
| --- | --- |
|
 Application Metrics
  |
 Returns information about applications monitored by New Relic, including response time, Apdex, throughput and settings.
  |
|
 List Application Metric Values
  |
 Returns a list of data for the Application Metric.
  |
|
 Mobile Applications List
  |
 Returns a list of Mobile Applications.
  |
|
 Mobile Applications Metric Names
  |
 Returns a list of Mobile Metrics.
  |
|
 Mobile Application Metric Data
  |
 Returns the list of Mobile Metrics Data.
  |
|
 Mobile Crash Metrics Data
  |
 Returns the list of Mobile Crash Metrics Data.
  |


 |
|
 Applications
  |
 Select the application(s) you want to retrieve data for. The connector version determines how many applications you may select.
  |
|
 Metric Names (version 2 only)
  |
 Select the metrics you want to appear in your report. You can select as many metrics as you like.
  |
|
 Start Date (for version 1)
  |
 Enter the start date for the report using the format

yyyy-MM-dd.

You can also utilize relative start dates by inputting the keywords

today

or

yesterday.

Or you can specify offsets like

yesterday-3,

which would set the start date to 3 days in the past, starting from yesterday's date.
  |
|
 Start Date (for version 2)
  |
 Select the start date for the report.
  |
|
 End Date (for version 1)
  |
 Enter the end date for the report using the format

yyyy-MM-dd.

You can also utilize relative end dates by inputting the keywords

today

or

yesterday.

Or you can specify offsets like

yesterday-3

, which would set the end date to 3 days in the past, starting from yesterday's date.
  |
|
 End Date (for version 2)
  |
 Select the end date for the report.
  |
|
 Backfill (version 1 only)
  |
 Enter the number of past days you want to retrieve data for on the first run (based on the
 **End Date**
 value). Subsequent runs do not backfill data.


 For example, if you entered

yesterday

for
 **End Date**
 and

30

for
 **Backfill**
 , the report would gather the last 31 days of data on its first run. On subsequent runs, the report would gather only yesterday's data.
  |
|
 Time Zone
  |
 Select the UTC time zone for your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure access and logins have not changed for the New Relic system. Often if an account is deleted, you will need to generate another API Token.
* Sometimes event tagging will not be setup correctly in the New Relic system and will not pull the metrics needed. Sometimes adjustments with even tracking and tagging are needed to facilitate the reporting desired.


