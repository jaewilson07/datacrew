

Intro
-------

Dropbox is a personal cloud storage service frequently used for file sharing and collaboration.  To learn more about the Dropbox API, go to

https://www.dropbox.com/developers

.


 You export Domo data to Dropbox in the Data Center. This topic discusses the fields and menus that are specific to the Dropbox Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have a Domo Client ID and Client Secret. To obtain these credentials, do the following:

. Log into your Domo developer account at

https://developer.domo.com/login

.
2. Create a new client

.
3. Select the desired data and user application scope.
4. Click
 ****Create****
 .

You must also have the username and password for your Dropbox account.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Dropbox Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Domo developer account.

The following table describes what is needed for each field:


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

For information about obtaining these credentials, see "Prerequisites," above.


 After you connect, you are taken to the Dropbox OAuth screen where you are prompted to enter your Dropbox username and password.


 You can use the same account any time you go to set up a new Domo-Dropbox connection.

You can manage connector accounts in the
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Dropbox. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4

.
  |
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 ****Input DataSet ID****
 or an output file name.
  |
|
 Filename
  |
 Enter the output file name for your data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

