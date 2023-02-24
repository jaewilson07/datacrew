---
title: InsideSales Connector
url: https://domo-support.domo.com/s/article/360043432233
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432233](https://domo-support.domo.com/s/article/360043432233)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003681
views: 1,074
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


InsideSales provides an AI-based, growth acceleration platform for sales. You connect to your InsideSales account in the Data Center. This topic discusses the fields and menus that are specific to the InsideSales connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your InsideSales account and create a DataSet, you must have the following:


* Your InsideSales customer name
* The username and password for your InsideSales account
* Your InsideSales security token


For information about generating a security token, see [http://community.insidesales.com/sf/...hconfiguration](http://community.insidesales.com/sf/advancedtraining/admin/oauthconfiguration "http://community.insidesales.com/sf/advancedtraining/admin/oauthconfiguration"). 


Connecting to Your InsideSales Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the InsideSales Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your InsideSales account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Customer | Enter your InsideSales customer name. |
| Username | Enter the username for your InsideSales account. |
| Password | Enter the password for your InsideSales account. |
| Security Token | Enter your InsideSales security token. For information about generating a security token, see  [http://community.insidesales.com/sf/...hconfiguration](http://community.insidesales.com/sf/advancedtraining/admin/oauthconfiguration "http://community.insidesales.com/sf/advancedtraining/admin/oauthconfiguration").  |


Once you have entered valid InsideSales credentials, you can use the same account any time you go to create a new InsideSales DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu in which you select an InsideSales report.




| Menu | Description |
| --- | --- |
| Report | Select the InsideSales report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Returns a list of accounts. |
| Campaigns | Returns a list of campaigns. |
| Cases | Returns a list of cases. |
| Contacts | Returns a list of contacts. |
| Deals | Returns a list of deals. |
| Employees | Returns a list of employees. |
| Events | Returns a list of events. |
| Leads | Returns a list of leads. |
| Notes | Returns a list of notes. |
| Tasks | Returns a list of tasks. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

