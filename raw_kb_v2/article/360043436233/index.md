

Intro
-------

Oracle Database is an object-relational database management system produced and marketed by Oracle Corporation. You indicate the data you want by inputting an SQL query.


 You connect to Oracle Database in the Data Center. This topic discusses the fields and menus that are specific to the Oracle Database connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Oracle Database and create a DataSet, you must have the following:

 Your Oracle username and password.
* The hostname or IP address of your Oracle server.
* Your Oracle port number.
* Your Oracle SID.

Before you can connect to Oracle Database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Oracle Database
-------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Oracle Database Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Oracle Database account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Oracle account.
  |
|
 Password
  |
 Enter the password for your Oracle account.
  |
|
 Host
  |
 Enter the hostname or IP address of your Oracle server.
  |
|
 Port
  |
 Enter your Oracle port number.
  |
|
 SID
  |
 Enter your Oracle SID.
  |


 Once you have entered valid Oracle Database credentials, you can use the same account any time you go to create a new Oracle Database DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 **Query**
 parameter is required. The other three parameters are here to help you construct this query if you choose.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

If you want help in constructing your query,
  |
|
 Database Table (Optional)
  |
 Select the table containing the data you want to pull into Domo. The selected table will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Table Columns (Optional)
  |
 Select the table columns with data you want to pull into Domo. The selected columns will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Query Helper (Optional)
  |
 Copy and paste this query into the
 **Query**
 field if you need help building a query. This query is automatically generated when you select a table and columns in the
 **Database Table**
 and
 **Table Columns**
 fields, respectively.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

