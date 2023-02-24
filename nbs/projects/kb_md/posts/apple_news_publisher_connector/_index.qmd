---
title: Apple News Publisher Connector
url: https://domo-support.domo.com/s/article/360042926394
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926394](https://domo-support.domo.com/s/article/360042926394)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003807
views: 2,108
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Apple News gives users the ability to to launch, monitor, and report on direct-sold and house advertising campaigns using Workbench for News Publishers. Use Domo's Apple News Publisher connector to retrieve pull data from your Apple News Publisher system in Domo. To learn more about the Apple News API, visit their page ([https://developer.apple.com/document...apple\_news\_api](https://developer.apple.com/documentation/apple_news/apple_news_api "https://developer.apple.com/documentation/apple_news/apple_news_api")).


You connect to your Apple News account in the Data Center. This topic discusses the fields and menus that are specific to the Apple News Publisher connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Apple News account and create a DataSet, you must have the following:


* An Apple News client-side SSL private key
* An Apple News client-side SSL certificate signed by Apple Ad Platforms
* An Apple News access token


To obtain these credentials, follow the instructions under "Access, Authentication, and Authorization" here: [https://developer.apple.com/library/.../Overview.html](https://developer.apple.com/library/archive/documentation/General/Conceptual/iAd_News_Campaign_API/Book/Overview.html "https://developer.apple.com/library/archive/documentation/General/Conceptual/iAd_News_Campaign_API/Book/Overview.html")


Connecting to Your Apple News Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Apple News Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Apple News account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Private Key | Enter your client-side SSL private key. |
| Certificate | Copy and paste your client-side SSL certificate. |
| Access Token | Enter your Apple News access token. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Apple News credentials, you can use the same account any time you go to create a new Apple News Publisher DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Apple News report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Ad Metrics | Returns metrics of the performance of a specified ad. |
| Campaign Details | Returns campaign details for a period for one or more campaigns. Output includes details and metrics for the period for campaigns, corresponding lines, and ads. |
| Campaign Metrics | Returns metrics of the performance of a campaign.  |
| Campaign Summary | Returns a summary of campaign data. |
| Check Inventory | Returns the available inventory for a particular set of targeting criteria without having to create a line. |
| Check Line Inventory | Retrieves the inventory landscape. The returned values are estimates of future inventory available to that line. |
| Line Details | Returns line details for one or more lines. Output includes details and metrics for the specified period for lines and corresponding ads. If no ads are associated with the line, no ad details are returned. |
| Line Metrics | Returns metrics for the performance of a line. |

 |
| Campaign IDs | Enter the IDs of the campaigns you want to retrieve data for, separated by commas. You can find campaign IDs by running the "Campaign Summary" report. |
| Sublist to Flatten | Select the sublist you want to flatten. |
| Timezone | Select the time zone you want to retrieve data for. |
| State | Select the state you want to retrieve data for. |
| Impression Goal | Enter the number of impressions you want to retrieve data for. |
| Line Type | Select the line type you want to retrieve data for. |
| Creative Type | Select the creative type you want to retrieve data for. |
| Ad Position | Select the ad position you want to retrieve data for. |
| Country Code | Select the code for the country you want to retrieve data for. |
| Line IDs | Select the line IDs you want to retrieve data for. |
| Ad IDs | Select the ad IDs you want to retrieve data for. |
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


FAQs
----


##### How does the connector aggregate report data?


Returned data will be aggregated depending on the values of the **Start Date** and **End Date**parameters. If you specify between 2 and 31 days of data, daily data will be returned. If you specify one day of data, hourly data is returned. If you specify more than 31 days but fewer than 28 weeks, weekly data is returned. If you specify more than 28 weeks, monthly data is returned.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

