---
    title: SearchForce Connector
    url: https://domo-support.domo.com/s/article/360043431493
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431493](https://domo-support.domo.com/s/article/360043431493)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003741
    views: 1,073
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


SearchForce is a paid search and social media ad management platform for niche digital marketers.  API documentation for SearchForce is not available online, but you can visit their website at [https://www.searchforce.com/](https://www.searchforce.com/ "https://www.searchforce.com/"). 


You connect to your SearchForce account in the Data Center. This topic discusses the fields and menus that are specific to the SearchForce connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your SearchForce account and create a DataSet, you must have the following:


* Your SearchForce username
* A SearchForce security token


To obtain a security token, please reach out to your SearchForce representative.


Connecting to Your SearchForce Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the SearchForce Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your SearchForce account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Environment | Select whether you want to connect to the SearchForce staging or production environment. |
| Username | Enter your SearchForce username. |
| Token | Enter your SearchForce security token. |


Once you have entered valid SearchForce credentials, you can use the same account any time you go to create a new SearchForce DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains two primary menus, **Report Type** and **Report**, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report Type | Select the SearchForce primary report type you want to run. The following report types are available. (If you select "Reporting," you will then be asked to select a SearchForce subreport.)

|  |  |
| --- | --- |
| Data Update | Returns a list of every date after a given date in which the search engine account has had a data update. |
| Raw Data | Returns raw data. |
| Reporting | Returns data for a selected report type (see the next row). |

 |
| Report | Select the "Reporting" report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Ad Group | Returns ad group data. |
| Campaign | Returns campaign data. |
| Keyword | Returns keyword data. |

 |
| Account | Select the SearchForce account you want to retrieve data for. |
| Publisher ("Raw Data" report only) | Select the publisher you want to retrieve data for. |
| Aggregation | Select whether you want your report data to be broken down by day or month. |
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

