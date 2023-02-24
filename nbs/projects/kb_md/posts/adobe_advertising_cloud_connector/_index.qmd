---
title: Adobe Advertising Cloud Connector
url: https://domo-support.domo.com/s/article/360043430833
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430833](https://domo-support.domo.com/s/article/360043430833)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003805
views: 2,130
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Adobe Advertising Cloud (formerly known as TubeMogul) is used to plan, buy, measure and optimize global advertising. To learn more about the Adobe Advertising Cloud/TubeMogul API, reach out to your account representative for documentation.


You connect to your Adobe Advertising Cloud account in the Data Center. This topic discusses the fields and menus that are specific to the Adobe Advertising Cloud connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Adobe Advertising Cloud account and create a DataSet, you must have the following:


* Your TubeMogul client ID
* Your TubeMogul client secret


To find your credentials, do the following in TubeMogul:


1. Click on the dropdown menu next to your login name on the top right.
2. Select **My Account**.


The API credentials will be in the grey box under **Account Details**.


Connecting to your Adobe Advertising Cloud account
--------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Adobe Advertising Cloud Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains fields for entering credentials to connect to your Adobe Advertising Cloud/TubeMogul account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your TubeMogul client ID. |
| Client Secret | Enter your TubeMogul client secret. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Adobe Advertising Cloud credentials, you can use the same account any time you go to create a new Adobe Advertising Cloud DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Adobe Advertising Cloud report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Advertisers | Gets the trafficking configuration data for all advertisers in your account. |
| Advertisers Reporting | Gets reporting for a single advertiser in your account, optionally broken ­out over the specified date range. Data will only be returned if the advertiser had live campaigns in the given date range. |
| Ads | Get the trafficking configuration data for all ads for a specified campaign. |
| Ads Reporting | Get reporting for all ads for a specified campaign, aggregated over the specified date range. Data will only be returned for ads that were live at the time. |
| Ad Types Reporting | Get reporting for all ad types for a specified campaign, aggregated over the specified date range. Data will only be returned if there were live ads of that type at the time |
| All Campaigns Reporting | Gets reporting for all campaigns in your account, aggregated over the specified date range. Data will only be returned for campaigns that were live in the given date range. |
| Campaign Reporting | Gets reporting for a single campaign in your account, optionally broken ­out over the specified date range. Data will only be returned if the campaign was live in the given date range. |
| Campaigns | Gets the trafficking configuration data for all campaigns in your account. |
| Placements | Get the trafficking configuration data for all placements for a specified campaign. |
| Placements Reporting | Get reporting for all placements for a specified campaign, aggregated over the specified date range. Data will only be returned for placements that were live in the given date range |
| Videos | Get the trafficking configuration data for all videos for a specified campaign. |
| Videos Reporting | Get reporting for all videos for a specified campaign, aggregated over the specified date range. Data will only be returned for videos that were live at the time. |

 |
| Advertiser Name | Select the advertiser you want to retrieve data for. |
| Bucket By | Select how you want your report data to be aggregated. |
| Campaign Name | Select the campaign you want to retrieve data for. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

