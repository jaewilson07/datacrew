

Intro
-------


 Presto is an open source distributed SQL query engine for running interactive analytic queries against data sources of all sizes ranging from gigabytes to petabytes. Presto was designed and written from the ground up for interactive analytics and approaches the speed of commercial data warehouses while scaling to the size of organizations like Facebook.

For more information about the Presto API, visit their website

https://prestoapi.com/

.


 The Presto connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your Presto database in the Data Center. This topic discusses the fields and menus that are specific to the Presto connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Presto database and create a DataSet, you must have the following:

 The user should have been granted access to query tables in the


 system.jdbc


 schema
* Username, password & access token can be found at the Presto server in the configurations.
* The user should provide user, password if the Presto server is configured to use basic auth.
* The user should provide an access token if the Presto server is configured for the token-based authentication.
* The username and password you use to log into your Presto database
* The host name for the database
* The port number for the database
* Your access token

Connecting to Your Presto Database
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Presto Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


**Note:**
 When using the copy/paste function for your credentials, ensure there is no whitespace at the beginning or end of the string. By accidentally pasting whitespace, it will cause the connector to error when trying to connect.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Host
  |
 Enter the host name for the Presto database. Example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Username
  |
 Enter your Presto username.
  |
|
 Password
  |
 Enter your Presto password.
  |
|
 Access Token
  |

Enter your access token.

|

Once you have entered valid Presto credentials, you can use the same account any time you go to create a new Presto DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database, with or without a parameter.


 Menu
  |
 Description
  |
| --- | --- |
|
 How would you like to import data into Domo?
  |
 Select the way you want to import your data.
  |
|
 How would you like to build your Query?
  |

Select the Query Type. The following query types are available:

  |  |
| --- | --- |
|
 Custom Query
  |
 Enter the SQL query to execute.
  |
|
 Query Builder
  |
 Select a table and fields to auto-generate your query.
  |

|
|
 Query
  |
 Enter the SQL query to execute.
  |
|
 How would you like to perform your partition?
  |
 Select the way you want to perform partition.
  |
|
 Catalog Names
  |
 Select the catalog.
  |
|
 Schema Names
  |
 Select the schema name.
  |
|
 Select the tables
  |
 Select the database table.
  |
|
 Table Columns
  |
 Select all table columns you want to appear in your report.
  |
|
 Query Helper
  |
 A query is generated based on the selected fields. Copy and paste this text into the QUERY field. You may edit this query, if desired.
  |
|
 Partition Column Name

|
 Select partition column name.
  |
|
 Past Days

|
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Date Format

|
 Select the required date format. By default
 **yyyy-MM-dd**
 will be used.
  |
|
 Custom Date Format

|
 Enter the custom date format.
  |
|
 Partition Query

|

Enter the partition query to determine the distinct partition tags. The column containing the
 **Date**
 data is your partition column.


 Example: Select
 **Date**
 from Table\_Name.

|
|
 Upsert Key Column(s)
  |
 Enter upsert key column name or a comma separated list of upsert key column names.
 **Required only when Update method is Merge**
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

