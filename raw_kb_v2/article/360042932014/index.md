


********Important********
********:********
 Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. To create new Google Drive DataSets, use this connector. All pre-existing Google Drive DataSets will continue to run normally.

Intro
-------

Google Drive is a file storage and synchronization service developed by Google that allows users to store files in the cloud, synchronize files across devices, and share files. Use Domo's Google Drive Service connector to retrieve Excel and CSV files from a Google Drive account and output them as Domo DataSets. To learn more about the Google Drive API, visit their page (

https://developers.google.com/drive/

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Drive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Google service account, you must have a Google service account JSON key.


 Before creating your service account JSON key, you need to first enable the

Google Drive API for your project in Google Cloud Platform console.


####
 Enabling the Google Drive API


 To enable the Google Drive API for your project, do the following:


 1. Go to the

GCP Console

.


 2. Click
 **Library**
 under
 **APIs and services**
 in the left pane.

3. Search for the
 **Google Drive API**
 and click on it.


 4. Towards the top of the screen you will see an
 **ENABLE**
 button.

5. Click
 **Enable**
 .


####
 To generate a service account JSON key, do the following:

1. In the

GCP Console

, open the
 ****IAM & Admin****
 page.


 2. Click
 ********Service accounts********
 in the left-hand navigation pane.

3. Click
 ********Create Service Account********
 .


 4. In the


**Service account details**


 section, enter a name and description for the service account.


 5. Click


**Create and Continue**
 .


 6. Now, in the


**Grant this service account access to the project**


 section, click


**Select a role**


 drop down.


 7. Select


**Project-> Owner**
 .

8. Click


**Continue**
 .


 9. Click


**Done**
 . An overview of your service account will appear.


 10. In the


**Actions**


 column, click the three dots to expand the menu. Click


**Manage Keys**
 .

11.

Click

*Add Key**

. Select

*Create new key**

.


 12.
 **Create private key**


 window will appear. Select private key type as


**JSON**


 and click


**Create**
 .


 13. A private key will be saved to your computer.


 Connecting to Your Google Service Account
-------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Drive Service Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to a Google service account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON for your Google service account key. For information about creating a key, see "Prerequisites," above.
  |

Once you have entered a valid key, you can use the same account any time you go to create a new Google Drive Service DataSet. You can manage connector accounts in the
 ********Accounts********
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane, you can choose to import a list of files in your Google Drive account or specify a Google Drive file to import into Domo and set options for how you want the data to appear.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select whether you want to import a list of files ("Files") or download a specific files ("FileDownload").


|  |  |
| --- | --- |
|
 Files
  |
 Returns list of files in drive.
  |
|
 File Download
  |
 Imports a file from google drive into Domo.
  |
|
 Fetch Data from Shared Drives
  |
 Select
 **Yes**
 if you want the connector to fetch data from the Shared Drives.
  |

|
|
 How Would You Like to Choose Your File?
  |
 Select how you want to choose the file you intend to import into Domo. Select
 ****Enter File Name****
 or
 **Enter File ID**
 to enter the name or ID yourself. Select
 ****Files Discovery****
 to choose your file from a list of files.
  |
|
 How would you like to match the Sheet Name?
  |
 If the user selects
 **Contains**
 , the connector will retrieve the most recently uploaded file.
  |
|
 File ID
  |
 Enter the ID of the file you want to import. To see all IDs for files in your account, run the "Files" report.
  |
|
 File Name
  |
 Enter the name of the file you want to import from Google Drive.
  |
|
 Files Discovery
  |
 Select the file you want to import into Domo.

*Note:**
 The File Discovery option is available only if the number of files in the Google Drive account is less than or equal to 100.

|
|
 MIME Type
  |
 Select the MIME type of the file you want to import into Domo.
  |
|
 What File Type Would You Like to Import?
  |

Select the file type that you would like to parse and import.

|
|

Select the delimiting character

|

Select the delimiting character used in your file. If your delimiter is not listed select 'Other.'

|
|

Specify your delimiter

|

Enter the character used to delimit your character separated values (CSV) text.

|
|

Quote Character

|

Select the desired quote character for parsing CSV files. (Double quote is the default quote character for CSV standard).

|
|
 Custom Quote Character
  |
 Enter the custom quote character you want to use to parse your CSV file.
  |
|
 Escape Character
  |
 Select the escape character to use to parse your CSV file. To choose a custom escape character, select
 ****Other****
 , then enter your delimiter in the
 ****Custom Escape Character****
 field.
  |
|
 Custom Escape Character
  |
 Enter the custom quote character you want to use to parse your CSV file.
  |
|

Date Format

|

Select the date format that is used in the selected file.

|
|
 Header Start Row
  |
 Enter the header start row for your Excel file.
  |
|
 Data Start Row
  |
 Enter the data start row for your Excel file.
  |
|
 Footer Rows to Skip
  |
 Enter the number of rows to skip at the end of your Excel file, if any.
  |
|

How would you like to match the sheet name?

|

Select whether you would like to match the sheet name with a sheet that contains the provided name or is exactly equivalent to the provided name.

|
|

File Password

|

If your file is password protected please enter file password.

|
|

Sheet Name

|

Enter the sheet name you want to retrieve from the specified spreadsheet be sure to check sheet name for accidental spaces, first sheet of the workbook will be used if the field is left blank.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What do I do if my Google Drive file is not visible in the "Files" report?

If you are unable to locate the driver file, please share the file or directory with the service account email (client\_email found in the JSON key). You can find the email in Service Accounts.

###
 My DataSet is returning a '403 Forbidden' error. Why?

You need to enable the

Google Drive API for your project in Google Cloud Platform console.

For more details, see the 'Enabling the Google Drive API' section under Prerequisites.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No.

