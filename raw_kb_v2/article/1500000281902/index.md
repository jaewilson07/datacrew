

Intro
-------

Data.World is the modern catalog for data and analysis. It activates the hidden data workforce within your enterprise, multiplies your data value, and creates a faster data-driven culture. The modern, intuitive user experience brings together employees of all roles, backgrounds, and skills to collaborate, and keeps the data connected to everything people need to find, understand, and use. As a result, your data, analysis, and expertise become more

discoverable, trustworthy, and reusable

. Use Domo's DataWorld Connector to pull your data to get clear, accurate, and fast answers to your business question. To learn more about the Data.World API, visit

https://apidocs.data.world/

.


 You connect to your Data.World account in the Data Center. This topic discusses the fields and menus that are specific to the Data.World Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Data.World account and create a DataSet, you must have the following:

 Your API Token associated with the Data.World account. You can find it under
 ****User Setting >> Advanced Tab****
 .
* Your Data.World User ID. You can find your user ID under your profile icon below your user name, in the upper right corner of the screen.

*Note:**

The "@" sign is not a part of your user ID. Please do not include "@" while entering your user id.

Connecting to Your Data.World Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Data.World

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Data.World

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Your API Token associated with the Data.World account. You can find it under
 ****User Setting >> Advanced Tab****
 .
  |
|
 User ID
  |
 Your Data.World User ID. You can find your user ID under your profile icon below your user name, in the upper right corner of the screen.


**Note**
 :
 *The "@" sign is not a part of your user ID. Please do not include "@" while entering your user id.*
 |
|
 Branded/single-tenant instance URL
  |

Please enter branded/single-tenant instance URL. (For example:


 [customername]


 .data.world) This URL is necessary if you have a branded/single-tenant instance

|


 Once you have entered valid

Data.World

credentials, you can use the same account any time you go to create a new

Data.World

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a number of fields and menus for entering your query and specifying the location of the data you want to retrieve.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query Language
  |
 Specify whether you want to use SQL or SPARQL as the query language for your query.
  |
|
 Select the DataSet Type
  |
 Specify whether you want to fetch the data from your own DataSets or public DataSets.
  |
|
 Enter the User ID
  |
 Enter the User ID you want to fetch the data for.


**Note:**

The User ID is only visible if you select the Public Dataset option in the Dataset Type. Note that the User ID entered here is the creator of the Public DataSet you want to fetch.


**Example**
 : To discover a public DataSet created by a user XYZ, you need to enter XYZ as the user ID.

|
|
 DataSets
  |
 Select the dataset you want to fetch the data from.
  |
|
 Query Type
  |
 Specify whether you want to write a customized query or an auto-generated query using the query builder.
  |
|
 Custom Query
  |
 Enter the SQL query to execute based on the selected dataset. If your table contains space or hyphens then replace them with an underscore.


 Example: If the table name is
 **Sample-Data Info**
 then it will become
 **Sample\_Data\_Info**
 |
|
 Query Builder
  |
 Select a table and fields to auto-generate your query.
  |
|
 Query
  |
 Enter your database query to execute.
  |
|
 Database Tables
  |
 Select the database table you want to fetch the data from.
  |
|
 Table Columns
  |
 Select the table columns you want to fetch the data from.
  |
|
 Data Model Type
  |

Specify whether you want to fetch the data from your DataSets or Projects File.

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

