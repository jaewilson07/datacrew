

Intro
-------

To learn more about Oracle, visit their website at

https://www.oracle.com/index.html

.


 You export data to an Oracle database in the Data Center. This topic discusses the fields and menus that are specific to the Oracle Database Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

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
* Your Oracle Databaseserver hostname.
* Your Oracle Databaseserver port number.
* Your Oracle Databaseserver username and password.
* An Oracle SID. This is a unique identifier for a specific Oracle database. For more information about finding the SID for your database, see

https://asktom.oracle.com/pls/asktom...D:318216852435

.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Oracle Database Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your Oracle database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Host
  |
 Enter your Oracle database hostname.
  |
|
 Port
  |
 Enter your Oracle database port number.
  |
|
 Username
  |
 Enter your Oracle database username.
  |
|
 Password
  |
 Enter your Oracle database password.
  |
|
 SID
  |
 Enter your Oracle SID.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Oracle connection. You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to S3. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

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
 * **Use Input DataSet Name as Table Name**
 . The table name will be the same as that of the input DataSet.
* **Enter Table Name**
 . You will give the table a custom name in the
 **Table Name**
 field.
 |
|
 Table Name
  |
 Enter the name of the table in your Oracle database where you want your DataSet data to be copied.
  |
|
 Update Type
  |
 Select how you like to update the database table.
  |
|
 Truncate Table if Input Dataset is empty?
  |
 Select this checkbox to truncate the table, if the input datset is empty.

*Note:**
 It will remove all the rows from the table, only if the provided dataset is empty. Please do not select the checkbox if table does not exist in oracle database. Only select the checkbox when truncating the exisiting database tables.
  |
|
 Alter Schema
  |
 Select if you want to alter the database table schema.

*Note**
 : It may change/alter the table schema completely. If selected with
 **Truncate Table if Input Dataset is empty?**
 checkbox, then it will only alter schema if input dataset has some schema/columns.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

