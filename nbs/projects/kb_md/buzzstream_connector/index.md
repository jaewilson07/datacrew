---
title: BuzzStream Connector
url: https://domo-support.domo.com/s/article/360043430933
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430933](https://domo-support.domo.com/s/article/360043430933)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003801
views: 1,081
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


BuzzStream is web-based software that helps marketers promote their products, services and content to build links, buzz, and brands.  To learn more about the BuzzStream API, visit their page ([https://api.buzzstream.com/](https://api.buzzstream.com/ "https://api.buzzstream.com/")).


You connect to your BuzzStream account in the Data Center. This topic discusses the fields and menus that are specific to the BuzzStream connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your BuzzStream account and create a DataSet, you must have the following:


* A BuzzStream client ID
* A BuzzStream client secret


To obtain credentials, reach out to a BuzzStream customer service representative. 


Connecting to Your BuzzStream Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BuzzStream Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BuzzStream account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your BuzzStream client ID. |
| Client Secret | Enter your BuzzStream client secret. |


Once you have entered valid BuzzStream credentials, you can use the same account any time you go to create a new BuzzStream DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu from which you select a BuzzStream report.




| Menu | Description |
| --- | --- |
| Report | Select the BuzzStream report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Articles | Returns a list of articles. |
| History | Returns history data, including emails, notes, tweets, and blog comments. |
| Links | Returns a list of links. |
| Links Custom Fields | Returns a list of link custom fields. |
| Links Custom Fields Custom Options | Returns a list of custom field values. |
| Payments | Returns a list of payments. |
| People | Returns a list of people. |
| People Custom Fields | Returns a list of person custom fields. |
| People Custom Fields Custom Options | Returns a list of person custom field values. |
| Projects | Returns a list of projects. |
| Tags | Returns a list of tags. |
| Users | Returns a list of users. |
| Websites | Returns a list of websites. |
| Websites Custom Fields | Returns a list of website custom fields. |
| Websites Custom Fields Custom Options | Returns a list of custom field values. |
| Websites Project States | Returns a list of website project states. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

