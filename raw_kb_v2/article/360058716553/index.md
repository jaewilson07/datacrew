

Intro
-------

Microsoft SQL Server is a scalable, hybrid database platform. Partitioning enables you to perform maintenance operations more quickly, and improve query performance and efficiency, while maintaining the integrity of data. Use Domo's Microsoft SQL Server Partition connector to query your data from your SQL Server using standard SQL queries and get the data into Domo based on the number of past days provided. See your Microsoft SQL Server data with data from other systems, all in Domo using this connector. For more information about the Microsoft SQL Server API, visit their website. (

https://technet.microsoft.com/en-us/library/aa174556(v=sql.80).aspx

).


 The Microsoft SQL Server Partition connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 ********Database********
 in the toolbar at the top of the window.


 You connect to your Microsoft SQL Server in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft SQL Server Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Microsoft SQL Server database and create a DataSet, have your DBA create an account that has read-only access to the databases and tables you need to access. You must have all of the following to connect:

 The username and password you use to log into your Microsoft SQL Server account
* The host name for the database
* The port number for the database
* The name of the database

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Before you can connect to your Microsoft SQL server, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Microsoft SQL Server Database
--------------------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Microsoft SQL Server Partition Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Microsoft SQL Server database. The following table describes what is needed for each field:


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
 Enter the host name for the database.
  |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Database
  |
 Enter the name of the database.
  |
|
 Certificate (optional)
  |
 Enter the URL where the SSL CA Certificate is located.
  |

Once you have entered valid Microsoft SQL Server credentials, you can use the same account any time you go to create a new Microsoft SQL Server Partition DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to use in selecting the data you want.


 Example: select DATE from Employee
  |
|
 Table Name
  |
 Select the table containing the data you want to pull into Domo.
  |
|
 Partition Column Name
  |
 Select partition column name.
  |
|
 Past Days
  |
 Enter the number of past days you want to get data for. Value can be a positive integer. For example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default
 ********************************yyyy-MM-dd********************************
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

