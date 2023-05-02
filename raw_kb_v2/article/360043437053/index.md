

Intro
-------

To learn more about PostgreSQL, visit their website at

https://www.postgresql.org/

You export data to a PostgreSQL database in the Data Center. This topic discusses the fields and menus that are specific to the PostgreSQL Database Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

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
	2. Create a new client.
	3. Select the desired data and user application scope.
	4. Click
	 **Create**
	 .
* Your SQL database or schema name.
* The hostname or IP address of your PostgreSQL database server.
* The port number of your PostgreSQL server.
* Your PostgreSQL username and password.

If you don't know any of your SQL credentials, contact your SQL Database Administrator.


 You may also paste the text for a PostgreSQL CA certificate (or you may input the URL where the certificate is located), but this is optional.

*Important**
 : You will need the following permissions on PostgreSQL:
 * CONNECT
* SELECT
* CREATE
* INSERT

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PostgreSQL Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your PostgreSQL database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Enter your PostgreSQL username.
  |
|
 Password
  |
 Enter your PostgreSQL password.
  |
|
 Host
  |
 Enter your PostgreSQL database hostname.
  |
|
 Port
  |
 Enter your PostgreSQL database port number.
  |
|
 Certificate
  |
 Paste the text for your CA certificate, or enter the URL where your certificate is located. By default no certificate is required.
  |
|
 Certificate Type
  |
 Select a certificate type. This must match what you enter in the
 **Certificate**
 field. If you are not aware of a special certificate, select
 **No certificate**
 .
  |
|
 Database Name
  |
 Enter the name of your PostgreSQL database.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-PostgreSQL connection. You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to PostgreSQL. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

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
 Enter the name of the table in your PostgreSQL database where you want your DataSet data to be copied.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

