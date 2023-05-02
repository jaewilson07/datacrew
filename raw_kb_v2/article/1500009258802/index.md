

Intro
-------

Google BigQuery is a serverless, highly scalable, and cost-effective cloud data warehouse designed to help you make informed decisions quickly, so you can transform your business with ease. It’s a cloud-based big data analytics web service for processing very large read-only data sets. With this connector you can securely pull large data from a specified project into Domo. Google BigQuery queries are written using a variation of the standard SQL SELECT statement. Once your BigQuery data is in Domo, you can combine it with other data sources, find new insights, and collaborate your data. Use Domo's Google BigQuery High Bandwidth OAuth Connector to securely pull large data from a specified project and analyze it using SQL queries. To learn more about the BigQuery API, go to

https://cloud.google.com/bigquery/docs/reference/v2/

.


 The Google BigQuery High Bandwidth OAuth Connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Google BigQuery High Bandwidth OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to BigQuery you must have your Google credentials (email address and password). Your Google account must have permissions to access the tables and data needed for the query.


 Connecting to BigQuery
-------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Google BigQuery High Bandwidth OAuth Connector page.

The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 The Domo Google BigQuery High Bandwidth OAuth connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click

*Connect**

(or select

*Add Account**

if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google BigQuery High Bandwidth OAuth DataSet.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**

If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click

*Add account**

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
 Report
  |

Select the Google BigQuery High Bandwidth OAuth report you want to run.

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

This connector uses a Domo-defined Google app to allow access to BigQuery. Data imports are optimized by first downloading data to a user-defined Google Storage bucket, and then ingesting the data from Google Storage. To connect, you'll need a BigQuery username and password, and you'll need access to a Google Cloud Storage bucket. Once connected, you'll be able to replace the entire dataset or append data selected from BigQuery to the dataset on every run.

###
 What kind of credentials do I need to power up this connector?

You need your Google credentials (email address and password). Your Google account must have permissions to access the tables and data needed for the query.

###
 How do I know that my login credentials are secure?

The login process uses the OAuth process, so your Google credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

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
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


