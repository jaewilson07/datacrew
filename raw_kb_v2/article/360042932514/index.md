

Intro
-------

Smartsheet is an online project management, productivity and team collaboration SaaS application. Use this connector to export your data from a Domo DataSet to a specified Smartsheet workspace or folder. To learn more about the Smartsheet API, visit their website (

https://smartsheet-platform.github.io/api-docs/

).


 You export data to Smartsheet in the Data Center. This topic discusses the fields and menus that are specific to the Smartsheet Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need a Domo Client ID and Client Secret. To create a Domo client ID and client secret, do the following:

. Navigate to

https://developer.domo.com

and log in.
2. Click
 **New Client**
 (found under "My Account" in the top right corner).
3. Create a new client with Application Scopes of
 **Data**
 and
 **User**
 .


 When you click
 **Create**
 , you will be redirected to the client ID and client secret.
4. Copy the client ID and client secret, as you will need them soon.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Smartsheet Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID. For steps on obtaining your client ID and client secret, see "Prerequisites," above.
  |
|
 Domo Client Secret
  |
 Enter your Domo client ID. For steps on obtaining your client ID and client secret, see "Prerequisites," above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Smartsheet connection. You can manage connector accounts in the
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
 Where would you like to write this file?
  |
 Select whether you want to send your Domo DataSet data to a Smartsheet workspace or folder.
  |
|
 Folder
  |
 Select the Smartsheet folder where you want to copy your data.
  |
|
 Workspace
  |
 Select the Smartsheet workspace where you want to copy your data.
  |
|
 Prevent Duplicates?
  |
 If you check this box, if the connector discovers a file with the same name as the file you are copying, the file will be overwritten.
  |
|
 Domo DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to a Smartsheet folder or workspace. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Select Filename
  |
 Select how you want to choose the file where data will be copied.
 * ****Use Input DataSet GUID****
 . The filename will be the number you entered for
 ****Domo DataSet ID****
 .
* ****Use Input DataSet Name****
 . The filename will be the same as that of the input DataSet.
* ****Enter File Name****
 . You will give the file a custom name in the
 ****File Name****
 field.
 |
|
 Filename
  |
 Enter the desired output filename.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

