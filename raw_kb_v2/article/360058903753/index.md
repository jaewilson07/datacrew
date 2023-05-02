

Intro
-------

MariaDB is a community-developed fork of the MySQL relational database management system. Use Domo's MariaDB connector to take advantage of MariaDB's speed and other improvements to MySQL's database system when connecting to either MariaDB or MySQL databases. You can easily and securely access your data in minutes to get more visibility. To learn more about MariaDB, visit

https://mariadb.com/docs/

.


 You connect to your MariaDB data in the Data Center. This topic discusses the fields and menus that are specific to the MariaDB connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MariaDB database and create a DataSet, you must have the following:

 The username and password you use to log into your MariaDB account
* The host name for the database
* The port number for the database
* The database or schema name

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Before you can connect to a MariaDB database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your MariaDB Database
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

MariaDB

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

MariaDB database

. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname or IP address of your database server. Example:


 db.company.com

|
|
 Port
  |
 Enter the port number for your database.
  |
|
 Database Name
  |
 Enter your database name.
  |
|
 Username
  |
 Enter your MariaDB username.
  |
|
 Password
  |
 Enter your MariaDB password.
  |
|
 CA Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional.
  |


 Once you have entered valid

MariaDB

credentials, you can use the same account any time you go to create a new

MariaDB

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 ****Query****
 parameter is required. The other three parameters are here to help you construct this query if you choose.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the desired query type—either with or without a parameter
  |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to select the data you want. Example:

select \* from Employee

You can use the
 ********Query Helper********
 parameter to help you write a usable SQL query. To use the
 ********Query Helper********
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 ********Query Helper********
 field.
3. Paste the copied SQL statement into the
 ********Query********
 field.
 |
|
 Query Parameter
  |
 Enter the query parameter value. This is the initial value for the query parameter. You can use this option to retrieve new data since the last run. The last run date is optional.


 Example: If you entered the following query in the
 ****Query****
 field...


`select * from test.lastValue where id <= !{lastvalue:id}! order by id desc`


 ...and then entered the following for the
 ****Query Parameter****
 ...


`!{lastvalue:id}!=3`


 ...then the first run would return 3 rows, and all subsequent runs would return 1 row, and the results would be ordered from largest to smallest.


 Similarly, if you entered the following in the
 ****Query****
 field...


`select * from test.lastValue where time > !{lastrundate:time}!`


 ...and then entered the following for the
 ****Query Parameter****
 ...


`!{lastrundate:time}!=01/01/1990`


 ...then the first run would return 5 rows and all subsequent runs would return 0 rows.
  |
|
 TinyInt Values Treated as Boolean Values
  |
 Select
 ****Yes****
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
 ********Query********
 field. For more information, see
 ********Query********
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

