

Intro
-------

Querying massive datasets can be time consuming and expensive without the right hardware and infrastructure. Google Big Query solves this problem by enabling super-fast, SQL-like queries against append-only tables, using the processing power of Google's infrastructure. Data first needed to be loaded into BigQuery from where it could be effectively queried by data vendors.


 Workload Identity Federation allows for more secure connection as the input only contains external credentials metadata without any sensitive information. The external credential metadata can be used on external environment to generate temporary/short-live token for required operations. For more details, refer to


 Workload Identity Federation


 .


 This topic discusses the fields and menus that are specific to the BigQuery Workload Identity Federation Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 **WORKLOAD IDENTITY FEDERATION CLIENT LIBRARY CONFIG JSON KEY**
 as a JSON Configuration file.
* A Project ID for a GCP project.


 Follow the steps below to obtain the credentials:
 1. Create a project in the Google Developers Console if you do not have an existing project in GCP.
2. Enable the Big Query APIs in your GCP instance.
3. Create a Workload Identity Pool and Provider.
4. Create a service account and associate it with the pool or with an existing service account with the pool.
5. Download the JSON configuration file to use with the connector.

The following steps explain in detail how to create your project and obtain the needed credentials.

##
 Step 1: Creating a Project in the Google Developers Console


**Note:**
 If you already have a project you’d like to use, you can skip this step.

To create a project in the Google Developers Console, do the following:

. Go to

https://console.developers.google.com

.
2. Click the dropdown arrow next to
 **My Project**
 .
3. Click
 **New Project**
 and provide a name for the new project and the Parent organization or folder for the new project.
4. Click
 **Create**
 .


###
 Step 2: Enabling the BigQuery API

To enable the BigQuery API for your project, do the following:

. Click the burger menu and select the
 **API & Services**
 menu.
2. Select
 **Library**
 and then search for the BigQuery API.
3. Click the
 **BigQuery API**
**Enable**


###
 Step 3: Creating a Workload Identity Pool and Provider


 Follow the steps given below to create a Workload Identity Pool and Provider:
 1. Click the burger menu in the console and select
 **IAM & Admin**
 .
2. Select the
 **Workload Identity Federation**
 option.
3. Click
 **create pool**
 .
4. Enter a name for the pool in Step-1 and ensure that the
 **enable pool**
 is selected.
5. In step 2, you will be prompted to select a provider. Select
 **AWS**
 .
6. Under the
 **provider details**
 tab, enter the name of the Provider and ID, for example,
 **Domo AWS**
 .
7. You will need to provide Domo’s AWS account id in the
 **AWS Account ID box**
 .


 Based on where your Domo instance is located, use one of the account ids listed below:


**US: 339405024189


 AU: 010251424122


 EMEA (IE): 687132894031


 JP: 622384692065


 CA: 710710207408**
8. Contact Domo Support if you are unsure which id to use.
9. You can optionally configure additional provider attributes in Step-3.


###
 Step 4: Grant a Service Account access to the Workload Pool


1. On the burger menu, navigate to
 **IAM**
 and select
 **Workload identity federation**
 list and then select the recently created pool.
2. Select
 **Grant Access**
 located at the top of the window.
3. On the right-side pane, you will be prompted to select which service account you want to give access to.
4. Select the appropriate service account from the
 **Select Service Account**
 dropdown.
5. Click
 **Save**
 .
6. Under
 **Configure your application**
 , select the provider you created with Domo’s AWS account id.
7. Click the
 **Download Config**
 button to download the JSON configuration file.


 This file will be used to power up the connector.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the BigQuery Workload Identity Federation Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 WORKLOAD IDENTITY FEDERATION CLIENT LIBRARY CONFIG JSON KEY
  |
 Configuration of external credentials JSON file containing external authentication metadata. This file is obtained from Step-4 in the instructions above.
  |
|
 Project ID
  |
 Project id of the project in GCP that has access to BigQuery and the workload pool.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-BigQuery Workload Identity Federation connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Run the following reports based on the requirements:


|  |  |
| --- | --- |
|
 Query
  |
 Runs a BigQuery SQL query and returns results if it is successful.
  |
|
 Table Data
  |
 Retrieves table data.
  |
|
 Table Information
  |
 Returns the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
  |

|
|
 SQL Dialect
  |
 Select SQL Dialect that you want to use. Defaults to Standard SQL.
  |
|
 Query
  |
 Enter the query text.
  |
|
 Query Parameters
  |
 Enter the query parameter value, it is the initial value for query parameter. The last run date is optional by default it is '02/01/1700' if is not provided. For example: !{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944.
  |
|
 Allow Large Results
  |
 If enabled, allows arbitrarily large results to be written to the temporary destination table and delete it when the job is finished. Dataset name is required to create the temporary table.
  |
|
 Dataset\_Names
  |
 Select the dataset names from the available list of datasets.
  |
|
 Table Names
  |
 Select table names from available list of tables.
  |
|
 Processing Location
  |
 Enter a location where your query will run. Queries that run in a specific location may only reference data in that location.
  |
|
 Max Results
  |
 Max Results is the number of results returned per page of data. By default, Max Results is 10,000 results per page. If your dataset throws an out of memory error, decrease Max Results.
  |
|
 Use Google BigQuery Schema
  |
 Select this checkbox to use the schema received from Google BigQuery.<br> This is useful when a column's datatype may be perceived incorrectly to Domo: e.g. your table has '123' in a String column.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

