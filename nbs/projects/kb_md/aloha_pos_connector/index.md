---
    title: Aloha POS Connector
    url: https://domo-support.domo.com/s/article/360043435593
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435593](https://domo-support.domo.com/s/article/360043435593)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003357
    views: 1,088
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Aloha POS  is a cloud-based retail solution for restaurants; it can be used to enter orders and payments, improve overall operations and streamline the preparation of food and delivery. This connector uses RealTime APIs—data streams that can be used to deliver actionable information in real time such as to a user's smartphone or an analytic engine. Data includes sales by key metrics, transaction level detail, returns, voids, average items per transaction, labor by shift, labor by overtime and much more.


To learn more about Aloha POS, visit their page ([https://www.ncr.com/restaurants/aloha-pos](https://www.ncr.com/restaurants/aloha-pos "https://www.ncr.com/restaurants/aloha-pos")).


You connect to your Aloha POS account in the Data Center. This topic discusses the fields and menus that are specific to the Aloha POS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Aloha POS account and create a DataSet, you must have an Aloha POS username and password.


Connecting to Your Aloha POS Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Aloha POS Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Aloha POS account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Aloha POS username. |
| Password | Enter your Aloha POS password.  |


Once you have entered valid Aloha POS credentials, you can use the same account any time you go to create a new Aloha POS DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Aloha POS report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Check Detail | Returns details about checks received. |
| Check Info List | Returns a list of info checks. |
| Check List | Returns a list of checks received. |
| Employee List Now | Returns a list of employees. |
| Labor Job | Returns shifts grouped by job code. |
| Labor Overtime Now | Returns a list of employees currently in overtime. |
| Labor Shift | Returns a list of shifts. |
| Last Transaction | Returns information about the last processed transaction. |
| Payment List | Returns a list of payments made. |
| Sold Items | Returns a list of items sold. |
| Store List | Returns a list of all stores for the provided StoreIDWildcard.  |
| Store Overview | Returns metrics for your stores for a given business day. |
| Store Sales | Returns overall sales for your stores. |
| Store Stats | Returns stats for net sales and labor, divided into timeframes. |
| Table List Now | Returns a list of currently open or recently closed tables for the current business day. |
| Tip List | Returns a list of tips received. |

 |
| Store Via | Select the StoreIDWildcard you want to return data for. |
| Store Name | Select the name of the store you want to return data for. |
| Employee Label | Select the employee label you want to return data for. |
| Check ID | Enter the ID for the check you want to return data for. You can get a list of check IDs by running the "Check List" report. |
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

