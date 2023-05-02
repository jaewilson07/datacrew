

Intro
-------

Datadog is a monitoring service for cloud-scale applications, bringing together data from servers, databases, tools, and services to present a unified view of an entire stack.  To learn more about the Datadog API, visit their page (

https://docs.datadoghq.com/api/?lang=python#overview

).


 You connect to your Datadog account in the Data Center. This topic discusses the fields and menus that are specific to the Datadog connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Datadog account and create a DataSet, you must have the following:

 A Datadog API key
* A Datadog application key

To obtain and manage credentials, navigate here and log in using your Datadog username/email and password:

https://app.datadoghq.com/account/lo...2Fsettings#api

Connecting to Your Datadog Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Datadog Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Datadog account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Datadog API key.
  |
|
 Application Key
  |
 Enter your Datadog application key.
  |


 Once you have entered valid Datadog credentials, you can use the same account any time you go to create a new Datadog DataSet. You can manage connector accounts in the
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
 Select the Datadog report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Emeddable Graphs
  |
 Returns a list of previously created embeddable graphs.
  |
|
 Metrics
  |
 Returns a list of actively reporting metrics from a given time until now.
  |
|
 Monitors
  |
 Returns a list of all monitors.
  |
|
 Monitor Downtime
  |
 Returns details about all monitor downtimes.
  |
|
 Query Time Series
  |
 Returns metrics from any time period.
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


#####
 How frequently will my data update?

As often as needed.

####
 Are there any API limits I should be aware of?

While Datadog may enforce call rate limits, you should not need to worry about it.

