---
title: COVID-19 Connector
url: https://domo-support.domo.com/s/article/4404766005655
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/4404766005655](https://domo-support.domo.com/s/article/4404766005655)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003220
views: 1,070
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Use Domo's COVID-19 connector to get statistics from WHO and Johns Hopkins University regarding the current outbreak of novel coronavirus disease (COVID-19). Understanding how rapidly the virus is expanding, see testing trends worldwide or locally, and gain insights to know when it's safe to get people back to work. Stay up-to-date on the latest news and statistics about the coronavirus and COVID-19 with Domo's COVID-19 connector.


This topic discusses the fields and menus that are specific to the COVID-19 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


The COVID-19 connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is useful for getting the updates on current corona virus stats and testing trends worldwide when planning travelling or direct interaction with people. |
| **Primary Company Roles** | * HR roles, especially those involved in event planning
* Anyone interested in getting corona virus updates
* Medical practitioners
 |
| **Average Implementation Time** | Less than 1 minute |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 1 |


Prerequisites
-------------


None. As this data is a public connector, there is no need to enter connection information.


Creating a Covid-19 DataSet
---------------------------


To create a Covid-19 DataSet, simply select the report you wish to retrieve in the **Details** pane. Then schedule updates and name and describe your new DataSet in the **Scheduling** and **Name & Describe Your DataSet**panes. These panes are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Details Pane
------------


This connector provides reports based on the data collected from WHO and Johns Hopkins University. The following reports are available:






| Field | Description |
| --- | --- |
| Domo Data | The DOMO data is a cleansed and enhanced version of the COVID-19 stats.

|  |  |
| --- | --- |
| DOMO Covid Additional Metrics Data | Returns the data about Covid19 additional metrics from the DOMO repository. |
| Domo Covid Additional Metrics (all time) | Returns the all time data about Covid19 additional metrics from the DOMO repository. |
| DOMO Covid Current Snapshot Tracker Data | Returns the data about Covid19 current snapshot tracker from the DOMO repository. |
| DOMO Covid Time Series Tracker Data | Returns the data about Covid19 time series tracker from the DOMO repository. |
| DOMO Covid US County Time Series Tracker Data | Returns the data about Covid19 US county level time series tracker from the DOMO repository. |

 |
| Johns Hopkins University Center for Systems Science and Engineering (JHUCSSE) Data | The JHU data come directly from John Hopkins University (JHU), based on the data they publish at their Coronavirus Research Center.

|  |  |
| --- | --- |
| JHU Covid Daily Report | Returns the data about daily case reports from the JHU CSSE data repository. |
| JHU Covid Time Series Confirmed | Returns the data about daily time series summary of confirmed cases from the JHU CSSE data repository. |
| JHU Covid Time Series Deaths | Returns the data about daily time series summary of deaths from the JHU CSSE data repository. |
| JHU Covid Time Series Recovered | Returns the data about daily time series summary of recovered cases from the JHU CSSE data repository. |

 |



Other Panes
-----------


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Troubleshooting
---------------


Reach out to Domo Support if you experience issues with this connector.


FAQs
----


#### What kind of credentials do I need to power up this connector?


No credentials needed.


#### What kind of data does this connector provide?


The COVID-19 connector gets the statistics from WHO, Johns Hopkins University, Worldometer and others about the current outbreak of novel coronavirus disease (COVID-19), and provides you the latest statistics. You can get the statistics about confirmed cases, recovered cases, deaths, and daily reports from the Domo repository as well as Johns Hopkins University repository.


#### From where does this connector collect the data?


The JHU data come directly from John Hopkins University (JHU), based on the data they publish at their [Coronavirus Research Center](https://coronavirus.jhu.edu/map.html). This data is provided exactly as JHU publishes and could change without knowledge of Domo. This data updates once nightly.  
The DOMO data is a cleansed and enhanced version of the COVID-19 stats, and powers the [Coronavirus (COVID-19) Tracker](https://www.domo.com/covid19/daily-pulse/).


#### How this connector is useful to me?


The COVID-19 connector provides you the accurate data which is monitored by a team at Domo, analyzing the evolving epidemic. Benefits of using this connector:


* The data is collected by blending the Worldometer and Johns Hopkins data to get the most current information. We actually have an alert tracking the updates for information. The data is refreshed roughly every ten minutes and is a blend of current day worldometer with JHU history. If one site is down, we can also toggle quickly between the sources.
* The data is cleansed and aligned continuously by fixing inconsistent country names, aligning latitude/longitude or fixing errors, replacing nulls with zero etc. So, the issues are corrected as they are found. As a result, you get the benefit of cleaner and easier to use data.
* You always get the enriched data as we have added additional metrics like first date after 100 cases for countries or calculating new cases, deaths, and recoveries for each historical day. We are also now exposing some additional metrics we compile including test results, stay at home orders, economic data and more.


#### How often can the data be updated?


The COVID-19 connector updates automatically as the data updates in the repository.

