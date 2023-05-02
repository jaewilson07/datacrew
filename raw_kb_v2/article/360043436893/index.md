

Intro
-------

Use this connector to export your data from a Domo DataSet to an Amazon Redshift database. To learn more about Redshift, visit their website at

https://aws.amazon.com/redshift/

.


 You export data to a Redshift database in the Data Center. This topic discusses the fields and menus that are specific to the Redshift Writeback connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 The owner of a writeback dataset must also be an owner or co-owner of the input dataset.

Prerequisites
---------------

To configure this connector, you will need the following:

 A Domo Client ID and Client Secret. To obtain these credentials, do the following:

1. Log into your Domo developer account at

 https://developer.domo.com/login

 .
	2. Create a new client.
	3. Select the desired data and user application scope.
	4. Click
	 **Create**
	 .
* The hostname or IP address of your Redshift server.
* Your Redshift database name.
* Your Redshift username and password.
* The port number of your Redshift server.
* Your AWS access key. This is available in the AWS Console in the
 **Security Credentials**
 section (or under
 **Users**
 if you are using IAM).
* Your AWS secret key. This was provided when you created your access key. You can generate a new one in the AWS Console.

If you don't know any of your SQL credentials, contact your SQL Database Administrator.


 You may also paste the text for a Redshift CA certificate (or you may input the URL where the certificate is located), but this is optional.


 Configuring the Connection
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Redshift Writeback Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Domo developer account as well as the table in your Redshift database where you want your data to be copied to. The following table describes what is needed for each field:


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
 Host
  |
 Enter your Redshift database hostname.
  |
|
 Database
  |
 Enter the name of your Redshift database.
  |
|
 Username
  |
 Enter your Redshift username.
  |
|
 Password
  |
 Enter your Redshift password.
  |
|
 Database Port
  |
 Enter your Redshift database port number.
  |
|
 Certificate Format
  |
 Select a certificate format. This must match what you enter in the
 **Certificate**
 field. If you are not aware of a special certificate, select
 **No certificate**
 .
  |
|
 Certificate
  |
 Paste the text for your CA certificate, or enter the URL where your certificate is located. By default no certificate is required.
  |
|
 Access Key
  |
 Enter your AWS access key.
  |
|
 Secret Key
  |
 Enter your AWS secret key.
  |
|
 Region
  |
 Select the S3 region containing the bucket you want to push data to.
  |
|
 Bucket
  |
 Enter the name of the AWS bucket you want to push data to.
  |

For more information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid credentials, you can use the same account any time you go to set up a new Domo-Redshift connection. You can manage connector accounts in the
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
 DataSet ID
  |
 Enter the DataSet ID (GUID) for the DataSet you want to copy to Redshift. You can find the ID by opening the details view for the DataSet in the Data Center and looking at the portion of the URL following

datasources/

. For example, in the URL

https://mycompany.domo.com/datasources/845305d8-da3d-4107-a9d6-13ef3f86d4a4/details/overview

, the DataSet ID is

845305d8-da3d-4107-a9d6-13ef3f86d4a4.

|
|
 Table Name Source
  |
 Select how you want to name the table where data will be copied.
 * **DataSet ID**
 . The table name will be the number you entered for
 **DataSet ID**
 .
* **DataSet Name**
 . The table name will be the same as that of the input DataSet.
* **Custom Name**
 . You will give the table a custom name in the
 **Custom Table Name**
 field.
 |
|
 Custom Table Name
  |
 Enter the name of the table in your Redshift database where you want your DataSet data to be copied.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

