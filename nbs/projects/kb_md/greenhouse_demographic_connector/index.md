---
title: Greenhouse Demographic Connector
url: https://domo-support.domo.com/s/article/360043873854
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043873854](https://domo-support.domo.com/s/article/360043873854)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003310
views: 2,105
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Greenhouse Software provides a recruiting software as a service that lets companies create a uniform interview procedure so candidates can be judged based on the same rubric. Use Domo's Greenhouse Demographic connector to retrieve lists of demographic questions and answers for recruiters. To learn more about the Greenhouse API, visit their page ([https://www.greenhouse.io/features/use-powerful-apis](https://www.greenhouse.io/features/use-powerful-apis "https://www.greenhouse.io/features/use-powerful-apis")).


You connect to your Greenhouse account in the Data Center. This topic discusses the fields and menus that are specific to the Greenhouse Demographic connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Greenhouse account and create a DataSet, you must have a Greenhouse API token. This token is provided by Greenhouse. If you do not have an API token, contact your Greenhouse customer service rep.


Connecting to your Greenhouse account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Greenhouse Demographic Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains fields for entering credentials to connect to your Greenhouse account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Token | Enter your Greenhouse API token. This token is provided by Greenhouse. If you do not have an API token, contact your Greenhouse customer service rep. |


Once you have entered valid credentials, you can use the same account any time you go to create a new Greenhouse Demographic DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Greenhouse Demographic report you want to run. The following reports are available:

|  |  |
| --- | --- |
| List Answers | Lists all of the demographic answers for your organization. |
| List Applications | Lists all of your organization's applications. |
| List Answer Options | Lists all of the demographic answer options for your organization. |
| List Answer Options for a Question | Lists all of the answer options for a given demographic question. |
| List Answers for an Application | Lists all of the answers for a given application. |
| List Questions | Lists all of the demographic questions for your organization. |

 |
| Question | Select the question you want to retrieve answer options for. |
| Application Type | Select whether you want to enter application IDs manually or select them from a list. |
| Application ID | Enter a comma-separated list of application IDs you want to retrieve data for. |
| Application Updated After | Select a date to filter your report to show only applications updated after that date. |
| Include Date Filter | Select this option if you want to filter your report by date. |
| Dates | Select the dates you want to retrieve data for. |


### 
Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

