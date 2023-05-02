

Intro
-------

Google Sheets is a spreadsheet program, part of a free, web-based software office suite offered by Google within its Google Drive service. The program allows users to create and edit spreadsheets online while collaborating with other users in real-time. To learn more about the Google API, visit their page (

https://developer.google.com

).


 You export data to Google Sheets in the Data Center. This topic discusses the fields and menus that are specific to the Google Sheets Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A project created in the Google Developers Console with the Google Sheets API enabled.
* A Google Service Token JSON file.

The following steps explain in detail how to create your project and obtain the needed credentials.

##
 Step 1: Creating a Project in the Google Developers Console

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


###
 Step 2: Enabling the Google Sheets API

To enable the Google Sheets for your project, do the following:

. In the Google Developers Console, select your project and click
 **Library**
 .
2. Search for the Google Sheets API.
3. Click
 **Enable**
 .


###
 Step 3: Creating a Service Account

To create a Service Account, do the following:

. In the Google Developers Console, open the
 **Credentials**
 tab.
2. Click
 **+ Create Credentials**
 then select
 **Service account**
 .
3. Name the new Service account.
4. Click
 **Create and Continue**
 .
5. In the
 **Role**
 dropdown, select
 **Basic > Owner**
 .
6. Click
 **Done**
 .
7. Click on the Email field under
 **Service Accounts**
 .
8. Click on the
 **Keys**
 option.
9. Click
 **Add Key**
 and then select
 **Create New Key**
 .
10. Choose
 **JSON**
 , click
 **Create**
 .


 Select a safe location for the file as you will need it soon.
11. Copy the email address for the project you created.
12. Open

https://sheets.google.com

and create a new sheet.
13. Share the sheet with the email address you copied in step 11. (The email address owner must have at least Editor-level privileges.)
14. Copy the URL to the spreadsheet, as you will need it later.


 The spreadsheet URL should look similar to the following:

docs.google.com/spreadsheets/d/<googlesheetID>/edit#gid=0

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Sheets Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your Google Sheet. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Service Token JSON
  |
 Paste the JSON Service Token you generated in Step 3: Creating a Service Account, in the "Prerequisites," above.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Google Sheets connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 Input Sheet ID
  |
 Enter the ID of the Google Sheet you want to push your data to. This is the portion of the URL between

/d/

and

/edit

. For example, in the URL

https://docs.google.com/spreadsheets/d/18z/

N0RQ8HIaEj2USwtAkCMX7AKBI-x-\_vq24kPd4\_Tsk/edit#gid=0


 , the ID is

N0RQ8HIaEj2USwtAkCMX7AKBI-x-\_vq24kPd4\_Tsk

.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to a Google Drive folder. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Sheet Name
  |

Enter the sheet name.


**Note:**
 If you do not specify a sheet name, the connector will use the sheet name as 'Sheet1.'

|

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .


 FAQs
------


####
 What kind of credentials do I need to power up this connector?

You need the service account key JSON of your Google Sheets Service Account.

###
 Where can I find my service account key JSON?

To find your service account key JSON:

 Open the IAM & Admin page in the GCP Console.
* In the left navigation, click Service accounts.
* Select your project and click Open.
* Click Create Service Account.
* Enter a service account name and service account description. Click Create.
* Select a role you wish to grant to the service account (Project Owner). Click Continue.
* Click Create key. Select JSON key type. Click Create. Private key will be saved to your computer.
* Close the pop up. Click Done.


####
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example:

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings


####
 How do I find the Input Sheet ID?

The Input Sheet ID is the Google Sheet ID that has been shared with the Service Account you created.

###
 What is the Sheet Name?

You need to provide the name for the sheet here. If you do not specify a sheet name, the connector will use the sheet name as 'Sheet1.'

