

*Important:**
 Due to Wrike deprecating their API version 3, Wrike can no longer guarantee that API calls using the Wrike Connector will continue to work.


**Authentication Changes**


 Wrike has updated the way that accounts are authenticated. When creating a Wrike account connection in Domo, previously you were able to connect to all accounts in your system. Now, Wrike only allows for connection to a single account. For this reason, you will need to re-connect your Domo Wrike account in order to use it for future Wrike API connections.


**Connector Changes**


 In conjunction with the authentication changes, the current Wrike DataSets in your account are no longer compatible with their API. Domo has created a new Wrike connector that works with the new API version. You will need to recreate your DataSets on the new Wrike connector, which is denoted with a "beta" banner. This can also be found by going to https://[yourinstance].

domo.com/connectors/com.domo.connector.wrike4

Intro
-------

Wrike, Inc. produces a project management tool that gets distributed and co-located teams working together so that projects are completed faster to save time and money.  To learn more about the Wrike API, visit their page (

https://developers.wrike.com/

).


 You connect to your Wrike account in the Data Center. This topic discusses the fields and menus that are specific to the Wrike connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Wrike account and create a DataSet, you must have a Wrike username and password. Alternatively, you can connect using Google or Microsoft Office 365 credentials, or SSO credentials if these have been set up for your company.


 Connecting to Your Wrike Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Wrike Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Wrike connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Wrike accounts in Domo) to open the Wrike OAuth screen where you can enter your credentials to connect to Wrike. Once you have entered valid credentials, you can use the same account any time you go to create a new Wrike DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Wrike when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Wrike.


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
 Select the Wrike report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns all accounts you have access to.
  |
|
 Attachments
  |
 Returns all attachments for tasks and folders in the selected account.
  |
|
 Comments
  |
 Returns comments for all accounts.
  |
|
 Contacts
  |
 Returns a list of user and user group contacts for all accounts.
  |
|
 Custom Fields
  |
 Returns a list of custom fields for the selected account.
  |
|
 Dependencies
  |
 Returns a list of task dependencies.
  |
|
 Folder
  |
 Returns information about the selected folders.
  |
|
 Folder Tree
  |
 Returns a list of tree entries for the selected account.
  |
|
 Groups
  |
 Returns all groups for the selected account.
  |
|
 Invitations
  |
 Returns all invitations for the selected account.
  |
|
 Query Workflows
  |
 Returns a list of workflows with custom statuses.
  |
|
 Tasks
  |
 Returns all tasks in all accounts.
  |
|
 Timelogs
  |
 Returns all timelog records for all accounts.
  |

|
|
 Accounts
  |
 Select the account you want to retrieve data for.
  |
|
 Folders
  |
 Select the folders you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

