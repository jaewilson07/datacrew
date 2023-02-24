---
title: Bullhorn SOAP Connector
url: https://domo-support.domo.com/s/article/360043432533
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432533](https://domo-support.domo.com/s/article/360043432533)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003646
views: 1,087
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Bullhorn offers CRM and recruiting software for service-based industries like staffing, recruiting, PR, marketing, consulting and financial services. Use the Bullhorn SOAP Connector to access entity data and manage your recruiting, sales or staffing ops like a pro. To learn more about the Bullhorn SOAP API, visit their page ([http://developer.bullhorn.com/getting\_started](http://developer.bullhorn.com/getting_started "http://developer.bullhorn.com/getting_started")).


You connect to your Bullhorn SOAP account in the Data Center. This topic discusses the fields and menus that are specific to the Bullhorn SOAP connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Bullhorn SOAP account and create a DataSet, you must have the following:


* The username and password for the account
* The account API key


To obtain an API key, you must register as a Bullhorn partner. You can register at this page: [https://www.bullhorn.com/marketplace...r-application/](https://www.bullhorn.com/marketplace/partner-application/ "https://www.bullhorn.com/marketplace/partner-application/")


Connecting to Your Bullhorn SOAP Account
----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Bullhorn SOAP Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Bullhorn SOAP account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username for your Bullhorn account. |
| Password | Enter the password for your Bullhorn account. |
| API Key | Enter your Bullhorn API key. For information about obtaining an API key, see "Prerequisites," above. |


Once you have entered valid Bullhorn SOAP credentials, you can use the same account any time you go to create a new Bullhorn SOAP DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains various menus for selecting and configuring your Bullhorn report.




| Menu | Description |
| --- | --- |
| Report | Select the Bullhorn SOAP report you want to run. Currently only a single report type is available.

|  |  |
| --- | --- |
| Query Report | Lets you pull report data based on a query. |

 |
| Entity Name | Select the entity you want to retrieve information for. |
| Where Clause | Enter the query you want to use to pull information for your report. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

