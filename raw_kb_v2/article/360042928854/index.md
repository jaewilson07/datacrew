

Intro
-------

Microsoft Azure Data Factory is a cloud-based data integration service that orchestrates and automates the movement and transformation of data. The Domo Azure Data Factory connector gives you access to data about activity and pipeline runs, datasets, operations, pipelines, and triggers. To learn more about the Data Factory API, visit their page (

https://docs.microsoft.com/en-us/azure/data-factory/

).


 You connect to your Data Factory account in the Data Center. This topic discusses the fields and menus that are specific to the Data Factory connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Data Factory account and create a DataSet, you must have the following:

 A Microsoft Azure Data Factory tenant ID
* A Microsoft Azure Data Factory client ID
* A Microsoft Azure Data Factory client secret

To obtain credentials, please reach out to your Microsoft Azure Data Factory account representative.


 Connecting to Your Data Factory Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Data Factory Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Data Factory account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Tenant ID
  |
 Enter your Microsoft Azure Data Factory tenant ID.
  |
|
 Client ID
  |
 Enter your Microsoft Azure Data Factory client ID.
  |
|
 Client Secret
  |
 Enter your Microsoft Azure Data Factory client secret.
  |


 Once you have entered valid Data Factory credentials, you can use the same account any time you go to create a new Data Factory DataSet. You can manage connector accounts in the
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
 Select the Data Factory report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activity Runs
  |
 Returns a list of activity runs.
  |
|
 Datasets
  |
 Returns a list of datasets.
  |
|
 Factories
  |
 Returns a list of factories under subscription.
  |
|
 Factories by Resource Group
  |
 Returns a list of factories, broken down by resource group.
  |
|
 Integration Runtimes
  |
 Returns a list of integration runtimes.
  |
|
 Linked Services
  |
 Returns a list of linked services.
  |
|
 Operations
  |
 Returns a list of available Azure Data Factory API operations.
  |
|
 Pipeline Runs
  |
 Returns a list of pipeline runs.
  |
|
 Pipelines
  |
 Returns a list of pipelines.
  |
|
 Trigger Runs
  |
 Returns a list of trigger runs.
  |
|
 Triggers
  |
 Returns a list of triggers.
  |

|
|
 Subscription ID
  |
 Enter the ID of the subscription you want to return data for.
  |
|
 Resource Group Name
  |
 Enter the resource group name you want to return data for.
  |
|
 Factory Name
  |
 Select the factory you want to return data for.
  |
|
 Trigger Name
  |
 Select the trigger you want to return data for.
  |
|
 Run ID
  |
 Enter the run ID you want to return data for.
  |
|
 Date Type
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Date Picker
  |
 Select the date for the report.
  |
|
 Date Offset
  |
 Enter the number of past days that should appear in the report.
  |
|
 Date From
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 ****Date To****
 .
  |
|
 Date To
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 ****Date From****
 .
  |
|
 Date From Picker
  |
 Select the first date in your date range.
  |
|
 Date To Picker
  |
 Select the second date in your date range.
  |
|
 Date From Offset
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 ****Date To Offset****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Date From Offset****
 and 5 for
 ****Date To Offset****
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Date To Offset
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 ****Date From Offset****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Date From Offset****
 and 5 for
 ****Date To Offset****
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

