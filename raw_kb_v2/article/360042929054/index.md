

Intro
-------

BMC RemedyForce, built on Salesforce App Cloud, enables you to deliver high-speed service management that empowers users and accelerates the business, with minimal capital investment. To learn more about the RemedyForce API, visit their page (

https://www.salesforce.com/developer/docs/api/

).


 You connect to your RemedyForce account in the Data Center. This topic discusses the fields and menus that are specific to the RemedyForce connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your RemedyForce account and create a DataSet, you must have a RemedyForce username and password. Your password is a combination of your SalesForce login password and security token.


 Connecting to Your RemedyForce Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the RemedyForce Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your RemedyForce account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 RemedyForce Environment
  |
 Select the RemedyForce environment you want to pull data from.
  |
|
 Username
  |
 Enter your RemedyForce username.
  |
|
 Password
  |
 Enter your RemedyForce password.
  |


 Once you have entered valid RemedyForce credentials, you can use the same account any time you go to create a new RemedyForce DataSet. You can manage connector accounts in the
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
 Select the RemedyForce report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Describe All Tabs
  |
 Returns information about the tabs available to the authenticated user.
  |
|
 Describe App Menu
  |
 Returns metadata about items in the Salesforce1 navigation menu or dropdown app menu.
  |
|
 Describe Approval Layout
  |
 Returns information about the approval layout for a given object type.
  |
|
 Describe Available Quick Actions
  |
 Returns the list of actions whose parent (API version 28.0) or context (API version 29.0 and greater) entity name is supplied as well as standard and global actions.
  |
|
 Describe Compact Layouts
  |
 Returns information about the compact layout for a given object type.
  |
|
 Describe Data Category Groups
  |
 Returns the available category groups for the objects specified in the request.
  |
|
 Describe Flexi Pages
  |
 Returns metadata details about a set of Lightning Pages.
  |
|
 Describe Global
  |
 Returns list of available objects for your organization.
  |
|
 Describe Global Theme
  |
 Returns a list of available objects and theme information about those objects for your organization.
  |
|
 Describe Knowledge Settings
  |
 Returns the available Knowledge language settings.
  |
|
 Describe Layout
  |
 Returns information about the layout (presentation of data to users) for a given object type.
  |
|
 Describe Primary Compact Layouts
  |
 Returns information about the primary compact layout for the given object types.
  |
|
 Describe Quick Actions
  |
 Returns details for specified actions.
  |
|
 Describe Search Layouts
  |
 Returns search layout information for one or more objects.
  |
|
 Describe Search Scope Order
  |
 Returns an ordered list of objects in the default global search scope of a logged-in user.
  |
|
 Describe S Objects
  |
 Returns metadata for a given object or array of objects.
  |
|
 Describe Softphone Layout
  |
 Returns information about the layout of a SoftPhone.
  |
|
 Describe Tabs
  |
 Returns information about the standard and custom apps to which the logged-in user has access.
  |
|
 Describe Theme
  |
 Returns the current theme information for a given array of objects.
  |
|
 Get User Info
  |
 Returns personal information about the currently logged-in user.
  |
|
 Query
  |
 Returns data from an object.
  |
|
 Search
  |
 Returns records based on a search string.
  |

|
|
 Search/Query Text
  |
 Enter a search string to return records around that string.
  |
|
 Quick Action Name
  |
 Enter the Quick Action name you want to retrieve data for.
  |
|
 Flexi Page Name
  |
 Enter the name of the Flexi page you want to retrieve data for.
  |
|
 App Menu Type
  |
 Select the desired app menu type, either
 **AppSwitcher**
 or
 **Salesforce1**
 .
  |
|
 S Object Type
  |
 Select the S objece type you want to retrieve data for.
  |
|
 S Object Fields
  |
 Select the S object fields you want to retrieve data for.
  |
|
 S Object Query (Optional)
  |
 Automatically generated query from the selected discovery inputs.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

