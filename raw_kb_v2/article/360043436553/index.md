

Intro
-------

Dropbox is a personal cloud storage service frequently used for file sharing and collaboration. You can use Domo's Dropbox File Advanced connector to retrieve CSV, XLS, XLSX, JSON, XML, and ZIP files from a selected Dropbox account. To learn more about the Dropbox API, go to

https://www.dropbox.com/developers

.


 This connector is different from the standard Dropbox File connector in that it allows you to import JSON, XML, and ZIP file types in addition to CSV, XLS, and XLSX. It also provides more filter options for locating your file. For more information about the standard Dropbox File connector, see

Dropbox File Connector

.


 You connect to your Dropbox account in the Data Center. This topic discusses the fields and menus that are specific to the Dropbox File Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Dropbox account and create a DataSet, you must have the following:

 The email address you enter to access your Dropbox account.
* Your Dropbox password.

Connecting to Your Dropbox Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Dropbox File Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Dropbox File Advanced connector uses OAuth to connect. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Dropbox accounts in Domo) to open the Dropbox OAuth screen where you can enter the email address associated with your Dropbox account and your Dropbox password. Once you have entered valid Dropbox credentials, you can use the same account any time you go to create a new Dropbox File Advanced DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Dropbox when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Dropbox.


###
 Details Pane

In this pane, you specify the file name and file type of the Dropbox file you want to import into Domo and configure various other options.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Type
  |
 Select the file type for the file you want to import. You can choose to import CSV, XLS, XLSX, XML, JSON, and ZIP files.
  |
|
 File Name
  |
 Enter the name of the file you want to import from Dropbox into Domo.
  |
|
 Is File Shared with Team Space Configuration?
  |
 Select
 **Yes**
 if your file is shared in team and team space configuration is used. If selected
 **No**
 , it will search only your dropbox files.
  |
|
 Match Type
  |
 Select whether the file name you've entered in the
 ****File Name****
 field
 **contains**
 the specified string,
 **starts**
 with the specified string, or is an
 *exact match*
 for the specified string.
  |
|
 Layout
  |
 Select the layout of your Excel file. The following options are available:
 * ****Column as Header****
 . Indicates that your Excel data uses a column-based layout (i.e. each column has a header).
* ****Row as Header****
 . Indicates that your Excel data uses a row-based layout (i.e. each row has a header).
* ****Cross Tab****
 . Indicates that your Excel data uses a cross-tab (pivot) layout.
* ****Raw****
 . Indicates that your Excel data is raw (unformatted).
* ****Advanced****
 . Use this option if you want to configure advanced layout options such as header and data start rows, footer rows to skip, date format, etc.
 |
|
 Mode
  |
 Select whether you want your Excel cell range to be detected automatically or if you would prefer to enter it manually.
  |
|
 Column/Row Header Range
  |
 Enter the range of Excel cells which will be used as headers (e.g.

A2:F8

).
  |
|
 Data Range
  |
 Enter the range of Excel cells which will be used as data (e.g.

A3:F20

).
  |
|
 Sheet Name
  |
 Select the Excel sheet containing the data you want to import.
  |
|
 Would You Like to Choose File from Folder?
  |
 Select
 **Yes**
 if your file is found within a folder in Dropbox. You will then be prompted to enter the folder name in the
 **Folder Name**
 field.
  |
|
 Folder Name
  |
 Enter the name of the folder containing the file you want to import.
  |
|
 Zipped File Type
  |
 Choose the file type for the zipped data file you want to retrieve.
  |
|
 File Name to Search for in Zip
  |
 Enter the name of the zipped file you want to retrieve.
  |


###
 Advanced Pane - XLS and XLSX

In this pane, you configure advanced options for your Excel file.


 Menu
  |
 Description
  |
