

Intro
-------

Use this connector to pull data files from your Box account into Domo. You can retrieve data files in any of the following file types: CSV, JSON, XLS, XLSX, XML, ZIP, and GZIP. To learn more about the Box API, visit their website. (

https://developers.box.com/

)


 This connector is especially useful when you need to glean data from Excel and CSV reports sent via email. You can upload the reports to a Box folder via email and then use Domo's Box connector to pull the desired reports from the folder.


 You connect to your Box account in the Data Center. This topic discusses the fields and menus that are specific to the Box Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 The Domo Box Advanced connector is great for parsing complicated files with more than one header or footer row. This connector is helpful if you use European date formats, custom delimiters such as a pipe or a hat, or other custom settings in your data files.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 |
 N/A
  |
|
**Average Implementation Time**
 |
 10-20 minutes depending on configuration settings.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Best practice for using the Box Advanced connector starts with your data. Make sure your files are named well and organized into appropriate folders. Additionally, you'll want to examine your data files in order to accurately set up the advanced settings. What row does the header start on? Where does the data start? Do you know the format of your date column?


 Prerequisites
---------------

To connect to your Box account and create a DataSet, you must have email address and password you use to log into Box.


 Connecting to Your Box Account
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Box Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo Box connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Box accounts in Domo) to open the Box OAuth screen where you can enter the email address and password associated with your Box account.

Once you have entered valid Box credentials, you can use the same account any time you go to create a new Box DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane includes the following fields and menus:


 Menu
  |
 Description
  |
| --- | --- |
|
 File Name
  |
 Enter the name (or a portion of the name) of the Box file to retrieve.


 The connector returns the most recently created or modified file matching the name, based on what you have selected in the
 **Date Field**
 menu.
  |
|
 Match Type
  |
 Specify whether the retrieve file starts with or contains the name you have entered in
 **File Name**
 .
  |
|
 File Type
  |
 Select the file type for the data file you want to retrieve.
  |
|
 Date Field
  |
 Specify whether to retrieve a file based on its creation or last modified date.

This is useful when there are multiple files containing the name you have entered in
 **File Name**
 .
  |
|
 Folder Name or ID
  |
 Enter a complete folder name (not case-sensitive) or a Box Folder ID to limit the file search to a specific folder’s root contents.


 Subfolders are ignored. If you leave this blank, the search includes all files in all folders for which you have access.
  |
|
 Is the provided input a folder id?
  |
 Select
 **Yes**
 if you have the entered folder ID.
  |
|
 Sheet Name
  |
 Enter the sheet name you want to retrieve from the specified spreadsheet.
  |
|
 Generate the column names
  |
 This should be selected as 'yes' if the data in Box doesn't have column names. When 'yes', generic column names will automatically be added to the data. By default, the value is set to
 **NO**
 |


###
 Advanced Pane

This pane includes the following fields and menus:


 Menu
  |
 Description
  |
| --- | --- |
|
 Header Start
  |
 Enter the number for the header row in the DataSet.
  |
|
 Data Start Row
  |
 Enter the number for the first data row in the DataSet.
  |
|
 Footer
  |
 Enter the number of rows at the end of the DataSet to skip. For example, to skip the last two rows you would enter

2

.
  |
|
 Empty Column Headers
  |
 Specify what should happen if empty column headers are encountered.

If you choose
 **Add blank columns**
 , column names are automatically generated for the new columns.
  |
|
 Data Format
  |
 Select the date format that should be used when converting date columns.
  |
|
 Delimiter
  |
 Select the desired delimiter for parsing CSV files.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing CSV files. (A double quote is the CSV standard.)
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Validate that the file was not corrupted when uploaded to Box by downloading from Box and opening in Excel or the proper application for the file type.
* Box is a worldwide application, and after you upload a file, the servers sync those changes globally. Therefore the file may be available immediately, or it may take up to 30 minutes for Domo to be able to download the file. For best results, give your file 20-40 minutes before you attempt to retrieve it via the connector.
* Rate limiting may be enforced by Box. The Domo Box connector is aware of this situation and will attempt to recover from any rate limiting situations, but if there are too many DataSets that run at the same time, the connector may not be able to recover and will fail. In that case, stagger the DataSets to run at different times.
* Other common issues: credential issues (password change), selecting from the wrong folder, entering an incorrect file name (forgetting .xslx for example).

FAQ
-----


#####
 What do I do if I just uploaded a file to

box.com

, but the Box connector says the file does not exist when I try to pull in the file?

Make sure all your connector settings match your file and free of typos. Files may not be available via the Box API up to 30 minutes after the file was uploaded. Ensure the file has been in Box for at least 30 minutes, and then attempt to run the DataSet again.

####
 What do I do if I can’t connect to

box.com

with valid credentials?

This problem might stem from an issue with your option settings in Box. Domo is an unpublished application in

box.com

terminology, and one of the options Box gives to its users is to disable unpublished applications by default. Therefore, if a customer is using this option, Domo users may not be able to authenticate or connect to Box to import data from Box to Domo.


 Box gives customers the option to allow any unpublished application to use a customer's Box instance, which appears to be what most customers have enabled in their Box account settings.  Some customers do not want to enable all unpublished applications but would like to enable Domo to use Box. In this case, there is also an option Box provides to allow exceptions. To enable an exception for Domo, Domo's public API key for Box needs to be added to the exception list.


 The public API key for Domo at Box is: wmiawbgvombfafa0jj4dgvmvq5ivq83m​

####
 What is the difference between the Box connector and the Box Advanced connector?

The Box connector allows you to specify the name and type of the file to pull the data from. The Box Advanced connector offers an additional advanced section to specify the data formatting details, along with the name and type of the file.

####
 Can I use the same Box account for multiple DataSets?

Yes.

####
 How frequently will my data update?

As often as required.

####
 Are there any API limits that I need to be aware of?

No.

