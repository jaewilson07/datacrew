---
title: Limble CMMS Connector
url: https://domo-support.domo.com/s/article/360058892493
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360057014534](https://domo-support.domo.com/s/article/360057014534)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360058892493](https://domo-support.domo.com/s/article/360058892493)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003294
views: 2,114
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Limble CMMS is a modern CMMS software provider that services customers around the globe. It organizes, plans, tracks, and simplifies a company’s maintenance operations by giving users the tools to automatically track work orders, schedule preventive maintenance (PM), receive external work requests, track asset history, manage inventories and generate reports. Use Domo’s Limble CMMS connector to simplify and organize your Company’s maintenance operations. To learn more about the Limble CMMS API, visit <https://apidocs.limblecmms.com/?version=latest>.


You connect to your Limble CMMS account in the Data Center. This topic discusses the fields and menus that are specific to the Limble CMMS connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360057014534 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Limble CMMS account and create a DataSet, you must have the following:


* The Client ID (Your Client ID is your unique customer identification)
* The Client Secret (Your Client Secret is used to authenticate the Client ID on each API call)


To obtain your Client ID and Client Secret simply contact your dedicated CMMS advisor or send an email at [admin@limblecmms.com](mailto:admin@limblecmms.com).


Connecting to Your Limble CMMS Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Limble CMMS Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360057014534 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Limble CMMS account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your unique Limble CMMS Client ID. |
| Client Secret | Enter your Client Secret that is used to authenticate the Client ID on each API call.  |


Once you have entered valid Limble CMMS credentials, you can use the same account any time you go to create a new Limble CMMS DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Limble CMMS report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Assets | Returns a list of Assets with top-level information such as name, last edited, etc. |
| Asset Fields | Returns detailed information about asset fields such as Make, Model, and any other custom field. |
| Asset Field History | Returns change log information of an asset. This request allows you to pull that information so you can see trends over time. |
| Asset Suggested Fields | Returns all possible fields an Asset can pick from when deciding which fields it should have. |
| Labor Categories | Returns the labor categories. |
| Location | Returns your Locations in Limble. |
| Tasks | Returns top-level information about Tasks such as completed date, assignment, asset ID, etc. |
| Tasks Instruction | Returns all Task Instructions associated with a Task. |
| Tasks Invoice | Returns all Invoices associated with Tasks. |
| Tasks Labor | Returns the labor (time spent) on a Task. A single Task can have multiple times logged onto it. |
| Task Part | Returns parts attached to all tasks. |
| Teams | Returns a list of Teams. |
| Parts | Returns a list of detailed info for each part. |
| Parts Categories | Returns a list of categories along with their ids. |
| Part Fields | Returns detailed information about custom set Part Fields, |
| Part Suggested Fields | Returns all possible fields a Part can pick from when deciding the fields it should have. |
| Parts Usage | Returns Parts usage log. |
| Purchase Orders | Returns information such as PO IDs, PO Numbers, etc. |
| Purchase Order Items | Returns information associated with Purchase Orders. Every line item on a purchase order is an Item returned by this call. |
| Roles | Returns a list of Roles. |
| Users | Returns information about Users such as User Login, User Email, etc. |
| User Role | Returns list of the Roles a User has and what Location they have that Role at. |
| Users Team | Returns list of the Teams a User has and what Location they have that Team at. |
| Vendors | Returns information such as Vendor IDs, Vendor Names, etc. |
| Vendor Fields | Returns detailed information about Vendor Fields such as contact information, contracts, and any other custom set field. |
| Vendor Suggested Fields | Returns all possible fields a Vendor can pick from when deciding which fields it should have. |

 |
| Include Date Filter | Select this option if you want your dataset to include date parameters to filter the data. |
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
| Time Period | Specify the time period that you would like to receive data for. |
| Starting Day of the Week | Select the day you would like your week to start with. |
| Asset ID | Select the Asset ID(s). |
| Location ID | Select the Location ID. |
| Status | Select whether you want to fetch complete or incomplete tasks. |
| Task ID | Select the Task ID. |
| User ID | Select the User ID(s). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

