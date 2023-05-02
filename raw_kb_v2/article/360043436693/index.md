

Intro
-------


 Microsoft Azure Blob Storage is designed to easily and efficiently store any type of unstructured data, such as images, videos, audio, and documents. Use Domo's Microsoft Azure Blob Storage connector to pull CSV, TSV, and TXT data files from your Microsoft Azure Blob Storage account into Domo. Combine your Azure data with data from other data sources throughout your company for a comprehensive view of your business. Set up custom alerts to be notified in real-time when your key metrics change, so you can make faster, better business decisions. To learn more about the Azure Blob Storage API, visit their page (


 https://docs.microsoft.com/en-us/res...rvice-rest-api


 ).

You connect to your Microsoft Azure Blob Storage account in the Data Center. This topic discusses the fields and menus that are specific to the Azure Blob Storage connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Azure Blob Storage account and create a DataSet, you must have the following:

 Your Microsoft Azure Blob Storage account name
* Your Microsoft Azure Blob Storage account key

If you do not know your credentials, reach out to your Microsoft account representative.


 Connecting to Your Azure Blob Storage Account
-----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Azure Blob Storage Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Azure Blob Storage account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter your Microsoft Azure Blob Storage account name.
  |
|
 Account Key
  |
 Enter your Microsoft Azure Blob Storage account key.
  |


 Once you have entered valid Azure Blob Storage credentials, you can use the same account any time you go to create a new Azure Blob Storage DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various options for selecting and configuring the file you want to import into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 What File Type Would You Like to Import?
  |
 Select whether you want to pull a CSV, TSV, or TXT file into Domo.
  |
|
 Blob Container
  |
 Select the container with the file that you want to import into Domo.
  |
|
 Blobs Search Type (Advanced)
  |
 Select wheter you want to filter the blobs with simple or advanced options.


|
 Field
  |
 Description
  |
| --- | --- |
|
 Limit the search to directory
  |
 Enter the path to limit the search to a directory, subdirectory. Leave it empty if you want to search for the blob in container root and all directories.

For example,

**directory/subdirectory/nesteddirectory/***


**Note:**
 The file extension (.CSV, .TSV, or .TXT) must match the selected file type in the connector.

Example: If you want to select 'File1.csv' then you must select CSV as the file type from the drop down first.


 |
|
 Blob Name
  |
 Enter partial or full name of the blob (Do not include extension).
  |
|
 Ignore Case
  |
 Select this checkbox for Domo to ignore the cases while matching the provided Blob Name
  |
|
 Invert Match
  |
 Pull the files with the provided prefix that do not match the provided criteria of Blob Name match.
  |

|
|
 Do your blob containers have directories?
  |
 Select 'Yes' if your blob containers have directories.
  |
|
 Blob Directory
  |
 Select the directory with the file that you want to import into Domo.
  |
|
 Pull All Files
  |
 Select this check box if you would like to pull all files from the selected blob directory.
  |
|
 How would you like to choose your Block Blob?
  |
 Choose whether you want to select your block blob from a list or enter the name manually.
  |
|
 Select Block Blob
  |
 Select the desired file.
  |
|
 Enter Block Blob
  |
 Enter the name of the desired file. In
 **Block Blob Match Type**
 , you can specify how to match this string to the block blob name.
  |
|
 Block Blob Match Type
  |
 Specify whether the file name starts with or contains the name you have entered in


**Enter Block Blob**
 field.


**Note:**

You need to provide the file extension of the selected file type along with the file name.

Example: If you want to pull 'File1.csv' then you need to provide 'File1.csv' in the Enter Block Blob field.


 |
|
 File Encoding
  |
 Select the file encoding. By default,


**UTF-8**
 is selected.
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
 Select the desired quote character for parsing CSV files (Double quote is the default quote character for CSV standard.)
  |
|
 Custom Quote Character
  |
 Enter the desired CSV Quote character.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing CSV files.
  |
|
 Custom Escape Character
  |
 Enter the desired CSV escape character.
  |
|
 Date Format
  |

Select the required date format. By default,
 **MMDDYYYY**


 will be used.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

