

Intro
-------

MongoDB is an open-source document-oriented database system that stores structured data as JSON-like documents with dynamic schemas. Domo provides connectors that allow you to pull data from a MongoDB collection and compile custom reports.

 The MongoDB connector uses Java driver version 3.2.1, and supports Find and Aggregate query methods. You need to enter the Collection name manually in the MongoDB connector.
* The MongoDB Advanced connector uses Java driver version 3.2.1, and supports a plain JSON query. You need to enter the Collection name manually in the MongoDB Advanced connector.
* The MongoDB SSH Connector uses Java driver version 3.12.1, and supports Find and Aggregate query methods. You can either select the Collection name from the drop down or enter it manually in the MongoDB SSH connector. You need your SSH credentials (host, port, username, and password) to pull data from a MongoDB collection through an SSH tunnel.
* The MongoDB V2 connector uses Java driver version 3.12.1, and supports Find and Aggregate query methods. You can either select the Collection name from the drop down or enter it manually in the MongoDB V2 connector.
* The MongoDB Replicaset connector uses Java driver version 3.12.11, and supports compilation of custom reports using JSON queries.

This article discusses the
 **MongoDB Replicaset Connector**
 . You can use Domo's MongoDB ReplicaSet connector to pull data from a MongoDB collection and compile custom reports. You indicate the data you want by inputting JSON query filter. For more information about the MongoDB API, go to

http://api.mongodb.org/

.


 The MongoDB ReplicaSet Connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 ****Database****
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the MongoDB V2 ReplicaSet Connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


**Important:**
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
* (optional) CA certificate


**Note:**
 MongoDB uses "admin" as the database name to establish a connection.

Before you can connect to a MongoDB database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your MongoDB Collection
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

MongoDB V2

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to

a collection within a MongoDB V2 database

. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Connection String
  |
 Enter the connection Url for your MongoDB.

Use <username> and <password> as placeholder for your actual username and password.

mongodb://<username>:<password>@examphost1:port1,examphost2:port2/?connectionParam1=value1&connectionParam2=value2..*  |
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
 Select a certificate format. This must match what you enter in the Certificate field. If you are not aware of a special certificate, select No Certificate.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. By default, no certificate is required.
  |


 Once you have entered valid MongoDB V2 credentials, you can use the same account any time you go to create a new MongoDB V2 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create a JSON query to pull data from your MongoDB collection. You can also create optional WHERE, SELECT, GROUP, and SORT clauses, and apply the query filter to find documents in the collection, also in JSON format.


 Menu
  |
 Description
  |
| --- | --- |
|
 How would you like to select your collection name?
  |
 Specify whether you want to select a collection or enter it manually.
  |
|
 Which database would you like to use to get the data?
  |

Specify whether you want to connect to a database other than the one where authentication occurs or use the same database.

|
|
 Enter database name
  |

Enter the name of the MongoDB database you want to connect to.

|
|
 Select collection name
  |

Select the name of the MongoDB collection.

|
|
 Enter collection name
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
 Query Type
  |
 Select which query filter to be used to aggregate documents in the collection.
  |
|
 Enter Query Filter
  |
 Select "Enter Query Filter" to manually enter the JSON Aggregate Query Filter
  |
|
 JSON Aggregate Query Filter
  |
 Enter the query filter to aggregate documents in the collection.
  |
|
 Custom Query Clause
  |
 Select "Custom Query Clause" to aply the custom clauses such as

where

clause,

select

clause,

group

clause, and

sort

clause
  |
|
 Where Clause JSON
  |
 Enter a

WHERE

clause in JSON format.
  |
|
 Select Clause JSON
  |
 Enter a

SELECT

clause in JSON format.
  |
|
 Group Clause JSON
  |
 Enter a

GROUP

clause in JSON format.
  |
|
 Sort Clause JSON
  |
 Enter a

SORT

clause in JSON format.
  |
|
 Use MongoDB Collection Schema
  |
 Select this checkbox to use the MongoDB collection schema for the dataset.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

