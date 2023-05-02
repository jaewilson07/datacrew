

Intro
-------

The Amazon Redshift is a fast, scalable data warehouse that makes it simple and cost-effective to analyze all your data across your data warehouse and data lake. Domo can make your Redshift data come to life. Whether it's one Redshift datasource or a thousand different datasources, bring them all into Domo for a centralized experience to view and analyze everything at the same time. By partitioning your data, you can restrict the amount of data scanned by each query, thus improving performance and reducing cost. Use Domo's Amazon Redshift Partition Connector to connect directly to Redshift and deliver the information you need in real-time visualizations based on the number of past days provided. It make analysis easier. To learn more about the Amazon Redshift API, visit

http://docs.aws.amazon.com/redshift/latest/dg/c\_SQL\_commands.html

.


 The Amazon Redshift Partition connector is a "Database" connector, meaning it retrieves data from a database based on a query. In the Data Center, you can access the connector page for this and other Database connectors by clicking
 ****Database****
 in the toolbar at the top of the window.


 You connect to your Amazon Redshift account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Redshift Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
| ****Primary Use Cases**** |
 Pulling data out of a Redshift data warehouse or data mart.
  |
| ****Primary Metrics**** |
 This depends on the data stored in the Redshift instance.
  |
| ****Primary Company Roles**** | * BI leads
* IT roles
 |
| ****Average Implementation Time**** |
 Anywhere between 5 and 40 hours, depending on configuration settings and the amount of data you are pulling.
  |
| ****Ease of Use (on a 1-to-10 scale with 1 being easiest)**** |
 6
  |

Best Practices
----------------

Try to limit the results set size as much as possible. To speed the acquisition of the data, "fetch size" can be increased; however, setting it too high can cause connector run failures as well as performance problems with the Redshift instance. 400 is a good place to start.


 Prerequisites
---------------

To connect to a Redshift database and create a DataSet, you must have the following:

 The username and password you use to log into your Redshift database
* The host name for the database server (Example:

db.company.com

)
* The port number for the database
* The database name

CA certificate text or URL path is required
 **only**
 if you select
 ****Certificate String****
 or
 ****URL Path****
 , respectively, in the
 ****Certificate Format****
 menu.

##
 Creating a Redshift account

To create a Redshift user account, contact your Redshift Database Administrator (DBA) and have them follow these directions:


 By default, only the master user that you created when you launched the cluster has access to the initial database in the cluster. To grant other users access, you must create one or more user accounts. Database user accounts are global across all the databases in a cluster; they do not belong to individual databases.


 Use the CREATE USER command to create a new database user. When you create a new user, you specify the name of the new user and a password. A password is required. It must have between 8 and 64 characters, and it must include at least one uppercase letter, one lowercase letter, and one numeral.


 For example, to create a user named GUEST with password ABCd4321, use the following command:


`create user guest password 'ABCd4321';`

##
 Whitelisting IP addresses

Before you can connect to a Redshift database, you must also white list a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses for Connectors

.


 Connecting to Your Redshift Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Amazon Redshift Partition Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Redshift database. The following table describes what is needed for each field:


|

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
 Enter the host string to connect to the SQL database. Example:

//

examplecluster.cpdbcwb2mzr4.us-east-2.redshift.amazonaws.com

|
|
 Database
  |
 Enter the name of the database.
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
 **No Certificate**
 in the
 **Certificate Format**
 menu.
  |


 Once you have entered valid

Redshift

credentials, you can use the same account any time you go to create a new

Amazon Redshift Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. You can choose a specific database table and partition column name. You can also specify the number of past days you want to get data for.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query to execute. Example:

select \* from Employee
  |
|
 Database Tables
  |
 Select the database table you want to appear in your report.
  |
|
 Partition Column Name
  |
 Select the partition column name.
  |
|
 Past Days
  |
 Enter number of past days for which you want to get data. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default
 ****yyyy-MM-dd****
 will be used.
  |
|
 Custom Date
  |
 Enter the custom date format you wish to apply to your data.
  |
|
 Fetch Size
  |
 Enter fetch size for memory performance. If it is blank, default value will be 400.
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
* Confirm if all necessary Domo IPs have been white listed (see

Whitelisting IP addresses

, above).
* Run a profile on the SQL query.


