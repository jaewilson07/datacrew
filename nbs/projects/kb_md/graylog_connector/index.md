---
title: Graylog Connector
url: https://domo-support.domo.com/s/article/360043433353
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433353](https://domo-support.domo.com/s/article/360043433353)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003577
views: 1,072
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Graylog is an integrated log capture and analysis solution for operational intelligence. To learn more about the Graylog API, visit their page ([http://docs.graylog.org/en/2.4/pages.../rest\_api.html](http://docs.graylog.org/en/2.4/pages/configuration/rest_api.html "http://docs.graylog.org/en/2.4/pages/configuration/rest_api.html")).


You connect to your Graylog account in the Data Center. This topic discusses the fields and menus that are specific to the Graylog connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Graylog account and create a DataSet, you must have the following:


* The username and password for the Graylog account you want to pull data from
* The host URL you want to connect to (e.g. <https://server1:12900>)


Connecting to Your Graylog Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Graylog Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Graylog account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the password for the Graylog account you want to pull data from. |
| Password | Enter the password for the Graylog account you want to pull data from. |
| Host URL | Enter the host URL you want to connect to. |


Once you have entered valid Graylog credentials, you can use the same account any time you go to create a new Graylog DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Graylog report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Search Absolute | Returns Graylog data based on a specific date range. |
| Search Keyword | Returns Graylog data based on a keyword. |
| Search Relative | Returns Graylog data based on a relative timeframe.  |
| System Metrics | Get the selected system metrics |

 |
| From Date | Select the first date in the desired date range for your "Search Absolute" report. |
| To Date | Select the last date in the desired date range for your "Search Absolute" report. |
| Range Keyword | Enter a keyword or keywords indicating the desired timeframe for your "Search Keyword" report, such as yesterday or 2 weeks ago to Wednesday. |
| Relative Range to Search | Enter the number of seconds back for which you want to retrieve data for your "Search Relative" report. For example, if you entered 90, each time the report was updated it would pull in data for the last 90 seconds.  |
| Fields to Return (optional) | Enter the names of the columns you want to import from Graylog into Domo. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

