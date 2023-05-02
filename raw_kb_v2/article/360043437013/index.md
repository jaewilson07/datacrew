

Intro
-------

Microsoft SQL Server is a relational database management system developed by Microsoft. Use this connector to export your data from a Domo DataSet to a Microsoft SQL Server database. For more information about the Microsoft SQL Server API, visit their website. (

https://technet.microsoft.com/en-us/library/aa174556(v=sql.80).aspx

).


 You export data to a MS SQL database in the Data Center. This topic discusses the fields and menus that are specific to the MS SQL Database Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------


**Important:**
 If access to your MS SQL database or your MS SQL server is restricted by IP address, you may need to whitelist Domo’s IP addresses before you can successfully connect and a configure a dataset in Domo. Check with your MS SQL database system administrator to determine if this is the case. To get a list of Domo’s IP addresses to whitelist on your MS SQL database or server, see

Whitelisting IP Addresses for Connectors and Federated Adapters

.

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret. To obtain these credentials, do the following:

1. Log into your Domo developer account at

 https://developer.domo.com/login

 .
	2. Create a new client

 .
	3. Select the desired data and user application scope.
	4. Click
	 **Create**
	 .
* Your MS SQL database or schema name.
* The hostname or IP address of your MS SQL database server, such as


 db.mycompany.com


 .
* Your MS SQL Databaseserver port number.
* Your MS SQL username and password.
* The port number for your MS SQL server.

You can also include the URL for an MS SQL CA certificate, though this is optional.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MS SQL Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your MS SQL database where you want your data to be copied to. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |
|
 Username
  |
 Enter your MS SQL username.
  |
|
 Password
  |
 Enter your MS SQL password.
  |
|
 Host
  |
 Enter your MS SQL database hostname.
  |
|
 Port
  |
 Enter your MS SQL database port number.
  |
|
 Database
  |
 Enter the name of your MS SQL database.
  |
|
 Certificate
  |
 Paste the text for your MS SQL SSL CA certificate.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-MS SQL connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to MS SQL. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Table Name Source
  |
 Select how you want to name the table where data will be copied.
 * **DataSet ID**
 . The table name will be the number you entered for
 **DataSet ID**
 .
* **DataSet Name**
 . The table name will be the same as that of the input DataSet.
* **Custom Name**
 . You will give the table a custom name in the
 **Custom Table Name**
 field.
 |
|
 Custom Table Name
  |
 Enter the name of the table in your MS SQL database where you want your DataSet data to be copied.
  |
|
 Create New Table
  |

Select this option to create a new table for every execution. The table name will be the name specified in the Table Name Source field, plus a numeric counter.

|
|
 Merge Data
  |

To be able to Merge your updated data correctly, you must identify a Merge Key in your data. A Merge Key can be your primary key or a combination of columns that is unique in the DataSet and will be used to compare rows between different versions of your DataSet

|
|
 Insert Using Select Into statements
  |
 Select this checkbox if you want to upload your data using
 **Select Into**
 statements.
  |
|
 Merge Keys
  |

Enter the upsert/merge key. By default, sys\_id will be used as an upsert/merge key.

|
|
 Update an Existing Table
  |

Select this option to update an existing table only if the table name matches the existing one in the Redshift Server; otherwise, the connector will create a new table in the first run.

|
|
 Append Data
  |

Select how to retrieve data when using Append method.

|
|
 Overwrite With New Data
  |
 The connector will overwrite the existing data with newly fetched data to the existing table.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

