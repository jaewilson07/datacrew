---
title: Get Satisfaction Connector
url: https://domo-support.domo.com/s/article/360042929554
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042929554](https://domo-support.domo.com/s/article/360042929554)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003499
views: 1,075
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Get Satisfaction is a customer engagement platform that helps companies build better relationships with their customers and prospects. To learn more about the Get Satisfaction API, visit their page ([https://education.getsatisfaction.co...api-resources/](https://education.getsatisfaction.com/reference-guide/api/api-resources/ "https://education.getsatisfaction.com/reference-guide/api/api-resources/")).


You connect to your Get Satisfaction account in the Data Center. This topic discusses the fields and menus that are specific to the Get Satisfaction connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


None


Connecting to Your Get Satisfaction Account
-------------------------------------------


This section enumerates the options in the **Details** pane in the Get Satisfaction Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Details Pane


This pane contains a primary **Topics By** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Topics By | Select the Get Satisfaction report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Topics | Returns a list of all topics in all Get Satisfaction communities. |
| Topics by Community | Returns a list of topics in a specified community. |
| Topics by Product | Returns a list of topics associated with a specified product. |
| Topics by People | Returns a list of topics posted by a specified user. |

 |
| Community/People/Product Name (Optional) | Enter the name of the community, product, or person for which topics need to be listed. |
| Topics Active Since | Enter a date to retrieve topics active since that date. The format is YYYY-MM-DD, e.g. 2011-12-31. You can also enter the word Today to use today's date, or Today - 2, which would give you the day before yesterday's date. |
| Keyword (Optional) | Enter a keyword to pull report data for. |
| Limit (Optional) | Enter a limit on the number of topics to be returned. The maximum number is 10000.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### How often can the data be updated?


As often as needed.


#### Are there any API limits I should be aware of?


No.

