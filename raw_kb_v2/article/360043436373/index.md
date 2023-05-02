

Intro
-------

Amazon S3 is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. Domo's AmazonS3 AssumeRole Connector allows you to pull data from S3 bucket using AssumeRole authentication. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 The Amazon S3 AssumeRole connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 You connect to your Amazon S3 account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is an excellent choice for retrieving flat files when APIs are not an option.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * Data specialists
* Marketing roles
* Finance roles
* Anyone who has data stored in S3
 |
|
**Average Implementation Time**
 |
 Less than an hour if you have the correct file types in S3.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Understanding the data stored in S3 and its relation to other S3 databases will be a huge asset in using this connector.


 Prerequisites
---------------

To connect to your Amazon S3 account and create a DataSet, you must have the following:

 The Amazon Resource Name (ARN) of the role to assume.
* The identifier for the assumed role session. You will need to set up a trust policy. This is described in continuation.
* The unique identifier used by third parties when assuming roles in their customers' accounts.
* The name of the Amazon S3 bucket you want to pull data from.


###
 Trust policy configuration

The trust policy for the role session identifier should look as follows:


`{


 "Effect": "Allow",


 "Principal": {


 "AWS": "arn:aws:iam::*accountId*:root"


 },


 "Action": "sts:AssumeRole",


 "Condition": {


 "StringEquals": {


 "sts:ExternalId": "*customer externalID*"


 }


 }


 }`


 Account IDs for Domo environments are as follows:

 US: 339405024189
* AU: 010251424122
* EMEA: 687132894031
* JP: 622384692065
* CA:

710710207408

So if you wanted to grant access to Australia-based user "myIAMuser123," who has an account ID of "46822464880681," the trust policy would look like this:


`{


 "Effect": "Allow",


 "Principal": {


 "AWS": " arn:aws:iam::46822464880681:user/myIAMuser123 "


 },


 "Action": "sts:AssumeRole",


 "Condition": {


 "StringEquals": {


 "sts:ExternalId": "010251424122"


 }


 }


 }`


 Connecting to an Amazon S3 Bucket
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon S3 AssumedRole Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to an Amazon S3 bucket. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Role ARN
  |
 Enter the Amazon Resource Name (ARN) of the role you want to assume.
  |
|
 Role Session Name
  |
 Enter the identifier for the assumed role session.
  |
|
 External ID
  |
 Enter the unique identifier used by third parties when assuming roles in their customers' accounts.
  |
|
 Bucket
  |
 Enter the Amazon S3 Bucket you want to pull files from.
  |
|
 Region
  |
 Select the S3 Bucket Region where your file is located.
  |


 Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 AssumedRole DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various menus for locating and configuring the file you want to pull into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Type to Import
  |
 Select the type of file you want to import into Domo, either CSV, JSON, TSV, TXT, XML, XLS, or XLSX.
  |
|
 Does Your Filename Have an Extension?
  |
 Select
 **Yes**
 if the filename ends with the supported file type extension; otherwise select
 **No**
 .
  |
|
 How Would You Like to Choose Your Filename?
  |
 Select how you want Domo to identify your file. Options are as follows:


|  |  |
| --- | --- |
|
 Complete Filename
  |
 You enter the complete path to the file.
  |
|
 Partial Filename
  |
 You enter a partial file name and specify whether the file to retrieve starts with or contains the name you have entered.
  |
|
 FilesDiscovery
  |
 A list of files in the selected bucket appears and you choose the one you want. This option is available
 *only*
 when your selected S3 bucket contains fewer than 100 files.
  |

|
|
 Enter Complete Filepath
  |
 Enter the complete path for the desired file.
  |
|
 List of Files from Amazon S3 Bucket
  |
 Select the file you want to retrieve.
  |
|
 Prefix (Optional)
  |
 Enter a prefix to filter results by. A prefix limits results to only those keys that begin with the given prefix.
  |
|
 File Name
  |
 Enter the name of the file you want to import, with or without the file path. For example:

folder\_name/file\_name*

|
|
 File Name Match Type
  |
 Specify whether the file you want to retrieve starts with or contains the text you entered under
 **File Name**
 .
  |
|
 File Compression Type
  |
 Select the compression type for the file you want to retrieve. If the file is not compressed, select
 **None**
 .
  |
|
 Select a File from ZIP Archive
  |
 Select the ZIP file you want to import.
  |
|
 Add FileName Column
  |
 Select
 **Yes**
 if you want a "\_BATCH\_FILE\_NAME\_" column to be added to your output data; otherwise select
 **No**
 .
  |
|
 Select the Delimiting Character
  |
 Select the delimiter used in the CSV file you want to retrieve. If your delimiter is not listed, select
 **Other**
 .
  |
|
 Specify Your Delimiter (Conditional)
  |
 Enter the character used to delimit your CSV text.
  |
