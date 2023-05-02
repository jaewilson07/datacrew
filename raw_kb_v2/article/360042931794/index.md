

Intro
-------

SAP HANA is an in-memory, column-oriented, relational database management system developed and marketed by SAP SE. Use Domo's SAP HANA connector to retrieve data from an SAP HANA database using a SQL query. To learn more about SAP HANA, visit their web page (

https://www.sap.com/products/hana.html

).


 You connect to your SAP HANA account in the Data Center. This topic discusses the fields and menus that are specific to the SAP HANA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SAP HANA account and create a DataSet, you must have the following:

 The username and password you use to log into your SAP HANA account
* The database name
* The host name for the database
* The port number for the database

CA certificate text or URL path is required
 **only**
 if you select
 ****Certificate text****
 or
 ****URL path****
 , respectively, in the
 ****Certificate type****
 menu.


 Before you can connect to an SAP database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your SAP HANA Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SAP HANA Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SAP HANA account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the host name for the SAP database.


 Example:


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
 Username
  |
 Enter your SAP HANA account username.
  |
|
 Password
  |
 Enter your SAP HANA account password.
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


 Once you have entered valid SAP HANA credentials, you can use the same account any time you go to create a new SAP HANA DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
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
 Query Type
  |


 Query Type
  |
 Description
  |
|
 Custom Query
  |
 Enter the query to execute.
  |
|
 Query Builder
  |
 Select the table and fields to auto-generate your query.
  |

|
|
 Query
  |
 Enter an SQL query for selecting the data you want to pull into Domo.

Example:

select \* from Employee

|
|
 Schema Names
  |
 Select a schema.
  |
|
 Database Object
  |
 Select a database object.
  |
|
 Database Table
  |
 Select the table containing the data you want to pull into Domo.
  |
|
 Table Columns
  |
 Select the table columns with data you want to pull into Domo.
  |
|
 Query Helper
  |
 Copy and paste this query into the
 **Query**
 field if you need help building a query.

This query is generated based on the selected
 **Database Columns**
 and
 **Table Columns**
 .
  |
|
 View
  |
 Select a view.
  |
|
 View Columns
  |
 Select the view columns that you would like to include in your report.
  |
|
 View Query Helper
  |
 Copy and paste this query into the
 **Query**
 field if you need help building a query.

This query is generated based on the selected
 **View**
 and
 **View Columns**
 . You need to provide the actual user values in the
 **'<to be filled>'**
 fields for the placeholders and variables.

Example:

 PLACEHOLDER = ('$$IP\_Product\_Category$$', '<to be filled>')
* PLACEHOLDER = ('$$IP\_Product\_Category$$', 'Keyboards')

*Note**
 : The placeholders and variables will only populate for the views that have the input parameters and variables configured already.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

