

Intro
-------

Snowflake is a cloud-based analytic data warehouse system. The files are then downloaded from S3 into Domo. You should use this connector instead of the standard Snowflake connector if you are executing very large queries. To learn more about the Snowflake API, visit their page (

https://docs.snowflake.net/manuals

).


 You connect to your Snowflake account in the Data Center. This topic discusses the fields and menus that are specific to the Snowflake Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Snowflake account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password used to connect to your Snowflake host.
* Your AWS access key. This is available in the AWS Console in the
 **Security Credentials**
 section (unless you are using IAM, in which case it is under
 **Users**
 ).
* Your AWS secret key. This was provided when you created your access key. You can generate a new key in the AWS Console.
* The name of the AWS S3 bucket in which Snowflake data will be unloaded.

Connecting to Your Snowflake Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Snowflake account. The following table describes what is needed for each field:


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
 Access Key
  |
 Enter your AWS access key. For information about obtaining an access key, see "

Prerequisites

," above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about obtaining a secret key, see "

Prerequisites

," above.
  |
|
 Bucket
  |
 Enter the name of the AWS S3 bucket.
  |


 Once you have entered valid Snowflake credentials, you can use the same account any time you go to create a new Snowflake DataSet. You can manage connector accounts in the
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
 Query
  |
 Enter the SQL query to use to retrieve your data. You can use the
 ****Query Helper****
 parameter to help you write a usable SQL query. To use the
 ****Query Helper****
 , do the following:
 1. Select your desired warehouse, database, database schema, database table, and table columns in each menu.
2. Copy the SQL statement that appears in the
 ****Query Helper****
 field.
3. Paste the copied SQL statement into the
 ****Query****
 field.
 |
|
 Warehouses (Optional)
  |
 Select the warehouse containing the data you want to retrieve.  The list populates with all of the warehouses you have access to based on your credentials.
  |
|
 Databases (Optional)
  |
 Select the database containing the data you want to retrieve.  The list populates with all of the databases you have access to based on your credentials.
  |
|
 Database Schema (Optional)
  |
 Select the database schema containing the data you want to retrieve.  The list populates with all of the schemas you have access to based on your credentials.
  |
|
 Database Tables (Optional)
  |
 (Optional) Select the database table you want to retrieve. The list populates with all of the tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns (Optional)
  |
 (Optional) Select the table columns you want to retrieve. The list populates with all of the columns you have access to based on your credentials. If you do not select a table column, the connector retrieves your entire selected database table.
  |
|
 Query Helper (Optional)
  |
 (Optional) When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste the SQL statement in this field into the
 ****Query****
 field. For more information, see
 ****Query****
 , above.
  |
|
 Use Snowflake Schema
  |
 Check this box if you want to use the schema from Snowflake instead of having Domo determine the schema automatically.
  |

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
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

####
 Is this a Production-level connector?

This connector is designed for small/medium DataSets and proof of concept work for large DataSets.

