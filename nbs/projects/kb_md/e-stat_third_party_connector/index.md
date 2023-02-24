---
    title: e-Stat Third Party Connector
    url: https://domo-support.domo.com/s/article/000005090
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/000005090](https://domo-support.domo.com/s/article/000005090)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000005090
    views: 1,590
    created_date: 2022-12-28 06:11:00
    last updated: 2022-12-28 06:29:00
    ---



Intro
-----


e-Stat is the one-stop service for official statistics of Japanese government. 


The e-Stat Connector allows you to import various official statistics such as Population Estimates, Labour Force Survey, GDP, etc. into your Domo instance. You can compare these statistics with your own data or analyze this information as external factors.


In addition to the API, e-Stat offers data in Excel or PDF format. However, the connector only supports data retrieval through the API.


You connect to your e-Stat account in the Data Center. This topic discusses the fields and menus that are specific to the e-Stat Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your e-Stat account and create a DataSet, you must have the following:


* The Application ID for your e-Stat account


To find how to register as a user with e-Stat and how to get the application ID, refer to [利用ガイド](https://www.e-stat.go.jp/api/api-info/api-guide "利用ガイド") .


Connecting to your e-Stat Account
---------------------------------


This section enumerates the options in the Credentials and Details panes in the e-Stat Connector page. The components of the other panes in this page, Scheduling and Name & Describe Your DataSet, are universal across most connector types and are discussed in greater length in  [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your e-Stat account.


The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter your Application ID retrieved from the my page of e-State. |


For information about obtaining these credentials, see **Prerequisites** above.


After you have entered the valid LINE MUSIC Analytics credentials, you can use the same account any time you go to create a new LINE MUSIC Analytics DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, refer to [Managing User Accounts for Connectors](https://domohelp.domo.com/hc/en-us/articles/360042926054 "Managing User Accounts for Connectors").


### Data Selection Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select..




| Menu | Description |
| --- | --- |
| Report | Select the report you want to run. The following reports are available:* **統計表表示IDで取得** Retrieve a statistics table by its ID. Statistics table is a dataset provided by e-Stat.
 |
| 統計表表示ID | Enter the ID that identify the statistics table. You can find the ID in the detail page of statistics table you want to import. |


 


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, refer to [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### What is needed to use the connector?


You must register as a user with e-Stat and obtain an Application ID.


#### Are there any API limits that I need to be aware of?


There are no limits currently.

