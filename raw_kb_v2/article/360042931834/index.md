

Intro
-------


 Snowflake is a data warehouse built for the cloud for all your data and users. Use Domo's Snowflake Unload V2 Connector to unload data from your Snowflake into Amazon S3. Unloaded files are imported from Amazon S3 into Domo. Choose this connector instead of the Snowflake connector if you are executing very large queries.

To learn more about the Snowflake API, visit their page (

https://docs.snowflake.net/manuals

).


 This Connector is the same as the standard

Snowflake Unload

connector, except that it allows you to enter your own custom query in addition to using the auto-generate option, whereas the standard version of the connector only includes the auto-generate option.


 You connect to your Snowflake account in the Data Center. This topic discusses the fields and menus that are specific to the Snowflake Unload V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Snowflake account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). This is the portion of your Snowflake URL immediately following

https://

.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password used to connect to your Snowflake host.
* Your AWS access key. This is available in the AWS Console in the
 **Security Credentials**
 section (unless you are using IAM, in which case it is under
 **Users**
 ).
* Your AWS secret key. This was provided when you created your access key. You can generate a new key in the AWS Console.
* The name of the AWS S3 bucket in which Snowflake data will be unloaded.

Connecting to your Snowflake account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Snowflake Unload V2 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials pane


 This pane contains fields for entering credentials to connect to your Snowflake account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Account Name
  |
 Enter your Snowflake account name. For more information, see "Prerequisites."
  |
|
 Username
  |
 Enter the username you use to connect to your Snowflake host.
  |
|
 Password
  |
 Enter the password you use to connect to your Snowflake host.
  |
|
 Access Key
  |
 Enter your AWS access key. For information about obtaining an access key, see "Prerequisites," above.
  |
|
 Secret Key
  |
 Enter your AWS secret key. For information about obtaining a secret key, see "Prerequisites," above.
  |
|
 Bucket
  |
 Enter the name of the AWS S3 bucket.
  |
|
 Region
  |

Select your S3 bucket

region

.

|
|
 Role
  |

Enter your role.

|


 Once you have entered valid Snowflake credentials, you can use the same account any time you go to create a new Snowflake Unload V2 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane


 In this pane you create an SQL query to pull data from your database. You can choose a specific database table and partition column. You can also specify the number of past days you want to get data for.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 How would you like to import data into Domo?
  |

Select whether you want to import your data by using the


 standard update method (replace/append), by using partition, or upsert mode.

|
|
 How would you like to build your Query?
  |


 Query Type
  |
 Description
  |
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
 Warehouses
  |
 Select the warehouse containing the data you want to retrieve. The list populates all warehouses you have access to based on your credentials.
  |
|
 Databases
  |
 Select the database containing the data you want to retrieve. The list populates all databases you have access to based on your credentials.
  |
|
 Schemas
  |
 Select the database schema containing the data you want to retrieve. The list populates all schemas you have access to based on your credentials.
  |
|
 Tables
  |
 Select the database table you want to retrieve. The list populates all tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Table Column Name
  |
 Select the partition column name.
  |
|
 Table Query Helper
  |
 A query is generated based on the selected fields. Copy and paste this text into the QUERY field. You may edit this query, if desired.
  |
|
 Query
  |
 Enter the SQL query you want to execute.
  |
|
 Partition Criteria
  |
 Select whether you want to partition your data using the date keys, non-date keys, or meta query.
  |
|
 Select Partition Date Key Column Name
  |
 Select the partition column name. Only date fields will be shown in this discovery.
  |
|
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Date Format
  |
 Please select/enter proper date format according to the date format present in partition column. By default


**yyyy-MM-dd**
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format.
  |
|
 Select Partition Non Date Key Column Name
  |
 Select a non-date key column name to partition the data. All fields excluding Date fields will appear in this dropdown.
  |
|
 Enter Partition Non Date Key Column Name
  |
 Enter a non-date key column name to partition the data.
  |
|
 Partition Query to determine partition tags
  |

Enter the partition meta query to determine the distinct partition tags (or keys). The column containing the


**Date**


 data is your partition column.


 Example: SELECT DISTINCT (DATE\_COLUMN\_NAME) FROM TABLENAME

|
|
 Upsert Key Column(s)

|

Enter upsert key column name or a comma separated list of upsert key column names.
 **Required only when Update method is Merge**
 .

|


###
 Selecting the Update Mode

Once you decide how you want to import your data into Domo

(by using the


 standard update method (replace/append), by using partition, or upsert mode), you need to select the relevant update mode in the
 **Scheduling section**
 in the Connector.


* If you select 'Partition' in the Details section, then you need to select the 'Append' update mode in the Scheduling section.

 If you select 'Upsert' in the Details section, then you need to select 'Merge' update mode in the Scheduling section.

##
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What is the difference between this connector and the standard Snowflake Unload connector?

This connector allows you to enter your own custom query in addition to using the auto-generate option, whereas the standard version of the connector only includes the auto-generate option. Additionally, with this Connector, you can import your data

by using the


 standard update mode (replace/append), by using partition, or upsert mode.


####
 Are there any API limits I should be aware of?

This depends on your server configuration.

###
 How frequently will my data update?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

###
 What should I be aware of while writing a query?

Make sure that all the words, table names, and field names are correctly spelled. Refer to the Query Helper field for query help.

###
 Why can't I connect to my Snowflake database? Do I need to whitelist any IP addresses?

Before you can connect to a Snowflake database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see

Whitelisting IP Addresses in Domo

.

