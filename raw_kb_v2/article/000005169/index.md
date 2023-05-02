

Intro
-------

Google Sheets allows you to create and edit spreadsheets online while collaborating with other users in real-time. With Domo's Google Sheets Writeback Workload identity federation connector, you can transfer your data from a Domo dataset to your Google Sheet. To learn more about the Google API, visit their page (

https://developer.google.com

).


 You export data to Google Sheets in the Data Center. This topic discusses the fields and menus that are specific to the Google Sheets Writeback Workload Identity Federation connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


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


###
 Step 4: Creating a Workload Identity Pool and Provider

Follow the steps given below to create a Workload Identity Pool and Provider:

. In the
 **Google Developers Console**
 , open the.
 **Workload Identity Federation**
 tab.
2. Create a new workload identity pool and provide the required details.
3. Add a new identity provider to the pool and provide required details.
4. Click
 **Continue**
 .
5. Grant access to the required service account.
6. Select the required service account and identity provider and get the configuration JSON file.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Sheets Writeback Workload Identity Federation Connector page. The components of the other panes in this page,
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
 External Account Config JSON Key
  |
 Enter the external account config JSON key.
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
 Input DataSet ID
  |
 Enter your Domo dataset ID(GUID) located in the dataset url. Example:

https://customer.domo.com/datasources/<strong>aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee</strong>/details/settings

|
|
 Input Sheet ID
  |
 Enter the GoogleSheet ID that has been shared with the Service Account you created. Example:

https://docs.google.com/spreadsheets/d/<strong>18zN0RQ8HIaEj2USwtAkCMX7AKBl-x-\_vq24kPd4\_Tsk</strong>/edit#gid=0<br>Note

- all data in this sheet will be replaced
  |
|
 Sheet Name
  |

Enter the sheet name.


**Note:**
 By default, the sheet name will be
 **Sheet1**
 .

|


 Adding Caller Permission while Debugging
------------------------------------------

The following steps allow you to add caller permissions:

. Create a service account using the Google Developer Console.

https://console.developers.google.com/iam-admin/serviceaccounts/
2. Under
 **Options**
 , create a key.


 This key is your usual
 **client\_secret.json**
 .
3. Make the role owner for the service account (
 **Member name = service account ID = service account email**
 ).


 Example:

thomasapp@appname-201813.iam.gserviceaccount.com
4. Copy the email address of your service account = service account ID.
5. Navigate to your browser to the Google sheet you want to interact with.
6. Click
 **SHARE**
 on the top right of your screen.
7. Navigate to the advanced settings and share it with an email address of your service account.


 Example:

thomasapp@appname-201813.iam.gserviceaccount.com


###
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

