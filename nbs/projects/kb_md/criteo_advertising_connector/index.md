---
    title: Criteo Advertising Connector
    url: https://domo-support.domo.com/s/article/360042926614
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926614](https://domo-support.domo.com/s/article/360042926614)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003774
    views: 1,074
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Criteo's state-of-the-art technology transforms digital advertising into a personal experience that drives better results.  To learn more about the Criteo API, visit their page (<https://support.criteo.com/s/article?article=API-Getting-Started>).


You connect to your Criteo Advertising account in the Data Center. This topic discusses the fields and menus that are specific to the Criteo Advertising connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Criteo Advertising account and create a DataSet, you must have the following:


* Your Criteo Advertising username and password
* Your Criteo Advertising app token


For information about generating an app token, reach out to your Criteo Advertising client representative. 


Connecting to Your Criteo Advertising Account
---------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Criteo Advertising Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Criteo Advertising account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Criteo Advertising username. |
| Password | Enter your Criteo Advertising password. |
| App Token | Enter your Criteo Advertising app token. |


Once you have entered valid Criteo Advertising credentials, you can use the same account any time you go to create a new Criteo Advertising DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus for configuring your report.




| Menu | Description |
| --- | --- |
| Report | Select the Criteo Advertising report you want to run. Currently only a single report is available. 

|  |  |
| --- | --- |
| Advertising Reports | Returns available performance reports. |

 |
| Report Type | Select the desired report type, either Banner, Campaign, or Category. |
| Banner IDs (Optional) | Enter a comma-separated list of banner IDs you want to pull data for. |
| Campaign IDs | Select all of the campaigns you want to retrieve data for. |
| Category IDs | Select all of the categories you want to retrieve data for. |
| Report Columns | Select the columns you want to appear in your report. |
| Aggregation Type | Select whether you want your report dates to be aggregated by hour or by day. |
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


##### Can I use the same account to create multiple DataSets?


Yes.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

