

Intro
-------

Couchbase connector is a widely used open-source relational database management system. You can use Domo's Couchbase connector Connector to pull data from your Couchbase connector database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the Couchbase connector API, visit their website. (


 Start Here! | Couchbase Docs


 )

Couchbase is the modern database for enterprise applications. Couchbase is a distributed, JSON document database, with all the desired capabilities of a relational DBMS. It is a robust database, built for microservices and serverless consumption-based computing on the cloud on one end, and edge computing for occasionally and locally connected edge Mobile/IoT devices on the other.


 Couchbase manages JSON documents, eliminating the need for a hard coded schema in the database. The application object definition, available within JSON, is the schema controlled by the developer.

You connect to your

Couchbase connector

database in the Data Center. This topic discusses the fields and menus that are specific to the

Couchbase connector

user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Notes:**


* Couchbase is:


	+ A distributed database. No more scaling or availability issues.
	+ A cache and a database. No more cache invalidation or coherency issues.
	+ A database and a search engine. No more crawlers.
	+ An operational and an analytical database. No more ETL.
	+ A desktop, mobile, and clusterable database. No compromises between Server and Mobile.

Best Practices
----------------


* Limit the results set size as much as possible.
* Keep the number of columns to a minimum.

Prerequisites
---------------

To connect to a Couchbase connector


 database and create a DataSet, you must have the following:

 The username and password you use to log into your

Couchbase connector

database.
* The Hostname for the database.
* Bucket for the database.
* The database name or schema name.

You can also include the URL where your SSL CA Certificate is located, though this is optional.

##
 Creating Couchbase Database Accounts

You can create Couchbase account


 accounts two ways:

 By using account-management statements intended for creating accounts and establishing their privileges, such as

CREATE USER

and

GRANT

. These statements cause the server to make appropriate modifications to the underlying grant tables.
* By manipulating the

Couchbase

grant tables directly with statements such as

INSERT

,

UPDATE

, or

DELETE.

The preferred method is to use account management statements because they are more concise and less error-prone than manipulating the grant tables directly.


 Another option for creating accounts is to use the GUI tool MySQL Workbench. Also, several third-party programs offer capabilities for

Couchbase

account administration, such as phpMyAdmin.

##
 Whitelisting

Before you can connect to a

Couchbase

database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your

Couchbase

Database
-----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes on the Couchbase


 Connector page. The components of the other panes in this page,
 **Scheduling,**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


**Note:**
 When using the copy/paste function for your credentials, ensure there is no whitespace at the beginning or end of the string. By accidentally pasting whitespace, it will cause the connector to error when trying to connect.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Host
  |
 Enter the hostname for the Couchbase database. For example


 db.company.com


 |
|
 Database Name
  |
 Enter the name of the

Couchbase

database or schema.
  |
|
 Username
  |
 Enter your

Couchbase

username.
  |
|
 Password
  |
 Enter your

Couchbase

password.
  |
|
 Bucket
  |
 Enter the Couchbase bucket you want to pull files from
  |

Once you have entered valid

Couchbase

credentials, you can use the same account any time you go to create a new

Couchbase

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database, with or without a parameter.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select the desired

Couchbase

query type—either with or without a parameter.
  |
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
 TinyInt Values Treated as Boolean Values?
  |
 Select
 **Yes**
 if you want TinyInt values to be treated as Boolean.
  |
|
 Cast Boolean Values To...
  |
 Select whether Boolean values will be cast to integers or strings.
  |
|
 Database Tables (Optional)
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

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


####
 What permissions do I need on Couchbase Database?

You need the read and write permissions for Couchbase Database

###
 What kind of credentials do I need to power up this connector?

You need Domo developer account credentials (client id and client secret) and Couchbase credentials (host name, database name, username and password, and bucket.)

###
 Where can I find my Domo client id and client secret?

To create a new client:


* Login to

Domo developer account

.
* In the top right corner under
 **My Account**
 click
 **New Client**
 .
* Enter the application name and description.
* Provide the application scope by selecting the checkboxes for
 **Data**
 and
 **User**
 .
* Click
 **Create**
 .

Once you have created a client, you can manage the client by clicking on
 **Manage Client.**


####
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 How frequently will my data update?

As often as needed.

###
 Why can't I connect to my Couchbase database? Do I need to whitelist any IP addresses?

Before you can connect to a Couchbase database in Domo, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.

###
 How do I find the Input Dataset ID?

Your Domo input dataset id is in the URL of the dataset you are exporting data from. For example

https://customer.domo.com/datasources/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/details/settings

Troubleshooting
-----------------


* Verify the credentials using MySQL Workbench.
* Confirm the server supports encrypted connections.
* Confirm the Domo IPs are whitelisted.
* To speed up your runtime, make sure the tables you are joining don't have duplicate column names and that you call each column only once.


