

Intro
-------

MariaDB is a community-developed fork of the MySQL relational database management system. Partitioning enables faster query execution and distribution of files over multiple storage devices. You can easily and securely access your data in minutes to get more visibility. Use Domo's MariaDB Partition Connector to get your data into Domo based on the number of past days provided. To learn more about MariaDB, visit

https://mariadb.com/docs/

.


 You connect to your MariaDB data account in the Data Center. This topic discusses the fields and menus that are specific to the MariaDB Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MariaDB database and create a DataSet, you must have the following:

 The username and password you use to log into your MariaDB account
* The host name for the database
* The port number for the database
* The database or schema name

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Before you can connect to a MariaDB database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your MariaDB Database
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MariaDB Partition Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your MariaDB database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname or IP address of your database server. Example:


 db.company.com

|
|
 Port
  |
 Enter the port number for your database.
  |
|
 Database Name
  |
 Enter your database name.
  |
|
 Username
  |
 Enter your MariaDB username.
  |
|
 Password
  |
 Enter your MariaDB password.
  |
|
 CA Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional.
  |


 Once you have entered valid MariaDB credentials, you can use the same account any time you go to create a new MariaDB Partition DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute. Example:

select DATE from employee
  |
|
 Table Name
  |
 Select the database table.
  |
|
 Partition Column Name
  |
 Select partition column name.
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
 ****************yyyy-MM-dd****************
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format you wish to apply to your data.
  |
|
 Tinyint values treated as bit (boolean) values
  |
 Select Yes if you want the tiny integer values to be treated as boolean values, else select No.
  |
|
 Cast Boolean Values To...
  |
 Select whether the String or Integer boolean values will be cast to within your dataset.

String: False/True

Integer: 0/1
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

