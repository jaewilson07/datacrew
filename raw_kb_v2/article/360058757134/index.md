

Intro
-------

Snowflake is a cloud-based analytic data warehouse system. Use Domo's Snowflake Managed Unload connector to unload data from your Snowflake database into internal Amazon S3. The files are then downloaded from internal S3 into Domo. This connector should be preferred over the other Snowflake connectors if you are executing very large queries. To learn more about the Snowflake API, visit their page (

https://docs.snowflake.net/manuals

).


 You connect to your Snowflake Managed Unload account in the Data Center. This topic discusses the fields and menus that are specific to the Snowflake Managed Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Snowflake Managed Unload account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). For US West Region
 ****account\_name****
 , and All other regions
 ****account\_name.region\_id****
 . This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password used to connect to your Snowflake host.

Snowflake Managed Unload Connector requires more permissions than a regular Snowflake Connector. Here is the list of commands for roles and permissions:

  |  |
| --- | --- |
|
 CREATE STAGE
  |
 Creates a new stage to unload data from tables into files
  |
|
 COPY INTO <location>
  |
 command to unload all the rows from a table into one or more files into the stage
  |
|
 CREATE FILE FORMAT
  |
 Creates a file format
  |
|
 LIST
  |
 Returns a list of files that have been staged
  |
|
 GET
  |
 Downloads data files from the above created Snowflake stage
  |
|
 REMOVE
  |
 Removes files that have been staged - unloaded from a table
  |

Connecting to Your Snowflake Managed Unload Account
-----------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Snowflake Managed Unload

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

Snowflake Managed Unload

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter your Snowflake account name. For more information, see

Prerequisites

.
  |
|
 Username
  |
 Enter the username you use to connect to your Snowflake host.
  |
|
 Password
  |
 Enter the password you use to connect to your Snowflake host.
  |
|
 Role
  |
 Enter your role.
  |


 Once you have entered valid

Snowflake Managed Unload

credentials, you can use the same account any time you go to create a new

Snowflake Managed Unload

DataSet. You can manage connector accounts in the
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
 Select the Query Type. The following query types are available:


|  |  |
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
 Enter the SQL query to retrieve your data. You can use the
 ****Query Helper****
 parameter to help you write a usable SQL query. To use the
 ****Query Helper****
 , do the following:
 1. Select your desired warehouse, database, database schema, database object, and table columns or views in each menu.
2. Copy the SQL statement that appears in the
 ****Query Helper****
 field.
3. Paste the copied SQL statement into the
 ****Query****
 field.
 |
|
 Warehouses
  |
 Select the warehouse containing the data you want to retrieve. The list populates with all of the warehouses you have access to based on your credentials.
  |
|
 Databases
  |
 Select the database containing the data you want to retrieve. The list populates with all of the databases you have access to based on your credentials.
  |
|
 Database Schemas
  |
 Select the database schema containing the data you want to retrieve. The list populates with all of the schemas you have access to based on your credentials.
  |
|
 Database Objects
  |
 Select the database object containing the data you want to retrieve. The list populates with all of the objects you have access to based on your credentials.
  |
|
 Database Views
  |
 Select the database view you want to retrieve. The list populates with all of the views you have access to based on your credentials. If you do not select a database view, the connector retrieves your entire database schema.
  |
|
 Database Tables
  |
 Select the database table you want to retrieve. The list populates with all of the tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns
  |
 Select the table columns you want to retrieve. The list populates with all of the columns you have access to based on your credentials. If you do not select a table column, the connector retrieves your entire selected database table.
  |
|
 Query Helper
  |
 When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste the SQL statement in this field into the
 ****Query****
 field. For more information, see
 ****Query****
 , above.
  |
|
 Partition Support
  |
 Choose whether or not to partition your data.
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default,
 **yyyy-MM-dd**
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 When should I use this Connector?

The Snowflake KeyPair Internal Managed Unload connector imports data to DOmo from Snowflake by first unloading data to a user-defined S3 bucket before ingesting the data in Domo. This connector is suitable for datasets of any size and is recommended for very large datasets. To connect, you'll need a local Snowflake username and a private key.

####
 Are there any API limits I should be aware of?

This depends on your server configuration.

####
 How frequently will my data update?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

####
 What should I be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled. Refer to the Query Helper field for query help.

####
 Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses in Domo

.

