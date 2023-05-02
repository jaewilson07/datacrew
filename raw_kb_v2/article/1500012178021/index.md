

Intro
-------

Oracle Database is an object-relational database management system produced and marketed by Oracle Corporation. You can use Domo's Oracle Database Connector to pull data from your Oracle database and compile custom reports. You indicate the data you want by inputting an SQL query.


 You connect to Oracle Database in the Data Center. This topic discusses the fields and menus that are specific to the Oracle Database connector user interface.


 General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Oracle Database and create a DataSet, you must have the following:

 Your Oracle database server username and password
* The hostname or IP address of your Oracle database server
* Your Oracle port number
* Y

our Oracle database service name

Before you can connect to Oracle Database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Oracle Account
-----------------------------------

This section enumerates the options in the Credentials and Details panes in the Oracle Database Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Oracle Database

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username for your Oracle database.
  |
|
 Password
  |
 Enter the password for your Oracle database.
  |
|
 Host
  |
 Enter the hostname or IP address of your Oracle server.

Example

db.company.com


 |
|
 Port
  |

Enter your Oracle database port number.

|
|
 Service Name
  |

Enter your Oracle database service name.

|

Once you have entered valid Oracle database credentials, you can use the same account any time you go to create a new

Oracle Database

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |

Select a query type.

  |  |
| --- | --- |
| **Query Type**  | **Description**  |
|
 Query
  |
 Regular SQL query without parameter.
  |
|
 Query Parameter
  |
 SQL query with parameter.
  |

|
|
 Query
  |
 Enter the SQL query to execute.
  |
|
 Query Parameter
  |
 Enter the query parameter value. It is the initial value for query parameter. The last run date is optional. By default, it is '02/01/1700' if is not provided. Example:

!{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944

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
 Query Helper

|
 This query is automatically generated when you select a table and columns in the Database Table and Table Columns fields, respectively. Copy and paste this query into the Query field if you need help building a query.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

