

Intro
-------

Amazon Redshift is a fast and powerful, fully managed, petabyte-scale data warehouse service in the cloud.


 You connect to your Amazon Redshift Unload account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Redshift Unload connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Amazon Redshift so you can begin creating Amazon Redshift Unload DataSets, you must have the following:

 The host name for the Redshift database
* The database name for the Redshift database
* Your Redshift username and password
* The port number of your Redshift database
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
 ****Certificate type****
 menu.


 If you do not know any of the information for Redshift, contact your Amazon Redshift Database Administrator.


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


 Connecting to Your Amazon Redshift Unload Account
---------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Redshift Unload Connector page. The components of the other panes in this page,
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
 Host
  |
 Enter the host name for the Redshift database you want to pull data from.
  |
|
 Database
  |
 Enter the database name for the Redshift database you want to pull data from.
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
 Database Port
  |
 Enter the port number for the Redshift database you want to pull data from.
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


 Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon Redshift Unload DataSet. You can manage connector accounts in the
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
 Header Query (Optional)
  |
 Enter the SQL query to use in obtaining the correct header metadata for the query specified below (in the
 **Query**
 field). This is necessary because Redshift does not dump header data using UNLOAD. If you leave this blank, header data will be retrieved using the query you enter in the
 **Query**
 field.
  |
|
 Cache Last Good Header?
  |
 If you select
 **Yes**
 for this option, the connector caches the header so it does not create an additional query.
  |
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
 Fetch Size (Optional)
  |
 Enter the fetch size for memory performance. If you leave this blank, a default value of 1000 will be used. If an "Out of Memory" error is generated, try decreasing the fetch size.
  |
|
 Query Parameter
  |
 Enter the query parameter value. This is the initial value for the query parameter. The "Last Run" date is optional. If you do not enter this date, a default date of "02/01/1700" is used.


 For example:

!{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944,!{lastmaxvalue:size}!=0

|
|
 Validation Type
  |
 Select the desired validation type. If you select
 **Validate schema**
 , the previous schema is validated against the current schema. If these are not the same, the validation fails. If you select this option, you are asked to select a validation case in the
 **Validate By**
 menu.
  |
|
 Validate By
  |
 Select the desired validation case option.


 If you select
 **Column case sensitive**
 , if the previous schema and current schema are the same except for differences in letter case, the schemas are not considered the same and the validation fails.


 If you select
 **Column by order**
 , if the previous schema and current schema are the same except for column order differences, the schemas are not considered the same and the validation fails.
  |
|
 Boolean Format
  |
 Select the desired Boolean format for returned data.
  |
|
 Database Tables (Optional)
  |
 Select the database tables you want to pull into Domo, if desired.
  |
|
 Table Columns (Optional)
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
|
 Query Timeout (Optional)
  |
 Enter the desired query timeout value.
  |
|
 Use High Bandwidth Upload
  |
 Select this checkbox to use high bandwidth upload transfer.
  |
|
 Keep Files in S3?
  |
 Select whether or not you want to keep your files in S3.
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

