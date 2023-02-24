---
title: Kochava Connector
url: https://domo-support.domo.com/s/article/360042926934
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926934](https://domo-support.domo.com/s/article/360042926934)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003751
views: 1,071
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Kochava is a tool for keeping track of user installs of mobile applications and the actions leading to those installs.  To learn more about the Kochava API, visit their page ([https://support.kochava.com/analytics-reports-api/](https://support.kochava.com/analytics-reports-api/ "https://support.kochava.com/analytics-reports-api/")).


You connect to your Kochava account in the Data Center. This topic discusses the fields and menus that are specific to the Kochava connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Kochava account and create a DataSet, you must have a Kochava API key. To create an API key, go here: [https://support.kochava.com/analytic...interface-key/](https://support.kochava.com/analytics-reports-api/create-and-manage-application-programming-interface-key/ "https://support.kochava.com/analytics-reports-api/create-and-manage-application-programming-interface-key/")


Connecting to Your Kochava Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Kochava Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Kochava account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Kochava API key. |


Once you have entered valid Kochava credentials, you can use the same account any time you go to create a new Kochava DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Kochava report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Create Detail Report | Returns a detailed report for your Kochava account. |
| Create Summary Report | Returns a summarized report for your Kochava account. |
| List All Apps | Returns a list of apps associated with a specified API key. |
| Scheduled Query Report | Returns data for a scheduled query report associated with the selected app and specified report token. |

 |
| App Name | Select the app you want to retrieve data for. |
| Traffic Type and Counters | Select the traffic type and counters you want to retrieve data for. |
| Traffic Includes (Optional) | Select any traffic includes you want in your report in addition to the regular fields. Choose **Custom** if you want to enter any traffic includes not listed. |
| Custom Traffic Includes | Enter a comma-separated list of the custom traffic includes you want in your report in addition to the regular fields. |
| Time Series | Enter the desired time series for your report. |
| Report Token | Enter the report token for the desired report. |
| Time Zone | Select the desired time zone for the report. |
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


##### Are there any API limits I should be aware of?


No.


##### How often can the data be updated?


As often as needed.

