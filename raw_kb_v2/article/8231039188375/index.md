

Intro
-------


 Aurora is a MySQL and PostgreSQL compatible relational database built for the cloud, that combines the performance and availability of high-end commercial databases with the simplicity and cost-effectiveness of open source databases. Use the Aurora MySQL connector to efficiently and securely bring in data from your database. Once your data is in Domo, you can give managers and stakeholders transparency with real-time, interactive dashboards. Set up alerts to be notified of changes in your key data points. And you can access all your data in real-time, from any device.

Domo's

Aurora

Connector

is an open-source database.

To learn more about the Amazon Aura connector


 API, visit their page (

https://aws.amazon.com/rds/aurora/

).


 The Aurora


 Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking


**Cloud App**


 in the toolbar at the top of the window.


 You connect to your

Amazon Aura

account in the Data Center. This topic discusses the fields and menus that are specific to the

Amazon Aura

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon Aurora account and create a DataSet, you must have the following:

 The username and password you use to log into your database
* The hostname or IP address of your database server
* The port number for your database
* The database name or schema name

You can also include the URL where your SSL CA Certificate is located, though this is optional.


 Connecting to Your

Aura

Account
---------------------------------------

This section enumerates the options in the Credentials and Details panes in the Aura Connector page. The components of the other panes on this page,


**Scheduling,**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo

Aurora

Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click


**Connect**


 (or select


**Add Account**


 if you have existing

Aurora database

accounts in Domo) to open the

Aurora

OAuth screen where you can enter your

Aurora database

username and password. Once you have entered valid

Aurora database

credentials, you can use the same account any time you go to create a new

Aurora connector

DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

The following Credential table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your database username.
  |
|
 Password
  |
 Enter your database password.
  |
|
 Host
  |
 Enter the hostname or IP address of your database server. Example:


 db.company.com

|
|
 Port
  |
 Enter the port number for your database server.
  |
|
 Database Name
  |
 Enter your database name.
  |
|
 CA Certificate (optional)
  |
 Enter the URL where the SSL CA Certificate is located.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new

Amazon Aurora Partition

DataSet. You can manage connector accounts in the


**Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
**Note:**

If you are already logged into


 Aurora connector


 when you connect in Domo, you are authenticated automatically when you click

*Add account**

. If you want to connect to an account that is different from the one you are logged into, you must first log out of


 the Aurora connector


 .


###
 Details Pane

This page contains a primary


**Reports**


 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

You can use the
 **Query Helper**
 parameter to help you write a usable SQL query. To use the
 **Query Helper**
 , do the following:
 1. Select your database table and table columns in the appropriate menus.
2. Copy the SQL statement that appears in the
 **Query Helper**
 field.
3. Paste the copied SQL statement into the
 **Query**
 field.
 |
|
 Query Type
  |
 Select the desired MySQL query type—either with or without a parameter.
  |
|
 Query Parameter

|
 Enter the query parameter value. This is the initial value for the query parameter. You can use this option to retrieve new data since the last run.


 For example, if you entered the following query in the
 **Query**
 field...


`select * from test.lastValue where id <= !{lastvalue:id}! order by id desc`


 ...and then entered the following for the
 **Query Parameter**
 ...


`!{lastvalue:id}!=3`


 ...then the first run would return 3 rows, and all subsequent runs would return 1 row, and the results would be ordered from largest to smallest.


 Similarly, if you entered the following in the


**Query**
 field...


`select * from test.lastValue where time > !{lastrundate:time}!`


 ...and then entered the following for the
 **Query Parameter**
 ...


`!{lastrundate:time}!=01/01/1990`


 ...then the first run would return 5 rows and all subsequent runs would return 0 rows.
  |
|
 Partition Column Name
  |
 Select partition column name.
  |
|
 Past Days
  |
 Enter the number of past days you want to get data for. Value can be a positive integer. For example 30.
  |
|
 Date Format
  |
 Select the required date format. By default,


********yyyy-MM-dd********
 will be used.
  |
|
 TinyInt Values Treated as Bit (Boolean) Values
  |
 Select Yes if you want the tiny integer values to be treated as boolean values, else select No.
  |
|
 Cast Boolean Values To...
  |
 Select whether the String or Integer boolean values will be cast within your dataset.

String: False/True

Integer: 0/1
  |
|
 Database Table (Optional)
  |
 Select the database table you want to import into Domo.
  |
|
 Table Columns (Optional)
  |

Select the table columns you want to import into Domo.

|
|
 Query Helper (Optional)
  |

Copy and paste the SQL statement in this field into the
 **Query**
 field. For more information, see
 **Query**
 , above.

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 What kind of credentials do I need to power up this connector?

You need the username, password, hostname or IP address, port number, and database name associated with your database. You can also include the URL where your SSL CA certificate is located, though it is optional.

###
 How to get a Certificate Authority (CA) certificate?

To get a certificate bundle that contains both the intermediate and root certificates for all AWS Regions, download from


 https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem


 .


 If your application is on Microsoft Windows and requires a PKCS7 file, you can download the PKCS7 certificate bundle. This bundle contains both the intermediate and root certificates at


 https://truststore.pki.rds.amazonaws.com/global/global-bundle.p7b


 .

*Note:**


 Amazon RDS Proxy and Aurora Serverless use certificates from the AWS Certificate Manager (ACM). If you are using RDS Proxy, you don't need to download Amazon RDS certificates or update applications that use RDS Proxy connections. For more information about using TLS/SSL with RDS Proxy, see

Using TLS/SSL with RDS Proxy

.

If you are Aurora Serverless, downloading Amazon RDS certificates isn't required. For more information about using TLS/SSL with Aurora Serverless, see

Using TLS/SSL with Aurora Serverless v1

.

###
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 How frequently will my data update?

Datasets can run as often as every 15 minutes. However, depending on the runtime of the query, datasets may need to run less frequently.

###
 What do I need to be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled.

###
 Why can't I connect to my database? Do I need to whitelist any IP addresses?

Before you can connect to your database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see Whitelisting IP Addresses.

###
 What's the difference between the Amazon Aurora and Amazon Aurora Partition connectors?

In the Amazon Aurora connector, you need to select a JDBC driver to connect to your database. The Amazon Aurora connector gives you a choice to write an SQL query with or without the query parameter. It allows you to select the database table and table columns. It also provides a Query Helper to guide you in writing an SQL query.


 The Amazon Aurora Partition connector supports partitioning, thus optimizing your database performance. You need to select the table name and partition column name. You also need to specify the number of past days you want to get data for. It gives you a choice if you want your TinyInt values to be treated as String or Integer, though it's optional. You can select the Date format for your data to be retrieved.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


