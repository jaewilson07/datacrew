---
title: Influitive Connector
url: https://domo-support.domo.com/s/article/360043431393
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431393](https://domo-support.domo.com/s/article/360043431393)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003760
views: 1,076
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Influitive is a advocate marketing platform that helps you reach a wider audience, accelerate your sales pipeline, and improve customer engagement. To learn more about the Influitive API, visit their page ([http://support.influitive.com/articl...influitive-api](http://support.influitive.com/article/391-influitive-api "http://support.influitive.com/article/391-influitive-api")).


You connect to your Influitive account in the Data Center. This topic discusses the fields and menus that are specific to the Influitive connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Influitive account and create a DataSet, you must have the following:


* An Influitive API key. To find your API key, visit this page and follow the instructions under "Authorization": [http://support.influitive.com/articl...influitive-api](http://support.influitive.com/article/391-influitive-api "http://support.influitive.com/article/391-influitive-api")
* The Influitive API URL to connect to, e.g. <https://HUBNAME.influitive.com>


Connecting to Your Influitive Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Influitive Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 


### Credentials Pane


This pane contains fields for entering credentials to connect to your Influitive account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Influitive API key. |
| API URL | Enter your Influitive API URL. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Influitive credentials, you can use the same account any time you go to create a new Influitive DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


 


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Influitive report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Activities Needing Approval | Returns a list of activities that need your approval. |
| Contacts | Returns contacts from your Advocate Hub. |
| Events | Returns events from your Advocate Hub.  |
| Members | Returns details about a member with a provided email address. |
| Owned Members | Returns information about your own member account. |
| References | Returns Reference Completions. |

 |
| Email | Enter the email address of the member you want to retrieve information for. |
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

