

Intro
-------


 CDK Global is the largest global provider of integrated information technology and digital marketing solutions to the automotive retail industry.


 CDK Global

provides integrated technology solutions to over 26,500 Auto, Truck, Motorcycle, Marine, Recreational Vehicle, and Heavy Equipment dealers throughout the world.


 CDK Global Connector is a widely used open-source relational database management system. You can use Domo's CDK Global


 Connector to pull data from your CDK Global


 database and compile custom reports. You indicate the data you want by inputting an SQL query.


 The CDK Global


 connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking


**Database**


 in the toolbar at the top of the window.

*Notes:**


* This connector supports TLS IF your CDK Global server supports TLS.
* Non SSL connections are not supported. If no certificate is provided, the connection is still SSL but without any certificate authentication. The connection will trust all server certificates. Refer to the following link for details :

https://msdn.microsoft.com/en-us/library/bb879949%28v=sql.110%29.aspx

Best Practices
----------------


* Limit the results set size is much as possible.
* Keep the number of columns to a minimum.

Prerequisites
---------------

To connect to a CDK Global database and create a DataSet, you must have the following:

 The username and password you use to log into your CDK Global


 database.
* The hostname for the database.
* The port number for the database.
* The database name or schema name.
* The SQL query you will use to pull data.
* SSL.

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Connecting to Your CDK Global


 Database
--------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes on the CDK Global


 Connector page. The components of the other panes on this page,
 **Scheduling,**
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
 Enter the SFTP host name for the CDK Global


 database. For example:


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the CDK Global database or schema.
  |
|
 Username
  |
 Enter your CDK Global username.
  |
|
 Password
  |
 Enter your CDK Global


 password.
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

Once you have entered valid CDK Global


 credentials, you can use the same account any time you go to create a new CDK Global


 DataSet. You can manage connector accounts in the
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
 Select the desired CDK Global


 query type—either with or without a parameter.
  |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

You can use the
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
 **Query**
 field. For more information, see
 **Query**
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####

What kind of credentials do I need to power up this connector?

You need the username and password associated with your CDK Global account. You also need your CDK Global SFTP hostname and port number.

####
 Can I use the same account multiple times to create datasets?

Yes

####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------


* Verify the credentials using MySQL Workbench.
* Confirm the server supports encrypted connections.
* Confirm the Domo IPs are whitelisted.
* To speed up your runtime, make sure the tables you are joining don't have duplicate column names and that you call each column only once.


