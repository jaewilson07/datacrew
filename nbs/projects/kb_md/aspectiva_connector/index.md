---
title: Aspectiva Connector
url: https://domo-support.domo.com/s/article/360043433693
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433693](https://domo-support.domo.com/s/article/360043433693)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003544
views: 1,068
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Aspectiva analyzes massive volumes of consumer opinions from across the web, turning them into comprehensive and valuable insights. To learn more about the Aspectiva API, visit their page ([http://www.aspectiva.com/api/](http://www.aspectiva.com/api/ "http://www.aspectiva.com/api/")).


You connect to your Aspectiva account in the Data Center. This topic discusses the fields and menus that are specific to the Aspectiva connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Aspectiva account and create a DataSet, you must have your Aspectiva client ID.


Connecting to Your Aspectiva Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Aspectiva Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Aspectiva account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your Aspectiva client ID. |


Once you have entered valid Aspectiva credentials, you can use the same account any time you go to create a new Aspectiva DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Aspectiva report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Products | Returns information about a specified product. |
| Aspects | Returns a list of aspects for a specified product. |
| Example Reviews | Returns reviews from which positive and negative options were extracted, given a specific product and aspect. |

 |
| Products | Enter the ID(s) for the product(s) you want to retrieve data for. Separate multiple product IDs with commas.  |
| Product | Enter the ID for the product you want to retrieve data for. |
| Sentiment | Select whether you want to retrieve data for positive or negative sentiment. |
| Aspect | Select all aspects you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

