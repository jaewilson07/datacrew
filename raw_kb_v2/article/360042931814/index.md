

Intro
-------

Snowflake is data warehouse that makes it easy to bring together all your data and make it available to all of the users and systems that need to analyze it. You can use Domo's Snowflake connector to retrieve data from a specified warehouse, database, and database schema by inputting an SQL query. For more information about the Snowflake API, go to

https://docs.snowflake.net/manuals

.


 The Snowflake connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Snowflake connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Snowflake database and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password for your Snowflake account.

Connecting to Your Snowflake Account
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Snowflake account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter the account name for your Snowflake account. For information about finding your account name, see Prerequisites.
  |
|
 Username
  |
 Enter the username associated with your Snowflake account.
  |
|
 Password
  |
 Enter the password associated with your Snowflake account.
  |
|
 Role
  |
 E

nter your role.

|

After you have entered valid Snowflake credentials, you can use the same account in Domo any time you create a Snowflake DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a number of fields and menus for entering your SQL query and specifying the location of the data you want to retrieve.


 Parameter
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the query type.


|  |  |
| --- | --- |
|
 Enter Query
  |
 It enables an option to enter the user defined query.
  |
|
 Query History
  |
 It will fetch the data from the Snowflake query history for the last 70 days using the predefined query.
  |
|
 Table Information
  |
 It will fetch the metadata information about the objects created in your account.
  |
|
 Warehouse Metering History
  |
 It will fetch the warehouse usage and metering information for the last 70 days.
  |

|
|
 Query
  |
 Enter the SQL query to use to retrieve your data. You can use the
 **Query Helper**
 parameter to help you write a usable SQL query. To use the
 **Query Helper**
 , do the following:
 1. Select your desired warehouse, database, database schema, database table, and table columns in each menu.
2. Copy the SQL statement that appears in the
 **Query Helper**
 field.
3. Paste the copied SQL statement into the
 **Query**
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
 Select the database containing the data you want to retrieve. The list populates with all of the databases you have access to based on your credentials.
  |
|
 Database Schema
  |
 Select the database schema containing the data you want to retrieve. The list populates with all of the schemas you have access to based on your credentials.
  |
|
 Database Tables (Optional)
  |
 Select the database table you want to retrieve. The list populates with all of the tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns (Optional)
  |
 Select the table columns you want to retrieve. The list populates with all of the columns you have access to based on your credentials. If you do not select a table column, the connector retrieves your entire selected database table.
  |
|
 Query Helper (Optional)
  |
 When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.
  |
|
 Fetch Size (Optional)
  |
 Enter a fetch size for memory performance. If this field is left blank, the default value of 1000 will be used. If the DataSet throws an "Out of memory" error, try decreasing the fetch size.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 When should I use this connector?

This connector allows you to import your data into Domo from Snowflake using Snowflake's JDBC drivers. Use this connector with a Snowflake Account Name, local username, and password to ingest small to large datasets from Snowflake.

####
 What permissions do I need on Snowflake?

You need the CREATE TABLE, COPY INTO, PUT, CREATE FILE FORMAT, REMOVE, and LIST permissions on Snowflake.

####
 What kind of credentials do I need to power up this connector?

You need the account name (provided by Snowflake), your Snowflake username, and private key. If you are creating an encrypted private key then you will need a passphrase used to encrypt the private key file. You can also provide your role name.

####
 Can I use the same account to create multiple datasets?

Yes

####
 How do I find the Input Dataset ID?

Your Domo input dataset ID is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


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

Whitelisting IP Addresses for Connectors & Federated Adapters.


#####
 Is this a Production-level connector?

Yes. This connector is designed for all-sized DataSets.

####
 Why are the lists of warehouses, databases, schemas, etc. not populating correctly?

You only see content that you have access to based on the user role entered for your account in Snowflake. If you aren’t seeing something you are expecting, make sure that role has access to that warehouse, database, and table. etc.


 If you do not enter a role in Snowflake, the SYSADMIN role is used by default.

