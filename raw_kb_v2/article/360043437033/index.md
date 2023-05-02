

Intro
-------

To learn more about MySQL, visit their website at

https://www.mysql.com/

.


 You export data to a MySQL database in the Data Center. This topic discusses the fields and menus that are specific to the MySQL Database Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

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
* Your MySQL database or schema name.
* The hostname or IP address of your MySQL database server, such as


 db.mycompany.com


 .
* Your MySQL Databaseserver port number.
* Your MySQL username and password.
* The port number for your MySQL server.
* Your MySQL CA certificate


**Important**
 : You will need the following permissions on MySQL:
 * FILE
* CREATE
* DROP
* INSERT
* SELECT
* UPDATE

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MySQL Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your MySQL database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Database Name
  |
 Enter the name of your MySQL database.
  |
|
 Host
  |
 Enter your MySQL database hostname.
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
 Paste the text for your MySQL CA certificate.
  |
|
 Port
  |
 Enter your MySQL database port number.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-MySQL connection. You can manage connector accounts in the
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
 DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to MySQL. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Select Table Name
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
 Enter the name of the table in your MySQL database where you want your DataSet data to be copied.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

