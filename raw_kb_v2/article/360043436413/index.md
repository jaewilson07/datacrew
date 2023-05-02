

Intro
-------

Amazon S3 is an online file storage web service that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 You set up your Amazon S3 connection in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 User-Specific Permissions Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon S3 account and create a DataSet, you must have the following:

 Your AWS access key. You can find this in the
 ****Security Credentials****
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 ****Users****
 .
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to retrieve files from.
* The prefix path for the file you want to pull data from. Domo initially populates all the S3 Objects present from the prefix path (in the
 **Credentials**
 section), then filters these results based on the
 **Input Format**
 ,
 **Partial File Name**
 and
 **File Name Match**
 (from the
 **Details**
 section). The Prefix can be

/path/directory/subdir/subdir/subdir/

.

Connecting to Your Amazon S3 Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon S3 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Amazon S3 account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key. For information about finding your access key, see "Prerequisites," above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about finding your secret key, see "Prerequisites," above.
  |
|
 Bucket
  |
 Enter the Amazon S3 Bucket you want to pull files from.
  |
|
 Prefix
  |
 Enter the prefix path for the file you want to retrieve. For more information about the prefix path, see "Prerequisites," above.
  |


 Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 User-Specific Permissions DataSet. You can manage connector accounts in the
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
 File Type to Import
  |
 Select the type of file you want to import into Domo. Available file types include CSV, JSON, XML, XLS, TSV, and TXT.
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
 **only**
 when your selected S3 bucket contains fewer than 100 files.
  |

|
|
 Partial Filename
  |
 Enter the name of the Amazon S3 file you want to import.


 Example:

folder\_name/file\_name.

If more than one file begins with or contains this string, the connector will choose the last modified file to import.
  |
|
 File Name Match Type
  |
 Specify whether the filename you want to retrieve starts with or contains the text you entered into the
 **Partial Filename**
 field.
  |
|
 File Compression Type
  |
 Select the compression type for the file you want to retrieve. If the file is not compressed, select
 ****None****
 .
  |
|
 ZIP File Encoding
  |
 Select the desired ZIP file encoding type.
  |
|
 How Would You Like to Choose Your File Inside a ZIP?
  |
 Select whether you want to enter the name of your ZIP file or have it be discovered.
  |
|
 Enter File Name Inside ZIP
  |
 Enter the file name inside the ZIP file you want to retrieve.
  |
|
 Are Headers Present in CSV File?
  |
 Select
 ****Yes****
 if the CSV/TSV file you are importing contains headers; otherwise select
 ****No****
 .
  |
|
 Select the Delimiting Character
  |
 Select the delimiter used in the CSV/TSV file you want to retrieve. If your delimiter is not listed, select
 ****Other****
 .
  |
|
 Specify Your Delimiter
  |
 Enter the custom delimiter used in the CSV/TSV file you want to retrieve.
  |
|
 Quote Character
  |
 Select a quote character to parse the CSV/TSV file you want to retrieve. A double quote (") is the CSV standard.
  |
|
 Escape Character
  |
 Select an escape character to parse the CSV/TSV file you want to retrieve. A backslash (\) is the CSV standard.
  |
|
 Custom Escape Character
  |
 Enter the custom escape character used in the CSV/TSV file you want to retrieve.
  |
|
 Add Filename Column?
  |
 Choose
 **Yes**
 to add a column to your data that specifies the name of the file imported. This column is named "BATCH\_FILE\_NAME\_."
  |
|
 File Encoding
  |
 Select the desired file encoding. The default is
 **UTF-8**
 .
  |
|
 Enable Parsing for Large JSON Files?
  |
 Specify whether parsing is enabled for large JSON files.
  |
|
 Enter Your Sublist to Flatten (Optional)
  |
 Enter the comma-separated lists you want to flatten out in your data.
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
 Do You Require Attributes in Data?
  |
 Select
 **Yes**
 if you require attributes values as a part of the data.
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
 Enter Your Header Tag (Optional)
  |
 Enter the tag for the header in your JSON or XML file.
  |
|
 Is Password Protected?
  |
 Select
 ****Yes****
 if the file you are retrieving is password-protected; otherwise select
 ****No****
 .
  |
|
 Header Start Row
  |
 Enter the number of the header row in the Excel file you are retrieving.
  |
|
 Data Start Row
  |
 Enter the number of the first data row in the Excel file you are retrieving.
  |
|
 Footer
  |
 Enter the number of the footer row in the Excel file you are retrieving.
  |
|
 Blank Rows
  |
 Select the action that should be taken if blank rows are encountered. If you select
 ****Skip blank rows****
 , any blank rows are skipped; if you select
 ****Stop at the first blank column****
 , the data import stops when a column with a blank row is encountered.
  |
|
 Empty Column Headers
  |
 Specify what should happen if empty column headers are encountered. If you choose
 ****Add blank columns****
 , column names are automatically generated for the new columns. If you select
 ****Stop at the first blank column****
 , the data import stops when an empty header is encountered.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 Why is the Connector not pulling data?

Ensure that the file is present in the S3 bucket, and specify the correct file type in the Connector settings. Also, remove NULL columns to allow the Connector to retrieve the data.

####
 How can I import files from subdirectories?

Domo initially populates all the S3 Objects present from the prefix path (in the
 **Credentials**
 section), then filters these results based on the
 **Input Format**
 ,
 **Partial File**
**Name**
 and
 **File Name Match**
 (from the
 **Details**
 section). The
 **Prefix**
 can be

/path/directory/subdir/subdir/subdir/

.

####
 How frequently will my data update?

As often as needed.

####
 Can I use the same Amazon S3 account for multiple DataSets?

Yes.

####
 I don't see the files I expect in my DataSet? What's going on here?

This Connector pulls in only one file. If you select
 **Partial File Name**
 , and there are multiple files in your prefix path that match, the connector imports only the most recently modified file.

####
 I want to import multiple files into one DataSet from my Amazon S3 bucket. How do I do this?

This connector only pulls in one file. If you want multiple Amazon S3 files in one Domo DataSet, use the Amazon S3 Advanced Connector (documentation still in progress).

