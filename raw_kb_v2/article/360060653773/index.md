


 Intro
--------

Data that is collected from websites or mobile apps, or is uploaded using web service APIs or data sources, is processed and stored in Adobe's Data Warehouse. This raw click-stream data forms the dataset used by Adobe Analytics. Use the Adobe Analytics Data Feed connector to import this data from the Amazon Web Services (AWS) S3 bucket where it is stored. To learn more about the Adobe Analytics API, visit their

API documentation

.


 You import Adobe Analytics data feed data by connecting to the Amazon Web Services (AWS) S3 bucket containing the data. You do this in the Data Center in Domo. This topic discusses the fields and menus that are specific to the Adobe Analytics Data feed connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

Prerequisites
----------------

To connect to an AWS S3 bucket and import Adobe Analytics data feed data, you must have the following:

 Your AWS access key. You can find this in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 **Users**
 .
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to retrieve files from.
* The the S3 Bucket Region where your file is located.


 Connecting to an AWS S3 Bucket and Pulling Adobe Analytics Data
------------------------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Adobe Analytics Data feed V2 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to your Adobe Analytics account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key. For information about finding your access key, see


 Prerequisites above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about finding your secret key, see


 Prerequisites above.
  |
|
 Bucket
  |
 Enter the Amazon S3 bucket you want to pull Adobe Analytics data from.
  |
|
 Region
  |
 Select the S3 bucket region where your file is located.
  |

Once you have entered valid AWS credentials, you can use the same account any time you go to create a new Adobe Analytics Data Feed DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##

Details Pane

This pane contains the options that you can provide or select for retrieving your data from your S3 bucket.


 Menu
  |
 Description
  |
| --- | --- |
|
 Prefix (Optional)
  |
 Enter the prefix. Prefix limits results to only those keys that begin with the specified prefix. If none of the file matches, then the connector will search the file in the entire bucket with the entered prefix.
  |
|
 Quote Character
  |
 Select the quote character. Quote character specifies the quotation mark used in data. Example: Single Quote, Double Quote, or None.
  |
|
 Additional Columns
  |
 Select True, if you want the browser details, event list, unique id, and unique visitor id to be displayed in report.
  |
|
 Process Multiple Files
  |
 Select True, if you want multiple files to be processed at the time of the first run.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