| --- | --- |
|
 Header Start Row (optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer (optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |
|
 Manually Enter Encoding (menu)
  |
 Select
 **Yes**
 if the file you want to import contains an uncommon encoding type.
  |
|
 Manually Enter Encoding (field)
  |
 Enter the encoding of the given file. This must be in standard format such as

ISO-8859-1

for Western Europe, or

GB18030

for Chinese.
  |
|
 Blank Rows
  |
 Select the desired outcome if blank rows are encountered in the Excel file. If you select
 ****Skip blank rows****
 , the file is processed as normal without the blank rows. If you select
 ****Stop at the first blank row****
 , everything is pulled up until the first blank row.
  |
|
 Empty Column Headers
  |
 Select the desired outcome if empty column headers are encountered in the Excel file. If you select
 ****Add****
****blank columns****
 , new columns are generated with default names applied. If you select
 ****Stop at the first blank column****
 , everything is pulled up until the first column with an empty header.
  |
|
 Date Format
  |
 Select the date format used in the Excel data. If you want dates to be represented as text, select
 ****Show Dates as Strings****
 .
  |


###
 Advanced Pane - CSV

In this pane, you configure advanced options for your CSV file.


 Menu
  |
 Description
  |
| --- | --- |
|
 Header Start Row (optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer (optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |
|
 Manually Enter Encoding (menu)
  |
 Select
 **Yes**
 if the file you want to import contains an uncommon encoding type.
  |
|
 Manually Enter Encoding (field)
  |
 Enter the encoding of the given file. This must be in standard format such as

ISO-8859-1

for Western Europe, or

GB18030

for Chinese.
  |
|
 Empty Column Headers
  |
 Select the desired outcome if empty column headers are encountered in the CSV file. If you select
 ****Add****
****blank columns****
 , new columns are generated with default names applied. If you select
 ****Stop at the first blank column****
 , everything is pulled up until the first column with an empty header.
  |
|
 Date Format
  |
 Select the date format used in the CSV data. If you want dates to be represented as text, select
 ****Show Dates as Strings****
 .
  |
|
 Delimiter
  |
 Select the desired delimiter for parsing your CSV file.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing your CSV file.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing your CSV file.
  |


###
 Advanced Pane - JSON


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Does Your JSON Text Require a Line Reader?
  |
 Select
 ****Yes****
 if your JSON text includes multiple lines to read.
  |
|
 Should the Backslash Be Escaped?
  |
 Select
 ****Yes****
 if your JSON text includes backslash characters that should be escaped.
  |
|
 Header Tag (Optional)
  |
 Enter the tag for the header in your JSON text.
  |
|
 Data Tag (Optional)
  |
 Enter the tag for the data in your JSON text.
  |
|
 Fields to Exclude (Optional)
  |
 Provide a comma-separated list of fields to exclude from the JSON import.
  |


###
 Advanced Pane - XML


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Data Tag
  |
 Enter the tag for the data in your XML text.
  |
|
 Do You Require Attributes in Data?
  |
 Enter
 **Yes**
 if your data requires attribute values.
  |
|
 Fields to Exclude (Optional)
  |
 Provide a comma-separated list of fields to exclude from the XML import.
  |
|
 Enter XPath Expression (Optional)
  |
 Enter your XPath query using standard XPath syntax as defined by the World Wide Web Consortium. (

http://www.w3.org/TR/2014/REC-xpath-30-20140408/)

|
|
 Manually Enter Encoding (menu)
  |
 Select
 **Yes**
 if the file you want to import contains an uncommon encoding type.
  |
|
 Manually Enter Encoding (field)
  |
 Enter the encoding of the given file. This must be in standard format such as

ISO-8859-1

for Western Europe, or

GB18030

for Chinese.
  |
|
 Date Format
  |
 Select the date format used in the CSV data. If you want dates to be represented as text, select
 ****Show Dates as Strings****
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How do I know my Dropbox credentials are secure?

The login process uses OAuth, so your Dropbox credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.

####
 Can I use the same account to create multiple DataSets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 What's the difference between this connector and the standard version?

The Dropbox File connector imports only CSV, XLS and XLSX files, whereas the Dropbox File Advanced connector also imports JSON, XML and ZIP files. The Dropbox File Advanced connector also provides some advanced filters to import the data from the file.

