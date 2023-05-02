

Intro
-------

Azure Data Lake Storage Gen2 is one of the most productive, robust, and effective storage that provides file system semantics, file-level security, and scale. It makes Azure Storage the foundation for building enterprise data lakes on Azure. It allows you to easily manage massive amounts of data and helps to speed up your transition from proof of concept to production. Azure Data Lake Storage Gen2 is a set of capabilities dedicated to big data analytics, built on Azure Blob storage. Azure Data Lake Storage Gen2 is the result of converging the capabilities of the two existing storage services, Azure Blob storage and Azure Data Lake Storage Gen1. Use Domo's prebuilt Azure Data Lake Storage Gen2 WriteBack connector that connects with Azure Active Directory to export your data from a Domo dataset to your Microsoft Azure Data Lake Storage Gen2. For more information about Microsoft Azure Data Lake Gen2, see

https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-introduction

.


 You export data to a Azure Data Lake Gen2 in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Azure Data Lake Gen2 Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you need the following:

 Your client ID (GUID) and secret key of the client web app obtained from Azure Active Directory configuration
* Your Microsoft Azure Data Lake Storage account name
* Your Tenant ID
* Y

our Container name


###
 Configuring Your Azure App

To create a connection with your Microsoft Exchange Metrics account, you must first create a Microsoft Azure Web App to obtain the necessary client ID and secret.


****To configure an Azure App****
 :

. Login into

Azure Portal

.
2. Select
 ****Azure Active Directory > App Registrations > New Registration****
 .


 3. Fill out the registration form as follows:

 Name: Enter name for your application.
* Supported account types: Select an option to specify who can use this application or access this API.
* Redirect URI: Enter the redirect URI. The authentication response is sent to this URI after successfully authenticating the user. Providing the URI at this stage is optional and it can be changed later, but a value is required for most of the authentication scenarios.


 4. Click
 ********Register********
 . An overview of your registered App will appear. The
 ****Application ID****
 that appears here is the
 ****Client ID****
 you will enter in the
 ****Credentials****
 pane in Domo.


 5. Click
 ********API Permissions >> +Add a permission********
 .


 6.
 ****Request API permissions****
 section appears. Add the API permissions for your application.

7. Now, click on
 ********Certificates and secrets********
 . Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.


 8. Click
 ****+
 ****New client secret********
 .

9. Specify the client secret description and the expiry period for your client secret, and click
 ********Add********
 .


 10. Copy the value and paste it into the
 ********Client Secret********
 field in the
 ****Connector credentials****
 section in Domo.

##
 Assigning a role to the Azure APP


1. Go to
 **Subscriptions**
 .
2. Click
 **Access Control (IAM) > Add > Add Role Assignment**
 .
3. Select the role
 **Storage Blob data contributor**
 .
4. Select your Azure Application name. You can search for your application name and select it.
5. Click
 **Save**
 .

Configuring the Connection
----------------------------

This section enumerates the options in the
 ********Credentials********
 and
 ********Details********
 panes in the Azure Data Lake Storage Gen2 WriteBack Connector page. The components of the other panes in this page,
 ********Scheduling********
 and
 ********Name & Describe Your DataSet********
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
 Azure Application Client ID
  |
 Enter the client ID (GUID) of the client web app obtained from Azure Active Directory configuration. See Prerequisites for more information.
  |
|
 Azure Application Client Secret
  |
 Enter the secret key of the client web app. See Prerequisites for more information.
  |
|
 Tenant ID
  |
 Enter your Tenant ID. Go to

Portal.azure.com

> Azure Active Directory > Properties. The Directory ID is your Tenant ID.
  |
|
 Account Name
  |
 Enter your Microsoft Azure Data Lake storage account name.
  |
|
 Container
  |
 Enter your container name.
  |

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Azure Data Lake Storage Gen2 connection. You can manage connector accounts in the
 ********Accounts********
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 ********Reports********
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to the selected Azure Data Lake Storage file system (container). You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/.


 Example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

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
 ****************************************************************Input DataSet ID****************************************************************
 or an output
 ****file name****
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

Adding a DataSet Using a Data Connector

.

