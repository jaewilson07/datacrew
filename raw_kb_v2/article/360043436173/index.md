

Intro
---------

Microsoft SQL Server is a relational database management system developed by Microsoft. As a database, it is a software product whose primary function is to store and retrieve data as requested by other software applications, be it those on the same computer or those running on another computer across a network (including the Internet). Its primary query languages are T-SQL and ANSI SQL. You can use Domo's Microsoft SQL Server Connector to pull data from your Microsoft SQL Server database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the Microsoft SQL Server API, visit their website. (

https://technet.microsoft.com/en-us/library/aa174556(v=sql.80).aspx

).


 The Microsoft SQL Server connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your Microsoft SQL Server in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft SQL Server connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Use this connector when Workbench isn't an option and you need direct access to raw data. Otherwise, given that IT must open up access to the SQL server from outside the corporate intranet in order to use this connector, Workbench is generally the preferred option for connecting to SQL Server. For more information, see

Connecting to Data Using Workbench

.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * IT
* Project management
 |
|
**Average Implementation Time**
 |
 If the server and account are properly configured, and if you know the queries you need to get the data, implementation could take minutes. Otherwise it could be much longer.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 5
  |

Best Practices
----------------

Make sure you use a read-only account that has access only to the databases and tables you need to access.


 Prerequisites
---------------

To connect to a Microsoft SQL Server database and create a DataSet, have your DBA create an account that has read-only access to the databases and tables you need to access. You must have all of the following to connect:

 The username and password you use to log into your Microsoft SQL Server account
* The host name for the database
* The port number for the database
* The name of the database
* The SQL query you will use to pull data

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Before you can connect to your SQL server, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Microsoft SQL Server Database
--------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft SQL Server Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Microsoft SQL Server account.
  |
|
 Password
  |
 Enter the password you use to log into your Microsoft SQL Server account.
  |
|
 Host
  |
 Enter the host name for the database. You can find the host name using an SQL

SELECT

query in SQL Server Management Studio, as follows:


`SELECT serverproperty('Machinename') as Hostname`
 |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Database
  |
 Enter the name of the database. You can find the database name using an SQL

SELECT

query in SQL Server Management Studio, as follows:


`SELECT DB_NAME() AS DataBaseName`
 |
|
 Certificate
  |
 Enter the URL where the SSL CA Certificate is located (optional)
  |

Once you have entered valid Microsoft SQL Server credentials, you can use the same account any time you go to create a new Microsoft SQL DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database.

  |  |
| --- | --- |
|
 Menu
  |
 Description
  |
|
 SQL Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:


`Select GeneralManager from Sales WHERE GeneralManager = 'jane';`
 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure the port is open on the Windows server and that it is open and forwarded in the firewall.
* Make sure you can connect from a workstation in the client network.
* Network protocols must be enabled for remote connections to occur.


