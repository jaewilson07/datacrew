

Intro
-------

Amazon Redshift is a fast, scalable data warehouse that makes it simple and cost-effective to analyze all your data across your data warehouse and data lake. Domo can make your Redshift data come to life. Whether it's one Redshift data source or a thousand different data sources, bring them all into Domo for a centralized experience to view and analyze everything at the same time.


 Domo connects directly to Redshift and delivers the information you need in real-time visualizations that make analysis easier. Plus, you can see your Redshift data alongside metrics from any other system, all in a single platform. Use Domo's Amazon Redshift Connector to pull data from your Redshift database and compile custom reports. You indicate the data you want by inputting an SQL query. For more information about the Redshift API, visit their website. (

https://docs.aws.amazon.com/redshift/latest/dg/c\_redshift-sql.html

)


 The Amazon Redshift Connector is a "Database" connector, meaning it retrieves data from a database based on a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 **Database**
 in the toolbar at the top of the window.


 You connect to your Redshift database in the

Data Center

. This topic discusses the fields and menus that are specific to the Redshift connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

*Note:**
 Depending on your network's structure, you may need to whitelist any IP addresses necessary for the data connector to retrieve data. Contact your IT administrator for assistance.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Pulling data out of a Redshift data warehouse or data mart.
  |
|
**Primary Metrics**
 |
 This depends on the data stored in the Redshift instance.
  |
|
**Primary Company Roles**
 | * BI leads
* IT roles
 |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 6
  |

Best Practices
----------------

Try to limit the results set size as much as possible. To speed the acquisition of the data, "fetch size" can be increased; however, setting it too high can cause connector run failures as well as performance problems with the Redshift instance. 10000 is a good place to start.


 Prerequisites
---------------

To connect to a Redshift database and create a DataSet, you must have the following:

 The username and password you use to log into your Redshift database
* The host name for the database server (for example,


 db.company.com


 )
* The port number for the database
* The database name

CA certificate text or URL path is required
 *only*
 if you select
 **Certificate String**
 or

*URL Path**
 ,

respectively, in the
 **Certificate Format**
 menu.

##
 Creating a Redshift account

To create a Redshift user account, contact your Redshift Database Administrator (DBA) and have them follow these directions:


 By default, only the master user that you created when you launched the cluster has access to the initial database in the cluster. To grant other users access, you must create one or more user accounts. Database user accounts are global across all the databases in a cluster; they do not belong to individual databases.


 Use the

CREATE USER

command to create a new database user. When you create a new user, you specify the name of the new user and a password. A password is required. It must have between 8 and 64 characters, and it must include at least one uppercase letter, one lowercase letter, and one numeral.


 For example, to create a user named GUEST with password ABCd4321, issue the following command:


`create user guest password 'ABCd4321';`

##
 Whitelisting IP addresses

Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Redshift Database
--------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Redshift Connector page. The components of the other panes in this page,
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
 JDBC Driver
  |
 Select the JDBC driver you want to use to connect.
  |
|
 Host
  |
 Enter the host string to connect to the SQL database. For example:

//

examplecluster.cpdbcwb2mzr4.us-east-2.redshift.amazonaws.com


 |
|
 Database
  |
 Enter the name of the SQL database.
  |
|
 Username
  |
 Enter your Redshift username.
  |
|
 Password
  |
 Enter your Redshift password.
  |
|
 Database Port
  |
 Enter the port number for the database.
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
 Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select No Certificate in the Certificate Format menu.
  |

Once you have entered valid Redshift credentials, you can use the same account any time you go to create a new Redshift DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

In this pane you create an SQL query to pull data from your database. You can also choose a specific database table and columns and specify which columns you want to appear in your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Type
  |
 Select a  query type.


|
 Query Type
  |
 Description
  |
| --- | --- |
|
 Query Builder
  |
 Select a table and fields to autogenerate your query.
  |
|
 Custom Query
  |
 Enter the SQL query to execute.
  |

|
|
 Query
  |
 Enter the Structured Query Language (SQL) query to use in selecting the data you want. For example:

select \* from Employee

|
|
 Query Parameter
  |
 Select this checkbox to add query parameters.
  |
|
 Query Parameter
  |

Enter the query parameter value. It is the initial value for query parameter. The last run date is optional. By default, it is '02/01/1700 15:22:15 -0700', if is not provided.


 Example:

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
 Select all table columns you want to appear in your report.
  |
|
 Fetch Size
  |
 Enter fetch size for memory performance. If it is blank, default value will be 1000. If it throws out of memory for a value , decrease fetch size.
  |
|
 Boolean Format
  |

Select the format for booleans to be represented in boolean data columns.


 Boolean Format
  |
 Description
  |
| --- | --- |
|
 1/0
  |
 true values will return '1', false values will return '0'
  |
|
 t/f
  |
 true values will return 't', false values will return 'f'
  |
|
 T/F
  |
 true values will return 'T', false values will return 'F'
  |
|
 true/false
  |
 true values will return 'true', false values will return 'false'
  |

|
|
 Query Timeout
  |

Enter the connector timeout value in minute(s).

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

If you run into connection issues...

 Verify the connection works using pgAdmin.
* Confirm all of the necessary Domo IPs have been whitelisted (see

Whitelisting IP addresses

, above).
* Run a profile on the SQL query.

FAQ
-----


####
 What kind of credentials do I need to power up this connector?

You need the username, password, host name, port number, and database name of your Redshift database.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

Limits depend on your server configuration.

###
 What do I need to be aware of while writing a query?

Make sure that all the words, table names and field names are correctly spelled.

###
 I'm receiving an out of memory error. Why?

The default value for the fetch size for memory performance is 1000 for this connector. If you receive an out of memory error , try decreasing the fetch size.

###
 Why can't I connect to my Redshift database? Do I need to whitelist any IP addresses?

Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses

.

