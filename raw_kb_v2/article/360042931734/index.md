

Intro
-------

MongoDB is an open-source document-oriented database system that stores structured data as JSON-like documents with dynamic schemas. Domo provides connectors that allow you to pull data from a MongoDB collection and compile custom reports.

 The MongoDB connector uses Java driver version 3.2.1, and supports Find and Aggregate query methods. You need to enter the Collection name manually in the MongoDB connector.
* The MongoDB Advanced connector uses Java driver version 3.2.1, and supports a plain JSON query. You need to enter the Collection name manually in the MongoDB Advanced connector.
* The MongoDB V2 connector uses Java driver version 3.12.1, and supports Find and Aggregate query methods. You can either select the Collection name from the drop down or enter it manually in the MongoDB V2 connector. Also, MongoDB V2 connector doesn’t require a CA certificate.
* The MongoDB SSH Connector uses Java driver version 3.12.1, and supports Find and Aggregate query methods. You can either select the Collection name from the drop down or enter it manually in the MongoDB SSH connector. You need your SSH credentials (host, port, username, and password) to pull data from a MongoDB collection through an SSH tunnel.

This article discusses the
 **MongoDB Connector**
 . You can use Domo's MongoDB Connector to pull data from a MongoDB collection and compile custom reports. You indicate the data you want by inputting JSON queries. For more information about the MongoDB API, go to

http://api.mongodb.org/

.


 The MongoDB connector is a "Database" connector, meaning it retrieves data from a database using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the MongoDB connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


**Important:**
 An SSL connection is required for this connector to work.


 Prerequisites
---------------

To connect to a MongoDB collection and create a DataSet, you must have the following:

 The username and password you use to log into your MongoDB database
* The host name for the database server (e.g.


 db.company.com


 ).
* The port number for the database
* The authentication database name
* The name of the collection you want to connect to
* The CA certificate text or URL path is required
 *only*
 if you select
 **Certificate String**
 or

*URL Path**
 ,

respectively, in the
 **Certificate Format**
 menu.
* An SSL connection


**Note:**
 MongoDB uses "admin" as the database name to establish a connection.

Before you can connect to a MongoDB database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to a MongoDB Collection
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MongoDB Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to a collection within a MongoDB database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Host
  |
 Enter the host name for the MongoDB database. For example:


 db.company.com


 |
|
 Database Name
  |

Enter the name of the MongoDB authentication database. This needs to be the specific database the user was created in.

|
|
 Collection
  |
 Enter the name of the collection you want to connect to.

*Note:**
 A collection belonging to a database different than the authentication database can be accessed using
 **databaseName.collectionName**
 syntax.

|
|
 Username
  |
 Enter your MongoDB username.
  |
|
 Password
  |
 Enter your MongoDB password.
  |
|
 Database Port
  |
 Enter the port number for the MongoDB database.
  |
|
 Certificate Format
  |
 Select the certificate format. If you do not want to include a certificate, select
 **No Certificate**
 . If you select
 **Certificate String**
 , you must paste the text for your certificate in the
 **Certificate**
 field. If you select
 **URL Path**
 , you must enter the URL where your certificate is located in the
 **Certificate**
 field.
  |
|
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No Certificate**
 in the
 **Certificate Format**
 menu.
  |

After you have entered valid MongoDB credentials, you can use the same account in Domo any time you create a MongoDB DataSet. You can manage connector accounts in the

*Accounts**

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create a JSON query to pull data from your MongoDB collection. You can also create optional

WHERE

,

SELECT

,

GROUP

, and

SORT

clauses, also in JSON format.


 Menu
  |
 Description
  |
| --- | --- |
|
 JSON Query
  |
 Enter the JSON query to use in selecting the data you want. Two query methods are available,

Find

and

Aggregate

.


 As an example, let's suppose you have a collection with the following data:


`{ "_id" : 1, "subject" : "History", "score" : 88 },

{ "_id" : 2, "subject" : "History", "score" : 92 },

{ "_id" : 3, "subject" : "History", "score" : 97 },

{ "_id" : 4, "subject" : "History", "score" : 71 },

{ "_id" : 5, "subject" : "History", "score" : 79 },

{ "_id" : 6, "subject" : "History", "score" : 83 }`

*Find:**
 You could use the

Find

method to select from this collection all documents where the subject equals "History." The query would be formatted as follows:


`{ subject: "History" }`


**Aggregate:**
 To use the

Aggregate

method, your query will look something like the following:


`[

{

$match: {

score: {

$gt: 80

}

}

},

{

$count: "passing_scores"

}

]`

In this example, the

$match

stage excludes documents that have a score value of less than or equal to 80 to pass along the documents with a score greater than 80 to the next stage. The

$count

stage returns a count of the remaining documents in the aggregation pipeline and assigns the value to a field called "passing scores."
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

