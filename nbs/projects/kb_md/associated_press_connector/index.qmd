---
title: Associated Press Connector
url: https://domo-support.domo.com/s/article/360043435313
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043435313](https://domo-support.domo.com/s/article/360043435313)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003382
views: 2,102
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


The Associated Press (AP) is an American multinational nonprofit news agency headquartered in New York City. You can use Domo's Associated Press connector to compile reports containing current Associated Press feed content. For more information about the Associated Press API, see  [https://developer.ap.org/api-console](https://developer.ap.org/api-console "https://developer.ap.org/api-console").


The Associated Press connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You create an Associated Press DataSet in the **Data Center**. This topic discusses the fields and menus that are specific to the Associated Press connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is useful for pulling current news headlines into cards in Domo. |
| **Primary Metrics** | This connector provides a qualitative list of news stories by category. As such there are not many metrics that can be pulled. However, some users may want a count of headlines by category or the results of specific topic mentions. |
| **Primary Company Roles** | * Executive
* Director
* Manager
* Analyst
 |
| **Average Implementation Time** | A few minutes at most |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 1 |


 


Prerequisites
-------------


None. (Associated Press's data is publicly accessible.)


Creating an Associated Press DataSet
------------------------------------


This section describes how to create an Associated Press DataSet in the Associated Press Connector page in Domo. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Details Pane


This pane contains a single menu in which you select an Associated Press report type.


The following table describes all of the predefined reports you can create using the Domo Associated Press connector.




| **Menu** | **Description** |
| --- | --- |
| Business | Returns business news. |
| Entertainment | Returns entertainment news. |
| Health | Returns health news. |
| Politics  | Returns political news. |
| Science | Returns science news.  |
| Sports | Returns sports news. |
| Strange  | Returns offbeat news.  |
| Technology  | Returns technology news.  |
| Top Headlines  | Returns top headlines. |
| U.S. National | Returns U.S. national news.   |
| World  | Returns world news.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


This is an open connection with no credentials required. Just ensure that the correct report type and schedule have been selected.


FAQ
---


##### Can this connector pull custom fields?


No.

