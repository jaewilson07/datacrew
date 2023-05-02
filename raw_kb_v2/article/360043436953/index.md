

Intro
-------

MariaDB is a community-developed, commercially supported fork of the MySQL relational database management system. To learn more about Amazon MariaDB, visit their web page (

https://mariadb.org/

).


 You export data to a MariaDB database in the Data Center. This topic discusses the fields and menus that are specific to the MariaDB Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


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
* The hostname or IP address of your MariaDB server, e.g.


 db.company.com


 .
* Your MariaDB database or schema name.
* Your MariaDB username and password.
* The port number of your MariaDB server.

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MariaDB Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your MariaDB database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Enter your MariaDB database hostname.
  |
|
 Port
  |
 Enter your MariaDB database port number.
  |
|
 Database Name
  |
 Enter the name of your MariaDB database or schema.
  |
|
 Username
  |
 Enter your MariaDB username.
  |
|
 Password
  |
 Enter your MariaDB password.
  |
|
 Certificate
  |
 Enter the URL where the SSL Ca Certificate is located (optional).
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-MariaDB connection. You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to MariaDB. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

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
 * **Use Input DataSet ID As Table Name**
 . The table name will be the number you entered for
 **Input DataSet ID**
 .
* **Use Input DataSet Name as Table Name**
 . The table name will be the same as that of the input DataSet.
* **Custom Name**
 . You will give the table a custom name in the
 **Custom Table Name**
 field.
 |
|
 Table Name
  |
 Enter the name of the table in your MariaDB database where you want your DataSet data to be copied.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

