

Intro
-------

Azure Data Lake Gen2 OAuth connector is an enterprise-wide hyper-scale repository for big data analytic workloads. It makes Azure Storage the foundation for building enterprise data lakes on Azure. It allows you to easily manage massive amounts of data and helps to speed up your transition from proof of concept to production. You can retrieve data files in any of the following file types: CSV, XLS, XLSX and JSON. For more information about Azure's API, see

https://docs.microsoft.com/en-us/azu...ta-lake-store/

.


 You connect to your Microsoft Azure Data Lake Gen2 OAuth account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Azure Data Lake Gen2 OAuth Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Azure Data Lake Gen2 OAuth account and create a DataSet, you must have the following:

 Microsoft Azure App Client ID
* Microsoft Azure App Client Secret
* Tenant ID

To obtain credentials, please reach out to your Microsoft account representative.


 Connecting to Your Microsoft Azure Data Lake Gen2 OAuth Connector
-------------------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Microsoft Azure Data Lake  Gen2 OAuth Connector

page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Microsoft Azure Data Lake Store Gen2

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Microsoft Azure App Client ID
  |
 Enter the client ID (GUID) of the client web app obtained from Azure Active Directory configuration.
  |
|
 Microsoft Azure App Client Secret
  |
 Enter the secret key of the client web app.
  |
|
 Tenant ID
  |
 Enter your Tenant ID.

To locate the tenant ID, do the following:

Navigate to
 **Portal.azure.com

> Azure Active Directory > Properties**
 .

The
 **Directory ID**
 is your
 **Tenant ID**
 .
  |


 Once you have entered valid

Microsoft Azure Data Lake Gen2

OAuth credentials, you can use the same account any time you go to create a new

Microsoft Azure Data Lake Gen2

OAuth  DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 What file type would you like to import?
  |
 Select the file type that you want to import.
  |
|
 Enter Storage Account Name
  |
 Enter the storage account name.
  |
|
 Container Name
  |
 Select the container.
  |
|
 How would you like to choose the directory name?
  |
 Select how you want to choose the directory name.
  |
|
 Discover Directory Name
  |
 Select the directory name.
  |
|
 Enter Directory Name
  |
 Enter the directory name.


|  |  |
| --- | --- |
|
 test
  |
 Example for main or root directory.
  |
|
 test/test
  |
 Example for sub- directory.
  |
|
 test/test/test
  |
 Example for sub-sub-directory
  |

|
|
 Would you like to pull data from multiple files?
  |
 Select if you want to retrieve data from multiple files in the directory. If you want to pull data from multiple files, select the files with same schema.
  |
|
 Discover Files
  |
 Select the files with the same schema to pull the data.
  |
|
 How would you like to choose the File name?
  |
 Select how you want to choose the file name.
  |
|
 Enter File Name
  |
 Enter the File name.
  |
|
 Discover File Name
  |
 Select the File name.
  |


###
 Advanced Pane

This pane contains the
 **Advanced**
 menu.


 Menu
  |
 Description
  |
| --- | --- |
|
 Select the delimiting character
  |
 Select the delimiting character used in your file. If your delimiter is not listed here, select
 **Other**
 .
  |
|
 Specify your delimiter
  |
 Enter the character used to delimit your character separated values (CSV) text.
  |


###
 Troubleshooting


####
 While trying to authenticate using the connector, the following error message is displayed.


 This issue is related to permissions. You need the appropriate permission to access Azure Storage otherwise the connection will fail.


 To add the required permissions, do the following:


 Select the
 **App -> API Permissions -> Add a permission -> Select Azure Storage -> Check user\_impersonation -> Add permissions**

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

