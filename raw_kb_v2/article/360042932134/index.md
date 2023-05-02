

Intro
-------

Microsoft OneDrive (previously called SkyDrive, Windows Live SkyDrive, and Windows Live Folders) is an online file sharing and personal cloud content management service for businesses. Use this connector to pull data files from your OneDrive account into Domo. You can retrieve data files in any of the following file types: CSV, XLS, XLSX, XML, ZIP, and GZIP. For more information about the OneDrive API, see

https://msdn.microsoft.com/en-us/lib.../dn659752.aspx

.


 The Microsoft OneDrive connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 You set up the connection to your Microsoft account in the Data Center. This topic discusses the fields and menus that are specific to the OneDrive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Microsoft account and create a OneDrive DataSet, you must have a Microsoft username and password.


 Connecting to Your Microsoft Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Microsoft OneDrive Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Microsoft OneDrive connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Microsoft OneDrive accounts in Domo) to open the Microsoft screen where you can enter your Microsoft username and password. Once you have entered valid Microsoft credentials, you can use the same account any time you go to create a new OneDrive DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Microsoft when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Microsoft.


 Once you have entered valid Microsoft credentials, you can use the same account any time you go to create a new OneDrive DataSet. You can manage connector accounts in the
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
 Select the OneDrive report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Children
  |
 Lists the children of the item with the specified file/folder or path.
  |
|
 DefaultDrive
  |
 Returns metadata about the authenticated user's default drive in OneDrive.
  |
|
 DownloadFile
  |
 Downloads a file to into Domo as a DataSet. You specify the file type and file/folder or path, along with other information.
  |
|
 Drives
  |
 Lists the available drives for the authenticated user.
  |
|
 DriveById
  |
 Lists drives for a selected drive ID.
  |
|
 Properties
  |
 Returns properties for the item with the specified file/folder or path.
  |
|
 RecentItems
  |
 Returns a list of items that have been recently used by the authenticated user. This list includes items that are in the user's drive as well as items they have access to from other drives.
  |
|
 SharedItems
  |
 Lists items that are shared with the authenticated user.
  |

|
|
 Addressing
  |
 Select whether to search for a file based on a file/folder (
 **ID Based**
 ) or path (
 **Path Based)**
 .
  |
|
 Path
  |
 Enter the relative path of the item you want to retrieve data for.


 For example:

/Documents/test.csv

|
|
 File/Folder Name
  |
 Enter the name (or a portion of the name) of the file/folder you want to retrieve data for. Do not use an extension. The connector returns the most recently created or modified file matching the name you've entered, based on what you've selected in the
 **Date Field**
 menu.
  |
|
 Match Type
  |
 Select whether the file or folder name you've entered in the
 **File/Folder**
 field
 *contains*
 the specified string or
 *starts*
 with the specified string.
  |
|
 Parent Folder Name
  |
 Enter a complete folder name (not case-sensitive) to limit the file search to a specific folder's root contents. Subfolders are ignored. If you leave this blank, the search includes all files in all folders for which you have access.
  |
|
 Date Field
  |
 Specify whether to retrieve a file based on its creation or last modified date. This is useful when there are multiple files containing the name you have entered in
 **File Name**
 .
  |
|
 File Type
  |
 Select the file type of the file you are downloading into Domo/retrieving data for.
  |
|
 Drive ID
  |
 Select the ID of the drive you want to retrieve data for.
  |
|
 Is Password Protected?
  |
 Specify whether the XLS/XLSX file you are downloading is password protected.
  |
|
 Sheet Name (Optional)
  |
 Enter the name of the specific XLS/XLSX sheet you are downloading into Domo.
  |
|
 File Name or Portion of File Name to Search for in ZIP
  |
 Enter the name of the ZIP file you want to retrieve. If you leave this blank, the first ZIP file to be located is returned.
  |
|
 Zipped File Type
  |
 Select the file type of the ZIP file you are retrieving.
  |


###
 Advanced Pane

In this pane you configure options for the file you are bringing into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Header Start Row (Optional)
  |
 Enter the number of the header row in the Excel or CSV file.
  |
|
 Data Start Row (Optional)
  |
 Enter the number of the first data row in the Excel or CSV file.
  |
|
 Footer (Optional)
  |
 Enter the number of the footer row in the Excel or CSV file.
  |
|
 Blank Rows
  |
 Select the desired outcome if blank rows are encountered in the Excel file. If you select
 **Skip blank rows**
 , the file is processed as normal without the blank rows. If you select
 **Stop at the first blank row**
 , everything is pulled up until the first blank row.
  |
|
 Empty Column Headers
  |
 Select the desired outcome if empty column headers are encountered in the Excel or CSV file. If you select
 **Add**
**blank columns**
 , new columns are generated with default names applied. If you select
 **Stop at the first blank column**
 , everything is pulled up until the first column with an empty header.
  |
|
 Date Format
  |
 Select the date format that should be used when converting date columns. If you select
 **Show dates as strings**
 , dates are converted into text (i.e. they lose their date formatting).
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
 Select the desired escape character for parsing your CSV file.
  |
|
 Enter Your Data Tag
  |
 Enter the tag in your XML text where the data is found.
  |
|
 Do You Require Attributes in Data?
  |
 Select
 **Yes**
 if you require attributes values as part of the data.
  |
|
 Enter Fields to Exclude
  |
 Enter a comma-separated list of fields you want to exclude from the XML import.
  |
|
 Enter XPath Expression
  |
 Enter your XPath query using standard XPath syntax as defined by the World Wide Web Consortium. (

https://www.w3.org/TR/2017/REC-xpath-31-20170321/

)
  |


