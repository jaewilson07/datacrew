---
title: Criteo Connector
url: https://domo-support.domo.com/s/article/360042926634
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926634](https://domo-support.domo.com/s/article/360042926634)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003780
views: 2,146
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Criteo is a personalized retargeting company that works with Internet retailers to serve personalized online display advertisements to consumers who have previously visited the advertiser's website. To learn more about the Criteo API, visit their [API documentation](https://developers.criteo.com/retail-media/docs).


You connect to your Criteo account in the Data Center. This topic discusses the fields and menus that are specific to the Criteo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Criteo account and create a DataSet, you must have the Client ID and Client Secret associated with your Criteo account.


Connecting to Your Criteo Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Criteo Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Criteo account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your Criteo account client ID. |
| Client Secret | Enter your Criteo account client secret. |


Once you have entered valid Criteo credentials, you can use the same account any time you go to create a new Criteo DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu, along with various other menus for configuring your report.




| Menu | Description |
| --- | --- |
| Report | Select the Criteo report you want to run. Currently only one report is available.

|  |  |
| --- | --- |
| Ad Sets | Retrieves the list of ad sets. |
| Audiences | Retrieves the list of audiences. |
| Campaigns And Categories Bids | Retrieves the bids for campaigns and their categories. |
| Campaigns | Retrieves the list of campaigns. |
| Campaigns V2 | Retrieves a list of the latest campaigns. |
| Statistics | Generates statistics report. |

 |
| Advertisers selection | Specify whether you want to select all advertisers or specific advertisers. |
| Advertiser ID | Select the advertisers. |
| Campaign Status | Select whether to retrieve data for all campaigns or only active campaigns. |
| Bid Type | Select the bid type you want to retrieve data with. |
| Dimensions | Select the dimensions to retrieve. |
| Metrics | Select the metrics to retrieve. |
| Currency | Select the currency to use for the report. |
| Date selection | Select whether you want to pull data for a specific date or a date range.  |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

