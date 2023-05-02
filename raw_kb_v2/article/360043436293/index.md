

Intro
-------

SAP ASE (Adaptive Server Enterprise), formerly known as Sybase SQL Server, is a relational model database server product for businesses. To learn more about SAP Adaptive Server Enterprise, visit their page (

https://www.sap.com/products/sybase-ase.html#

).


 You connect to your SAP Adaptive Server Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the SAP Adaptive Server Enterprise connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SAP Adaptive Server Enterprise account and create a DataSet, you must have the following:

 The username and password you use to log into your SAP Adaptive Server Enterprise account
* The host name for the database
* The port number for the database
* The database name

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate text**
 or
 **URL path**
 , respectively, in the
 **Certificate type**
 menu.


 Before you can connect to an SAP database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your SAP Adaptive Server Enterprise Account
-----------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SAP Adaptive Server Enterprise Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SAP Adaptive Server Enterprise account. The following table describes what is needed for each field:


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
 Enter the host name for the SAP database. For example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the database.
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
|
 Certificate Type
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
 Database
  |
 Enter the name of the database.
  |


 Once you have entered valid SAP Adaptive Server Enterprise credentials, you can use the same account any time you go to create a new SAP Adaptive Server Enterprise DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors.

##
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 **Query**
 parameter is required. The other three parameters are here to help you construct this query if you choose.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

If you want help in constructing your query, do the following:
 1. Select the desired table and columns in the
 **Database Table**
 and
 **Table Columns**
 menus.


 Your query is constructed in the
 **Query Helper**
 field based on your selections.
2. Copy and paste the automatically generated query from the
 **Query Helper**
 field into the
 **Query**
 field.
 |
|
 Database Table (Optional)
  |
 Select the table containing the data you want to pull into Domo. The selected table will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Table Columns (Optional)
  |
 Select the table columns with data you want to pull into Domo. The selected columns will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Query Helper (Optional)
  |
 Copy and paste this query into the
 **Query**
 field if you need help building a query. This query is automatically generated when you select a table and columns in the
 **Database Table**
 and
 **Table Columns**
 fields, respectively.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

