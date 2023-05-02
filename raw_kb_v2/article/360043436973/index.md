

Intro
-------

Microsoft Azure Blob Storage is designed to easily and efficiently store any type of unstructured data, such as images, videos, audio, and documents. Use this connector to export your data from a Domo DataSet into an Azure Blob container. To learn more about the Azure Blob Storage API, visit their page (

https://docs.microsoft.com/en-us/res...rvice-rest-api

).


 You export data to Azure Blob Storage in the Data Center. This topic discusses the fields and menus that are specific to the Azure Blob Storage Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret.
* The name and key for your Azure Blob Storage account.

The following steps explain in detail how to create your project and obtain the needed credentials.


 To create a Domo client ID and client secret, do the following:

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
 panes in the Azure Blob Storage Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your Azure Blob Storage container. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Paste your Domo client ID. For more information, see "Prerequisites," above.
  |
|
 Domo Client Secret
  |
 Paste your Domo client secret. For more information, see "Prerequisites," above.
  |
|
 Account Name
  |
 Enter the name of the Azure Blob Storage account you want to connect to.
  |
|
 Account Key
  |
 Enter the account key for the Azure Blob Storage account you want to connect to.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Azure Blob Storage connection. You can manage connector accounts in the
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
 Blob Containers

|
 Select the Azure Blob container you want to send your Domo data to.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to the selected Azure Blob Storage container. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

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


 Adding a DataSet Using a Data Connector


 .

