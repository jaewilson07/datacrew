


**Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Adwords via BigQuery
* DoubleClick Campaign Manager via Google Cloud Storage (DTV2)
* Google Cloud Storage
* Google Contacts
* Google Drive
* Google Gmail
* Google Admin SDK Reports

If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:

 Google BigQuery Service
* Google Ads (fomerly AdWords) via BigQuery Service
* Google Drive Service
* Google Cloud Storage Service
* Google Contacts Service
* Google Gmail Service
* Google Admin SDK Reports Service

All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.


 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.


 Intro
-------

Google BigQuery is a cloud-based big data analytics web service for processing very large read-only data sets. Domo's Google BigQuery connector leverages standard SQL and legacy SQL queries to extract data and ingest it into Domo. BigQuery queries are written using a variation of the standard SQL
 **Select**
 statement. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 The Google BigQuery connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Google BigQuery connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

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

To connect to BigQuery,

you must have your Google credentials (email address and password). Your Google account must have permissions to access the tables and data needed for the query.

Connecting to Your BigQuery Account
-------------------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the Google BigQuery Connector page. The components of the other panes in this page,

Scheduling

and

Name & Describe Your DataSet

, are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google BigQuery connector uses OAuth to connect to BigQuery. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing BigQuery accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a BigQuery DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.


###
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
 Table Information
  |
 Lets you pull data for a selected BigQuery project, dataset, and table.
  |

|
|
 What Query Type Would You Like to Use?
  |
 Select whether your query is to be written using LegacySQL or StandardSQL.
  |
|
 Query
  |
 Enter a fully qualified BigQuery query. The query language you use must match what you have selected in the
 **What Query Type Would You Like to Use?**
 menu.


 For full documentation about writing BigQuery queries, see

https://cloud.google.com/bigquery/query-reference

. For more information about setting a query prefix, see

https://cloud.google.com/bigquery/docs/reference/standard-sql/enabling-standard-sql

.
  |
|
 Project ID
  |
 Enter the ID for the project you want to retrieve data for.

*Note:**
 Only one Project ID can be entered. If you want to pull multiple Project ID's, then multiple DataSets will need to be created.


 |
|
 Expect Large Results
  |
 Select whether you expect a large resulting DataSet from this query. If you select
 **Yes**
 , a temporary table will be created and then deleted when the job is finished. You will need to enter a DataSet ID in the
 **DataSet ID**
 field for the table to be created.
  |
|
 DataSet ID
  |
 Enter the ID of the dataset you are pulling into Domo.

*Note**
**:**
 Only one DataSet ID can be entered. If you want to pull multiple DataSet ID's, then multiple DataSets will need to be created.


 |
|
 Projects
  |
 Select the project you want to pull data from.
  |
|
 DataSets
  |
 Select the dataset you want to pull data from.
  |
|
 Tables
  |
 Select the table you want to pull data from.
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

FAQs
------


####
 When should I use this connector?

This connector has been deprecated and cannot be used to power up any new datasets.

###
 What kind of credentials do I need to power up the Google BigQuery connector?

You need Google account credentials with permissions to access the tables and data needed for the query.

###
 How do I know my Google account credentials are secure?

Domo's Google BigQuery connector uses OAuth, which authenticates the account with Google, without Domo ever having access to your Google account credentials.

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same Google BigQuery account for multiple DataSets?

Yes

