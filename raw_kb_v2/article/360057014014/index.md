

Intro
-------

Vertica is a high-speed, self-tuning column-oriented SQL database management software for data warehousing and business intelligence. Vertica partitioning allows you to break up data in a way that improves performance. Partitions in Vertica can improve parallelism during query execution. Use Domo's Vertica Partition Connector to get your data into Domo for in-depth analysis and visualization, based on the number of past days provided. To learn more about Vertica, visit

https://my.vertica.com/documentation/vertica/

.


 You connect to your Vertica account in the Data Center. This topic discusses the fields and menus that are specific to the Vertica Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Vertica account and create a DataSet, you must have the following:

 The name of the host or server where the Vertica database is hosted
* The username and password you use to connect to the Vertica database
* The Vertica database port number
* The name of the Vertica database

Connecting to Your Vertica Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Vertica Partition

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

Vertica

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the name of the server where the Vertica database is hosted.
  |
|
 Port Number
  |
 Enter the port number of the Vertica database.
  |
|
 Username
  |
 Enter the username you use to connect to the Vertica database.
  |
|
 Password
  |
 Enter the password you use to connect to the Vertica database.
  |
|
 Database Name
  |
 Enter the name of the Vertica database.
  |


 Once you have entered valid

Vertica

credentials, you can use the same account any time you go to create a new

Vertica Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Whitelisting

Before you can connect to a Vertica database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.

##
 Details Pane

In this pane you input the SQL query you want to use to pull data from your Vertica database. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute.
  |
|
 Table Name
  |
 Select the database table.
  |
|
 Partition Column Name
  |
 Select the partition column name.
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. Example: 30.
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
 Enter the custom date format you wish to apply to your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

