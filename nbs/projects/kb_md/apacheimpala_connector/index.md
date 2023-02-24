---
    title: ApacheImpala Connector
    url: https://domo-support.domo.com/s/article/7938701190807
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043630093](https://domo-support.domo.com/s/article/360043630093)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/7938701190807](https://domo-support.domo.com/s/article/7938701190807)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003182
    views: 1,077
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Apache Impala is an open source massively parallel processing (MPP) SQL query engine for data stored in a computer cluster running Apache Hadoop. It consists of different processes that run on specific hosts within your CDH cluster. The Domo Apache Impala SSH connector brings your data from the Apache server securely through an SSH tunnel into Domo.


The ApacheImpala Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your ApacheImpala account in the Data Center. This topic discusses the fields and menus that are specific to the ApacheImpala Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Apache Impala database and create a DataSet, you must have the following:


* The username and password you use to log into your Apache Impala database
* The host name or IP address for the database server (e.g. [db.company.com](http://db.company.com)).
* The port number for the database
* The database name
* Connecting String Parameter


Before you can connect to an Apache Impala database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see [Whitelisting IP Addresses for Connectors](/s/article/360043630093 "Whitelisting IP Addresses for Connectors").


Connecting to Your ApacheImpala Connector Account
-------------------------------------------------


This section enumerates the options in the Credentials and Details panes in the [insert Connector name here] Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Host | Enter the hostname or IP address of your database server. Example: [db.company.com](http://db.company.com) |
| Database Port | Enter your Apache Impala port number. |
| Database Name | Enter your Apache Impala database/schema name. |
| Username | Enter your Apache Impala username. |
| Password | Enter your Apache Impala password. |
| Database Connection String Parameter(s) | Enter the parameter(s) you want to include in the database connection string. Multiple parameters are separated by a semicolon. (Example: AuthMech=3;SSL=1;AllowSelfSignedCerts=1) |


Once you have entered valid Apache Impala credentials, you can use the same account any time you go to create a new Apache Impala DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

**Note:** If you are already logged into ApacheImpala when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of ApacheImpala account.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Query Type | Select a query type.

|  |  |
| --- | --- |
| Query | A regular SQL query without parameter. |
| Query Parameter | An SQL query with parameter. |

 |
| Query | Enter the SQL query to execute. The query will execute on the Apache Impala server and fetch the data from it. |
| Query Parameter | Enter the query parameter value. It is the initial value for query parameter. The last run date is optional. The default value for the last date is '02/01/1700' if not provided.
Example: !{lastvalue:\_id}!=1,!{lastrundate:start\_date}!=02/01/1944 |
| Database Table | Select the database table. |
| Table Columns | Select the table columns. |
| Query Helper | This query is automatically generated when you select a table and columns in the Database Table and Table Columns fields, respectively. Copy and paste this query into the Query field if you need help building a query. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


 


#### What kind of credentials do I need to power up the Apache Impala connector?


You need the hostname, dat


#### How frequently will my data update?


As often as needed.


#### Are there any API limits that I need to be aware of?


Limits depend on your server configuration.


#### Can I use the same Apache Impala account to create multiple datasets?


Yes


#### What do I need to be aware of while writing a query?


Make sure that all the words, table names and field names are correctly spelled.


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
