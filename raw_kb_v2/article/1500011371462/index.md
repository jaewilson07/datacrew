

Intro
-------

MongoDB is a open-source document-oriented database that offers high performance and scalability. Domo's platform offers the best in class analytics and reporting solution for MongoDB users—helping organizations monitor, visualize, and report complex datasets easily. You can use Domo's MongoDB Partition connector to pull data from a MongoDB collection and compile custom reports. You indicate the data you want by inputting JSON query filter. For more information about the MongoDB API, go to

http://api.mongodb.org/

. Easily combine your MongoDB data with data from numerous other systems, allowing you to combine and transform your data and make it all available for user self-service.


 The MongoDB Partition Connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the MongoDB Partition Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Important:**
 An SSL connection is required for this connector to work.

Prerequisites
---------------

To connect to a MongoDB collection and create a DataSet, you must have the following:

 The username and password you use to log into your MongoDB database
* The host name for the database server (e.g.

db.company.com

).
* The port number for the database
* The database name
* The CA certificate text or URL path is required
 *only*
 if you select
 **Certificate String**
 or
 **URL Path**
 , respectively, in the
 **Certificate Format**
 menu.
* An SSL connection


**Note:**
 MongoDB uses "admin" as the database name to establish a connection.

Before you can connect to a MongoDB database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your

MongoDB Collection
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

MongoDB Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

This pane contains fields for entering credentials to connect to a collection within a MongoDB database. The following table describes what is needed for each field:

Field

|

Description

|
| --- | --- |
|
 Host
  |
 Enter the host name for the MongoDB database. Example-

db.company.com
  |
|
 Port
  |
 Enter the port number for the MongoDB database.
  |
|
 Database
  |
 Enter the name of the MongoDB database.
  |
|
 Username
  |
 Enter your MongoDB username.
  |
|
 Password
  |
 Enter your MongoDB password.
  |
|
 Certificate Format
  |
 Select the certificate format. If you do not want to include a certificate, select
 ****No Certificate****
 . If you select
 ****Certificate String****
 , you must paste the text for your certificate in the
 ****Certificate****
 field. If you select
 ****URL Path****
 , you must enter the URL where your certificate is located in the
 ****Certificate****
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 ****No Certificate****
 in the
 ****Certificate Format****
 menu.
  |


 Once you have entered valid

MongoDB

credentials, you can use the same account any time you go to create a new

MongoDB Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create a JSON query to pull data from your MongoDB collection. You can also create optional WHERE, SELECT, GROUP, and SORT clauses, and apply the query filter to find documents in the collection.


 Menu
  |
 Description
  |
| --- | --- |
|
 How would you like to select your collection name?
  |
 Select how would you like to get the collection name.
  |
|
 Select Collection Name
  |
 Select the name of the MongoDB collection.
  |
|
 Enter Collection Name
  |
 Enter the name of the MongoDB collection.
  |
|
 Query Method
  |
 Select a query method to pull data from your MongoDB collection.
  |
|
 Find
  |
 A JSON Query will execute by 'Find Method'.
  |
|
 Aggregate
  |
 A JSON Query will execute by 'Aggregate Method'.
  |
|
 JSON Query Filter
  |
 Enter the query filter to find documents in the collection.
  |
|
 Limit Row
  |
 Enter the number of rows you want to be returned.
  |
|
 Batch Size
  |
 Batch size is the number of documents to be returned per batch which is used internally by the connector. Enter the batch size greater than 1.
  |
|
 Where Clause JSON
  |
 Enter a WHERE clause in JSON format.
  |
|
 Select Clause JSON
  |
 Enter a SELECT clause in JSON format.
  |
|
 Group Clause JSON
  |
 Enter a GROUP clause in JSON format.
  |
|
 Sort Clause JSON
  |
 Enter a SORT clause in JSON format.
  |
|
 Partition Column
  |
 Enter the Partition Column name. The Partition Column should have a 'Date' data type.
  |
|
 Past Days
  |
 Enter the number of past days you want to get data for. Value can be X, where X is a positive integer. Example: 30.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

