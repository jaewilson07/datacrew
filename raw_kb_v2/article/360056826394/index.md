

Intro
-------

Azure Data Lake Store is an enterprise-wide hyper-scale repository for big data analytic workloads. Use this connector to pull data files from your Data Lake Store into Domo. You can retrieve data files in any of the following file types: CSV, XLS, XLSX and JSON. For more information about Azure's API, see

https://docs.microsoft.com/en-us/azu...ta-lake-store/

.


 You connect to your Microsoft Azure Data Lake Store Gen2 account in the Data Center. This topic discusses the fields and menus that are specific to the Microsoft Azure Data Lake Store connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft Azure Data Lake Store Gen2 account and create a DataSet, you must have the following:

 Account key
* Account name

To obtain credentials, please reach out to your Microsoft account representative.


 Connecting to Your Microsoft Azure Data Lake Store Gen2 Account
-----------------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Microsoft Azure Data Lake Store Gen2

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Microsoft Azure Data Lake Store Gen2

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Key
  |
 Enter your Microsoft Azure Data Lake Store Gen2 account key.
  |
|
 Account Name
  |
 Enter your Microsoft Azure Data Lake Store Gen2 account name.
  |


 Once you have entered valid

Microsoft Azure Data Lake Store Gen2

credentials, you can use the same account any time you go to create a new

Microsoft Azure Data Lake Store Gen2

DataSet. You can manage connector accounts in the
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
 Select the Microsoft Azure Data Lake Store Gen2 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Directory ACL Status
  |
 Retrieves the access control status for a directory in Data Lake Store account.
  |
|
 Directory Information
  |
 Retrieves the metadata for a directory in Data Lake Store account.
  |
|
 Download File
  |
 Imports the content of a selected file into a Domo DataSet.
  |
|
 File ACL Status
  |
 Retrieves the access control status for a file in Data Lake Store account.
  |
|
 File Information
  |
 Retrieves the metadata for a file in Data Lake Store account.
  |

|
|
 File System
  |
 Select your file system.
  |
|
 How Would You Like to Choose Your File Name?
  |
 Select how you want to choose the file you intend to import into Domo. Select
 ****Files Discovery****
 to choose your file from a list of files. Select
 ****Enter File Name****
 to enter the name yourself.
  |
|
 File Name
  |
 Enter the name of the file you want to import into Domo.
  |
|
 Select File
  |
 Select the file you want to import into Domo.
  |
|
 File Format
  |
 Select the format of the file you want to import. Options include CSV, XLS, XLSX, and JSON.
  |
|
 Delimeter
  |
 Select the delimiter to use to parse your CSV file. To choose a custom delimiter, select
 ****Other****
 , then enter your delimiter in the
 ****Custom Delimiter****
 field.
  |
|
 Custom Delimiter
  |
 Enter the custom delimiter you want to use to parse your CSV file. Enter tab or Unicode characters in \uxxxx form (e.g. \u005e).
  |
|
 Quote Character
  |
 Select the desired quote character for parsing your CSV file. (A double quote is the CSV standard.) To choose a custom quote character, select
 ****Other****
 , then enter your quote character in the
 ****Custom Quote Character****
 field.
  |
|
 Custom Quote Character
  |
 Enter the custom quote character you want to use to parse your CSV file. Enter tab or Unicode characters in \uxxxx form (e.g. \u005e).
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
 Enter the desired CSV escape character. Enter Unicode chars in \uxxxx form (e.g. \u005E).
  |
|
 Header Start Row (Optional)
  |
 Enter the header start row for your Excel file.
  |
|
 Data Start Row (Optional)
  |
 Enter the data start row for your Excel file.
  |
|
 Footer Rows to Skip (Optional)
  |
 Enter the number of rows to skip at the end of your Excel file, if any.
  |
|
 Sheet Name (Optional)
  |
 If your Excel file contains more than one sheet, enter the name of the sheet you want to import. Be sure to check the sheet name for accidental spaces. If this field is left blank, the first sheet of the workbook will be used.
  |
|
 Data Field Key (Optional)
  |
 Enter the data field key for the JSON file you want to import.
  |
|
 Sublist to Flatten (Optional)
  |
 Enter the lists you want to flatten in your data. Separate multiple lists with commas.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

