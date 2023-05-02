

Intro
-------


 Domo works seamlessly with PostgreSQL's open source object-relational database system. You can use Domo's PostgreSQL Advanced Connector to pull data from your PostgreSQL database and compile custom reports. With an intuitive platform that brings all your data and all your people together in one place, it's easy to collaborate around real-time business insights and move forward with a single version of the truth.


 You can easily combine your PostgreSQL data with data from numerous other systems, allowing you to transform your data and make it all available for user self-service. See the metrics you need on any device, automate your reporting, and get alerts when there are important changes to your business.

You indicate the data you want by inputting an SQL query. For more information about the PostgreSQL API, visit their website. (

https://www.postgresql.org/docs/

)


 The PostgreSQL Advanced Connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your PostgreSQL database in the

Data Center

. This topic discusses the fields and menus that are specific to the PostgreSQL connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 Depending on your network's structure, your IT administrator may need to whitelist any IP addresses necessary for the data connector to retrieve data. Contact your IT administrator for assistance.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for pulling database information into Domo.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * IT
* Project management
 |
|
**Average Implementation Time**
 |
 ~10 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 9
  |

Best Practices
----------------


* Use read-only queries only.
* Use "Replace" instead of "Append."

Prerequisites
---------------

To connect to a PostgreSQL database and create a DataSet, you must have the following:

 The username and password you use to log into your PostgreSQL database
* The host name for the database
* The port number for the database
* The database name
* Certificate authority certificate
* SSL certificate
* SSL key

Before you can connect to a PostgreSQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your PostgreSQL Database
----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PostgreSQL Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter your PostgreSQL username.
  |
|
 Password
  |
 Enter your PostgreSQL password.
  |
|
 Host
  |
 Enter the host name for the SQL database. For example:


 db.company.com


 |
|
 Port
  |
 Enter the port number for the database.
  |
|
 Database
  |
 Enter the name of the SQL database.
  |
|
 Certificate
  |
 Paste the text for your CA certificate.
  |
|
 SSL Certificate
  |
 Paste your SSL certificate.
  |
|
 SSL Key
  |
 Paste your SSL key.
  |

Once you have entered valid PostgreSQL credentials, you can use the same account any time you go to create a new PostgreSQL Advanced DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |


 Query Type
  |
 Description
  |
| --- | --- |
|
 Custom Query
  |
 Enter your SQL statement directly. This option includes query parameter support.
  |
|
 Query Builder
  |
 Build your query from a list of available tables and columns.
  |

|
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want.


 Example:

select \* from Employee

|
|
 Query Parameter (checkbox)
  |

Select this checkbox to add query parameters.

|
|
 Query Parameter
  |
 Enter a comma separated list of query parameters and their initial values. Valid query parameters are: lastvalue, lastrundate. To set the value of a query parameter, use this syntax:


 !{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944
  |
|

Database Tables

|
 Select the database table you want to appear in your report.
  |
|
 Table Columns
  |
 Select all table columns you want to appear in your report.
  |
|
 Query Helper
  |
 A query is generated based on the selected fields. Copy and paste this text into the QUERY field. You may edit this query, if desired.
  |
|
 Fetch Size
  |

Enter fetch size for memory performance. The connector will use the default value 400, if no value is provided in this field.

|
|
 Bigint To Long
  |

Select to always convert a bigint column to a long column in Domo.

This means even if the bigint column stores small integer values, Domo will still consider the column to have long values.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure the appropriate IP addresses are whitelisted.
* Try decreasing fetch size or leave it empty.


