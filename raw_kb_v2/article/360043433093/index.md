

Intro
-------

Amazon CloudWatch is a monitoring service for AWS cloud resources and applications. Use Domo's Amazon CloudWatch connector to gain system-wide visibility into resource utilization, application performance, and operational health. To learn more about the Amazon CloudWatch API, visit their page (

http://docs.aws.amazon.com/AmazonClo...e/Welcome.html

).


 You connect to your Amazon CloudWatch account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon CloudWatch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon CloudWatch account and create a DataSet, you must have the following:

 The access key for your AWS account
* The secret key for your AWS account

For information about obtaining these credentials, see

http://docs.aws.amazon.com/general/l...et-access-keys

.


 Connecting to Your Amazon CloudWatch Account
----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon CloudWatch Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Amazon CloudWatch account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter the access key for your AWS account.
  |
|
 Secret Key
  |
 Enter the secret key for your AWS account.
  |

For information about obtaining these credentials, see

http://docs.aws.amazon.com/general/l...et-access-keys

.

Once you have entered valid Amazon CloudWatch credentials, you can use the same account any time you go to create a new Amazon CloudWatch DataSet. You can manage connector accounts in the
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
 Select the Amazon CloudWatch report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Alarms for Metrics
  |
 Retrieves all alarms for a single metric.
  |
|
 Describe Alarm History
  |
 Retrieves the history for all the authenticated user's alarms.
  |
|
 Describe Alarms
  |
 Retrieves all of the authenticated user's alarms.
  |
|
 GetLogEvents
  |
 Lists log events from the specified log stream.
  |
|
 GetAllLogEvents
  |
 Retrieves log events for all the log streams in the specified date range.
  |
|
 List Metrics
  |
 Returns a list of valid metrics stored for the authenticated user.
  |
|
 Metric Statistics
  |
 Returns statistics for a specified metric.
  |

|
|
 Metric Name
  |
 Enter the name of the metric you want to retrieve data for.
  |
|
 Namespace
  |
 Enter the namespace for the metric you want to retrieve data for.
  |
|
 Period
  |
 Enter the period value to return data for. This should be a multiple of 60 (such as 60, 120, 180, etc.).
  |
|
 Statistics
  |
 Enter a comma-separated string of statistics you want to retrieve data for. You can choose from any of the following statistics:
 * Average
* Sum
* SampleCount
* Maximum
* Minimum
 |
|
 Dimensions
  |
 Enter a comma-separated string of dimensions you want to fetch, in the format

dimension:value

. For example:


`StreamName:my-stream-name,ShardID:my-shard-id`
 |
|
 Start Date
  |
 Select whether to pull data for a specific or relative start date. If you select
 **Specific**
 , you will be asked to choose a specific start date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to start pulling data for).
  |
|
 Select Specific Start Date
  |
 Select the date you want to start pulling data for. Combine with
 **Select Specific End Date**
 to create a range of dates.
  |
|
 End Date
  |
 Select whether to pull data for a specific or relative end date. If you select
 **Specific**
 , you will be asked to choose a specific end date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to stop pulling data for).
  |
|
 Select Specific End Date
  |
 Select the date you want to stop pulling data for. Combine with
 **Select Specific Start Date**
 to create a range of dates.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

