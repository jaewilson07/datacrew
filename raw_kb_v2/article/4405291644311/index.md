

Intro
-------

Amazon S3 is an online file storage web service offered by Amazon Web Services that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. With the Amazon S3 Unload Writeback connector, you can export your data from a Domo DataSet to an Amazon S3 Bucket. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 You export data to S3 in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 Unload Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret.
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
 panes in the Amazon S3 Unload Writeback Connector page. The components of the other panes in this page,
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
 Enter your AWS access key. You can find this in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using
 **IAM**
 , you can find it under
 **Users**
 .
  |
|
 Secret Key
  |
 Enter your AWS secret key that was provided when you created your access key. You can generate a new secret key in the AWS Console.
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

Input DataSet ID

|

Enter your Domo dataset ID (GUID) located in the dataset URL. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

.


 Example:

https://customer.domo.com/datasources/

*aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee**
 /details/settings

|
|

Path

|

Enter the path where you would like the file to be saved in your Amazon S3 bucket.

|
|

Primary Key

|

Enter the primary key of the datafusion dataset.

|
|

Specific Day

|

Enter an integer that specifies the day you want to get the data for. 0 pulls today's data, 1 pulls yesterday's data, and 7 pulls the data from 7 days ago each time the connector runs. Only a single day of data is returned for each connector run.

|
|
 Select the Data Type for Date Column(s) to be parsed
  |

  |  |
| --- | --- |
| **Date Time**  | **Description**  |
|
 Parse as is (Do not convert)
  |
 Metrics columns say- 'started' & 'finished' will be shown as is received in the response.
  |
|
 Parse and convert into Date Time
  |
 Metrics columns say- 'started' & 'finished' will be parsed into Date Time.
  |

*Note**
 : This is just for the dataset metrics to be displayed; there will be no impact on the data to be unloaded.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

