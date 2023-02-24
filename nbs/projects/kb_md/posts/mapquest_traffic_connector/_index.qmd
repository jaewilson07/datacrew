---
title: MapQuest Traffic Connector
url: https://domo-support.domo.com/s/article/360042930854
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930854](https://domo-support.domo.com/s/article/360042930854)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003383
views: 1,073
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


MapQuest is an online web mapping service that provides maps, real-time traffic, and driving directions. The MapQuest Traffic connector allows you to easily retrieve realtime traffic information related to regions and incidents. To learn more about the MapQuest API, visit their page ([https://developer.mapquest.com/documentation/](https://developer.mapquest.com/documentation/ "https://developer.mapquest.com/documentation/")).


You connect to your MapQuest account in the Data Center. This topic discusses the fields and menus that are specific to the MapQuest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your MapQuest account and create a DataSet, you must have a MapQuest API key. You can obtain an API key by signing up for a MapQuest developer account at [https://developer.mapquest.com/plan\_...\_free/register](https://developer.mapquest.com/plan_purchase/steps/business_edition/business_edition_free/register "https://developer.mapquest.com/plan_purchase/steps/business_edition/business_edition_free/register"). 


Connecting to Your MapQuest Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the MapQuest Traffic Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your MapQuest account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your MapQuest API key. For more information, see "Prerequisites," above. |


Once you have entered valid MapQuest credentials, you can use the same account any time you go to create a new MapQuest Traffic DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu from which you select a MapQuest Traffic report.




| Menu | Description |
| --- | --- |
| Report | Select the MapQuest report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Incidents | Returns a structured list of traffic incidents. |
| Markets | Returns a structured list of "markets"—regions for which MapQuest provides traffic data. |

  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

