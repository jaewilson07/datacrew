---
title: DemandMetrics Connector
url: https://domo-support.domo.com/s/article/360043431073
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431073](https://domo-support.domo.com/s/article/360043431073)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003778
views: 1,080
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---





 

**Important:** Demandsphere has changed the name of GinzaMetrics to DemandMetrics. DemandMetrics is still your one-stop-shop for SEO, content, and competitor analytics. There should be no change to the Login User ID, Password, API Key, or Site Key. 



Intro
-----


DemandMetrics is a business intelligence and SEO platform designed to help businesses determine, design and implement changes and improvements to their site structure. Use Domo's DemandMetrics connector to manage and retrieve search rankings, optimization recommendations, social signals and web analytics data. To learn more about the DemandMetrics API, visit their page ([https://www.ginzametrics.com/api/api-documentation/](https://www.ginzametrics.com/api/api-documentation/ "https://www.ginzametrics.com/api/api-documentation/")).


You connect to your DemandMetrics account in the Data Center. This topic discusses the fields and menus that are specific to the DemandMetrics connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your DemandMetrics account and create a DataSet, you must have a DemandMetrics API key. If you do not have an API key, you can request one by emailing [support@ginzametrics.com](mailto:support@ginzametrics.com "mailto:support@ginzametrics.com"). 


Connecting to Your DemandMetrics Account
----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the DemandMetrics Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your DemandMetrics account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your DemandMetrics API key. If you do not have an API key, you can request one by emailing [support@ginzametrics.com](mailto:support@ginzametrics.com "mailto:support@ginzametrics.com").  |


Once you have entered valid DemandMetrics credentials, you can use the same account any time you go to create a new DemandMetrics DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the DemandMetrics report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Returns a list of sites in your account, along with metadata such as global keys and conversion events. |
| Competitors Ranking | Returns competitors' keyword rankings over time. |
| Integrated Keyword Performance | Returns statistics about keyword rankings for a given search engine.  |
| Keyword Ranking Trends | Returns information about your keyword rankings over time. |

 |
| Report Type | Select how your report data is to be broken down. If you select **Aggregate**, the data in the report is aggregated. If you select **Granular**, the data is broken down by the date grain you have selected in the **Granular** menu. |
| Granularity | Select the date granularity for your report data. For example, if you select **Weekly**, the data will be broken down by week.  |
| Site Global Key | Enter the global key for the site you want to retrieve data for. |
| Search Engine Global Key | Enter the global key for the search engine you want to retrieve data for.  |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### How often can the data be updated?


As often as needed.


#### Are there any API limits I should be aware of?


Some features of the DemandMetrics dashboard may not be available through the API.

