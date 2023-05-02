

Intro
-------

Domo's

Amazon public datasets Connector


 you can easily deploy any of a number of public DataSets directly to your Domo instance.

To learn more about the

Amazon public datasets connector

API, visit their page (


 AWS Public Datasets | AWS Public Sector Blog (amazon.com)


 The

Amazon public datasets

Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking


**Cloud App**


 in the toolbar at the top of the window.

Public DataSets are also available from the

*Connectors**

tab in the Appstore as well as from the Data Center.

General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
| **Primary Use Cases**  |
 This Connector lets you retrieve data about

[insert general explanation of items that can be seen]

.
  |
| **Primary Metrics**  | * [Create a bullet list of each metric that is available.]
* [Metric 2]
* [Metric 3]
* [Metric 4]
* [Metric 5]
 |
| **Primary Company Roles**  | * [Create a bullet list of roles that would use this feature, such as:]
* [Director of marketing]
* [Social media manager]
* [CMO]
* [Sales and marketing teams]
 |
| **Average Implementation Time**  |
 [State the amount of time it will take to set up, such as: “Typically less than an hour, but may take longer to get the right data in.”]
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 [Enter number]
  |

Best Practices
----------------


* [Create a bullet list of the general information about when to use this connector.]
* [Reason 2.]
* [Reason 3.]

Prerequisites
---------------

To connect to your Amazon public datasets Connectors account and create a DataSet, you must have the following:

 Your AWS access key. You can find this in the


**Security Credentials**


 section of the AWS Console. Alternatively, if you are using IAM, you can find it under


**Users**
 .
* Your AWS secret key was provided when you created your access key. You can generate a new secret key in the AWS Console.
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


 Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

Connecting to Your

Amazon public datasets Connectors

Account
----------------------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the [insert Connector name here] Connector page. The components of the other panes in this page,


**Scheduling**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
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


 Once you have entered valid Amazon S3 credentials, you can use the same account any time you go to create a new Amazon S3 DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


**Note:**


 If you are already logged into

Amazon public datasets connector

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of

Amazon public datasets connector

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
 S3 Bucket Region
  |
 Select the S3 Bucket Region where your file is located.


 |
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
 Enter a prefix to filter results by. A prefix limits results to only those keys that begin with the given prefix. Note that with this standard version of the connector, only the latest modified file will be imported. The advanced version of the connector retrieves all files with the same prefix, provided they have the same schema. For more information, see

Amazon S3 Advanced Connector

.
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


 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####

What kind of credentials do I need to power up this Connector?

You need the email address and password associated with your

Amazon public datasets connectors

account.

###
 How do I know my

Amazon public datasets Connector

credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Why is the connector unable to pull the data?


 Ensure that the file is present in the S3 bucket and specify the correct file type in the connector settings. Also, remove null columns to allow the connector to retrieve the data.


####
 Are there any API limits I should be aware of?


 You may encounter a limit of 100 Amazon S3 buckets per account.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


