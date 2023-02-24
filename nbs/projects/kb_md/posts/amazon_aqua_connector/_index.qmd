---
title: Amazon AQUA Connector
url: https://domo-support.domo.com/s/article/1500000280482
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043630093](https://domo-support.domo.com/s/article/360043630093)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500000280482](https://domo-support.domo.com/s/article/1500000280482)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003259
views: 2,109
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Advanced Query Accelerator (AQUA) is a new distributed and hardware-accelerated cache that enables Redshift to run up to 10x faster than any other cloud data warehouse. AQUA-powered Redshift is 100% compatible with the current version of Redshift you use today. You can use Domo's Amazon AQUA Connector to pull data from your Redshift database and compile custom reports. You indicate the data you want by inputting an SQL query.


You connect to your Amazon AQUA account in the Data Center. This topic discusses the fields and menus that are specific to the Amazon AQUA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).






**Note:** Depending on your network's structure, you may need to whitelist any IP addresses necessary for the data connector to retrieve data. Contact your IT administrator for assistance.



 




|  |  |
| --- | --- |
| **Primary Use Cases** | Pulling data out of a Redshift data warehouse or data mart. |
| **Primary Metrics** | This depends on the data stored in the Redshift instance. |
| **Primary Company Roles** | * BI leads
* IT roles
 |
| **Average Implementation Time** | Anywhere between 5 and 40 hours, depending on configuration settings and the amount of data you are pulling. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 6 |


Prerequisites
-------------


To connect to an Amazon AQUA account and create a DataSet, you must have the following:


* The username and password you use to log into your Redshift database
* The host name for the database server (for example, [db.company.com](http://db.company.com)).
* The port number for the database
* The database name


CA certificate text or URL path is required *only* if you select **Certificate String** or **URL Path**, respectively, in the **Certificate Format** menu.


### Whitelisting IP addresses


Before you can connect to a Redshift database, you must also whitelist a number of IP addresses on your database server on the port you want to connect to. For the full list of IP addresses, see [Whitelisting IP Addresses for Connectors](/s/article/360043630093 "Whitelisting IP Addresses for Connectors").


Connecting to Your Amazon AQUA Account


This section enumerates the options in the **Credentials** and **Details** panes in the Amazon AQUA Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your database. The following table describes what is needed for each field:   




| Field | Description |
| --- | --- |
| JDBC Driver | Select the JDBC driver you want to use.  |
| Host | Enter the endpoint (Host) of the Amazon Redshift database. |
| Port | Enter the port number for the database. |
| Database | Enter the name of the database. |
| Username | Enter your Redshift username. |
| Password | Enter your Redshift password. |
| Certificate Format | Select the certificate format. If you do not want to include a certificate, select **No Certificate**. If you select **Certificate String**, you must paste the text for your certificate in the **Certificate** field. If you select **URL Path**, you must enter the URL where your certificate is located in the **Certificate** field. |
| Certificate | Paste the text for your CA certificate or enter the URL where your certificate is located. This is optional. If you do not want to include a certificate, select No Certificate in the Certificate Format menu. |


Once you have entered valid credentials, you can use the same account any time you go to create a new Amazon AQUA DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


In this pane you create an SQL query to pull data from your database. You can also choose a specific database table and columns and specify which columns you want to appear in your report.




| Menu | Description |
| --- | --- |
| Query | Enter the Structured Query Language (SQL) query to execute. |
| Schema names | Choose a schema name. |
| Database Tables | Choose a database table. |
| Database Table column names | Select the table columns you want to appear in your report.   |
| Query Helper | For help preparing a query, copy the text from the 'Query Helper' field and paste it into the 'Query' field. |
| Fetch size | Enter fetch size for memory performance. If it is blank, the default value will be 1000. If it throws out of memory for a value, decrease fetch size. |
| Boolean format | Select the format to be represented in boolean data columns. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

