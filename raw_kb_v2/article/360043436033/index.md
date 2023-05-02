

Intro
-------

Amazon Redshift is a hosted data warehouse project that is part of the larger cloud computing platform Amazon Web Services. Redshift handles analytics workloads on large scale DataSets stored by a column-oriented DBMS principle. You can use Domo's Amazon Redshift Connector to pull data from your Redshift database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the Redshift API, visit their website. (

http://docs.aws.amazon.com/redshift/...e/Welcome.html)

You connect to your Redshift database in the Data Center. This topic discusses the fields and menus that are specific to the Redshift connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 Depending on your network's structure, you may need to whitelist any IP addresses necessary for the data connector to retrieve data. Contact your IT administrator for assistance.

Prerequisites
---------------

To connect to a Redshift database and create a DataSet, you must have the following:

 The username and password you use to log into your Redshift database
* The host name for the database server (e.g.


 db.company.com


 ).
* The port number for the database
* The database name

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate String**
 or
 **URL Path**
 , respectively, in the
 **Certificate Format**
 menu.


 Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Redshift Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Redshift Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Redshift account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC Driver
  |
 Select the JDBC driver you want to use to connect.
  |
|
 Host
  |
 Enter the host name for the SQL database. For example:


 db.company.com


 |
|
 Database
  |
 Enter the name of the SQL database.
  |
|
 Username
  |
 Enter your Redshift username.
  |
|
 Password
  |
 Enter your Redshift password.
  |
|
 Database Port
  |
 Enter the port number for the database.
  |
|
 Certificate Format
  |
 Select the certificate format. If you do not want to include a certificate, select
 **No Certificate**
 . If you select
 **Certificate String**
 , you must paste the text for your certificate in the
 **Certificate**
 field. If you select
 **URL Path**
 , you must enter the URL where your certificate is located in the
 **Certificate**
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No Certificate**
 in the
 **Certificate Format**
 menu.
  |


 Once you have entered valid Redshift credentials, you can use the same account any time you go to create a new Redshift DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. You can also choose a specific database table and columns and specify a timeout value.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the type of query you want to execute.
  |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want.


 For example:


`select * from Employee`
 |
|
 Parameter Date Format
  |
 If you have used the
 **Date**
 data type in the
 **Query Parameters**
 field, enter a parameter date format here. This is optional. If you leave this blank, Domo will attempt to infer the date format. However, for the most accurate query results, you should provide the date format.


 All of the following date formats are accepted:


|
 Format
  |
 Example
  |
| --- | --- |
|
 EEE MMM dd HH:mm:ss z yyyy
  |
 Mon Dec 02 13:23:22 MST 2013
  |
|
 yyyy-MM-dd'T'HH:mm:ss.S+S
  |
 2014-11-30T12:34:56.000+0000
  |
|
 yyyy-MM-dd'T'HH:mm:ss.S
  |
 2014-06-10T07:34:16.671
  |
|
 yyyy-MM-dd HH:mm:ss.S
  |
 2014-12-22 08:41:33.397
  |
|
 yyyy-MM-dd HH:mm:ssXXX
  |
 2014-06-10 05:34:16+00:00
  |
|
 yyyy-MM-dd'T'HH:mm:ss'Z'
  |
 2013-03-25T08:45:00Z
  |
|
 yyyy-MM-dd'T'HH:mm:ssXXX
  |
 2014-06-10T05:34:16+00:00
  |
|
 yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
  |
 2013-03-25T08:45:00.123Z
  |
|
 EEE, dd MMM yyyy HH:mm:ss z
  |
 Mon, Jan 20 2014 17:01:38 EST
  |
|
 MMM dd, yyyy
  |
 March 20, 2014
  |
|
 yyyy MMM dd
  |
 2014 March 20
  |
|
 MMM dd yyyy
  |
 March 20 2014
  |
|
 MM/dd/yy
  |
 03/20/14
  |
|
 dd/MM/yy
  |
 20/03/14
  |
|
 MM-dd-yy
  |
 03-20-14
  |
|
 dd-MM-yy
  |
 20-03-14
  |
|
 yyyy/MM/dd
  |
 2014/03/20
  |
|
 yyyy-MM-dd
  |
 2014-03-20
  |
|
 yyyy-MMM-dd
  |
 2014-March-20
  |
|
 MM/dd/yyyy
  |
 03/20/2014
  |
|
 dd/MM/yyyy
  |
 20/03/2014
  |
|
 MM-dd-yyyy
  |
 03-20-2014
  |
|
 dd-MM-yyyy
  |
 20-03-2014
  |
|
 dd-MMM-yyyy
  |
 20-March-2014
  |
|
 MMM-dd-yyyy
  |
 March-20-2014
  |
|
 yyyy-MM
  |
 2014-03
  |

|
|
 Database Tables
  |
 Select the database table you want to appear in your report.
  |
|
 Table Columns
  |
 Select all table columns you want to appear in your report.
  |
|
 Query Helper
  |
 Revise this query if desired.
  |
|
 Query Timeout
  |
 Enter the connector timeout value in minutes.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

