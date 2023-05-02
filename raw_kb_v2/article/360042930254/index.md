


**Important:**
 The Microsoft SharePoint Online Connector has been deprecated. If you wish to create a new DataSet, you must use the

Microsoft Sharepoint Online REST Connector

.

Intro
-------

Microsoft SharePoint Online enables organizations to create and manage custom team-focused and project-focused sites for collaboration. To learn more about the SharePoint API, visit their page (

https://msdn.microsoft.com/en-us/lib.../jj860569.aspx

).


 You connect to your SharePoint Online account in the Data Center. This topic discusses the fields and menus that are specific to the SharePoint Online connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Connecting to Your SharePoint Online Account
----------------------------------------------

The Microsoft SharePoint Online Connector has been deprecated and cannot be used to power up new DataSets.

##
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
 Report
  |
 Select the SharePoint Online report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Properties
  |
 Returns properties of the current site.
  |
|
 Associated Member Group
  |
 Returns details of the associated member group.
  |
|
 Associated Member Group Users
  |
 Returns users of the associated member group.
  |
|
 Associated Owner Group
  |
 Returns details of the associated owner group.
  |
|
 Associated Owner Group Users
  |
 Returns users of the associated owner group.
  |
|
 Associated Visitor Group
  |
 Returns details of the associated visitor group.
  |
|
 Associated Visitor Group Users
  |
 Returns users of the associated visitor group.
  |
|
 Available Fields
  |
 Returns a list of available fields.
  |
|
 Content Types
  |
 Returns a list of content types.
  |
|
 Document
  |
 Returns metadata and file content for the specified document. For example,
 `/sites/<sitename>/Shared%20Documents/<foldername>/<document>.<extension>`
 |
|
 Event Receivers
  |
 Returns a list of event receivers.
  |
|
 Fields
  |
 Returns a list of fields.
  |
|
 Files
  |
 Returns a list of files with the specified server-relative URL. For example,
 `/sites/<sitename>/Shared%20Documents/<document>.<extension>`
 |
|
 Folder
  |
 Returns details for the folder with the specified server-relative URL. For example,
 `/sites/<sitename>/Shared%20Documents/<foldername>/`
 |
|
 Folders
  |
 Returns a list of folders.
  |
|
 List
  |
 Returns details of the list with the specified title.
  |
|
 List Item Field Values
  |
 Returns a list of field values for the specified list item.
  |
|
 List Items
  |
 Returns a list of items in the specified list.
  |
|
 List Item Detailed
  |
 Returns details of the list item in the specified list.
  |
|
 Lists
  |
 Returns all lists.
  |
|
 List Templates
  |
 Returns a list of list templates.
  |
|
 Recycle Bin Items
  |
 Returns a list of recycle bin items.
  |
|
 Role Definitions
  |
 Returns a list of role definitions.
  |
|
 Root Folder
  |
 Returns details for the root folder.
  |
|
 Site Groups
  |
 Returns a list of site groups.
  |
|
 Site User Info List
  |
 Returns site user information.
  |
|
 Site Users
  |
 Returns a list of site users.
  |
|
 Sub Folders
  |
 Returns a list of subfolders with the specified server-relative URL.
  |
|
 Web Summary
  |
 Returns a summary of the current website.
  |
|
 Workflow Templates
  |
 Returns a list of workflow templates.
  |

|
|
 Server Relative URL
  |
 Enter the server relative URL for the file or folder. File example:

/sites/MySite/Shared Documents/MyFolder/File.xlsx

. Folder example:

/sites/MySite/MyFolder.

|
|
 File Type
  |
 Select the file type for the document you want to retrieve. If you select
 **Other**
 , file content will be shown as a binary column.
  |
|
 Select the Delimiting Character
  |
 Select the character used to separate your CSV columns. If your delimiter is not listed, select
 **Other**
 .
  |
|
 Enter Your Data Tag
  |
 Enter the data tag for your JSON or XML file.
  |
|
 Do You Want to Change the Default Parsing Output?
  |
 Select
 **True**
 if the required values in your JSON or XML file should be flattened.
  |
|
 Values to Flatten
  |
 Enter a comma-separated list of values to be flattened. For example:

value1,value2...,valueN

|
|
 List Title
  |
 Enter the title of the list you want to retrieve information for.
  |
|
 List Item ID
  |
 Enter the ID of the list item you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

