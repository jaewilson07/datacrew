

Intro
-------

Amazon S3 is built to store and retrieve any amount of data from anywhere. Like Amazon S3, Domo is built to scale with your business. Our customers collectively upload new data into their Domo environments millions of times each week. Have datasets that exceed 50 billion rows? No problem, Domo is built to handle huge amounts of data with speed. Domo’s S3 connector will allow you to leverage all of your S3 data anytime, anywhere.


 Domo connects directly to S3 and delivers the information you need in real-time visualizations that make analysis easier. Plus, you can see your S3 data alongside metrics from any other system, all in a single platform, and get instant notifications when your metrics hit thresholds that you determine.


 The Amazon S3 Partition connector allows you to provide the folder/child-folder path you want to fetch the file(s) from. This limits the search results to only the mentioned folders. If you leave that field empty, the partition connector will search for the specified file(s) in the entire S3 bucket. If you provide only parent folder, it will search for all files under all child folders of that parent folder. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 The Amazon S3 Partition connector is a "File" connector, meaning it retrieves files and outputs them to Domo. In the Data Center, you can access the connector page for this and other File connectors by clicking
 **File**
 in the toolbar at the top of the window.


 You connect to your Amazon S3 account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon S3 Partition Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


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
* The region where your S3 bucket is located.


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

Connecting to Your

Amazon S3

Account
--------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Amazon S3 Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

Amazon S3 Partition

account. The following table describes what is needed for each field:


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


 above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about finding your secret key, see


 Prerequisites


 above.
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


 Once you have entered valid


 Amazon S3


 credentials, you can use the same account any time you go to create a new


 Amazon S3 Partition


 DataSet.

You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane


 This pane contains various menus for locating and configuring the file you want to pull into Domo.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 What file type would you like to import?
  |
 Select the file type that you would like to parse and import.
  |
|
 Prefix
  |
 Enter the folder/child-folder path you want to fetch the file(s) from. This limits the search results to only the mentioned folders. If you leave this field empty, the connector will search for the specified file(s) in the entire S3 bucket. If you provide only parent folder, the connector will search for all files under all child folders of that parent folder.


 Example: Parent Folder/Child folder1- The connector will search and return all files from the Parent Folder/Child Folder1 hierarchy.
  |
|
 File Name
  |
 Enter the name of Amazon S3 Object (file) that you would like to import.
  |
|
 File Name Match Type
  |
 Specify whether the file to be retrieved starts with or contains the name you have entered in


**File Name**
 .
  |
|
 Past Days
  |
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default


**yyyy-MM-dd**
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####

What kind of credentials do I need to power up this Connector?


 You need your AWS access key and secret key, the name of your AWS S3 bucket, and the region where your S3 bucket is located.


####

How frequently will my data update?


 As often as needed.

###

Can I use the same Amazon S3 account to create multiple datasets?

Yes

###

Are there any API limits that I need to be aware of?

You may encounter a limit of 100 Amazon S3 buckets per account.

###

What's the difference between the Amazon S3 and Amazon S3 Partition connectors?

If your Amazon S3 bucket contains multiple files that begin with the prefix string you provide in the Details section of the connector, the Amazon S3 connector will only import the latest modified file. The Amazon S3 Partition connector allows you to provide the folder/child-folder path you want to fetch the file(s) from. This limits the search results to only the mentioned folders. If you leave that field empty, the partition connector will search for the specified file(s) in the entire S3 bucket. If you provide only parent folder, it will search for all files under all child folders of that parent folder.


