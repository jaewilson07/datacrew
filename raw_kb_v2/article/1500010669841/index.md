

Intro
-------

AWS Data Exchange makes it easy to find, subscribe to, and use third-party data in the cloud. You can access datasets from qualified data providers that include category-leading brands such as Reuters, who curate data from over 2.2 million unique news stories per year in multiple languages; Change Healthcare, who process and anonymize more than 14 billion healthcare transactions and $1 trillion in claims annually; Dun & Bradstreet, who maintain a database of more than 330 million global business records; and Foursquare, whose location data is derived from 220 million unique consumers and includes more than 60 million global commercial venues. Use Domo's Data Exchange Connector to import data into Domo from your Amazon S3 bucket. With the powerful datasets from AWS combined with the ability to visualize and create business solutions in Domo, you can create high-value solutions by combining your own data with external datasets. This connector lists only the AWS Data Exchange datasets that you've subscribed to and approved. To learn more about the Amazon S3 API, visit their page (

http://docs.aws.amazon.com/AmazonS3/...I/Welcome.html

).


 You connect to your AWS Data Exchange account in the Data Center. This topic discusses the fields and menus that are specific to the AWS Data Exchange for Burbio connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AWS Data Exchange account and create a DataSet, you must have the following:

 Your AWS access key. You can find this in the
 **Security Credentials**
 section of the AWS Console. Alternatively, if you are using IAM, you can find it under
 **Users**
 .
* Your AWS secret key, which is provided to you when you create your access key. You can generate a new secret key in the AWS Console.

Your AWS Access Key and Secret Key should also have AWS Data Exchange Full access.

##

Creating a User with the Proper Permissions

You must create a user with the proper permissions in the IAM Amazon Console before you can connect to S3 data in Domo.


**To configure your user:**


 1. In the Identity and Access Management Amazon Console, click
 **Users**
 .


 2. Click on the
 **Add User**
 button.


 3. Add a new user, setting options as follows:


 a. In the
 **Details**
 pane, check the box for
 **Programmatic Access**
 under
 **Select AWS access type**
 .


 b. In the
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


 c. Click
 **Next: Tags**
 button to add tags. Adding tags is optional.


 d. In the
 **Review**
 pane, click
 **Create User**
 .


 4.  Once your user is created, copy the access and secret keys to use in the
 **Credentials**
 pane in Domo.


 Connecting to Your

AWS Data Exchange

Account
----------------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

AWS Data Exchange for Burbio

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

AWS Data Exchange

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key. For information about finding your access key, see "Prerequisites" above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about finding your secret key, see "Prerequisites" above.
  |

Once you have entered valid

AWS Data Exchange

credentials, you can use the same account any time you go to create a new

AWS Data Exchange for Burbio

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane


 This pane lists the AWS Data Exchange datasets along with the different parameters that you can select.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Region
  |
 Select the AWS region where the AWS Data Exchange is available. Visit

AWS Regional Services List

to get a detailed and updated list of the regions.
  |
|
 Report
  |
 Select whether you want to pull the data for Burbio or Covid-19 report.
  |
|
 List Data Sets
  |
 Select the datasets. This connector lists only the AWS Data Exchange datasets that you've subscribed to and approved.
  |
|
 List DataSet Revisions
  |
 Select the DataSet revision.
  |
|
 List Revision Assets
  |
 Select the revision asset.
  |
|
 What asset type would you like to import?
  |
 Select the asset type that you would like to parse and import.
  |
|
 Select the delimiting character
  |
 Select the delimiting character used in your file. If your delimiter is not listed select 'Other.'
  |
|
 Specify your delimiter
  |
 Enter the character used to delimit your character separated values (CSV) text.
  |
|
 Quote Character
  |
 Select the desired quote character for parsing CSV files. (Double quote is the default quote character for CSV standard)
  |
|
 Custom Quote Character
  |
 Enter the desired CSV Quote character.
  |
|
 Escape Character
  |
 Select the desired escape character for parsing CSV files.
  |
|
 Custom Escape Character
  |
 Enter the desired CSV escape character.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

