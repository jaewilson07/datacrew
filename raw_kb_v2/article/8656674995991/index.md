

Intro
-------

IBM DB2 Partition Connector contains database server products developed by IBM. These products support the relational model with some support for object-relational features and non-relational structures like JSON and XML. Use Domo's IBM DB2 Partition connector to retrieve data about from an IBM database based on a provided SQL query.


 You connect to your IBM DB2 database in the Data Center. This topic discusses the fields and menus that are specific to the IBM DB2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


**Note:**
 Domo does not support the IBM DA European connector.


 Prerequisites
---------------

To connect to an IBM DB2 database and create a DataSet, you must have the following:

 The username and password you use to log into your IBM account
* The host name for the database
* The port number for the database
* The database name

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate text**
 or
 **URL path**
 , respectively, in the
 **Certificate type**
 menu.

####
**To obtain your credentials, do the following:**


1. Log into
 **IBM Cloud**
 .
2. Go to
 **Service Credentials**
 .
3. Click
 **New credential +**
 .
4. Enter the name, select the role, and click
 **Add**
 .
5. Once the service credentials are created, expand the JSON to identify the username and password in the authentication block.


#####
**How to extract the SSL certificate:**


* Go to


**Settings> Connections**
 on the web console to download the Certificate. The file is named
 **DigiCertGlobalRootCA.crt.**

 The certificate is also available at


***/mnt/blumeta0/db2/ssl\_keystore/rootCA.pem***
 inside the database container. You can extract it to tmp with this command:


***docker cp dashDB:/mnt/blumeta0/db2/ssl\_keystore/rootCA.pem /tmp***
* or access it directly with
 ***<host volume>/db2/ssl\_keystore/rootCA.pem***


#####
**How convert the certificate .crt file to a .pem :**


* If the certificate file is in binary format, then run the following command to convert it to PEM format using OpenSSL:


***$ openssl x509 -inform DER -outform PEM -in DigiCertGlobalRootCA.crt -out DigiCertGlobalRootCA.crt.pem***

Before you can connect to an IBM DB2 database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your IBM DB2 Database
-------------------------------------


 This section enumerates the options in the


**Credentials**


 and


**Details**


 panes in the SAP Adaptive Server Enterprise Connector page. The components of the other panes in this page,


**Scheduling**
 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your IBM DB2 database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your IBM account username.
  |
|
 Password
  |
 Enter your IBM account password.
  |
|
 Host
  |
 Enter the host name for the DB2 database. For example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the DB2 database.
  |
|
 Database Name
  |
 Enter the name of the DB2 database.
  |
|
 Certificate Type
  |
 Select a certificate type. If you do not want to include a certificate, select
 **No certificate**
 . If you select Certificate text, you must paste the text for your certificate in the
 **Certificate**


 field. If you select
 **URL path**
 , you must enter the URL where your certificate is located in the
 **Certificate**


 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select


**No certificate**


 in the


**Certificate Type**


 menu.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new IBM DB2 DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. The
 **Query**
 parameter is required. The other three parameters are here to help you construct this query if you choose.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select a query type.


|
 Query Type
  |
 Description
  |
| --- | --- |
|
 Custom Query
  |
 Enter the SQL query to execute.
  |
|
 Query Builder
  |
 Select a table and fields to autogenerate your query.
  |

|
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

If you want help in constructing your query, copy and paste the automatically-generated query from the
 **Query Helper**
 field into this field.
  |
|
 Database Schemas
  |
 Select the database schema.
  |
|
 Database Table
  |
 Select the table containing the data you want to pull into Domo. The selected table will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Query Helper
  |
 Copy and paste this query into the
 **Query**
 field if you need help building a query. This query is automatically generated when you select a table and columns in the
 **Database Table**
 and


**Table Columns**
 fields, respectively.
  |
|
 Table Name
  |
 Enter the name of the table in your Oracle database where you want your DataSet data to be copied.
  |
|
 Table Columns
  |
 Select the table columns with data you want to pull into Domo. The selected columns will be added to the automatically generated query in the
 **Query Helper**
 field.
  |
|
 Partition Column Name
  |
 Select the partition column name. Only date fields will be shown in this discovery.
  |
|
 Past Days
  |
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. Example: 30
  |
|
 Date Format
  |
 Select the required date format. By default

*yyyy-MM-dd**

will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format you wish to apply to your data.
  |


###
 FAQ


#####
 What kind of credentials do I need to power up this connector?

You need the username, password, host name, port number, and database name of your IBM DB2 database. You also need to select the Certificate type.

####
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

####
 How often can the data be updated?

Datasets can run as often as every 15 minutes. However, depending on the runtime of the query, datasets may need to run less frequently.

####
 Why can't I connect to my IBM DB2 database? Do I need to whitelist any IP addresses?

Before you can connect to a IBM DB2 database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses.


#####
 What's the difference between the IBM DB2, IBM DB2 Partition, and IBM DB2 SSH connectors?

In the IBM DB2 connector, you need to write an SQL query for the data you want to import. It allows you to select the database table and table columns. It also provides a Query Helper to guide you in writing an SQL query. The IBM DB2 Partition connector supports partitioning, thus optimizes your database performance. You need to write an SQL query for the data you want to import, and select the table name and partition column name. You also need to specify the number of past days you want to get data for. It allows you to select the required date format for your query data. The IBM DB2 SSH connector uses an SSH tunnel to connect to your IBM DB2 database. You need your SSH credentials along with your IBM DB2 credentials to connect to your database. You need to write an SQL query for the data you want to import. It allows you to select the database table and table columns. It also provides a Query Helper to guide you in writing an SQL query.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

