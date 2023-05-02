

Intro
-------

IBM Informix is a fast and scalable database server that manages traditional relational, object-relational, and dimensional databases. Partitioning enables an improved performance for business intelligence style queries. Use Domo's IBM Informix Partition connector to get your IBM Informix data into Domo based on the number of past days provided. To learn more about Informix, visit

https://www.ibm.com/analytics/us/en/...logy/informix/

.


 You connect to your Informix data in the Data Center. This topic discusses the fields and menus that are specific to the IBM Informix Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Informix account and create a DataSet, you must have the following:

 The username and password you use to log into your Informix database
* The Informix database hostname or IP address
* The port number for the Informix database
* The Informix database name
* The Informix server name

Before you can connect to an Informix database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Informix Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the IBM Informix Partition Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Informix account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Informix username.
  |
|
 Password
  |
 Enter your Informix password.
  |
|
 Host
  |
 Enter the host name for the Informix database. Example:


 db.company.com

|
|
 Port
  |
 Enter the port number of the Informix server.
  |
|
 Database Name
  |
 Enter the name of the Informix database.
  |
|
 Server
  |
 Enter the name of your Informix server.
  |


 Once you have entered valid Informix credentials, you can use the same account any time you go to create a new IBM Informix Partition DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your Informix database. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute. Example:

select \* from Employee
  |
|
 Database Tables
  |
 Select the database table you want to appear in your report.
  |
|
 Partition Column Name
  |
 Select the partition column name.
  |
|
 Past Days
  |
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. Example: 30
  |
|
 Date Format
  |
 Select the required date format. By default
 ********yyyy-MM-dd********
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format you wish to apply to your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

