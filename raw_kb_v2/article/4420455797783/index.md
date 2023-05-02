

Intro
---------


 Apache Spark is an open-source distributed general-purpose cluster-computing framework. Spark provides an interface for programming entire clusters with implicit data parallelism and fault tolerance.


 The Simba Spark JDBC Driver is used for direct SQL and HiveQL access to Apache Spark, enabling Business Intelligence (BI), analytics, and reporting on Spark-based data. Use Domo's Simba Spark JDBC connector to efficiently gain direct SQL and HiveQL access to Apache Spark.

The

Simba Spark JDBC

connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your

Simba Spark

Server in the Data Center. This topic discusses the fields and menus that are specific to the

Simba Spark JDBC

connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Simba Spark database and create a DataSet, you must have the following:

 The hostname or IP address of your database server
* The port number of your Spark database
* The Spark database name
* The username and password you use to log into your Spark account
* The

the HTTP Path

Connecting to Your

Simba Spark

Database
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Simba Spark JDBC

Connector page. The components of the other panes in this page,
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
 JDBC Driver
  |

Select the JDBC driver to use.

|
|
 Server Hostname
  |

Enter the hostname or IP address of your database server.

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
 Username
  |
 Enter the username you use to log into your Spark account.
  |
|
 Password
  |
 Enter the password you use to log into your Spark account.
  |
|
 HTTP Path
  |
 Enter the HTTP Path.
  |

Once you have entered valid

Simba Spark

credentials, you can use the same account any time you go to create a new

Simba Spark JDBC

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create a query to pull data from your database.


 Menu
  |
 Description
  |
| --- | --- |
|

HiveQL Query

|

Enter your HiveQL query here.

|
|
 Database Tables
  |

Select the database table.

|
|
 Table Columns
  |

Select the table columns.

|
|
 Fetch Size
  |

Enter the fetch size for memory performance. The default value will be used if no fetch size is specified. If an "out of memory" error occurs, retry decreasing the fetch size.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

