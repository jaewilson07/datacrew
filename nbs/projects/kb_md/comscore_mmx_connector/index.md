---
title: comScore MMX Connector
url: https://domo-support.domo.com/s/article/360043431053
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431053](https://domo-support.domo.com/s/article/360043431053)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003787
views: 1,073
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


comScore is an Internet analytics company providing marketing data and analytics to many of the world's largest enterprises, agencies, and publishers. Use Domo's comScore MMX connector to pull Media Metrix reports about key measures, media trends, target trends, and more.




The comScore connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.




This topic discusses the fields and menus that are specific to the comScore MMX connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your comScore MMX account and create a comScore DataSet, you must have a MyMetrix username and password.


Connecting to Your comScore MMX Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the comScore MMX connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your comScore MMX account. The following table describes what is needed for each field:  




| **Field** | **Description** |
| --- | --- |
| Username  | Enter your MyMetrix username. |
| Password | Enter your MyMetrix password. |


Once you have entered valid comScore MMX credentials, you can use the same account anytime you go to create a new comScore MMX DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane includes a primary menu, **Report**, and other options that appear depending on the report you select.




| **Option** | **Description** |
| --- | --- |
| Report | Select the comScore MMX report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Key Measures | Returns traffic measurements of browser-based consumption, video consumption, and app consumption for all entities, including usage and duration metrics for online activity for the report month. Also provides overall as well as category rankings.   |
| Media Trend | Returns trend data of browser-based consumption, video consumption, and app consumption for websites on any of the key measures, allowing users to better understand growth and seasonality for a selected time period.   |
| Percent Change Media Trend | Returns the percentage of change of a site or apps' visitor trends over two given time periods. You can also see competitive trends and benchmark growth  and identify key campaign impacts on a website over a specified time period. |
| Percent Change Target Trend | Returns percentages of demographic profiles trended to show changes in audience make-up over time. |
| Target Trend | Returns a demographic profile trended to show changes in audience make-up over time.  |

  |
| Data Source | Select the data source you want to retrieve information for. |
| Geography | Select the geographical area you want to retrieve information for. |
| Time Type | Select the time period you want your report to be broken down by. |
| Start Time Period | Select the start time period of the range you want to retrieve information for. |
| Time Period/End Time Period | Select the end time period of the range you want to retrieve information for. |
| Target Type | Select the demographic type you want to retrieve information for. |
| Target | Select the target demographic you want to retrieve information for. |
| Custom Target | Select the target demographic you want to retrieve information for. |
| Measure  | Select the measure you want to retrieve information for. |
| Media Search String | Enter the name of the website you want to retrieve information for (e.g. Google).  |
| Match Type | Select a search option for the search string you entered in **Media Search String**. If you select **Begins with**, all search results starting with your provided string are pulled. If you select **Match Exact String**, only search results with an exact match are returned.  |
| Media | Select the website you want to retrieve information for. |
| Duration  | Specify whether the data in this report is for a single date or a range of dates. |
| Report Date  | Specify whether the data is for a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back**) from the current date. For example, if you enter 5 for **Days Back** and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.    |
| Select Specific Date  | Select the date you want to retrieve data for.   |
| Days Back  | Enter the number of days back from the current date that will be presented in the report.  |
| Start Date  | Specify whether the first date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back to Start From**) from the current date. If you choose **Relative** here, you should also choose **Relative** for **End Date** and specify a value for **Date Back to End At**. 
For example, if you enter 10 for **Days Back to Start From**and 5 for **Days Back to End At**and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.     |
| End Date  | Specify whether the last date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back (which you specify in **Days Back to End At**) from the current date. If you choose **Relative** here, you should also choose **Relative** for **Start Date** and specify a value for **Date Back to Start From**. 
For example, if you enter 10 for **Days Back to Start From**and 5 for **Days Back to End At**and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.      |
| Select Specific Start Date  | Select the first date in your date range.   |
| Select Specific End Date  | Select the last date in your date range.   |
| Days Back to Start From  | Enter the number of days before the current date to use as the start date.  
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At** and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.  |
| Days Back to End At  | Enter the number of days before the current date to use as the end date.  
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At** and you set the DataSet to update daily, each day the report updates to show information for a 5-day range, starting 10 days ago and ending 5 days ago.   |
| Segment Collection  | Enter the segment collections you want to retrieve information for. Separate multiple collections with |.   |
| Visit Filter Collection  | Enter the visit filter collections you want to retrieve information for. Separate multiple collections with |.  |
| Time Interval Code  | Select the time interval for the report.  |
| Language  | Select the language for the report.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

