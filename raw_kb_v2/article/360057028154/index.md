

Intro
-------

Azure Data Lake Storage Gen2 is the world's most productive Data Lake. It makes Azure Storage the foundation for building enterprise data lakes on Azure. It allows you to easily manage massive amounts of data and helps to speed up your transition from proof of concept to production. Azure Data Lake Storage Gen2 is a set of capabilities dedicated to big data analytics, built on Azure Blob storage. Azure Data Lake Storage Gen2 is the result of converging the capabilities of the two existing storage services, Azure Blob storage and Azure Data Lake Storage Gen1. Use Domo's Azure Data Lake Storage Gen2 WriteBack connector to export your data from a Domo dataset to your Microsoft Azure Data Lake Gen2 container. For more information about Microsoft Azure Data Lake Gen2, see

https://docs.microsoft.com/en-us/azu...ta-lake-store/

.


 You export data to a Azure Data Lake Gen2 in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Azure Data Lake Gen2 Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you need the following:

 Your Microsoft Azure Data Lake Storage account name
* Your Microsoft Azure Data Lake Storage account key

Configuring the Connection
----------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Azure Data Lake Storage Gen2 WriteBack Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Azure Data Lake file system (container). The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Account Name
  |
 Enter your Microsoft Azure Data Lake storage account name.
  |
|
 Account Key
  |
 Enter your Microsoft Azure Data Lake storage account key.
  |

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Azure Data Lake Storage Gen2 connection. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 ****Reports****
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to the selected Azure Data Lake Storage file system (container). You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. Example, in the URL

https://mycompany.domo.com/datasourc...tails/overview

, the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4.
  |
|
 File System Name
  |
 Enter the file system name where you wish to upload the file. A file system acts as a container for your files.
  |
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the
 ********************************Input DataSet ID********************************
 or an output
 **file name**
 .
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

