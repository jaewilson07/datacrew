

Intro
-------

MySQL is a widely used open-source relational database management system. With Domo's MySQL integration, you can easily connect your MySQL data and make faster decisions. Partitioning enables the table data to be divided across multiple storage objects (data partitions), according to the values in one or more table columns based on a set of user-defined rules. Use Domo’s MySQL Partition connector to optimize the way the database engine physically stores data.


 You connect to your MySQL Partition account in the Data Center. This topic discusses the fields and menus that are specific to the MySQL Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Notes:**


* This connector supports TLS IF your MySQL server supports TLS.
* Non SSL connections are not supported. If no certificate is provided, the connection is still SSL but without any certificate authentication. The connection will trust all server certificates. Refer to the following link for details :

https://msdn.microsoft.com/en-us/library/bb879949%28v=sql.110%29.aspx


 Prerequisites

To connect to your MySQL Partition account and create a DataSet, you must have the following:

 The username and password you use to log into your MySQL database.
* The host name for the database.
* The port number for the database.
* The database name or schema name.
* SSL
* You can also include the URL where your SSL CA Certificate is located, though this is optional.

Before you can connect to a MySQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your MySQL Partition Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

MySQL Partition

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

MySQL Partition

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC Driver
  |
 Select the JDBC driver to use to connect to the database server.
  |
|
 Host
  |
 Enter the host name for the MySQL database. For example:

db.company.com
  |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Database Name
  |
 Enter the name of the MySQL database or schema.
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
 Enter the URL where the SSL CA Certificate is located (optional).
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new

MySQL Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you specify the attributes and conditions to partition your data.


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
 ****yyyy-MM-dd****
 will be used.
  |
|
 Select if you want to compress the data
  |
 Choose the way you want the data to be uploaded. Select True, if you want the data to be compressed while uploading, else select False.
  |
|
 Tinyint values treated as (bit) boolean values
  |
 Select Yes if you want the tiny integer values to be treated as boolean values, else select No.
  |
|
 Cast Boolean Values to...
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

