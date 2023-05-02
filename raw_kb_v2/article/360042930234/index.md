

Intro
-------

Microsoft SharePoint enables an organization to easily create and manage custom team-focused and project-focused sites for collaboration. This connector uses ADFS (Active Directory Federation Service) for authentication.


 To learn more about the SharePoint API, visit their page (

https://msdn.microsoft.com/en-us/lib.../jj860569.aspx

).


 You connect to your SharePoint account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft SharePoint ADFS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SharePoint account and create a DataSet, you must have the following:

 Your SharePoint username and password.
* The host URL and domain of your SharePoint account. For example, if your SharePoint site was


 https://my-sharepoint.sample.com


 , the host URL would be


 https://my-sharepoint.sample.com


 and the domain would be

sample

.
* Your ADFS host name and realm. Your administrator sets up the ADFS for the SharePoint. The ADFS host name is the server where ADFS is running.


 The ADFS realm is set up at the time of SharePoint configuration by the administrator. The realm should in the following format:

urn:sharepoint:<WebAppName>

Connecting to Your SharePoint Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SharePoint ADFS Connector page. The components of the other panes in this page,
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
 Host URL
  |
 Enter the host URL for your SharePoint account.
  |
|
 Domain
  |
 Enter the domain for your SharePoint account.
  |
|
 ADFS Hostname
  |
 Enter your ADFS hostname.
  |
|
 ADFS Realm
  |
 Enter your ADFS realm.
  |

For more information about these credentials, see "Prerequisites," above.

Once you have entered valid SharePoint credentials, you can use the same account any time you go to create a new SharePoint ADFS DataSet. You can manage connector accounts in the
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
 Report
  |
 Select the SharePoint report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Properties
  |
 Returns properties for the current site.
  |
|
 Associated Member Group
  |
 Returns details for the associated member group.
  |
|
 Associated Member Group Users
  |
 Returns the users in the associated member group.
  |
|
 Associated Owner Group
  |
 Returns details for the associated owner group.
  |
|
 Associated Owner Group Users
  |
 Returns the users in the associated owner group.
  |
|
 Associated Visitor Group
  |
 Returns details for the associated visitor group.
  |
|
 Associated Visitor Group Users
  |
 Returns the users in the associated visitor group.
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
 Fields
  |
 Returns a list of fields.
  |
|
 Folder
  |
 Returns details for the folder with the specified server-relative URL.
  |
|
 List
  |
 Returns details for the list with the given title.
  |
|
 List Item Detailed
  |
 Returns details for the list items in the given list.
  |
|
 List Item Field Values
  |
 Returns the list of fields values for a given list item.
  |
|
 List Items
  |
 Returns the items in the given list.
  |
|
 List Templates
  |
 Returns the list of list templates.
  |
|
 Lists
  |
 Returns all lists.
  |
|
 Role Definitions
  |
 Returns a list of role definitions.
  |
|
 Site User Info List
  |
 Returns site user information.
  |
|
 Sub Folders
  |
 Returns the list of folders with the specified server-relative URL.
  |
|
 Workflow Templates
  |
 Returns the list of workflow templates.
  |

|
|
 Server-Relative URL
  |
 Enter the relative URL for the server containing files or folders you want to retrieve information for.
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
|
 Decode Fields (Optional)
  |
 Check this box if you want to decode the column names imported from SharePoint.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

