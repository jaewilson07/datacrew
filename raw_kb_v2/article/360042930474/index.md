

Intro
-------

Smartsheet is an online project management, productivity and team collaboration SaaS application. Domo's Smartsheet connector allows you to retrieve data about folders, sheets, workspaces, users, and so on. To learn more about the Smartsheet API, visit their website (

https://smartsheet-platform.github.io/api-docs/

).


 The Smartsheet connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to the Smartsheet in the

Data Center

. This topic discusses the fields and menus that are specific to the Smartsheet connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is typically used to pull spreadsheet data into Domo.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 |
 Product/project managers
  |
|
**Average Implementation Time**
 |
 Depends on the amount of data and the scope of the system.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------


* As this connector does not support relative dates, "Replace" is the best choice for scheduling.
* API calls are limited to 300 calls per minute. However, most reports do not result in a lot of calls (aside from the "Users - All Sheets" report).

Prerequisites
---------------

To connect to the Smartsheet API and create a DataSet, you must have the following:

 The email address you entered when you signed up for a Smartsheet account
* Your Smartsheet password

Connecting to Smartsheet
--------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Smartsheet connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Smartsheet connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Smartsheet accounts in Domo)


 to open the Smartsheet OAuth screen where you can enter your Smartsheet email address and password. Once you have entered valid credentials, you can use the same account any time you go to create a new Smartsheet DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**
 The SmartSheet connector requires that you reauthenticate your account throughout the life of the connection. For information about reauthenticating an account, see

Reconnecting Connectors for Accounts


 .


###
 Details Pane

This pane contains a primary menu in which you select a report, along with two fields in which you can specify information to retrieve.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Smartsheet report. The following reports are available:


|  |  |
| --- | --- |
|
 Columns - Columns in Sheet
  |
 Returns data about columns within a specified sheet. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Folders - All Folders
  |
 Returns a list of all folders in your account.
  |
|
 Folders - Single Folder
  |
 Returns data about a specified folder. You must enter a folder name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Folders - All Folders Inside a Folder
  |
 Returns a list of subfolders within a specified folder. You must enter a folder name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Reports - Single Report
  |
 Returns data from a specified report. You must select a report name in
 **Report Name**
 for this report to run.
  |
|
 Prefer Integers
  |
 Smartsheet returns all the Numeric values as
 **DOUBLE**
 . Select the checkbox if you want to save them as integers wherever possible.
  |
|
 Reports - All Reports
  |
 Returns a list of all reports used by the account users.
  |
|
 Search - All
  |
 Searches for a specified search term within your entire account and returns results with that search term. You must enter a search term in
 **Search**
 for this report to run.
  |
|
 Search - In Sheet
  |
 Searches for a specified search term within a specified sheet and returns results with that search term. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 and a search term in
 **Search**
 for this report to run.
  |
|
 Shares for Workspace
  |
 Returns a list of users who have access to a specified workspace. You must enter a workspace name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Shares for Sheet
  |
 Returns a list of users who have access to a specified sheet. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Sheets
  |
 Returns a list of all sheets in your account.
  |
|
 Sheets - Single Sheet
  |
 Returns data a specified sheet. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Sheets - Sheet Version
  |
 Returns the version number for a specified sheet. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Sheets - Publish Status
  |
 Returns publish status information for a specified sheet. You must enter a sheet name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Templates
  |
 Returns a list of all templates in your account.
  |
|
 Users - All Users
  |
 Returns data about all users of the account.
  |
|
 Users - Current User
  |
 Returns data about the authenticated user.
  |
|
 Users - All Sheets
  |
 Returns a list of all sheets used by account users.
  |
|
 Workspaces - All Workspaces
  |
 Returns a list of all workspaces in your account.
  |
|
 Workspaces - Single Workspace
  |
 Returns data about a specified workspace. You must enter a workspace name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |
|
 Workspaces - All Folders in a Workspace
  |
 Returns a list of folders within a specified workspace. You must enter a workspace name in
 **Workspace/Folder/Sheet Name**
 for this report to run.
  |


 |
|
 Workspace/Folder/Sheet Name
  |
 Enter the name of the workspace, folder, or sheet you want to retrieve information for. Many reports do not work unless a name is specified.
  |
|
 Search
  |
 Enter the search term you want to retrieve data for. Some reports do not work unless a search term is specified.
  |


###
 FAQ


####
 What version of the Smartsheet API does this connector use?

This connector uses version 2.0 of the Smartsheet API (

https://api.smartsheet.com/2.0

.)

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Columns - Columns in Sheet
  |
 /sheets/{sheetId}/columns
  |
|
 Folders - All Folders
  |
 /home/folders
  |
|
 Folders - Single Folder
  |
 /folders/{folderId}
  |
|
 Folders - All Folders Inside a Folder
  |
 /folders/{folderId}/folders
  |
|
 Reports - Single Report
  |
 /reports/{reportId}
  |
|
 Reports - All Reports
  |
 /reports/
  |
|
 Search - All
  |
 /search
  |
|
 Search - In Sheet
  |
 /search/sheets/{sheetId}
  |
|
 Shares for Workspace
  |
 /workspaces/{workspaceId}/shares/
  |
|
 Shares for Sheet
  |
 /sheets/{sheetId}/shares/
  |
|
 Sheets
  |
 /sheets
  |
|
 Sheets - Single Sheet
  |
 /sheets/{sheetId}
  |
|
 Sheets - Sheet Version
  |
 /sheets/{sheetId}/version
  |
|
 Sheets - Publish Status
  |
 /sheets/{sheetId}/publish
  |
|
 Templates
  |
 /templates
  |
|
 Users - All Users
  |
 /users
  |
|
 Users - Current User
  |
 /users/me
  |
|
 Users - All Sheets
  |
 /users/sheets
  |
|
 Workspaces - All Workspaces
  |
 /workspaces
  |
|
 Workspaces - Single Workspace
  |
 /workspaces/{workspaceId}
  |
|
 Workspaces - All Folders in a Workspace
  |
 /workspaces/{workspaceId}/folders/
  |


####
 What kind of credentials do I need to power up this connector?

You need the email address or user ID and password associated with your Smartsheet account.

###
 How do I know my Smartsheet account credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account with the data service to set up the connector?

Any Smartsheet account can be used to set up the connector.

###
 How frequently should I update the connector?

There is no limitation in scheduling the connector. However, running many datasets frequently can cause API rate limit errors. Update the data only as often as needed and reduce the duplicate or unwanted datasets to avoid rate limit errors.

###
 Can this connector pull custom fields?

The connector can pull your Smartsheet spreadsheets as they exist in Smartsheet. Ensure that the spreadsheets are formatted using the best practices for normalized data.


 Troubleshooting
-----------------

Be aware that some "User" reports are available only to Team or Enterprise edition accounts.

