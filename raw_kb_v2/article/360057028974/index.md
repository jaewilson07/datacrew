

Intro
-------

Amazon S3 is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. Use Domo’s Amazon S3 AssumeRole Writeback connector to export your data from a Domo DataSet to an Amazon S3 bucket using an assumed role for the session. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 You export data to an S3 bucket in the Data Center. This topic discusses the fields and menus that are specific to the Domo to S3 AssumeRole Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To connect to your Amazon S3 account and create a DataSet, you must have the following:

 A Domo Client ID and Client Secret.
* The Amazon Resource Name (ARN) of the role to assume.
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
* EMEA (IE): 687132894031
* JP: 622384692065
* CA: 710710207408

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

###
 To obtain the Domo Client ID and Client Secret:


1. Log into your

Domo developer account

.
2. In the top right corner, click
 ********My Accounts********
 >>
 ********New Client********
 .
3. Enter the name and description for your application.
4. Provide the application scope by selecting the checkboxes for
 ****************Data****************
 and
 ****************User****************
 .
5. Click
 ********Create********
 .

Once you have created a client, you can manage the client by clicking on
 ********Manage Client********
 . Your
 ********Client Secret********
 will appear in the
 ********Manage Client********
 section.

*Important**
 : You will need the WRITE (s3:PutObject) permission on Amazon S3.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Amazon S3 AssumeRole Writeback

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Domo developer account as well as your S3 bucket. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID. See

Prerequisites

for details.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret. See

Prerequisites

for details.
  |
|
 Role Session Name
  |
 Enter the identifier for the assumed role session.
  |
|
 Role ARN
  |
 Enter the Amazon Resource Name (ARN) of the role you want to assume.
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


 Once you have entered valid credentials, you can use the same account any time you go to create a new Domo-S3 connection. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields for specifying your data and indicating where it's going.


 Menu
  |
 Description
  |
| --- | --- |
|
 How Would You Like to Select Your Folder Path?
  |
 Specify whether you would like to search for your folder path or enter it manually.
  |
|
 Select Folder Path
  |
 Select the folder path that you would like to use.
  |
|
 Path
  |
 Enter the folder path where you would like the file to be saved in your Amazon S3 bucket.
  |
|
 Overwrite
  |
 Select this check box if you want to overwrite the existing file in your Amazon S3 bucket with selected filename.
  |
|
 How Would You Like to Select Your Input DataSet?
  |
 Specify whether you would like to search for your DataSet ID or enter it manually.
  |
|
 DataSet ID
  |
 Select the DataSet ID that you would like to use.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to the S3 Bucket.


 You can find the DataSet ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following datasources/. Example: In the URL

https://mycompany.domo.com/datasourc...tails/overview

, the DataSet ID is 845305d8-da3d-4107-a9d6-13ef3f86d4a4.
  |
|
 Select Filename
  |
 Select whether you want to reference your DataSet using the Input DataSet ID
 **,**
 Input DataSet Name
 **,**
 or an output file name.


 If you choose
 ****Use Input Dataset Name****
 or
 ****Enter File Name****
 and your dataset name contains the macro <current\_date> or <current\_date-1> without spaces, then <current\_date> will be replaced by today's date and <current\_date-1> will be replaced by yesterday's date or -31 for 31 days ago in format yyyy-MM-dd.
  |
|
 Filename
  |
 Enter the output file name.


 If you wish to add current date to the file name please use the macro <current\_date> or <current\_date-1>. Example: If fileName is
 ****domo\_<current\_date>****
 , the output file generated in s3 bucket would be domo\_(todays date in format yyyy-MM-dd) like domo\_2019-07-16.
  |
|
 Only Writeback New Data
  |
 Check this box to only pull your last execution data from the input dataset and export it to S3 Object.
  |
|
 File Extension
  |
 Select the extension that should be used as the file extension for your output file.
  |
|
 Delimiter
  |
 Select the character that should be used as a delimiter for your output file.
  |
|
 Compression
  |
 Select the compression type that should be used for your output file.
  |
|
 Encryption Method
  |
 Select the encryption type that should be used for your output file.
  |
|
 Encryption Key
  |
 Enter the encryption key.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

