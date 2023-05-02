

Intro
---------

Google BigQuery is a cloud-based big data analytics web service for processing very large read-only data sets. You can use Domo's Google BigQuery Service connector to pull data from a specified project. Google BigQuery queries are written using a variation of the standard

SQL SELECT

statement. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 The Google BigQuery Service connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Google BigQuery Service connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Any situations in which you need to extract data from Google BigQuery.
  |
|
**Primary Metrics**
 |
 DFP data
  |
|
**Primary Company Roles**
 | * Marketing roles
* Finance roles
 |
|
**Average Implementation Time**
 |
 This depends on how many queries need to be written. Having someone who understands the BigQuery database structure and knows how to build the queries will greatly cut down on deployment time.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------


* Structuring your queries to be optimized so you are pre-aggregating data
 *before*
 pulling it into Domo will significantly improve performance.
* Getting your data closely structured to support the visualizations prior to ingestion will save time by potentially eliminating the ETL process in Domo.

Prerequisites
---------------

To connect to a BigQuery service account,

you must have a Google BigQuery service account JSON key. To generate a key, do the following:


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


 Connecting to Your BigQuery Service Account
---------------------------------------------

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

This pane contains fields for entering credentials to connect to your BigQuery service account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON for your BigQuery service account key. For information about creating a key, see "Prerequisites," above.
  |

Once you have entered a valid key, you can use the same account any time you go to create a new Google BigQuery Service DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields and menus you can use to configure your report.


**Tip:**
 Use the "Table Information" report to get the DataSet ID, Project ID, table name, etc. This can help you create and form your queries.


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
 Lets you enter a query and configure the parameters.
  |
|
 Table Data
  |
 Lets you pull data for a selected BigQuery project, dataset, and table.
  |
|
 Table Information
  |
 Returns the table resource that describes the structure of this table. This report does
 *not*
 return the data in the table. To do this, run the "Table Data" report.
  |

|
|
 SQL Dialect
  |
 Select whether your query is to be written using LegacySQL or StandardSQL. By default,

Standard SQL is used.

|
|
 Query
  |
 Enter a fully qualified BigQuery query. The query language you use must match what you have selected in the
 **SQL Dialect**

menu.


 For full documentation about writing BigQuery queries, see

https://cloud.google.com/bigquery/query-reference

. For more information about setting a query prefix, see

https://cloud.google.com/bigquery/docs/reference/standard-sql/enabling-standard-sql

.
  |
|
 Query Parameter
  |

Enter the query parameter value. This is the initial value for query parameter. You can provide multiple comma separated query parameters. The query in the above "Query" field will fetch the data according to the parameter values provided here. For more information, see "Using the Query Parameter" section below.


 Example:

!{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944


 |
|
 Allow Large Results
  |
 Select whether you expect a large resulting DataSet from this query. If you select
 **Yes**
 , a temporary table will be created and then deleted when the job is finished. You will need to enter a DataSet ID in the
 **DataSet ID**
 field for the table to be created.
  |
|
 DataSet Name
  |
 Select the name of the dataset you want to pull into Domo.
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
 Using the Query Parameter


 Query parameter indicates the initial values for the query parameters. After the initial run, the query will only request the updated data from the provider on subsequent runs. You can provide multiple query parameters separated by comma.


**Note:**
 You must use the query parameters provided here in the Query field above. The query will fetch the data according to the parameter values provided here.


 Example:

In this example, the values "id=1" and "start date=02/01/1944" will be used in the first run of the above query.


 The value for the query parameter 'last run date' is optional. By default, the last run date is '02/01/1700' if is not provided.


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure that the credentials have the proper access to the query the tables needed.
* Make sure the queries are correct and calling the correctly named data sources.

FAQs
------


####
 When should I use this connector?

Use this connector to import small to large datasets from Google BigQuery. This connector uses a Service Account key in JSON format to connect, and only connects to the project specified in the key. Once connected, you can replace the dataset on every run, append data to the existing dataset on every run, or merge (upsert) new or updated data on every run. For very large datasets, it is recommended you use one of Domo's Google High Bandwidth or Unload connectors.

###
 How is the page size determined?

The
 **Max Results**
 parameter, set in the
 **Details**
 section of the connector, is the maximum number of rows of data to return per page of results. Setting
 **Max Results**
 to a smaller value, such as 1000, then paging through results, may improve reliability when the query result set is large.


 In addition to Domo's
 **Max Results**
 row limit, Google imposes a byte limit of 10 MB per page of results. If your row values contain a lot of data, you may have fewer rows per page returned in order to come under the byte limit.

###
 How do I process data in specific locations?

You can specify the processing location in your Query report for storing your BigQuery data when you create a DataSet. After you create the DataSet, the location cannot be changed. Queries that run in a specific location may only reference data in that location. There are two types of locations: a regional location and a multi-regional location. For more information, visit

Dataset locations

.

###
 My DataSet returns the error "Too large to run." How can I retrieve large results for my query?

If you are expecting large results for your query, go to the
 **Details**
 section of the connector interface. Select
 **Yes**
 for
 **Allow large results?**
 , and select the DataSet in the
 **DataSet Name**
 menu. Your Google account must have Table creation permissions enabled in order to set
 **Allow large results**
 to
 **Yes**
 .

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same Google BigQuery account for multiple DataSets?

Yes

###
 What kind of credentials do I need to power up this connector?

You need the service account key JSON of your Google BigQuery Service Account.

###
 Where can I find my service account key JSON?

To find your service account key JSON:

. Open the IAM & Admin page in the GCP Console.
2. In the left navigation, click
 **Service accounts**
 .
3. Select your project and click
 **Open**
 .
4. Click
 **Create Service Account**
 .
5. Enter a service account name and service account description. Click
 **Create**
 .
6. Select a role you wish to grant to the service account (Project Owner). Click
 **Continue**
 .
7. Click
 **Create key**
 . Select JSON key type. Click
 **Create**
 . Private key will be saved to your computer.
8. Close the pop up. Click
 **Done**
 .


