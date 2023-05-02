

Intro
-------


 MySQL is a widely used open-source relational database management system. You can use Domo's MySQL Advanced Security Connector to pull data from your MySQL database and compile custom reports. You indicate the data you want by inputting an SQL query.

For more information about the MySQL API, visit their website. (

http://dev.mysql.com/doc/refman/5.0/en/c-api.html

)


 The MySQL

Advanced Security

Connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your MySQL database in the Data Center. This topic discusses the fields and menus that are specific to the MySQL

Advanced Security C

onnector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling data mart and data warehouse SQL queries
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * CIO
* CTO
 |
|
**Average Implementation Time**
 |
 5-40+ hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------


* Limit the results set size is much as possible.
* Keep the number of columns to a minimum.

Prerequisites
---------------

To connect to a MySQL database and create a DataSet, you must have the following:

 The username and password you use to log into your MySQL database
* The host name for the database
* The port number for the database
* The database name or schema name
* The SQL query you will use to pull data

You can also provide your SSL and CA Certificates, and the SSL key, though this is optional.

##
 Whitelisting

Before you can connect to a MySQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your MySQL Database
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MySQL Advanced Security Connector page. The components of the other panes in this page,
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
 Enter the host name for the MySQL database.


 For example:


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the MySQL database or schema.
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
 Port
  |
 Enter the port number for the database.
  |
|
 CA Certificate
  |
 Enter the URL where the CA Certificate is located (optional).
  |
|
 SSL Certificate
  |
 Enter the URL where the SSL Certificate is located (optional).
  |
|
 SSL Key
  |
 Enter the SSL key (optional).
  |
|
 JDBC Driver
  |
 Select the JDBC driver to use (optional). By default, the connector uses 5.1.45
  |

Once you have entered valid MySQL credentials, you can use the same account any time you go to create a new MySQL Advanced Security DataSet. You can manage connector accounts in the
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
 Query Type
  |
 Select the desired MySQL query type—either with or without a parameter.
  |
|
 Query
  |

Enter the SQL query to execute. The query will execute on the MySQL server and will fetch the data from it.

For example:

select \* from Employee

You can use the
 ****Query Helper****
 to help you write a usable SQL query. To use the
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


 For example: If you entered the following query in the
 **Query**
 field,


`select * from test.lastValue where id <= !{lastvalue:id}! order by id desc`


 and then entered the following for the
 **Query Parameter,**


`!{lastvalue:id}!=3`


 then the first run would return 3 rows, and all subsequent runs would return 1 row, and the results would be ordered from largest to smallest.


 Similarly, if you entered the following in the
 **Query**
 field,


`select * from test.lastValue where time > !{lastrundate:time}!`


 and then entered the following for the
 **Query Parameter,**


`!{lastrundate:time}!=01/01/1990`


 then the first run would return 5 rows and all subsequent runs would return 0 rows.
  |
|
 TinyInt Values Treated as Bit (Boolean) Values?
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
 Database Tables
  |
 Select the database table you want to import into Domo.
  |
|
 Table Columns
  |
 Select the table columns you want to import into Domo.
  |
|
 Query Helper
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


 Troubleshooting
-----------------


* Verify the credentials using MySQL Workbench.
* Confirm the server supports encrypted connections.
* Confirm the Domo IPs are whitelisted.
* To speed up your runtime, make sure the tables you are joining don't have duplicate column names and that you call each column only once.


