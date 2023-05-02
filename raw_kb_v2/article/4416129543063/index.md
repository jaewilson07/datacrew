

Intro
-------


 Use Domo's MySQL Advanced Writeback connector to export your data from a Domo DataSet to the provided MySQL database in the Data Center using Advanced Security.

To learn more about MySQL, visit their website at

https://www.mysql.com/

.


 You export data to a MySQL database in the Data Center. This topic discusses the fields and menus that are specific to the MySQL Advanced Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 Your MySQL database or schema name.
* The hostname or IP address of your MySQL database server, such as


 db.mycompany.com


 .
* Your MySQL Database server port number.
* Your MySQL username and password.
* The port number for your MySQL server.
* (Optional) Your

SSL client key
* (Optional) Your SSL client certificate
* (Optional) Your SSL CA Certificate Authority


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
 panes in the MySQL Advanced Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to the table in your MySQL database where you want your data to be copied to. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
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
 Port
  |
 Enter your MySQL database port number.
  |
|
 SSL Key
  |

Enter the client Key for SSL.

|
|
 SSL Certificate
  |

Enter the Client Certificate for SSL.

|
|
 SSL CA Certificate
  |

Enter the MySQL CA Certificate Authority for SSL.

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
 How Would You Like To Select Your Table?
  |

Specify whether you would like to create a new table or select an existing table to export your DataSet data to.

|
|
 Table Name
  |
 Select how you want to name the table where data will be copied.
 * **DataSet ID**
 . The table name will be the number you entered for
 **DataSet ID**
 .
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
|
 Delete Existing Table and Create New Table For The Same Name
  |

Normally, if you provide a table name with the same name as an existing table, the connector throws an error. If instead, you want us to drop the existing table and create a new table with this name, then check this checkbox.


**WARNING**
 : This deletes the existing table, and the data cannot be recovered after it is deleted.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

