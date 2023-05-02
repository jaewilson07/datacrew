

Intro
-------

SAP ASE (Adaptive Server Enterprise), originally known as Sybase SQL Server, is a relational model database server product for businesses. With Sybase Partition connector, see your SAP Adaptive Server Enterprise data together with the data from other systems, all in Domo. Use partitioning to manage large tables and indexes by dividing them into smaller, more manageable pieces. Use Domo's Sybase Partition connector to get your SAP ASE data into Domo based on the number of past days provided. To learn more about SAP Adaptive Server Enterprise, visit their page (

https://www.sap.com/products/sybase-ase.html#

).


 You connect to your SAP Adaptive Server Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the Sybase Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SAP ASE account and create a DataSet, you must have the following:

 The username and password you use to log into your SAP Adaptive Server Enterprise account
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

Before you can connect to a SAP database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your SAP ASE Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Sybase Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SAP ASE account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your SAP Adaptive Server Enterprise account username.
  |
|
 Password
  |
 Enter your SAP Adaptive Server Enterprise account password.
  |
|
 Host
  |
 Enter the host name for the SAP database. Example:


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
 Enter the name of the database.
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


 Once you have entered valid SAP ASE credentials, you can use the same account any time you go to create a new

Sybase Partition

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
 Enter the SQL query to execute. Example:

select DATE from employee
  |
|
 Database Tables
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

