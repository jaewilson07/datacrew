

*Important:**

Starting on Monday, Nov 16
 th
 2020, the
 ****Azure SQL Data Warehouse****
****Connector****
 will be known as the
 ****Azure Synapse SQL Connector****
 .

***How does this affect me?****


 All Azure SQL Data Warehouse datasets will continue to run as normal. The functionality of the connector has not been changed.


 Customers using or planning to use the connector will notice the following:

. There is a new icon for the connector in the Appstore.  Existing datasets will now show up on the Data Center with the new icon.
2. Customers who are trying to search for an Azure Data Warehouse dataset in the Data Center using a ‘Type’ filter will now need to search for datasets of type ‘Azure Synapse SQL’ instead of ‘Azure Data Warehouse’.
3. Customers who want to create a new Azure SQL Data Warehouse will need to search the Appstore for the ‘Azure Synapse SQL Connector’ instead of the ‘Azure SQL Data Warehouse Connector.’
4. Connector Accounts for the Azure SQL Data Warehouse Connector will now be called ‘Azure Synapse SQL’ Accounts.

Intro
-------

Azure Synapse SQL lets you quickly implement a high-performance, globally available, and secure cloud data warehouse. Use Domo's Azure Synapse SQL Connector to bring your Azure data into Domo.


 You connect to your Azure Synapse SQL database in the Data Center. This topic discusses the fields and menus that are specific to the Azure Synapse SQL Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to an Azure Synapse SQL database and create a DataSet, you must have the following:

 The username and password you use to log into your Azure Synapse database.
* The server name for the database. You can find this by doing the following:

1. Log into Azure Portal.
	2. Click on


	**Azure Synapse Analytics**
	 .
	3. Click on the Synapse SQL Pool you want to connect to.
	4. Locate the full server name. Example

**yourserver.database.windows.net**
* The port number for the database
* The database name

Before you can connect to an Azure Synapse SQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Azure SQL Database
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Azure Synapse SQL Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Azure Synapse SQL database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Server Name
  |
 Enter the name of your server. For information about finding the server name, see "Prerequisites," above.
  |
|
 Database Name
  |
 Enter the name of the Azure Synapse database.
  |
|
 Port
  |
 Enter the port number for the Azure Synapse database.
  |
|
 Username
  |
 Enter the username you use to log into your Azure Synapse database.
  |
|
 Password
  |
 Enter the password you use to log into your Azure Synapse database.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Azure Synapse SQL DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 **Query**
 parameter is required. The other three parameters are here to help you construct this query, if you choose.


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

If you want help in constructing your query, copy and paste the automatically-generated query from the
 **Query Helper**
 field into this field.
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

