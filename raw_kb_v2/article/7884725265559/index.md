

Intro
-------


 Amazon S3 Analytics Assume Role Connector is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. To learn more about the Amazon S3 API, visit their page (


 http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html


 ).


 The Amazon S3 and Amazon S3 Advanced connectors are almost the same. The only difference is in how they handle multiple files that begin with the prefix string you provide in the
 **Details**
 section of the connector.


 By using Amazon S3 analytics
 *Storage Class Analysis*
 you can analyze storage access patterns to help you decide when to transition the right data to the right storage class. This new Amazon S3 analytics feature observes data access patterns to help you determine when to transition less frequently accessed STANDARD storage to the STANDARD\_IA (IA, for infrequent access) storage class. For more information about storage classes, see

Using Amazon S3 storage classes

.


 You connect to your Amazon S3 Analytics Connector account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


|  |  |
| --- | --- |
| **Primary Use Cases**  |
 This connector is an excellent choice for retrieving flat files when APIs are not an option.
  |
| **Primary Metrics**  |
 NA
  |
| **Primary Company Roles**  | * Data specialists
* Marketing roles
* Finance roles
* Anyone who has data stored in S3
 |
| **Average Implementation Time**  |
 Less than an hour if you have the correct file types in S3.
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 4
  |

Best Practices
----------------


* Understanding the data stored in S3 Analytics Connector and its relation to other S3 databases will be a huge asset in using this connector.

Prerequisites
---------------

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

Connecting to Your

Amazon S3 Analytics Assume Connector

Account
-------------------------------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the [insert Connector name here] Connector page. The components of the other panes in this page,


**Scheduling**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Creating an IAM role (console)

You can use the AWS Management Console to create a role that an IAM user can assume. For example, assume that your organization has multiple AWS accounts to isolate a development environment from a production environment. For high-level information about creating a role that allows users in the development account to access resources in the production account, see

Example scenario using separate development and production accounts

.

*To create a role (console)**

. Sign in to the AWS Management Console and open the IAM console at


 https://console.aws.amazon.com/iam/


 .
2. In the navigation pane of the console, choose


**Roles**


 and then choose


**Create role**
 .
3. Choose


**AWS account**


 role type.
4. To create a role for your account, choose


**This account**
 . To create a role for another account, choose


**Another AWS account**


 and enter the


**Account ID**


 to which you want to grant access to your resources.


 The administrator of the specified account can grant permission to assume this role to any IAM user in that account. To do this, the administrator attaches a policy to the user or a group that grants permission for the


`sts:AssumeRole`


 action. That policy must specify the role's ARN as the


`Resource`
 .
5. If you are granting permissions to users from an account that you do not control, and the users will assume this role programmatically, select


**Require external ID**
 . The external ID can be any word or number that is agreed upon between you and the administrator of the third-party account. This option automatically adds a condition to the trust policy that allows the user to assume the role only if the request includes the correct


`sts:ExternalID`
 . For more information, see

How to use an external ID when granting access to your AWS resources to a third party

.


 Important


 Choosing this option restricts access to the role only through the AWS CLI, Tools for Windows PowerShell, or the AWS API. This is because you cannot use the AWS console to switch to a role that has an


`externalId`


 condition in its trust policy. However, you can create this kind of access programmatically by writing a script or an application using the relevant SDK. For more information and a sample script, see


 How to Enable Cross-Account Access to the AWS Management Console


 in the AWS Security Blog.
6. If you want to restrict the role to users who sign in with multi-factor authentication (MFA), select


**Require MFA**
 . This adds a condition to the role's trust policy that checks for an MFA sign-in. A user who wants to assume the role must sign in with a temporary one-time password from a configured MFA device. Users without MFA authentication cannot assume the role. For more information about MFA, see

Using multi-factor authentication (MFA) in AWS
7. Choose


**Next**
 .
8. IAM includes a list of the AWS managed and customer managed policies in your account. Select the policy to use for the permissions policy or choose


**Create policy**


 to open a new browser tab and create a new policy from scratch. For more information, see

Creating IAM policies

. After you create the policy, close that tab and return to your original tab. Select the check box next to the permissions policies that you want anyone who assumes the role to have. If you prefer, you can select no policies at this time, and then attach policies to the role later. By default, a role has no permissions.
9. (Optional) Set a

permissions boundary

. This is an advanced feature.


 Open the


**Set permissions boundary**


 section and choose


**Use a permissions boundary to control the maximum role permissions**
 . Select the policy to use for the permissions boundary.
10. Choose


**Next**
 .
11. For


**Role name**
 , enter a name for your role. Role names must be unique within your AWS account. They are not distinguished by case. For example, you cannot create roles named both


`PRODROLE`


 and


`prodrole`
 . Because other AWS resources might reference the role, you cannot edit the name of the role after it has been created.
12. (Optional) For


**Description**
 , enter a description for the new role.
13. Choose


**Edit**


 in the


**Step 1: Select trusted entities**


 or


**Step 2: Add permissions**


 sections to edit the use cases and permissions for the role.
14. (Optional) Add metadata to the role by attaching tags as key–value pairs. For more information about using tags in IAM, see

Tagging IAM resources

.
15. Review the role and then choose


**Create role**
 .

##
 Credentials Pane

The Domo

Amazon S3 Analytics

Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select


**Add Account**


 if you have existing

Amazon S3 Analytics Connector

accounts in Domo to open the

Amazon S3 Analytics Connector

OAuth screen where you can enter your

Amazon S3 Analytics

username and password. Once you have entered valid


 credentials, you can use the same account any time you go to create a new

Amazon S3 Analytics

DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

Amazon S3 Analytics Assume Connector

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of

Amazon S3 Analytics Connector.

Field

|

Description

|
| --- | --- |
|
 Role ARN
  |
 Enter your Amazon Resource Name (ARN) of the role to assume.
  |
|
 Session Name
  |
 Enter the identifier for the assumed role session.
  |
|
 External ID
  |
 Generate the ExternalID by clicking the generate button and paste it into the trust relationship document of IAM Role.
  |
|
 Region
  |
 Enter the amazon S3 Region.
  |


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

Troubleshooting
-----------------


* Ensure that the file is present in the S3 bucket and that the correct file type is specified in the connector settings.
* NULL columns


*must*


 be removed before the connector can successfully retrieve data.
* If you run into a "Failed to Import Successfully" error when trying to import a CSV file, you can often get around this by changing the option in the
 **Quote Character**
 menu to
 **No Quote Character**
 .


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

