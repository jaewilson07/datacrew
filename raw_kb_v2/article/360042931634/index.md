

Intro
-------

Amazon Redshift is a fast and powerful, fully managed, petabyte-scale data warehouse service in the cloud. Use Domo's Amazon Redshift Unload V2 connector to bring in larger results from Redshift through the assistance of your Amazon S3 service.


 You connect to your Amazon Redshift Unload account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Redshift Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Amazon Redshift so you can begin creating Amazon Redshift Unload DataSets, you must have the following:

 The host name for the Redshift database
* The database name you created for the cluster
* Your Redshift username and password
* The port number you specified when you launched the cluster
* Your AWS access key
* Your AWS secret access key
* The name of the S3 bucket data will be unloaded into
* The name of the S3 bucket region

CA certificate text or URL path is required
 **only**
 if you select
 ****Certificate string****
 or
 ****URL path****
 , respectively, in the
 ****Certificate format****
 menu.


 If you do not know any of the information for Redshift, contact your Amazon Redshift Database Administrator.


 If you have a firewall, ensure the port is open for you to use.


 To find your AWS Access Key and Secret Access Key:

. Log in to your AWS Management Console.
2. Click on your username at the top right of the page.
3. Select
 ****Security Credentials****
 in the dropdown menu.
4. In the
 ****Access Credentials****
 section, copy the latest Access Key ID.
5. Click on the
 ****Show link****
 in the same row, and copy the Secret Access Key.


###
 Whitelisting

Before you can connect to Redshift, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to your Amazon Redshift Unload account
---------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Redshift Unload V2 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Amazon Redshift Unload account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC Driver Version
  |
 Select your Redshift JDBC driver.
  |
|
 Host
  |
 Enter the host name for the Redshift database you want to pull data from.
  |
|
 Port
  |
 Enter the port number you specified when you launched the cluster.
  |
|
 Database
  |
 Enter the name of the database you created for the cluster.
  |
|
 Username
  |
 Enter the username for your Redshift account,
  |
|
 Password
  |
 Enter the password for your Redshift account.
  |
|
 Certificate Format
  |
 Select a certificate format. If you do not want to include a certificate, leave the default
 ****No certificate****
 option selected. If you select
 **Certificate string**
 , you must paste the text for your certificate in the
 ****Certificate****
 field. If you select
 ****URL path****
 , you must enter the URL where your certificate is located in the
 ****Certificate****
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 ****No certificate****
 in the
 ****Certificate Format****
 menu.
  |
|
 Access Key
  |
 Enter your AWS access key. For information about obtaining an access key, see "Prerequisites," above.
  |
|
 Secret Access Key
  |
 Enter your AWS secret key. For information about obtaining an access key, see "Prerequisites," above.
  |
|
 S3 Bucket
  |
 Enter the name of the S3 bucket to use in pulling in data.
  |
|
 S3 Bucket Region
  |
 Select the region containing the desired S3 bucket.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon Redshift Unload V2 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains various options for specifying the data you want to pull into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the desired query type. If you select
 **Query**
 , you will be prompted to enter a regular SQL query without a parameter. If you select
 **Query Parameter**
 , you will be prompted to enter a SQL query with a parameter.
  |
|
 Query
  |
 Enter the SQL query you want to use to pull in data.


 For example:

select \* from Employee

You can use the
 ****Generated Query****
 parameter to help you write a usable SQL query. To use the
 **Generated Query**
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 ****Generated Query****
 field.
3. Paste the copied SQL statement into the
 ****Query****
 field.


 |
|
 Schema Names
  |
 Select the schemas you want to pull data from.
  |
|
 Database Tables
  |
 Select the database tables you want to pull into Domo.
  |
|
 Table Columns
  |
 Select the table columns you want to pull into Domo.
  |
|
 Generated Query (Optional)
  |
 Copy and paste the SQL statement in this field into the
 ****Query****
 field. For more information, see
 ****Query****
 , above.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

This depends on your server configuration.

####
 Why can't I connect to my Redshift database? Do I need to whitelist any IP addresses?

Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.

