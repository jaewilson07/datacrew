

Intro
-------

Qubole simplifies the provisioning, management and scaling of big data analytics workloads leveraging data stored on Amazon Web Services, Google Compute, or Microsoft Azure infrastructure.  To learn more about the Qubole API, visit their page (

http://docs.qubole.com/en/latest/rest-api/

).


 You connect to your Qubole account in the Data Center. This topic discusses the fields and menus that are specific to the Qubole connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Qubole account and create a DataSet, you must have a Qubole API token. To find your API token, navigate to

https://api.qubole.com/v2/control-panel

and click the
 **My Accounts**
 tab in the left pane. Click
 **Show**
 for the account and copy the API token that is displayed.


 Connecting to Your Qubole Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Qubole Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Qubole account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Qubole API Token
  |
 Enter your Qubole API token. For more information about obtaining an API token, see "Prerequisites," above.
  |
|
 Domain
  |
 Select the domain you want to retrieve data from.
  |


 Once you have entered valid Qubole credentials, you can use the same account any time you go to create a new Qubole DataSet. You can manage connector accounts in the
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
 Select the Qubole report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Information
  |
 View the details of the current account.
  |
|
 All Commands
  |
 Returns the "All Commands" report containing the query metrics.
  |
|
 Bootstrap
  |
 Return details for a Hive bootstrap in the account.
  |
|
 Cluster Metrics
  |
 Returns metrics for running clusters.
  |
|
 Cluster Nodes
  |
 Returns data about cluster nodes.
  |
|
 Cluster Usage
  |
 Returns cluster usage data.
  |
|
 Command Status
  |
 Returns the status for any command within the last 30 days.
  |
|
 Command Status with Results
  |
 Returns the command status and its results from the last 30 days.
  |
|
 Groups with Specific Role
  |
 Returns a list of groups assigned with a specific role.
  |
|
 Hadoop Jobs
  |
 Returns details of the Hadoop jobs spawned on a cluster from the last 30 days.
  |
|
 List Actions
  |
 Returns a list of actions run by the scheduler.
  |
|
 List Clusters
  |
 Returns configuration details of all clusters in the account.
  |
|
 List Command Templates
  |
 Returns a list of command templates.
  |
|
 List Data Stores
  |
 Returns a list of data stores.
  |
|
 List Schedule Actions
  |
 Returns a list of actions run for a scheduler.
  |
|
 List Schedules
  |
 Returns all existing schedules created to run command automatically at a certain frequency within a specified interval.
  |
|
 Monthly Usage
  |
 Returns monthly usage details for an account.
  |
|
 Object Policy
  |
 Returns policies set for an individual object, notebook, or cluster.
  |
|
 Pending Users
  |
 Returns users in an account who are awaiting approval.
  |
|
 Qubole Computer Unit Hour
  |
 Returns Qubole Computer Unit Hour (QCUH) details for a specific AWS account.
  |
|
 Roles Mapped to Group
  |
 Returns all roles mapped to a given Qubole group.
  |
|
 Table Definition
  |
 Returns the Hive table definition as well as the AVRO table schema.
  |
|
 Table Properties
  |
 Returns the Hive table properties.
  |
|
 Tables in Data Store
  |
 Returns all tables in a data store.
  |
|
 Users
  |
 Returns users for an account.
  |
|
 Users in Existing Group
  |
 Returns all users in a given Qubole group.
  |
|
 View Command History
  |
 Returns the command history.
  |

|
|
 Command ID
  |
 Select the command you want to retrieve data for.
  |
|
 Cluster ID
  |
 Select the cluster you want to retrieve data for.
  |
|
 Schedule ID
  |
 Select the schedule you want to retrieve data for.
  |
|
 Commands for All Users?
  |
 Select
 **Yes**
 if you want your report to show commands for all users. Select
 **No**
 to show commands for the current user only.
  |
|
 Include Query Parameters?
  |
 Select
 **Yes**
 if you want your report to include query properties such as "tags" and "query history comments." Otherwise select
 **No**
 .
  |
|
 Include Secret and Keys?
  |
 Select
 **Yes**
 if you want your report to display "Private Key," "Public Key," and "Secret." Otherwise select
 **No**
 .
  |
|
 Metrics Type
  |
 Select the metrics type you want to retrieve data for.
 * **Aggregated Cluster Metrics**
 returns metrics values across clusters.
* **Hadoop Metrics**
 returns metrics values related to JobTracker.
* **System Metrics**
 returns metrics values for the specified host.
 |
|
 Metrics
  |
 Select the metrics you want to show in your report.
  |
|
 Hadoop Metrics
  |
 Select the Hadoop metrics you want to show in your report.
  |
|
 Host Name
  |
 Enter the host name (private DNS name) for which metrics values are required.
  |
|
 Account ID (Optional)
  |
 Enter the ID of the account you want to retrieve data for. If you do not enter an ID, data will be returned for the current user.
  |
|
 Interval
  |
 Select the interval for which metrics values are required.
  |
|
 Group
  |
 Select the ID of the group you want to retrieve data for.
  |
|
 Role ID
  |
 Select the role you want to retrieve data for.
  |
|
 Schema
  |
 Select the schema with data you want to pull into Domo.
  |
|
 Table
  |
 Select the table with data you want to pull into Domo.
  |
|
 Data Store
  |
 Select the data store with data you want to pull into Domo.
  |
|
 Sort Column
  |
 Select whether you want to sort your data by CPU, Bytes Read, Bytes Written, or Time (default).
  |
|
 Clusters
  |
 Select the clusters you want to retrieve usage data for.
  |
|
 Date From
  |
 Select whether you want the start date in your report to be a specific date or a relative number of days back from today's date.
  |
|
 Specific Start Date
  |
 Select the start date for your report.
  |
|
 Date From Offset
  |
 Select the number of days back from today you want as the first date in your report.
  |
|
 Date To
  |
 Select whether you want the end date in your report to be a specific date or a relative number of days back from today's date.
  |
|
 Specific End Date
  |
 Select the end date for your report.
  |
|
 Date To Offset
  |
 Select the number of days back from today you want as the last date in your report.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