|
 Quote Character
  |
 Select a quote character to parse the CSV file you want to retrieve. A double quote (") is the CSV standard. If your desired quote character is not in the list, select
 **Other**
 .
  |
|
 Custom Quote Character (Conditional)
  |
 Enter the desired quote character.
  |
|
 Escape Character
  |
 Select an escape character to parse the CSV file you want to retrieve. A backslash (\) is the CSV standard. If your desired escape character is not in the list, select
 **Other**
 .
  |
|
 Custom Escape Character (Conditional)
  |
 Enter the desired escape character.
  |
|
 Are Headers Present in CSV File?
  |
 Select
 **Yes**
 if the CSV file you are importing contains headers; otherwise select
 **No**
 .
  |
|
 Enter Your Header Tag (Conditional)
  |
 Enter the tag for the header in your JSON file.
  |
|
 Does Your JSON Text Require a Line Reader?
  |
 Specify whether the text in your JSON file includes multiple lines that should be read.
  |
|
 Should the Backslash be Escaped?
  |
 Specify whether the text in your JSON file contains backslash characters that should be escaped.
  |
|
 Enter your Sublist to Flatten (Optional)
  |
 Enter the comma-separated sublists you want to flatten in your data.
  |
|
 Enter XPath Expression (Optional)
  |
 Enter your XPath expression.
  |
|
 Do You Require Attributes in Data?
  |
 Specify whether you require attributes values as part of your XML data.
  |
|
 Enter Your Data Tag (Optional)
  |
 Enter the tag for the data in your JSON or XML file.
  |
|
 Enter Fields to Exclude (Optional)
  |
 Provide a comma-separated list of fields to exclude in your JSON/XML import.
  |
|
 Sheet Name (Optional)
  |
 Enter the sheet name you want to import from the specified Excel spreadsheet. Be sure to check the name for accidental spaces. If this field is left blank, the first sheet of the workbook will be used.
  |
|
 File Password (Conditional)
  |
 If your Excel file is password-protected, enter the file password.
  |
|
 Layout
  |
 Select the layout of your Excel file. The following options are available:
 * **Column as Header**
 . Indicates that your Excel data uses a column-based layout (i.e. each column has a header).
* **Row as Header**
 . Indicates that your Excel data uses a row-based layout (i.e. each row has a header).
* **Cross Tab**
 . Indicates that your Excel data uses a cross-tab (pivot) layout.
* **Raw**
 . Indicates that your Excel data is raw (unformatted).
* **Advanced**
 . Use this option if you want to configure advanced layout options such as header and data start rows, footer rows to skip, date format, etc.
 |
|
 Mode
  |
 Select how the cell range of your Excel data will be determined. If you select
 **Auto**
 , the range is determined automatically. If you select
 **Manual**
 , you will be asked to enter the column header and data ranges manually.
  |
|
 Enable Parsing for Large JSON Files?
  |
 Specify whether parsing is enabled for large JSON files.
  |
|
 Column Header Range
  |
 Enter the range for the column headers in your Excel sheet. For example:

A2:F8

|
|
 Row Header Range
  |
 Enter the range for the row headers in your Excel sheet. For example:

A2:A8

|
|
 Data Range
  |
 Enter the range for the data (non-header) cells in your Excel sheet. For example:

A3:F20

|
|
 Header Start Row (Advanced only) (optional)
  |
 Enter the header row number. If you do not enter a number, the first row is considered the header row.
  |
|
 Data Start Row (Advanced only) (optional)
  |
 Enter the starting data row number. If you do not enter a number, the first row after the header row is considered the starting row.
  |
|
 Footer Rows to Skip (Advanced only) (optional)
  |
 If there are one or more rows at the bottom of the file you do not want to import, enter the number of rows to skip.
  |
|
 Date Format (Advanced only) (optional)
  |
 Select the date format used in the Excel data. If you want dates to be represented as text, select
 **Show Dates as Strings**
 .
  |
|
 Blank Rows (Advanced only) (optional)
  |
 Select the desired outcome if blank rows are encountered in the Excel file. If you select
 **Skip blank rows**
 , the file is processed as normal without the blank rows. If you select
 **Stop at the first blank row**
 , everything is pulled up until the first blank row.
  |
|
 Empty Column Headers (Advanced only) (optional)
  |
 Select the desired outcome if empty column headers are encountered in the Excel. If you select
 **Add**
**blank columns**
 , new columns are generated with default names applied. If you select
 **Stop at the first blank column**
 , everything is pulled up until the first column with an empty header.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Ensure that the file is present in the S3 bucket and that the correct file type is specified in the connector settings.
* NULL columns
 *must*
 be removed before the connector can successfully retrieve data.
* An unescaped character in the data file could cause the "Failed to execute import successfully" error. If your dataset has this error, you should check that the Quote Character in the Details section is correct.


