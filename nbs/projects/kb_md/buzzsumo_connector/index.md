---
    title: BuzzSumo Connector
    url: https://domo-support.domo.com/s/article/360042926514
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926514](https://domo-support.domo.com/s/article/360042926514)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003800
    views: 2,114
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


BuzzSumo discovers the content that performs best for any topic or competitor and finds the key influencers to promote the content. Use the Domo BuzzSumo connector to receive details about most shared content, top influencers, trending content, and more. To learn more about the BuzzSumo API, visit their page ([http://buzzsumo.com/knowledge/buzzsumo-api/](http://buzzsumo.com/knowledge/buzzsumo-api/ "http://buzzsumo.com/knowledge/buzzsumo-api/")).


You connect to your BuzzSumo account in the Data Center. This topic discusses the fields and menus that are specific to the BuzzSumo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your BuzzSumo account and create a DataSet, you must have a BuzzSumo API key. For information about obtaining an API key, reach out to your BuzzSumo account representative.


Connecting to Your BuzzSumo Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BuzzSumo Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BuzzSumo account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your BuzzSumo API key. |


Once you have entered valid BuzzSumo credentials, you can use the same account any time you go to create a new BuzzSumo DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the BuzzSumo report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Article Sharers | Returns a sampling of the people who have shared a given article on Twitter. This is the same data you see when you click **View Sharers** in the top content search. |
| Links Shared | Returns recent links shared by a given Twitter user, ordered by most recent first. |
| Most Shared | Returns the most shared content for a specific domain or topic/keyword. |
| Top Influencers | Returns influencers for a given topic. These are the same results you see in BuzzSumo's **Influencer Search** area. |
| Trending | Returns the most popular content over the last 24 hours. |

 |
| Search Query | Enter a search query to retrieve data filtered to that query. |
| Result Type | Select a social network to filter your data by. If you select **Total**, data is returned for all social networks. |
| Article Type | Select an article type to filter your data by. |
| Language (Optional) | Enter the language you want to filter results by. |
| Search Type | Select whether you want to sort results by trending score or total shares. |
| Topic (Optional) | Enter the topic you want to retrieve data for. |
| TLD (Optional) | Enter the TLD (top-level domain) you want to retrieve data for. |
| Domain (Optional) | Enter the domain you want to retrieve data for. |
| Person Types | Select the person types you want to retrieve data for. |
| Ignore Broadcasters? | Check the box if you do not want broadcasters to be shown in your data. |
| Option to Select Article IDs | Select whether you want to collect data for all articles for a specified search query or only for a specified article. |
| Article ID | Select the ID of the article you want to retrieve data for. |
| Blocked Domains (Optional) | Enter the names of blocked domains you want to retrieve data for. |
| Username  | Enter the username you want to retrieve data for. |
| Hours (Optional) | Enter the number of hours you want to retrieve data for. |
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

