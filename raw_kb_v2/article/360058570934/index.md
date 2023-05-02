

Intro
-------

Google Sheets is a spreadsheet program, part of a free, web-based software office suite offered by Google within its Google Drive service. The program allows users to create and edit spreadsheets online while collaborating with other users in real-time. With Domo’s Google Sheet Enterprise Writeback connector, you can transfer your data from a Domo dataset to your Google Sheet that you already have shared with your Service Account. To learn more about the Google API, visit


 https://developer.google.com


 .


 You export data to Google Sheets in the Data Center. This topic discusses the fields and menus that are specific to the Google Sheet Enterprise Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A project created in the Google Developers Console with the APIs and Services enabled
* The OAuth Client ID and Client Secret associated with your Google Developers account

The following steps explain in detail how to create your project and obtain the needed credentials.

###
**Creating a Project in the Google Developers Console**

To create a project in the Google Developers Console, do the following:

. Go to

https://console.developers.google.com

.
2. Click the dropdown arrow next to
 **My Project**
 .
3. Click
 **New Project**
 .
4. Name your project and select the parent folder.
5. Click
 **Create**
 .


**Note:**
 You can also use an existing project if you want.


####
**Creating the OAuth Client ID and Client Secret**

1. Login to

https://console.developers.google.com/

.


 2. Select your project.


 3. Go to
 **APIs & Services > Credentials**
 .

4. Click on
 **+Create credentials > OAuth client ID**
 .

5. Select
 **Application Type**
 as
 **Web application**
 .

6. Enter the name.


 7. Click on
 **+Add URI**
 under
 **Authorized redirect URIs**
 .


 8. Add

https://oauth.domo.com/api/data/v1/oauth/providers/google-sheets-enterprise-writeback/exchange

as the redirect  URI.


 9. Click
 **Save**
 .

###
**Enabling API and Services**

1. Login to

https://console.developers.google.com/

.


 2. Go to
 **APIs & Services > Dashboard**
 .


 3. Click
 **+ENABLE APIS AND SERVICES**
 .

4. Search for
 **Google Sheets API**
 .

5. Select the
 **API Enabled**
 checkbox.

6. Similarly, search for
 **Google Drive API**
 and select the
 **API Enabled**
 checkbox.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Google Sheet Enterprise Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Google developers account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the Client ID associated with your Google Developers account. For more information, see

Prerequisites

.
  |
|
 Client Secret
  |
 Enter the Client Secret associated with your Google Developers account. For more information, see

Prerequisites

.
  |


 Once you have entered valid credentials, you can use the same account

any time you go to set up a new Domo-Google Sheets connection

. You can manage connector accounts in the
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
 Input DataSet ID
  |
 Enter your Domo dataset ID (GUID) located in the dataset URL.


 Example:

https://customer.domo.com/datasources/

***aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee****
 /details/settings
  |
|
 Input Sheet ID
  |
 Enter the Google Sheet ID that has been shared with the Service Account you created.


 Example:

https://docs.google.com/spreadsheets/d/

***18zN0RQ8HIaEj2USwtAkCMX7AKBl-x-\_vq24kPd4\_Tsk****
 /edit#gid=0

*NOTE**
 - All data in this sheet will be replaced
  |
|
 Sheet Name
  |
 Enter the sheet name. Default sheet name will be 'Sheet1'.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

