

Intro
-------

Snowflake is a cloud-based analytic data warehouse system. The Domo Snowflake Partition Connector makes it easy to bring all your data from your Snowflake data warehouse into Domo based on the number of past days provided. If you are already using Snowflake as a data warehousing solution, this connector helps you use Domo in conjunction with it to get the most from your data. Once your Snowflake data is in Domo, you can combine it with all your other Domo data to get a centralized view of your most mission-critical data. To learn more about the Snowflake API, visit their page (

https://docs.snowflake.net/manuals

).


 You connect to your Snowflake account in the Data Center. This topic discusses the fields and menus that are specific to the Snowflake Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Snowflake account and create a DataSet, you must have the following:

 The full name of your account (provided by Snowflake). For US West Region
 ********account\_name********
 , and All other regions
 ********account\_name.region\_id********
 . This is the portion of your Snowflake URL immediately following https://.


 Note that your full account name may include additional segments that identify the region and cloud platform where your account is hosted. The following table provides account name examples by cloud platform/region. For each row, it assumes your account name is "xy12345."
* The username and password used to connect to your Snowflake host.

Connecting to Your Snowflake Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Snowflake Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:


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
 Role
  |
 Enter your role.
  |


 Once you have entered valid Snowflake credentials, you can use the same account any time you go to create a new Snowflake Partition DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database. You can choose a specific database table and partition column. You can also specify the number of past days you want to get data for.


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
 Query
  |
 Enter the query to execute. The query format must be like: select \* from


 \"


 databaseName


 \"


 .


 \"


 schemaName


 \"


 .


 \"


 tableName


 \"
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
 Database Objects
  |
 Select the database object containing the data you want to retrieve. The list populates all objects you have access to based on your credentials.
  |
|
 Tables
  |
 Select the database table you want to retrieve. The list populates all tables you have access to based on your credentials. If you do not select a database table, the connector retrieves your entire database schema.
  |
|
 Views
  |
 Select the view.
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
 View Column Name
  |
 Select the partition column name.
  |
|
 View Query Helper
  |
 A query is generated based on the selected fields. Copy and paste this text into the QUERY field. You may edit this query, if desired.
  |
|
 Partition Criteria
  |
 Select whether you want to partition your data using the date keys, non-date keys, or meta query.
  |
|
 Partition Column Name
  |
 Select the partition column name. Only date fields will be shown in this discovery.
  |
|
 Partition Support Format
  |
 Select the partition support format.
  |
|
 Partition Non Date Key Column Name
  |
 Select a non-date key column name to partition the data. All fields excluding Date fields will appear in this dropdown.
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
 Past Days
  |
 Enter the number of past days that you want to get data for. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Past Years
  |
 Enter the number of past years that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Future Years
  |
 Enter the number of future years that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Past Months
  |
 Enter the number of past months that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
  |
|
 Future Months
  |
 Enter the number of future months that you want to get data for. Value can be X, where X is a positive integer. For example: 30.
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

Adding a DataSet Using a Data Connector

.

