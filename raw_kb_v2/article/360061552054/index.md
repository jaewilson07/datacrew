

Intro
-------

The Domo Snowflake OAuth connector makes it easy to bring your data from your Snowflake data warehouse into Domo securely. If you are already using Snowflake as a data warehousing solution, this connector helps you use Domo in conjunction with it to get the most from your data. To use this connector, you must have your Snowflake account name, and the client ID and client secret provided by Snowflake when the client is registered. Once your Snowflake data is in Domo, you can combine it with all your other Domo data to get a centralized view of your most mission-critical data. For more information about the Snowflake API, go to

https://docs.snowflake.net/manuals

.


 The Snowflake connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Snowflake OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------


**Important:**
 Snowflake asserts your need to manually re-connect your Domo account every time the account expires. The Snowflake integration controls how often the account will expire. If it is set to expire the refresh tokens every 90 days, then you will need to reconnect the account every 90 days. If you would like to increase the refresh timeout to more than 90 days, then you will need to contact the
 **Snowflake Support**
 , and they can increase the maximum timeout from 90 days to 1 year.

Prerequisites
---------------

To connect to your Snowflake database account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following https://.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The Client ID and Client Secret provided by Snowflake when the client is registered.


 Connecting to Your Snowflake Account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake OAuth Connector page.

The components of the other panes in this page,

*Scheduling**

and

*Name & Describe Your DataSet**

, are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .


###
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
 Enter the account name for your Snowflake account.
  |
|
 Client ID
  |
 Enter your Client ID provided by Snowflake when the client is registered.
  |
|
 Client Secret
  |
 Enter your Client Secret provided by Snowflake when the client is registered.
  |
|
 Role
  |
 Enter your role.
  |


 After you have entered valid Snowflake credentials, you can use the same account in Domo any time you create a Snowflake OAuth DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

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
 Query Type
  |
 Select whether you want to enter a custom query or use a query builder.
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
 Database Objects
  |
 Select the database object.
  |
|
 Tables
  |
 Select the database table you want to retrieve. The list populates with all of the tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Columns
  |
 Select the table columns you want to retrieve. The list populates with all of the columns you have access to based on your credentials. If you do not select a table column, the connector retrieves your entire selected database table.
  |
|
 Table Query Helper
  |
 This field shows the query that is generated based on the selected fields.
  |
|
 Views
  |
 Select the view.
  |
|
 View Columns
  |
 Select the view columns that you would like to include in your report.
  |
|
 Query Helper
  |
 When you select warehouses, databases, schemas, tables, etc. from the above menus, a usable SQL query is built for you in this field. Copy and paste the SQL statement in this field into the
 ****Query****
 field.
  |
|
 Fetch Size
  |
 Enter a fetch size for memory performance. If this field is left blank, the default value 1000 will be used. If dataset throws an out of memory error, try decreasing the fetch size.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

I am receiving an error saying, "OAuth access token expired." Why?


 To avoid this error, you need to refresh the token. Snowflake asserts your need to manually re-connect your Domo account every time the account expires. The Snowflake integration controls how often the account will expire. If it is set to expire the refresh tokens every 90 days, then you will need to reconnect the account every 90 days. If you would like to increase the refresh timeout to more than 90 days, then you will need to contact the
 **Snowflake Support**
 , and they can increase the maximum timeout from 90 days to 1 year.


####

Are there any API limits I should be aware of?

This depends on your server configuration.

###

How frequently will my data update?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

###

What should I be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled. Refer to the Query Helper field for query help.

###

Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses in Domo

.

###

Why are the lists of warehouses, databases, schemas, etc. not populating correctly?

You only see content that that you have access to based on the user role entered for your account in Snowflake. If you aren’t seeing something you are expecting, make sure that role has access to that warehouse, database, table. etc.


 If you do not enter a role in Snowflake, the SYSADMIN role is used by default.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


