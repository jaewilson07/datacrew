

Intro
-------

IBM DB2 contains database server products developed by IBM. Partitioning allows the table data to be divided across multiple storage objects (data partitions), according to the values in one or more table columns. Use Domo’s IBM DB2 Partition connector to get improved manageability for large tables, fast online data roll-in/roll-out, and larger table capacity.


 You connect to your IBM DB2 database in the Data Center. This topic discusses the fields and menus that are specific to the IBM DB2 Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 Domo does not support the IBM DA European connector.

Prerequisites
---------------

To connect to an IBM DB2 Partition database and create a DataSet, you must have the following:

 The username and password you use to log into your IBM account
* The host name for the database
* The port number for the database
* The database name

CA certificate text or URL path is required
 **only**
 if you select
 **Certificate text**
 or
 **URL path**
 , respectively, in the
 **Certificate type**
 menu.


 Before you can connect to an IBM DB2 Partition database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your IBM DB2 Partition Account
----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the IBM DB2 Partition Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your IBM DB2 Partition account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username associated with your IBM DB2 account.
  |
|
 Password
  |
 Enter the password associated with your IBM DB2 account.
  |
|
 Host
  |
 Enter the IBM DB2 host name.
  |
|
 Port
  |
 Enter the port number used for your IBM DB2 account.
  |
|
 Database table
  |
 Enter the name of the database associated with your IBM DB2 account.
  |
|
 Certificate ty Certificate pe
  |
 Select a certificate type. If you do not want to include a certificate, select
 **No certificate**
 . If you select Certificate text, you must paste the text for your certificate in the
 **Certificate**
 field. If you select
 **URL path**
 , you must enter the URL where your certificate is located in the
 **Certificate**
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No certificate**
 in the
 **Certificate Type**
 menu.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new IBM DB2 Partition DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 **Query**
 parameter is required. The other parameters are here to help you construct this query if you choose.


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
 Select the required date format. By default <b>yyyy-MM-dd</b> will be used.
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

