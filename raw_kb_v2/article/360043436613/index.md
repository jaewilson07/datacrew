

*Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Adwords via BigQuery
* DoubleClick Campaign Manager via Google Cloud Storage (DTV2)
* Google Cloud Storage
* Google Contacts
* Google Drive
* Google Gmail
* Google Admin SDK Reports

If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:

 Google BigQuery Service
* Google Ads (fomerly AdWords) via BigQuery Service
* Google Drive Service
* Google Cloud Storage Service
* Google Contacts Service
* Google Gmail Service
* Google Admin SDK Reports Service

All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.


 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.


 Intro
-------

Google Drive is a file storage and synchronization service developed by Google that allows users to store files in the cloud, synchronize files across devices, and share files. Use Domo's Google Drive connector to retrieve Excel and CSV files from a Google Drive account and output them as Domo DataSets. To learn more about the Google Drive API, visit their page (

https://developers.google.com/drive/

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Drive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google account and create a Google Drive DataSet, you must have Google credentials.


 Connecting to Your Google Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Drive Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google Drive connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Drive accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Drive  DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###
 Details Pane

In this pane, you specify the Google Drive file you want to import into Domo and set options for how you want to data to appear.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Name
  |
 Enter the name of the file you want to import from Google Drive. Extensions are optional. If you do not specify an extension, Domo will first look for XLSX files with the name you provided. If no XLSX files are found, it will then look for XLS files, and finally CSV files. If your Google Drive contains more than one file with the same name, the latest updated version will be used.
  |
|
 Is Password Protected?
  |
 Indicate whether the file you are importing is password-protected.
  |
|
 File Password
  |
 Enter the password needed to access the requested file.
  |
|
 Sheet Name (optional)
  |
 Enter the name of the sheet in which the file is found. If you do not enter a sheet name, data will be pulled from the first sheet in the file.
  |
|
 Layout
  |
 Select the layout of your file. The following options are available:
 * ****Column as Header****
 . Indicates that your data uses a column-based layout (i.e. each column has a header).
* ****Row as Header****
 . Indicates that your data uses a row-based layout (i.e. each row has a header).
* ****Cross Tab****
 . Indicates that your data uses a cross-tab (pivot) layout.
* ****Raw****
 . Indicates that your data is raw (unformatted).
 |
|
 Mode
  |
 Select how the cell range of your data will be determined. If you select
 ****Auto****
 , the range is determined automatically. If you select
 ****Manual****
 , you will be asked to enter the column header and data ranges manually.
  |
|
 Column Header Range
  |
 Enter the range for the column headers in your Excel sheet. For example:

A2:F8

|
|
 Data Range
  |
 Enter the range for the data (non-header) cells in your Excel sheet. For example:

A3:F20

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How do I know my Google credentials are secure?

The login process uses the OAuth process, so your Google credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.

####
 How often can the data be updated?

DataSets should be set to update no more than once an hour.

####
 Are there any API limits I should be aware of?

While Google may enforce call rate limits, you should not have to worry about them.

