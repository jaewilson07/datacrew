

Intro
-------

The cluster-based, column-oriented, Vertica Analytics Platform is designed to manage large, fast-growing volumes of data and provide fast query performance. Use Domo's Vertica connector to retrieve data from Vertica tables using SQL queries. To learn more about Vertica, visit their documentation home page (

https://www.vertica.com/documentation/vertica/9-3-x-documentation/

).


 You connect to your Vertica account in the Data Center. This topic discusses the fields and menus that are specific to the Vertica connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Vertica account and create a DataSet, you must have the following:

 The name of the server where the Vertica database is hosted
* The username and password you use to connect to the Vertica database
* The Vertica database port number
* The name of the Vertica database

Connecting to Your Vertica Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Vertica Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Vertica account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC Driver
  |
 Select the appropriate JDBC driver to use.
  |
|
 Host
  |
 Enter the name of the server where the Vertica database is hosted.
  |
|
 Username
  |
 Enter the username you use to connect to the Vertica database.
  |
|
 Password
  |
 Enter the password you use to connect to the Vertica database.
  |
|
 Port Number
  |
 Enter the port number of the Vertica database.
  |
|
 Database Name
  |
 Enter the name of the Vertica database.
  |


 Once you have entered valid Vertica credentials, you can use the same account any time you go to create a new Vertica DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Whitelisting

Before you can connect to a Vertica database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.

##
 Details Pane

In this pane you input the SQL query you want to use to pull data from your Vertica database. Optionally, you can also indicate the specific table and columns from that table to bring into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to use to retrieve your data. You can use the
 **Query Helper**
 parameter to help you write a usable SQL query. To use the
 **Query Helper**
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 **Query Helper**
 field.
3. Paste the copied SQL statement into the
 **Query**
 field.


 |
|
 Database Tables (Optional)
  |
 Select the database tables you want to pull into Domo, if desired.
  |
|
 Table Columns (Optional)
  |
 Select the table columns you want to pull into Domo.
  |
|
 Query Helper (Optional)
  |
 (Optional) Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

