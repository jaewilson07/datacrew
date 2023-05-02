

Intro
-------

New Relic is a software analytics tool suite. Use Domo’s New Relic NRQL connector to pull New Relic data based on an NRQL query. To learn more about the New Relic API, visit their page (

https://docs.newrelic.com/docs/apis

).


 You connect to your New Relic account in the Data Center. This topic discusses the fields and menus that are specific to the New Relic connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to New Relic and create a DataSet, you must have the following:

 A New Relic API account ID. For information about finding your account ID, visit

https://docs.newrelic.com/docs/accou...tup/account-id

.
* The New Relic API URL. For information about finding your URl, see

https://docs.newrelic.com/docs/apis/...t-api-v2#appid

.
* Your New Relic API query key. For information about registering for a query key, see

https://docs.newrelic.com/docs/insig...a-api#register

.

Connecting to Your New Relic Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the New Relic Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your New Relic account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account ID
  |
 Enter your New Relic API account ID.
  |
|
 API URL
  |
 Enter your New Relic API URL.
  |
|
 Query Key
  |
 Enter your New Relic API query key.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid New Relic credentials, you can use the same account any time you go to create a new New Relic DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains options for pulling your desired report data and configuring the report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter your New Relic NRQL query. For information about NRQL query language, see

https://docs.newrelic.com/docs/insig...roduction-nrql

.
  |
|
 Timestamp Column Names (Optional)
  |
 Enter timestamp column names for your report, separating multiple names with commas. The connector recognizes the "timestamp" column as epoch even if you do not provide a value here. Enter other column names as necessary to be processed for epoch format changes.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

