

Intro
-------

Amazon Aurora is a MySQL- and PostgreSQL-compatible relational database built for the cloud. To learn more about Amazon Aurora, visit their web page (

https://aws.amazon.com/rds/aurora/

).


 You connect to your Amazon Aurora account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Aurora connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon Aurora account and create a DataSet, you must have the following:

 A JDBC driver (currently either version 8.0.13 or 5.1.38)
* The hostname or IP address of your database server, e.g.


 db.company.com
* Your MySQL database/schema name
* Your MySQL username and password
* Your MySQL port number

You can also include the URL where your SSL CA Certificate is located, though this is optional.

##
 Whitelisting

Before you can connect to a MySQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Amazon Aurora Data
----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Aurora Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to data in an Amazon Aurora database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC Driver
  |
 Select the JDBC driver you want to use.
  |
|
 Host
  |
 Enter the hostname or IP address of your database server, e.g.


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the database you want to pull data from.
  |
|
 Username
  |
 Enter your MySQL username.
  |
|
 Password
  |
 Enter your MySQL password.
  |
|
 CA Certificate
  |
 Enter the URL where the SSL Ca Certificate is located (optional).
  |


 Once you have entered valid Amazon Aurora credentials, you can use the same account any time you go to create a new Amazon Aurora DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database, with or without a parameter.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the desired MySQL query type—either with or without a parameter.
  |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

You can use the
 ****Query Helper****
 parameter to help you write a usable SQL query. To use the
 ****Query Helper****
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 ****Query Helper****
 field.
3. Paste the copied SQL statement into the
 ****Query****
 field.
 |
|
 Query Parameter
  |
 Enter the query parameter value. This is the initial value for the query parameter. You can use this option to retrieve new data since the last run.


 For example, if you entered the following query in the
 **Query**
 field...


`select * from test.lastValue where id <= !{lastvalue:id}! order by id desc`


 ...and then entered the following for the
 **Query Parameter**
 ...


`!{lastvalue:id}!=3`


 ...then the first run would return 3 rows, and all subsequent runs would return 1 row, and the results would be ordered from largest to smallest.


 Similarly, if you entered the following in the
 **Query**
 field...


`select * from test.lastValue where time > !{lastrundate:time}!`


 ...and then entered the following for the
 **Query Parameter**
 ...


`!{lastrundate:time}!=01/01/1990`


 ...then the first run would return 5 rows and all subsequent runs would return 0 rows.
  |
|
 TinyInt Values Treated as Boolean Values?
  |
 Select
 **Yes**
 if you want TinyInt values to be treated as Boolean.
  |
|
 Cast Boolean Values To...
  |
 Select whether Boolean values will be cast to integers or strings.
  |
|
 Database Tables (Optional)
  |
 Select the database table you want to import into Domo.
  |
|
 Table Columns (Optional)
  |
 Select the table columns you want to import into Domo.
  |
|
 Query Helper (Optional)
  |
 Copy and paste the SQL statement in this field into the
 ****Query****
 field. For more information, see
 ****Query****
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

