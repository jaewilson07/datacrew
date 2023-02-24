---
    title: inContact Connector
    url: https://domo-support.domo.com/s/article/360043434213
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434213](https://domo-support.domo.com/s/article/360043434213)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003492
    views: 1,099
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


inContact helps organizations create stand-out customer experiences while meeting key business metrics. Get contacts, agents and performance data while tracking agent and call center performance with the inContact Connector. To learn more about the inContact API, visit their page ([https://developer.incontact.com/API](https://developer.incontact.com/API "https://developer.incontact.com/API")).


You connect to your inContact account in the Data Center. This topic discusses the fields and menus that are specific to the inContact connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your inContact account and create a DataSet, you must have the following:


* Your inContact application name and vendor name, which you can find on inContact's Central website under **Manage > API Applications**
* The number of your business unit with inContact (busNo)
* Your inContact username and password


Connecting to Your inContact Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the inContact Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your inContact account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Application Name | Enter your inContact application name. |
| Vendor Name | Enter your inContact vendor name. |
| Business Number | Enter your inContact business number. |
| Username | Enter your inContact username. |
| Password | Enter your inContact password. |


For more information about these credentials, see "Prerequisites," above.


Once you have entered valid inContact credentials, you can use the same account any time you go to create a new inContact DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the inContact report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Agent Performance Report | Returns detailed data about agent performance on all agents in the business unit. |
| Agents | Returns data about agents for a business unit. |
| Campaigns | Returns details about the campaigns on a business unit. |
| Contacts | Returns details about all contacts during a time period for the business unit. |
| Custom inContact Report | Returns a custom report created at inContact's website. |
| Data Download | Returns a Data Download report created at inContact's website. |
| Skill Summaries Report | Returns both real time and reporting summary data for every skill in the business unit. |
| Skills | Returns details for all skills on the business unit. |
| Team Performance totals | Returns Team summary for all Teams in the business unit over a specific time frame. |
| Teams | Returns details for all teams on a business unit. |

 |
| Custom Report Name | Select a Custom Report. These reports are created on inContact's website. |
| Data Download Report | Select Data Download Report. These data download reports are created on inContact's Central website. |
| Date | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Single Date - Specific | Select the specific date using the date selector. |
| Single Date - Relative | Enter the number of days back that you would like to get data for in the ****Days Back**** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Date Offset | Enter the number of days back from the current date that will be presented in the report. |
| Date Range | Select the specific or relative date range. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ****************End Date**************** to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ****************Start Date****************to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

