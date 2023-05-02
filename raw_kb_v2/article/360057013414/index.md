

Intro
-------

PostgreSQL is an open source object-relational database system. Use Domo's PostgreSQL Partition Connector to pull data from your PostgreSQL database based on the number of past days provided and compile custom reports. With an intuitive platform that brings all your data and people together in one place, it's easy to collaborate around real-time business insights and move forward with a single version of the truth. You can easily combine your PostgreSQL data with the data from numerous other systems, allowing you to transform your data and make it all available for user self-service. See the metrics you need on any device, automate your reporting, and get alerts when there are important changes to your business. To learn more about the PostgreSQL API, visit

https://www.postgresql.org/docs/

.


 The PostgreSQL Partition connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 ****Database****
 in the toolbar at the top of the window.


 You connect to your PostgreSQL database in the Data Center. This topic discusses the fields and menus that are specific to the PostgreSQL Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PostgreSQL account and create a DataSet, you must have the following:

 The username and password you use to log into your PostgreSQL database
* The host name for the database
* The port number for the database
* The database name
* CA certificate text or URL path is required
 **only**
 if you select
 ****Certificate text****
 or
 ****URL path****
 , respectively, in the
 ****Certificate type****
 menu.

Before you can connect to a PostgreSQL database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your PostgreSQL Database
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

PostgreSQL Partition

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

PostgreSQL

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your PostgreSQL username.
  |
|
 Password
  |
 Enter your PostgreSQL password.
  |
|
 Host
  |
 Enter the host name for the SQL database. For example:


 db.company.com

|
|
 Port
  |
 Enter the port number for the database.
  |
|
 Database
  |
 Enter the name of the SQL database.
  |
|
 Certificate Type
  |
 Select a certificate type. If you do not want to include a certificate, select
 ****No certificate****
 . If you select Certificate text, you must paste the text for your certificate in the
 ****Certificate****
 field. If you select
 ****URL path****
 , you must enter the URL where your certificate is located in the
 ****Certificate****
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 ****No certificate****
 in the
 ****Certificate Type****
 menu.
  |


 Once you have entered valid

PostgreSQL

credentials, you can use the same account any time you go to create a new

PostgreSQL Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute. Example:

select DATE from Employee
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
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default
 ********yyyy-MM-dd********
 will be used.
  |
|
 Custom Date
  |
 Enter the custom date format you wish to apply to your data.
  |
|
 Fetch Size
  |
 Enter fetch size for memory performance. If it is blank, default value will be 400.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

