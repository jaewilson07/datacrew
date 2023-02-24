---
    title: Simpli.fi Connector
    url: https://domo-support.domo.com/s/article/360042927294
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927294](https://domo-support.domo.com/s/article/360042927294)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003713
    views: 2,144
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


 




 


**Important:** [Simpli.fi](http://Simpli.fi) is deprecating certain endpoints on **January 31, 2022**. Domo has created new reports to replace the deprecated endpoints.  
**What does this mean for you?**


* You will need to create a new DataSet with the updated report.
* You will then need to reach out to Domo Support and ask them to migrate your current DataSet to your new DataSet.






[Simpli.fi](http://Simpli.fi) is a comprehensive RTB platform built for localized campaigns. To learn more about the [Simpli.fi](http://Simpli.fi) API, visit their page ([https://www.simpli.fi/platform/custom-api/](https://www.simpli.fi/platform/custom-api/ "https://www.simpli.fi/platform/custom-api/")).


You connect to your [Simpli.fi](http://Simpli.fi) account in the Data Center. This topic discusses the fields and menus that are specific to the [Simpli.fi](http://Simpli.fi) connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your [Simpli.fi](http://Simpli.fi) account and create a DataSet, you must have the following:


* A [Simpli.fi](http://Simpli.fi) application key
* A [Simpli.fi](http://Simpli.fi) user key


These credentials are provided on account creation. For more information, contact your [Simpli.fi](http://Simpli.fi) account representative.


Connecting to Your [Simpli.fi](http://Simpli.fi) Account
--------------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the [Simpli.fi](http://Simpli.fi) Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your [Simpli.fi](http://Simpli.fi) account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Application Key | Enter your [Simpli.fi](http://Simpli.fi) application key. |
| User Key | Enter your [Simpli.fi](http://Simpli.fi) user key. |


Once you have entered valid [Simpli.fi](http://Simpli.fi) credentials, you can use the same account any time you go to create a new [Simpli.fi](http://Simpli.fi) DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the [Simpli.fi](http://Simpli.fi) report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Campaign Ads | This report returns the data for all Campaign Ads. |
| All Campaigns | This report returns the data for all Campaigns. |
| All Campaign Stats | This report returns the status of all Campaigns. |
| Campaign Ads By Organization | This report returns the data for all Campaign Ads for the selected organization. |
| Campaign Ads | This report returns the list of Campaign Ads. |
| Campaigns List | This report returns a list of all Campaigns. |
| Campaign Stats | This report returns the status of the Campaign. |
| Organizations | This report returns the list of all the Organizations. |
| Report-Center | This report helps to retrieve existing report models, create new report models, and update the report models. |

 |
| Select the Company | Select the company you want to retrieve data for. |
| Organization Selection Criteria | Specify whether you want to retrieve report for all organizations or a specific organization. |
| Organization | Select the organization. |
| Client Selection Criteria | Specify whether you want to retrieve report for all clients or a specific client. |
| Report Model Selection Criteria | Specify whether you want to retrieve the existing report model or create the new model. |
| Campaign Selection Criteria | Specify whether you want to retrieve the campaigns only for the selected organization or include its descendants. |
| Campaigns Fetch Criteria | Specify whether you want to bring the data for selected campaign Ids or for all the available campaign Ids. |
| Report Model | Select the report model. |
| Select the Client | Select the client you want to retrieve data for. |
| Template | Select the template. |
| Model Name | Enter the Report Model name. 'Domo\_' will be prepended to the model name that you have provided. |
| Current Fields To Exclude | This is a list of fields automatically included in the report. Select fields that you wish to exclude. |
| Additional Fields | Select additional fields to retrieve. |
| Date Filters | Select the field for which you wish to apply a date selector. |
| Client | Select the client. |
| Campaigns | Select the campaign. |
| Granularity By Day | Select 'True' to breakdown the data by day. |
| Report Duration  | Select the duration for the report (a Single Date, or a Date Range). For the Report Center report, dates will only be used for the first run, subsequent run will retrieve only new data unless selections are modified. |
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

