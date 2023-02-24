---
title: iSpot.tv Connector
url: https://domo-support.domo.com/s/article/360042931114
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042931114](https://domo-support.domo.com/s/article/360042931114)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003352
views: 1,073
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


[iSpot.tv](http://iSpot.tv) is a realtime TV advertising metrics service. To learn more about the [iSpot.tv](http://iSpot.tv) API, visit their page ([https://www.ispot.tv/spot-analytics-features/api](https://www.ispot.tv/spot-analytics-features/api "https://www.ispot.tv/spot-analytics-features/api")).


You connect to your [iSpot.tv](http://iSpot.tv) account in the Data Center. This topic discusses the fields and menus that are specific to the [iSpot.tv](http://iSpot.tv) connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your [iSpot.tv](http://iSpot.tv) account and create a DataSet, you must have an [iSpot.tv](http://iSpot.tv) username and password.


Connecting to Your [iSpot.tv](http://iSpot.tv) Account
------------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the [iSpot.tv](http://iSpot.tv) Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your [iSpot.tv](http://iSpot.tv) account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your [iSpot.tv](http://iSpot.tv) username. |
| Password | Enter your [iSpot.tv](http://iSpot.tv) password. |


Once you have entered valid [iSpot.tv](http://iSpot.tv) credentials, you can use the same account any time you go to create a new [iSpot.tv](http://iSpot.tv) DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the [iSpot.tv](http://iSpot.tv) report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Active Content Report | Returns a list of TV commercials shown within the given date range. |
| Content Airing Report | Returns data about every airing within the given date range. |
| Extended Airing Report | Returns the same data as the "Content Airing Report" along with expanded data including ad cost estimates. |
| New Content Report | Returns a list of all content IDs ingested within the given date range. |
| Updated Content Report | Returns all TV ads in which iSpot's data has been updated within the given date range. |

 |
| Type | Select the type of metrics you want to get data for--either ad, brand, or industry metrics. |
| Rollup | Select whether you want a daily or hourly aggregation for your report data. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

