---
title: Awardco Connector
url: https://domo-support.domo.com/s/article/360060476953
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360060476953](https://domo-support.domo.com/s/article/360060476953)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003283
views: 1,115
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Awardco is a cloud-based employee recognition solution designed to boost employee engagement and simplify the reward process with incentivized programs. With Awardco, managers can recognize and reward the deserving employee within a matter of seconds, making the recognition process more empowering, relaxing, and flavorful from service awards to sales incentives. Use Domo's Awardco connector to retrieve data about recognitions, redemptions, transactions, and users in your organization. To learn more about the Awardco API, visit their page ([https://api.awardco.com/](https://api.awardco.com/ "https://api.awardco.com/")).


You connect to your Awardco account in the Data Center. This topic discusses the fields and menus that are specific to the Awardco connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Awardco account and create a DataSet, you must have your Awardco API key.


#### Obtaining the API key:


1. Log in to your Award Force account.
2. Go to **Settings > General > Integration**.
3. Note your Account ID (It will be required for validating your access tokens).
4. Next to the **API key** field, click **Generate key**.
5. You will see the API key field populated with your new key. Copy this key and paste it in the Connector's Credentials section (API Key). You can generate a new key at any time. Once a new key is generated, the old key will stop working.




 


**Note:** In order to generate the API key, you must have the "Awards manager" account privileges.



Connecting to Your Awardco Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Awardco Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Awardco account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Awardco API key. See "Prerequisites" for more details. |


Once you have entered valid Awardco credentials, you can use the same account any time you go to create a new Awardco DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Awardco report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Recognition Detail | Returns a detail level report for recognition within the selected time frame. |
| Recognition Summary | Returns a summary level report for recognition within the selected time frame. |
| Redemption Detail | Returns a detail level report for redemption within the selected time frame. |
| Redemption Fifo | Returns the information for redemption fifo report within the selected time frame |
| Redemption Summary | Returns a summary level report for redemption within the selected time frame. |
| Transactions | Returns all transactions within the selected time frame. |
| Users | Returns a list of all users. |

 |
| Date Selection | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date | Select the specific date using the date selector. |
| Relative Date | Enter the number of days back that you would like to get data for in the ****Days Back**** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Date Range | Select the specific or relative date range. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ****************End Date**************** to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ****************Start Date****************to create a range of represented days.
For example, if you entered 10 for ****************Start Date**************** and 5 for ****************End Date****************, the report would contain data for 10 days ago up until 5 days ago. |
| Time Period | Choose the time period that you would like to receive data for. |
| Starting Day of the Week | Select the day you would like your week to start with. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

