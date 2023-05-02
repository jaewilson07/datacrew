

Intro
-------

Openfire (previously known as Wildfire and Jive Messenger) is an instant messaging (IM) and groupchat server that uses XMPP server written in Java. To learn more about the Openfire API, visit their page (

https://www.igniterealtime.org/proje...pi/readme.html

).


 You connect to your Openfire account in the Data Center. This topic discusses the fields and menus that are specific to the Openfire connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Openfire account and create a DataSet, you must have the following:

 The hostname or IP address where the Openfire database is stored.
* The port number used to communicate with the database.
* The database name.
* The credentials (username and password) for the account.
* The certificate key for the Openfire database.

You must also whitelist a number of IP address as described in

Whitelisting IP Addresses

.


 Connecting to Your Openfire Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Openfire Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Openfire account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Hostname
  |
 Enter the hostname or IP address of the Openfire server.
  |
|
 Port
  |
 Enter the port number used to communicate with the database.
  |
|
 Database
  |
 Enter the name of the Openfire database.
  |
|
 Username
  |
 Enter your Openfire username.
  |
|
 Password
  |
 Enter your Openfire password.
  |
|
 Certificate Key
  |
 Enter your certificate key for the database.
  |


 Once you have entered valid Openfire credentials, you can use the same account any time you go to create a new Openfire DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains only a single field where you enter your SQL query.


 Menu
  |
 Description
  |
| --- | --- |
|
 SQL Statement
  |
 Enter the Openfire SQL query you want to retrieve data for.


 For example:

SELECT \* FROM ofPresence

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

