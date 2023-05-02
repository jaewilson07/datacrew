

Intro
-------

Google Tag Manager is a tag management system that allows you to easily track tags and related code fragments on your website or mobile app. Use Domo's Google Tag Manager connector to view your tag data in Domo. To learn more about the Google Tag Manager API, visit their page (

https://developers.google.com/tag-manager/api/v2

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Tag Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google account and create a Google Tag Manager DataSet, you must have your Google credentials.


 Connecting to Your Google Account
-----------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Google Tag Manager Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet,****
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google Tag Manager connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 ****Connect****
 (or select
 ****Add Account****
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Tag Manager DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
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
 Report
  |
 Select the Google Tag Manager report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Lists all Google Tag Manager accounts you have access to.
  |
|
 Built-In Variables
  |
 Lists all the enabled Built-In Variables of a Google Tag Manager Container.
  |
|
 Containers
  |
 Lists all containers that belong to a Google Tag Manager account.
  |
|
 Environments
  |
 Lists all Google Tag Manager environments of a Google Tag Manager container.
  |
|
 Folders
  |
 Lists all Google Tag Manager folders of a container.
  |
|
 Tags
  |
 Lists all Google Tag Manager Tags of a Container.
  |
|
 Triggers
  |
 Lists all Google Tag Manager Triggers of a Container.
  |
|
 User Permissions
  |
 Lists all users with access to the account.
  |
|
 Variables
  |
 Lists all Google Tag Manager Variables of a Container.
  |
|
 Version Headers
  |
 Lists all container versions of a Google Tag Manager Container.
  |
|
 Workspaces
  |
 Lists all workspaces that belong to a Google Tag Manager Container.
  |

|
|
 Account
  |
 Select account.
  |
|
 Container
  |
 Select container.
  |
|
 Workspace
  |
 Select workspace.
  |
|
 Details
  |
 Select the details to include in the data (It is not recommended to select more than 2 at once).
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

