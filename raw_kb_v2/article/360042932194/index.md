

Intro
-------

Amazon S3 is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. Use this connector to export your data from a Domo DataSet to an Amazon S3 Bucket. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 You export data to S3 in the Data Center. This topic discusses the fields and menus that are specific to the Domo to S3 Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 Your Domo Client ID and Client Secret.
* Your AWS access key. You can find this in the
 ****Security Credentials****
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 ****Users****
 .
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to push data to.

To obtain your Domo Client ID and Client Secret, do the following:

. Log into the

Domo developer account

.
2. In the top right corner under
 **My Account**
 click
 **New Client**
 .
3. Enter the application name and description.
4. Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
5. Click
 **Create**
 .
6. Once you have created a client, you can manage the client by clicking on
 **Manage Client**
 .

Your
 **Client Secret**
 will appear in the
 **Manage Client**
 section.

*Important**
 : You will need the WRITE (s3:PutObject) permission on Amazon S3.

Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Domo to S3 Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as your S3 bucket. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Domo Client ID
  |
 Enter your Domo client ID.
  |
|
 Domo Client Secret
  |
 Enter your Domo client secret.
  |
|
 Access Key
  |
 Enter your AWS access key.
  |
|
 Secret Key
  |
 Enter your AWS secret key.
  |
|
 Bucket
  |
 Enter the name of the bucket you want to push Domo data to.
  |
|
 Region
  |
 Select the Amazon S3 region where your bucket is located.
  |


 Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-S3 connection. You can manage connector accounts in the
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

How would you like to select your folder path?

|
 Specify how would you like to select the path for your Amazon S3 folder.


|  |  |
| --- | --- |
|
 Search Folder Path
  |
 Select the folder path where you would like to save the file in your Amazon S3 bucket.
  |
|
 Enter Folder Path
  |
 Enter the folder path manually where you would like to save the file in your Amazon S3 bucket.
  |
|
 Parameterized Date Path
  |
 Select the date (specific or relative) that you would like to use in the folder path where you want to save the file in your Amazon S3 bucket. If the folder does not already exist (in the S3 bucket), the connector will create one with the specified date parameter.
  |

|
|

Path

|
 Enter the path in your selected Amazon S3 bucket where you would like the data to be saved.

*Note**
 : Ensure to add a front slash (

/) at the end of your path.

Example: testFolder1/testFolder2/

|
|

Select Folder Path

|

Select the folder path that you would like to use.

|
|

Dates

|

Select the date.

|
|
 Overwrite?
  |
 Select this checkbox if you want to overwrite the existing file in your Amazon S3 bucket with the selected filename.
  |
|
 Skip Header
  |
 Check this box to skip header from the input dataset and export it to an S3 object.
  |
|
 Remove Quotes
  |
 Check this box to remove quotes from the input dataset and export it to an S3 object.
  |
|
 How would you like to select your input dataset?
  |
 Specify whether you would like to search for your dataset ID or enter it manually.
  |
|
 Input DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to S3. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

.


 Example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

*845305d8-da3d-4107-a9d6-13ef3f86d4a4**
 .

|
|
 Dataset Id
  |
 Select the dataset Id that you would like to use.
  |
|
 Select Filename
  |

Specify how would you like to select the output filename.

|
|
 Use Input DataSet ID
  |
 The connector will use your Domo dataset ID (located in the dataset URL) as the output filename.
  |
|
 Use Input DataSet Name
  |
 The connector will use your Domo dataset name as the output filename. If your dataset name contains a macro <current\_date> or <current\_date-1> without spaces, then <current\_date> will be replaced by today's date and <current\_date-1> will be replaced by yesterday's date or -31 for 31 days ago in format yyyy-MM-dd.
  |
|
 Enter Filename
  |
 Enter the output filename that you want to save your dataset in.
  |
|
 Parameterized File Name
  |
 Select the date (specific or relative) that you would like to use in the filename where you would like to save your dataset. If the filename does not already exist (in the S3 bucket), the connector will create one with the specified date parameter.
  |
|
 Filename
  |

Enter the output file name.


 If you wish to add current date to the file name please use the macro <current\_date> or <current\_date-1>.


 Example: If fileName is domo\_<current\_date>, the output file generated in s3 bucket would be domo\_(todays date in format yyyy-MM-dd) like domo\_2019-07-16.

|
|
 Only Writeback New Data
  |
 Check this box to only pull your last execution data from the input dataset and export it to S3 Object.
  |
|
 File Extension
  |
 Select the extension that you would like to use for your output file.
  |
|
 Enter File Extension
  |
 Enter the file extension.
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
 Select the encryption type that you would like to use for your output file.
  |
|
 Encryption Key
  |
 Enter the encryption key.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

