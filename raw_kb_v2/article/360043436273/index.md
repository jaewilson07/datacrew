

Intro
-------

PostgreSQL is a widely used open-source relational database management system. You can use Domo's PostgreSQL Connector to pull data from your PostgreSQL database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the PostgreSQL API, visit their website. (

https://www.postgresql.org/docs/

)


 The PostgreSQL connector is a "Database" connector, meaning it retrieves data from databases using a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
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

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate text**
 or

*URL path**
 ,

respectively, in the

*Certificate type**

menu.


 Before you can connect to a PostgreSQL database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your PostgreSQL Database
----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PostgreSQL Connector page. The components of the other panes in this page,
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
 Certificate
  |
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select
 **No certificate**
 in the
 **Certificate Type**
 menu.
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
 Database
  |
 Enter the name of the SQL database.
  |

Once you have entered valid PostgreSQL credentials, you can use the same account any time you go to create a new PostgreSQL DataSet. You can manage connector accounts in the
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
 Select a query type


|
 Query Type
  |
 Description
  |
| --- | --- |
|
 Query Builder
  |
 Build an


 SQL query


 by selecting the database table and table columns
  |
|
 Custom Query
  |
 Enter a customized


 SQL query


 with or


 without parameters


 to execute
  |

|
|
 SQL Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

|
|
 Query Parameter (Check box)
  |

Select this checkbox to add query parameters.

|
|
 Query Parameter (Text box)
  |

Enter the query parameter value. It is the initial value for query parameter. The last run date is optional. By default it is '02/01/1700' if is not provided. Example:


 !{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944

|
|
 Fetch Size
  |
 Enter fetch size for memory performance. If it is blank, default value will be 400.
  |
|
 BigInt To Long
  |

Select to always convert a bigint column to a long column in Domo.

This means even if the bigint column stores small integer values, Domo will still consider the column to have long values.

|
|
 Database Table
  |

Select the database table you want to appear in your report.

|
|
 Table Columns
  |

Select the table columns you want to appear in your report.

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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure the appropriate IP addresses are whitelisted (see Prerequisites for a list of IP addresses).
* Try decreasing fetch size or leave it empty.


