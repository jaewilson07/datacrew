

Intro
-------

ALTR integrates directly into the application layer to put data security services in the path between the data and the users who access data. ALTR uses a smart database driver for integration while embedding high performance services in the critical path of data and, enabling better security, business intelligence (BI), analytics, and reporting on your data. To learn more about the ALTR, visit their page

https://www.altr.com/how-altr-works

.


 You connect to your data in the Data Center. This topic discusses the fields and menus that are specific to the ALTR JDBC connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your ALTR database and create a DataSet, you must have your ALTR JDBC URL.


 Connecting to Your ALTR JDBC database
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

ALTR JDBC

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

ALTR JDBC

database. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 JDBC URL
  |
 Enter your ALTR JDBC URL.
  |


 Once you have entered valid

ALTR JDBC

credentials, you can use the same account any time you go to create a new

ALTR JDBC

DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

In this pane you create an SQL query to pull data from your database.


 Menu
  |
 Description
  |
| --- | --- |
|
 Query
  |
 Enter your database query to execute.
  |
|
 Database Tables
  |
 Select the table containing the data you want to pull into Domo.
  |
|
 Table Columns
  |
 Select the table columns with data you want to pull into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

