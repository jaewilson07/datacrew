---
title: Domo JSON Connector
url: https://domo-support.domo.com/s/article/360043433253
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433253](https://domo-support.domo.com/s/article/360043433253)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003588
views: 2,215
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Use the Domo JSON connector to retrieve JSON content definitions from a specified Domo instance. 


You connect to your Domo JSON account in the Data Center. This topic discusses the fields and menus that are specific to the Domo JSON connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Domo JSON account and create a DataSet, you must have the following:


* The Domo URL you want to retrieve information from
* The username and password for the specified Domo instance


Connecting to Your Domo JSON Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Domo JSON Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Domo JSON account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username of the Domo instance you want to pull data from. |
| Password | Enter the password of the Domo instance you want to pull data from. |


Once you have entered valid Domo JSON credentials, you can use the same account any time you go to create a new Domo JSON DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single field in which you enter your Domo URL.




| Menu | Description |
| --- | --- |
| URL | Enter the URL of the Domo instance you want to pull information from. The username and password you entered in the **Credentials** pane must match this URL. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How frequently will my data update?


As often as needed.


##### Are there any API limits I should be aware of?


No.


##### Can I use the same Domo JSON account for multiple DataSets?


Yes.

