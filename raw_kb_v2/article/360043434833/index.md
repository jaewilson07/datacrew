


**Important:**
 This Connector has been deprecated. In order to create new DataSets, you must use the

Microsoft Sharepoint Online REST Connector

.

Intro
-------

Microsoft SharePoint is used by organizations to create websites as well as securely store, organize, share, and access information from almost any device. To learn more about the SharePoint API, visit their page (

https://msdn.microsoft.com/en-us/lib.../jj860569.aspx

).


 You connect to your SharePoint account in the Data Center. This topic discusses the fields and menus that are specific to the SharePoint connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SharePoint account and create a DataSet, you must have the following:

 The username and password for your SharePoint account.
* Your SharePoint Windows domain name. For example, if your SharePoint site was located at

https://sample.sharepoint.com

, your domain name would be

sample

.

Connecting to Your SharePoint Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SharePoint Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SharePoint account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your SharePoint username.
  |
|
 Password
  |
 Enter your SharePoint password.
  |
|
 SharePoint Windows Domain Name
  |
 Enter your SharePoint Windows domain name. For more information, see "Prerequisites," above.
  |


 Once you have entered valid SharePoint credentials, you can use the same account any time you go to create a new SharePoint DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two primary menus—
 **Report**
 and
 **Action List**
 . For any report you select, various actions are available for filtering in that report. There are various other menus which may or may not appear depending on the report/action type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report/Action List
  |
 Select the SharePoint report and action you want to run. The following reports and actions are available:


|  |  |
| --- | --- |
|
 Alerts > Get Alerts
  |
 Returns all of the alerts configured in the SharePoint site.
  |
|
 Copy > Get Items
  |
 Returns metadata for documents on the SharePoint site.
  |
|
 Document > Get Items
  |
 Returns data from documents present on SharePoint site. Supported document types include CSV, JSON, XLS, XLSX, and XML. Only one action is available—
 **Get Items**
 .
  |
|
 Groups > Get Group Collection from Web
  |
 Lists all groups from the SharePoint site.


 |
|
 Groups > Get Group Info
  |
 Returns details for the user group with the specified name.
  |
|
 Imaging > List Picture Library
  |
 Returns data for picture libraries on the SharePoint site.
  |
|
 Lists > Get List
  |
 Returns details for the list with the specified name on the SharePoint site.
  |
|
 List > Get List Collection
  |
 Returns a list of all lists on the SharePoint site.
  |
|
 List > Get List Items
  |
 Returns list items from the list with the specified name on the SharePoint site.
  |
|
 Permissions > Get Permission Collection
  |
 Lists permissions for the specified SharePoint object.
  |
|
 Roles > Get Role Collection from Web
  |
 Returns the list of all user roles from the SharePoint site.
  |
|
 Roles > Get Role Info
  |
 Returns information the specified user role on the SharePoint site.
  |
|
 Users > Get All User Collection from Web
  |
 Returns data for all the SharePoint site users from Web.
  |
|
 Users > Get Current User Info
  |
 Returns data for the authenticated user.
  |
|
 Users > Get Roles and Permissions for Current User
  |
 Returns roles and permissions data for the authenticated user.
  |
|
 Users > Get User Collection from Site
  |
 Returns data for all users in the SharePoint site.
  |
|
 Users > Get User Collection from Web
  |
 Returns data for SharePoint site users from Web.
  |
|
 Users > Get User Info
  |
 Returns data for the SharePoint site user with the specified login name.
  |

|
|
 SharePoint Site URL
  |
 Enter the URL for the SharePoint site you want to retrieve data for.
  |
|
 Document URL
  |
 Enter the URL of the SharePoint document you want to retrieve data for.
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
 Group Name
  |
 Enter the name of the group you want to retrieve data for.
  |
|
 List Name
  |
 Enter the name of the list you want to retrieve data for.
  |
|
 Object Type
  |
 Enter the object type for the object you want to retrieve data for (e.g.

lists

,

alerts

, etc.).
  |
|
 Object Name
  |
 Enter the object name you want to retrieve data for.
  |
|
 Role Name
  |
 Enter the role name you want to retrieve data for.
  |
|
 User Name
  |
 Enter the name of the user you want to retrieve data for.
  |


