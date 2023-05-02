

Intro
-------

IBM Informix is a fast and scalable database server that manages traditional relational, object-relational, and dimensional databases. To learn more about Informix, visit their page (

https://www.ibm.com/products/informix/developer-tools?mhsrc=ibmsearch\_a&mhq=informix%20API

).


 You connect to Informix data in the Data Center. This topic discusses the fields and menus that are specific to the Informix connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Informix account and create a DataSet, you must have the following:

 The username and password you use to log into your Informix database
* The port number for the Informix database
* The Informix database hostname or IP address
* The Informix database name
* The Informix server name

Before you can connect to an Informix database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Informix Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Informix Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Informix account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the host name for the Informix database. For example:


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the Informix database.
  |
|
 Port
  |
 Enter the port number of the Informix server.
  |
|
 Username
  |
 Enter your Informix username.
  |
|
 Password
  |
 Enter your Informix password.
  |
|
 Server
  |
 Enter the name of your Informix server.
  |
|
 Port
  |
 Enter your Informix port number.
  |


 Once you have entered valid Informix credentials, you can use the same account any time you go to create a new Informix DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu in which you enter your SQL query.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query for the Informix data you want to pull into Domo.


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

