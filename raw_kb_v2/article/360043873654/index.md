

Intro
-------

AWS Data Exchange makes it easy to find, subscribe to, and use third-party data in the cloud. You can access datasets from qualified data providers that include category-leading brands such as Reuters, who curate data from over 2.2 million unique news stories per year in multiple languages; Change Healthcare, who process and anonymize more than 14 billion healthcare transactions and $1 trillion in claims annually; and Dun & Bradstreet, who maintain a database of more than 330 million global business records. Use Domo's Data Exchange Connector to import data into Domo from your Amazon S3 bucket. With the powerful datasets from AWS combined with the ability to visualize and create business solutions in Domo, you can create high-value solutions by combining your own data with external datasets. This connector includes only the AWS Data Exchange datasets that you've subscribed to and approved.


 To learn more about the AWS API, visit their page (

https://aws.amazon.com/api-gateway/

).


 You connect to your AWS account in the Data Center. This topic discusses the fields and menus that are specific to the AWS Data Exchange connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AWS account and create a DataSet, you must have the following:

 Your AWS access key. You can find this in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 **Users**
 .
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to retrieve files from.


###
 Creating a user with the proper permissions

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

Connecting to your AWS account
--------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AWS Data Exchange Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AWS account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key. For information about finding your access key, see

Prerequisites

, above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about finding your secret key, see

Prerequisites

, above.
  |
|
 Bucket
  |
 Enter the Amazon S3 Bucket you want to pull files from.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new AWS Data Exchange DataSet. You can manage connector accounts in the
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
 List Datasets
  |
 Select the dataset you want to pull into Domo.
  |
|
 List Dataset Revisions
  |
 Select the desired dataset revision.
  |
|
 List Revision Assets
  |
 Select the desired revision asset.
  |
|
 Key
  |
 Enter the name of the Amazon S3 bucket object.
  |
|
 What Type of File Do You Want to Import?
  |
 Select the desired file type, either
 **CSV**
 ,
 **TSV**
 , or
 **TXT**
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
 Specify Your Delimiter
  |
 Enter the character used to delimit your CSV text.
  |
|
 Quote Character
  |
 Select a quote character to parse the CSV file you want to retrieve. A double quote (") is the CSV standard. If your quote character is not listed, select
 **Other**
 .
  |
|
 Custom Quote Character
  |
 Enter the desired CSV quote character.
  |
|
 Escape Character
  |
 Select an escape character to parse the CSV file you want to retrieve. A backslash (\) is the CSV standard.
  |
|
 Custom Escape Character
  |
 Enter the desired CSV escape character.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

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
 **No Quote Character**
 .

FAQ
-----


#####
 How frequently will my data update?

As often as needed.

####
 Are there any API limits that I need to be aware of?

No.

####
 What kind of credentials do I need to power up this connector?

You need your AWS credentials: access key, secret key and the bucket name.

####
 Where can I find my access key and secret key?

You can find the access key in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 **Users**
 . Your AWS secret key is provided when you create your access key. You can generate a new secret key in the AWS Console.

####
 Does this connector list all of the available AWS Data Exchange datasets from the Amazon Marketplace?

No, only the ones to which you are subscribed and approved.

