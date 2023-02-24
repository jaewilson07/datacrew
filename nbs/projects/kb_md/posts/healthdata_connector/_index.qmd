---
title: HealthData Connector
url: https://domo-support.domo.com/s/article/1500003956542
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/1500003956542](https://domo-support.domo.com/s/article/1500003956542)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003237
views: 2,110
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


The [HealthData.gov](http://HealthData.gov) is dedicated to making valuable health data discoverable and available to the public in the hopes of better health outcomes for all. It provides data on a wide range of topics, including environmental health, medical devices, social services, community health, and mental health. The Domo HealthData connector helps you to fetch the public health information datasets for various categories. Use Domo’s HealthData connector to get the recently added datasets and retrieve updated public health data. To learn more about the HealthData API, visit [https://www.hhs.gov/web/developer/index.html](https://www.hhs.gov/web/developer/index.html "https://www.hhs.gov/web/developer/index.html").


This topic discusses the fields and menus that are specific to the HealthData connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This Connector lets you retrieve the recently added datasets and updated public health data. |
| **Primary Metrics** | * The recent and updated public health data.
 |
| **Primary Company Roles** | * Medical practitioners
* Facilities roles
* Director of Operations
* Data Analysts
* Strategic planners
* Hospital managements
* Doctors and Nurses
 |
| **Average Implementation Time** | Less than 1 minute |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 1 |


Prerequisites
-------------


This connector returns public data, so no credentials are required.


Accessing the public health dataset
-----------------------------------


This section enumerates the options in the **Details** panes in the HealthDataConnector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Details Pane


This pane contains list of the recently updated health datasets.




| Menu | Description |
| --- | --- |
| Dataset | Select a Dataset to fetch the data for. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What endpoint is the base URL for this connector?


The base URL for the HealthData connector is <https://www.healthdata.gov/>.


#### What kind of credentials do I need to power up this connector?


This connector returns public data, so no credentials are required.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


No

