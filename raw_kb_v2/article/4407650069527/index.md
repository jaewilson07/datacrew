

Intro
-------

Google BigQuery is a serverless, highly scalable, and cost-effective cloud data warehouse designed to help you make informed decisions quickly, so you can transform your business with ease. It’s a cloud-based big data analytics web service for processing very large read-only data sets. With this connector you can securely pull large data from a specified project into Domo. Google BigQuery queries are written using a variation of the standard SQL SELECT statement. Once your BigQuery data is in Domo, you can combine it with other data sources, find new insights, and collaborate your data. Use Domo's Google BigQuery High Bandwidth OAuth Connector to securely pull large data from a specified project and analyze it using SQL queries. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 The Google BigQuery High Bandwidth OAuth Enterprise Connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Google BigQuery High Bandwidth OAuth Enterprise Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to BigQuery you must have your client ID and client secret associated with your OAuth client.


 Connecting to BigQuery
-------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Google BigQuery High Bandwidth OAuth Enterprise Connector page.

The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 The Domo Google BigQuery High Bandwidth OAuth Enterprise Connector uses OAuth to connect. You need to enter the client ID and client secret in Domo.


|
 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter your client ID.
  |
|
 Client Secret
  |
 Enter your client secret.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Google BigQuery High Bandwidth OAuth Enterprise DataSet.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**

If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click

*Connect**

. If you want to connect to an account that is different from the one you are logged into, you must first log out of the current Google account.

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
 How would you like to import your data?
  |
 Select the import method you want to use to update your Domo data.
  |
|
 Partition Criteria
  |
 Select whether you want to partition your data using the date keys, non-date keys, or meta query.
  |
|
 Partition Column Name
  |
 Select the partition column name. Only the date type columns will be available in the options.
  |
|
 Partition Support Format
  |
 Choose how to format the values in the selected date partition columns.
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Past Months
  |
 Enter the number of past months that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Past Years
  |
 Enter the number of past years that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Future Months
  |
 Enter the number of future months that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Future Years
  |
 Enter the number of future years that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Partition Non Date Key Column Name
  |
 Select the partition column name. Values in the selected column would be used as the partition tags
  |
|
 Partition Query to determine partition tags
  |
 Enter the partition query to determine the distinct partition tags. Example: SELECT DISTINCT(COLUMN\_NAME) FROM `DATASET\_ID`.`TABLENAME`.
  |
|
 Report
  |

Select the Google BigQuery High Bandwidth OAuth Enterprise report you want to run.

The following reports are available:


|  |  |
| --- | --- |
|
 Query
  |
 Runs a BigQuery SQL query and returns results upon query completion.
  |

|
|
 Project ID
  |
 Select a project from the available list of projects.
  |
|
 DataSet ID
  |
 Select the BigQuery dataset id for your data.


 For more information about the BigQuery datasets, see

https://cloud.google.com/bigquery/docs/datasets-intro

.
  |
|
 Google Cloud Storage Bucket Name
  |
 Select the Google Cloud Storage bucket name that will be used for temporary storage as the connector transfers your data into Domo.
  |
|
 User Query
  |
 Enter a query to execute. Only standard SQL query is supported.
  |
|
 Force To String
  |
 Enter a comma separated list of fields that needs to be treated as STRING in Domo.
  |
|
 Force To Number
  |
 Enter a comma separated list of fields that needs to be treated as NUMBER in Domo.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 When should I use this connector?

Use this connector to import any size dataset from Google BigQuery. This connector connects via OAuth using a customer-defined Google app. You'll need a client and secret, and a valid username and password that has access to both BigQuery and Google Cloud Services (GCS). Data from BigQuery is first unloaded to the specified GCS and then loaded into Domo to optimize data imports. This connector supports replace, append and upsert update modes. This connector does not support partitions.

###
 What kind of credentials do I need to power up this connector?

You need your client ID and client secret associated with your OAuth client.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

None


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.


