

Intro
---------

Google BigQuery is a serverless, highly scalable, and cost-effective cloud data warehouse designed to create, manage, share, and query data. It's a cloud-based big data analytics web service for processing very large read-only data sets. With this connector you can securely pull large data from a specified project into Domo. Google BigQuery queries are written using a variation of the standard SQL SELECT statement. Once your BigQuery data is in Domo, you can combine it with other data sources, find new insights, and collaborate your data. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 The Google BigQuery High Bandwidth Connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Google BigQuery High Bandwidth connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a BigQuery High Bandwidth account,

you must have a Google BigQuery service account JSON key and Google Cloud Storage service account JSON key.


 To generate a Google BigQuery service account JSON key, do the following:


1. In the Google Cloud Platform Console, open the IAM & Admin page.
2. Click
 **Service accounts**
 in the left-hand navigation pane.
3. Select your project and click
 **Open**
 .
4. Click
 **Create Service Account**
 .
5. Enter a name and description for the service account.
6. Click
 **Create**
 .

*Note:**
 You may need the “BigQuery Admin” role in the service account permissions dialog. Please consult with your Google administrator for additional guidance.
7. Select
 **Project > Owner**
 .
8. Click
 **Continue**
 .
9. Click
 **Create key**
 .
10. Select
 **JSON**
 as the key type.
11. Click
 **Create**
 .

A private key will be saved to your computer.

To generate a Google Cloud Storage service account JSON key, do the following:


1. In the Google Cloud Platform Console, open the IAM & Admin page.
2. Click
 **Service accounts**
 in the left-hand navigation pane.
3. Select your project and click
 **Open**
 .
4. Click
 **Create Service Account**
 .
5. Enter a name and description for the service account.
6. Click
 **Create**
 .
7. Click
 **Create key**
 .
8. Select
 **JSON**
 as the key type.
9. Click
 **Create**
 .


 A service account key file will be saved to your computer.

Connecting to BigQuery
------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the Google BigQuery Service Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your BigQuery account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON BigQuery
  |
 Copy and paste the JSON for your BigQuery service account key. For information about creating a key, see "Prerequisites," above.
  |
|
 Service Account Key JSON Google Cloud Storage
  |
 Copy and paste the JSON for your Google Cloud Storage account key. For information about creating a key, see "Prerequisites," above.
  |

Once you have entered valid keys, you can use the same account any time you go to create a new Google BigQuery High Bandwidth DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields and menus you can use to configure your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the BigQuery report type to run. The following reports are available:


|  |  |
| --- | --- |
|
 Query
  |

Runs a BigQuery SQL query and returns results if the query completes.

|

|
|
 DataSet ID
  |
 Select the BigQuery dataset id for your data. For more information about BigQuery datasets, see

Introduction to DataSets

.
  |
|
 Table ID
  |
 Select the BigQuery table id for your data. For more information about tables, see

Introduction to Tables

.
  |
|

Google Cloud Storage Bucket Name

|

Select the Google Cloud Storage bucket name that will be used for temporary storage as we transfer your data into Domo.

|
|
 User Query
  |

Enter a query to execute. Only StandardSQL query is supported.

|
|
 Force to String
  |

Enter a comma separated list of fields that need to be treated as STRING in Domo.

|
|
 Force to Number
  |
 E

nter a comma separated list of fields that need to be treated as NUMBER in Domo.

|
|
 Upsert Key Column(s)
  |

Enter upsert key column name or a comma separated list of upsert key column names.
 **This is Required only when the Update method is Merge**
 .

|
|
 Table Name
  |
 Select the table you want to pull data from.
  |
|
 Processing Location
  |
 Enter the location where your query will run. Queries running in a specific location may only reference data in that location.
  |
|
 Max Results
  |
 Enter the maximum number of results you want to return in your report. The default is 10,000 results per page. If your DataSet throws an "Out of Memory" error, decrease this number.
  |
|
 Use Google BigQuery Schema
  |

Select this checkbox to use the schema received from Google BigQuery.

This is useful when a column's datatype may be perceived incorrectly to Domo.


 Example: Your table may contain '123' in a String column.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure that the credentials have the proper access to the query the tables needed.
* Make sure the queries are correct and calling the correctly named data sources.


