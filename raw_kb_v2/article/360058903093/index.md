

Intro
-------

Google BigQuery Enterprise is a cloud-based big data analytics web service for processing very large read-only data sets. You can use Domo's Google BigQuery Enterprise Data connector to pull data from a specified project and get interactive analysis of massive datasets. Google BigQuery queries are written using a variation of the standard SQL SELECT statement. To learn more about the Google API, visit


 https://developer.google.com


 .


 You connect to your Google BigQuery Enterprise Data account in the Data Center. This topic discusses the fields and menus that are specific to the Google BigQuery Enterprise Data connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google BigQuery Enterprise account and create a DataSet, you must have the following:

 A project created in the Google Developers Console with the APIs and Services enabled
* The Client ID and Client Secret associated with your Google Developers account

The following steps explain in detail how to create your project and obtain the needed credentials.

###
**Creating a project in the Google Developers Console**


1. Go to

https://console.developers.google.com

.
2. Click the dropdown arrow next to
 **My Project**
 .
3. Click
 **New Project**
 .
4. Name your project and select the parent folder.
5. Click
 **Create**
 .


**Note:**
 You can also use an existing project if you want.


####
**Creating the OAuth Client ID and Client Secret**

1. Login to

https://console.developers.google.com/

.


 2. Select your project.


 3. Go to
 **APIs & Services > Credentials**
 .

4. Click on
 **+Create credentials > OAuth client ID**
 .

5. Select
 **OAuth client ID**
 .


 6. Select the
 **Application Type**
 as
 **Web application**
 from the drop down.

7. Enter the name for your application.


 8. Click on
 ****+Add URI****
 under
 ****Authorized redirect URIs****
 .


 9. Add
 **https://oauth.domo.com/api/data/v1/oauth/providers/google-bigquery-enterprise/exchange**
 as the redirect  URI.

10. Click
 ****Create****
 .

###
****Enabling API and Services****

1. Login to

https://console.developers.google.com/

.


 2. Go to
 ****APIs & Services > Dashboard****
 .


 3. Click
 ****+ENABLE APIS AND SERVICES****
 .

4. Search for
 **Google BigQuey API**
 .

5. Click the
 **ENABLE**
 button to enable the BigQuery API.

Connecting to Your Google BigQuery Enterprise Account
-------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Google BigQuery Enterprise Data

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Google BigQuery Enterprise

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the Client ID associated with your Google Developers account. For more details, see

Prerequisites

.
  |
|
 Client Secret
  |
 Enter the Client Secret associated with your Google Developers account. For more details, see

Prerequisites

.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Google BigQuery Enterprise DataSet. You can manage connector accounts in the
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
 Select the Google BigQuery Enterprise report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Query
  |
 Returns the data from Big Query by running legacy or standard SQL.
  |
|
 Table Information
  |
 Returns the information of the Table.
  |
|
 Table Data
  |
 Returns the information about the Table data.
  |

|
|
 What Query Type would you like to use?
  |
 Select whether you would like to use a Legacy SQL Query or a Standard SQL Query. By default, LegacySQL is selected.
  |
|
 Query
  |
 Enter a fully qualified Google BigQuery query.
  |
|
 Query Parameter
  |
 Enter the query parameter value. It is the initial value for query parameter. The last run date is optional by default. The value for last run date is '02/01/1700' if it is not provided. Example:

!{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944
  |
|
 Project ID
  |
 Enter the ID for the project you want to retrieve data for.
  |
|
 Expect Large Results
  |
 Specify whether you would like to get large results. Queries with large results will create a temporary table and delete it when the job is finished. A dataset ID is required to create the temporary table.
  |
|
 Dataset ID
  |
 Enter the ID for the dataset you want to retrieve data for.
  |
|
 Projects
  |
 Select project from available list of projects.
  |
|
 Datasets
  |
 Select dataset from available list of datasets.
  |
|
 Tables
  |
 Select table from available list of tables.
  |
|
 Location
  |
 Enter location. Visit

Dataset Locations

to find more information about Location.
  |
|
 Selected Fields
  |
 Select fields.
  |
|
 Max Results
  |
 Max Results is the number of results returned per page of data. By default, it returns 10,000 results per page. If your dataset throws an out of memory error, decrease Max Results.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

