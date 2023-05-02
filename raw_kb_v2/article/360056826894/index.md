

Intro
-------

Oracle Database is an object-relational database management system produced and marketed by Oracle Corporation. Oracle provides the most complete, open, and integrated business software and hardware systems. With Domo's Oracle database integration, you can easily connect your Oracle data and make faster decisions. Partitioning enables the table data to be divided across multiple storage objects (data partitions), according to the values in one or more table columns based on a set of user-defined rules. Use Domo's Oracle Database Partition connector to pull data from your Oracle database and compile custom reports. You indicate the data you want by inputting an SQL query. Once your data is in Domo, you have access to the real-time data, so it's easy to move and pivot.


 Domo’s Oracle Database Partition connector assists you to get a comprehensive view of your business and to optimize the way the database engine physically stores data. You indicate the data you want by inputting an SQL query.


 You connect to Oracle Database in the Data Center. This topic discusses the fields and menus that are specific to the Oracle Database Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Oracle Database and create a DataSet, you must have the following:

 Your Oracle database username and password.
* The hostname or IP address of your Oracle server.
* Your Oracle port number.
* Your Oracle SID.

Before you can connect to Oracle Database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Oracle Database
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Oracle Database Partition

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

Oracle Database

. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Oracle database
  |
|
 Password
  |
 Enter the password for your Oracle database
  |
|
 Host
  |
 Enter the hostname or IP address of your Oracle server
  |
|
 Port
  |
 Enter your Oracle port number
  |
|
 SID
  |
 Enter your Oracle SID
  |


 Once you have entered valid Oracle Database credentials, you can use the same account any time you go to create a new

Oracle Database Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
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


 Example:

select Date from Employee

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
 ********yyyy-MM-dd********
 will be used.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

