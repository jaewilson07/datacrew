

Intro
-------

Amazon Athena is a service that makes it easy to query big data from S3. With the Amazon Athena Partition Connector, you can get constant access to your data right from your Domo instance. The Amazon Athena connector uses the JDBC connection to process the query and then parses the result set. Use Domo's Amazon Athena Partition connector to instantly connect, visualize, and get insights from your big data with S3 query processing. By partitioning your data, you can restrict the amount of data scanned by each query, thus improving performance and reducing cost. To learn more about the Amazon Athena API, visit

https://aws.amazon.com/documentation/athena/

.


 You connect to your Amazon Athena account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon Athena Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Amazon Athena account and create a DataSet, you must have the following:

 Your AWS access key.
* Your AWS secret key.
* The Amazon S3 location to which the query output is written (Example:

s3://aws-athena-query-results-1234-us-west-2/

). You can find this by going to
 ****Settings****
 in the Athena web console.

For information about obtaining AWS credentials, visit

http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html

.


 Connecting to Your Amazon Athena Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Amazon Athena Partition

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Amazon Athena

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter your AWS access key.
  |
|
 Secret Key
  |
 Enter your AWS secret key.
  |
|
 S3 Staging Directory
  |
 Enter the S3 staging directory to which the query output will be written. For more information, see

Prerequisites

.
  |
|
 Region
  |
 Select your AWS region.
  |


 Once you have entered valid

Amazon Athena

credentials, you can use the same account any time you go to create a new

Amazon Athena Partition

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of options for entering your query and configuring the report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter the SQL query you want to execute (Example:

select \* from table\_name

).
  |
|
 Database Name
  |
 Select the database you want to query.
  |
|
 Table Name
  |
 Select the table in the database you want to query.
  |
|
 Partition Column Name
  |
 Select the partition column name.
  |
|
 Past Days
  |
 Enter the number of past days you want to get data for. Value can be X, where X is a positive integer. Example: 30.
  |
|
 Date Format
  |
 Select the required date format. By default
 **yyyy-MM-dd**
 will be used.
  |
|
 Custom Date Format
  |
 Enter the custom date format you wish to apply.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

