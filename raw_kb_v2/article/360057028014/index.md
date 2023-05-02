

Intro
-------

Microsoft Azure Blob Storage is designed to easily and efficiently store any type of unstructured data, such as images, videos, audio, and documents. Use Domo's Azure Blob Storage SAS Token Writeback connector to export your data from a Domo DataSet into an Azure Blob container. To learn more about the Azure Blob Storage API, visit their page (

https://docs.microsoft.com/en-us/res...rvice-rest-api

).


 You export data to Azure Blob Storage in the Data Center. This topic discusses the fields and menus that are specific to the Azure Blob Storage SAS Token Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 The Storage Account Name
* An Account access level SAS token


**Note:**
 This connector works only with the
 **account access level SAS**
 token. So, if you receive an authentication error, please confirm if you are entering a container access level token instead.

Configuring the Connection
----------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Azure Blob Storage SAS Token Writeback Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Azure Blob Storage container. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter the storage account name.
  |
|
 Shared Access Signature (SAS) Token
  |
 Enter your account access level

SAS token

.
  |

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Azure Blob Storage connection. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Enter the DataSet ID (GUID) for the DataSet you want to copy to the selected Azure Blob Storage container. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4.
  |
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 ********Input DataSet ID********
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

