

Intro
-------

MySQL is a widely used open-source relational database management system. You can use Domo's MySQL Connector to pull data from your MySQL database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the MySQL API, visit their website. (

http://dev.mysql.com/doc/refman/5.0/en/c-api.html

)


 The MySQL connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your MySQL database in the Data Center. This topic discusses the fields and menus that are specific to the MySQL connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Notes:**


* This connector supports TLS IF your MySQL server supports TLS.
* Non SSL connections are not supported. If no certificate is provided, the connection is still SSL but without any certificate authentication. The connection will trust all server certificates. Refer to the following link for details :

https://msdn.microsoft.com/en-us/library/bb879949%28v=sql.110%29.aspx


|  |  |
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
* SSL

You can also include the URL where your SSL CA Certificate is located, though this is optional. If your SSL configuration requires use of all 3 .PEM certificate files, you can utilize the

MySQL Advanced Security Connector

which has a field for each file.

##
 Creating MySQL Accounts

You can create MySQL accounts two ways:

 By using account management statements intended for creating accounts and establishing their privileges, such as

CREATE USER

and

GRANT

. These statements cause the server to make appropriate modifications to the underlying grant tables.
* By manipulating the MySQL grant tables directly with statements such as

INSERT

,

UPDATE

, or

DELETE.

The preferred method is to use account management statements because they are more concise and less error-prone than manipulating the grant tables directly.


 Another option for creating accounts is to use the GUI tool MySQL Workbench. Also, several third-party programs offer capabilities for MySQL account administration, such as phpMyAdmin.

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
 panes in the MySQL Connector page. The components of the other panes in this page,
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
 Enter the host name for the SQL database. For example:


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the SQL database or schema.
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
|
 Port
  |
 Enter the port number for the database.
  |

Once you have entered valid MySQL credentials, you can use the same account any time you go to create a new MySQL DataSet. You can manage connector accounts in the
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


 Troubleshooting
-----------------


* Verify the credentials using MySQL Workbench.
* Confirm the server supports encrypted connections.
* Confirm the Domo IPs are whitelisted.
* To speed up your runtime, make sure the tables you are joining don't have duplicate column names and that you call each column only once.


