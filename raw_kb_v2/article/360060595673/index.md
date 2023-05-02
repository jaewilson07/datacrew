

Intro
-------

Amazon Kendra is a highly accurate and easy to use enterprise search service that's powered by machine learning. It delivers powerful natural language search capabilities to your websites and applications so your end users can more easily find the information they need within the vast amount of content spread across your company. Use Domo's Amazon Kendra Writeback connector to help sync jobs and upload the files to index from Amazon S3 bucket.


 You export Domo data to Amazon S3 bucket or index in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Kendra Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you must have the following:

 Your Domo Client ID and Client Secret
* Your AWS Access Key and Secret Key


####
 To obtain the Domo Client ID and Client Secret:


1. Log into your

Domo developer account

.
2. In the top right corner, click
 ****My Accounts****
 >>
 ****New Client****
 .
3. Enter the name and description for your application.
4. Provide the application scope by selecting the checkboxes for
 ********Data********
 and
 ********User********
 .
5. Click
 ****Create****
 .

Once you have created a client, you can manage the client by clicking on
 ****Manage Client****
 . Your
 ****Client Secret****
 will appear in the
 ****Manage Client****
 section.

###
 To obtain your AWS keys:


1. Open the IAM console at

https://console.aws.amazon.com/iam/

.
2. On the navigation menu, choose
 ********Users********
 .
3. Choose your IAM user name to view its details.
4. On the
 ********Security Credentials********
 tab, choose
 ********Create access key********
 .
5. To see the new access key, choose
 ********Show********
 . Your Access key and Secret key will appear
6. To download the key pair, choose
 ********Download .csv file********
 . Store the keys in a secure location.


**Important**
 : You will need the WRITE (s3:PutObject) permission on Amazon S3.

Configuring the Connection
----------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Amazon Kendra Writeback Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Domo Developer account and the AWS keys. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo Client ID. For more information, see

Prerequisites

.
  |
|
 Domo Client Secret
  |
 Enter your Domo Client secret. For more information, see

Prerequisites

.
  |
|
 Access Key
  |
 Enter your Amazon Web Services Access Key. For more information, see

Prerequisites

.
  |
|
 Secret Key
  |
 Enter your Amazon Web Services Secret Key. For more information, see

Prerequisites

.
  |
|
 Region
  |
 Select the Amazon Kendra region.
  |

Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon Kendra Writeback DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 ****Reports****
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Amazon Kendra Writeback report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Store in Amazon S3
  |
 Files will be uploaded in the S3 bucket.
  |
|
 Store in Index
  |
 Files will be uploaded in the index from the S3 bucket.
  |

|
|
 Input DataSet ID
  |
 Enter your Domo dataset ID (GUID) located in the dataset URL. Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings
  |
|
 Bucket Name
  |
 Enter the bucket name from where you wish to fetch the files.
  |
|
 Folder Path
  |
 Enter the folder path from where you wish to upload the files to index. If you enter the specific folder, all the files including the files of the subfolder will be uploaded to the Index.<br>Eg.: folder1/
  |
|
 List indexes
  |
 Select the index.
  |
|
 List Data sources
  |
 Select the data source.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

