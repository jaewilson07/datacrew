

Intro
-------

Amazon S3 is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 The Amazon S3 and Amazon S3 Advanced connectors are almost the same. The only difference is in how they handle multiple files that begin with the prefix string you provide in the
 **Details**
 section of the connector. The standard Amazon S3 connector will only import the latest modified file. The Amazon S3 Advanced connector will import all files with the provided prefix, assuming they all have the same schema. However, the Amazon S3 Advanced connector will only get files modified since the last run or new files after the first run. For information about the standard version of the connector, see

Amazon S3 Connector

.


 The Amazon S3 Advanced connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 You connect to your Amazon S3 account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

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

 Your AWS access key. You can find this in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 **Users**
 .
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to retrieve files from.


###
 Creating a User with the Proper Permissions

You must create a user with the proper permissions in the IAM Amazon Console before you can connect to S3 data in Domo.


**To configure your user in the IAM Amazon Console,**

. Add a new user, setting options as follows:

1. In the
	 **Details**
	 pane, check the box for
	 **Programmatic Access**
	 under
	 **Select AWS access type**
	 .
	2. In the
	 **Permissions**
	 pane, select
	 **Attach existing policies directly**
	 , then check the box for either
	 **AmazonS3FullAccess**
	 or
	 **AmazonS3ReadOnlyAccess**
	 .


	 Customer-managed policies
	 *do not work*
	 .
	3. In the
	 **Review**
	 pane, click
	 **Create User**
	 .
2. After you create your user, copy the access and secret keys to use in the
 **Credentials**
 pane in Domo.

Connecting to Your Amazon S3 Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon S3 Advanced Connector page. The components of the other panes in this page,
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
 Region
  |
 Select the desired Amazon S3 Bucket region.
  |


 Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 Advanced DataSet. You can manage connector accounts in the
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
 Select the type of file you want to import into Domo, either CSV, JSON, or XML.
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
 when your selected S3 bucket contains fewer than 100 files.
  |

|
|
 Prefix (Optional)
  |
 Enter a prefix to filter results by. A prefix limits results to only those keys that begin with the given prefix. Note that this advanced version of the S3 connector imports
 *all*
 files with the provided prefix, assuming they all have the same schema.
  |
|
 Enter Complete Filepath
  |
 Enter the complete path for the desired file.
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
 Are Headers Present in CSV File?
  |
 Select
 **Yes**
 if the CSV file you are importing contains headers; otherwise select
 **No**
 .
  |
|
 List of Files
  |
 Select the file you want to retrieve.
  |
|
 Select the Delimiting Character
  |
 Select the delimiter used in the CSV file you want to retrieve. If your delimiter is not listed, select
 **Other**
 .
  |
|
 Quote Character
  |
 Select a quote character to parse the CSV file you want to retrieve. A double quote (") is the CSV standard.
  |
|
 Escape Character
  |
 Select an escape character to parse the CSV file you want to retrieve. A backslash (\) is the CSV standard.
  |
|
 Enable Parsing for Large JSON Files?
  |
 Specify whether parsing is enabled for large JSON files.
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
 Enter Your Data Tag
  |
 Enter the tag for the data in your JSON or XML file.
  |
|
 Enter Fields to Exclude
  |
 Provide a comma-separated list of fields to exclude in your JSON/XML import.
  |
|
 Enter Your Header Tag
  |
 Enter the tag for the header in your JSON or XML file.
  |
|
 Do You Require Attributes in Data?
  |
 Specify whether you require attributes values as part of your XML data.
  |
|
 Enter XPath Expression
  |
 Enter your XPath expression.
  |
|
 Is Password Protected?
  |
 Select
 **Yes**
 if the file you are retrieving is password-protected; otherwise select
 **No**
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
 **Skip blank rows**
 , any blank rows are skipped; if you select
 **Stop at the first blank column**
 , the data import stops when a column with a blank row is encountered.
  |
|
 Empty Column Headers
  |
 Specify what should happen if empty column headers are encountered. If you choose
 **Add blank columns**
 , column names are automatically generated for the new columns. If you select
 **Stop at the first blank column**
 , the data import stops when an empty header is encountered.
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
* If you run into a "Failed to Import Successfully" error when trying to import a CSV file, you can often get around this by changing the option in the
 **Quote Character**
 menu to
 **Null Character**
 .

FAQ
-----


####
 How frequently will my data update?

As often as needed.

###
 Can I use the same Amazon S3 account to create multiple DataSets?

Yes.

###
 Are there any API limits that I need to be aware of?

You may encounter a limit of 100 Amazon S3 buckets per account.

###
 Why is the connector unable to pull the data?

Ensure that the file is present in the S3 bucket and specify the correct file type in the connector settings. Also, remove null columns to allow the connector to retrieve the data.

###
 What's the difference between the standard Amazon S3 connector and the advanced version?

The Amazon S3 connector and the Amazon S3 Advanced connector both use the same SDK. They differ in how they handle multiple files.


 If your Amazon S3 bucket contains multiple files that begin with the prefix string you provide in the Details section of the connector, the Amazon S3 connector will only import the latest modified file. The Amazon S3 Advanced connector will import all files with the provided prefix, assuming they all have the same schema.

