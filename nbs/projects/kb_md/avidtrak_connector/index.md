---
    title: AvidTrak Connector
    url: https://domo-support.domo.com/s/article/360043430853
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430853](https://domo-support.domo.com/s/article/360043430853)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003796
    views: 1,077
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


AvidTrak is multi-featured software for call tracking, recording, and analytics for advertising campaigns. To learn more about the AvidTrak API, visit their page ([http://avidtrak.com/Call\_Tracking\_API.php](http://avidtrak.com/Call_Tracking_API.php "http://avidtrak.com/Call_Tracking_API.php")).  


You connect to your AvidTrak account in the Data Center. This topic discusses the fields and menus that are specific to the AvidTrak connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your AvidTrak account and create a DataSet, you must have the following:


* An AvidTrak pin code (provided by AvidTrak when you sign up)
* The base URL of your AvidTrak instance


Connecting to Your AvidTrak Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the AvidTrak Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your AvidTrak account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Pin Code | Enter your AvidTrak pin code. |
| Base URL | Enter the URL of your AvidTrak instance. |


Once you have entered valid AvidTrak credentials, you can use the same account any time you go to create a new AvidTrak DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with options for selecting the date or date range for the report.




| Menu | Description |
| --- | --- |
| Report | Select the AvidTrak report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Geographical Data | Returns geographical data for calls for a selected date or date range. |
| Offline Portal Calls | Returns data for offline portal calls for a selected date or date range. |

 |
| Duration  | Select whether you want to pull data for a specific date or a date range. If you select **Default**, yesterday's data is pulled.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Date Offset | Enter the number of past days that should appear in the report.   |
| Date From | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| Date To | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Date From | Select the first date in your date range.  |
| Select Specific Date To | Select the second date in your date range.  |
| Date From Offset | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Date To Offset | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  

