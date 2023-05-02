

Intro
-------

Microsoft Word is a widely-used word processing tool developed by Microsoft. To learn more about the Microsoft Office API, visit their page (

https://msdn.microsoft.com/en-us/lib.../fp179696.aspx

).


 You connect to your Microsoft Word account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Word connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to the SFTP server with Microsoft Word files you want to import, you must have the following:

 The hostname or IP address of the SFTP server
* The port number of the SFTP server (default is 22)
* The username and password you use to log into the SFTP server

Connecting to Your Microsoft Word Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft Word Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Microsoft Word account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the hostname or IP address of the SFTP server with Microsoft Word files you want to import.
  |
|
 Port
  |
 Enter the port number of the SFTP server with Microsoft Word files you want to import (the default is

22

).
  |
|
 Username
  |
 Enter the username for the SFTP server.
  |
|
 Password
  |
 Enter the password for the SFTP server.
  |


 Once you have entered valid Microsoft Word credentials, you can use the same account any time you go to create a new Microsoft Word DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two fields where you enter information for connecting to Microsoft Word files.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Path
  |
 Enter the file path of the Microsoft Word file you want to import on the SFTP server. For example:

/home/user/MyFile.docx

|
|
 File Password (Optional)
  |
 Enter the password for the file you want to import, if one has been set.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

