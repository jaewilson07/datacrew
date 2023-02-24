---
title: Clavis Edge Digital Shelf Connector
url: https://domo-support.domo.com/s/article/360061648033
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360061648033](https://domo-support.domo.com/s/article/360061648033)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003253
views: 1,102
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Clavis Insight is the leading cloud-based e-Commerce Intelligence and Online Store Audit solution for consumer products manufacturers and retailers. Use Domo's Clavis Edge Digital Shelf connector for better insights on how products and brands perform in online stores and to connect your Clavis Edge Digital Shelf data to Domo for more insights on consumer products manufacturers and retailers. To learn more about the Clavis API, reach out to your account representative.


You connect to your Clavis account in the Data Center. This topic discusses the fields and menus that are specific to the Clavis Edge Digital Shelf connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This Connector lets you retrieve data about the products and brands performance in online stores. |
| **Primary Metrics** | * Products
* Search terms used for the online search
* Competitor's data
 |
| **Primary Company Roles** | * Sales and Marketing teams
* Analytics
* Online Markets and Stores
* Market Researchers
 |
| **Average Implementation Time** | Less than an hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4 |


Best Practices
--------------


* If your subscription has global access, you may need to enter the instance name. It will be a 2 letter word like au, us etc. The data will be fetched for that instance (country) only.


Prerequisites
-------------


To connect to your Clavis account and create a DataSet, you must have the following:


* The access token from your digital shelf UI to authenticate the account.
* (Optional) The instance if your subscription has global access. It will be a 2 letter word like au, us etc. The data will be fetched for that instance (country) only.


Connecting to Your Clavis Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Clavis Edge Digital Shelf Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Clavis account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Access Token | Enter the access token from your digital shelf UI to authenticate the account. |
| Instance (Optional) | You may want to enter the instance if your subscription has global access. It will be a 2 letter word like au, us etc. The data will be fetched for that instance (country) only. |


Once you have entered valid Clavis credentials, you can use the same account any time you go to create a new Clavis Edge Digital Shelf DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Clavis Edge Digital Shelf report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Content Results | Returns the latest content results. |
| Products | Returns products data from the stores. |
| Search Terms | Returns your search terms. Each search term includes the related online store search result for a given report date. |
| Search Term Results | Returns products data from the stores. |

 |
| Include Competitor Data in Results | Selecting this option will cause your dataset to include competitor data. |
| Use legacy column names form compatibility with the Clavis connector | Selecting this option will match the column name with the column names in the original Clavis connector. |
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


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Clavis API does this connector use?


This connector uses version 2 of the Clavis API (<https://insights-api.clavistechnology.com/api/v2/>).


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Content Results | /content-results |
| Products | /products |
| Search Terms | /search-terms |
| Search Term Results | /search-term-results |


#### What kind of credentials do I need to power up this Connector?


You need the access token from your digital shelf UI to authenticate the account. You may want to enter the instance if your subscription has global access. It will be a 2 letter word like au, us etc. The data will be fetched for that instance (country) only.


#### Can I use the same account to create multiple datasets?


Yes


#### What is the difference between the Clavis and Clavis Edge Digital Shelf connectors?


The Clavis connector uses version 1 of the Clavis API (<https://api.clavistechnology.com/v1/>) whereas the Clavis Edge Digital Shelf connector uses version 2 of the Clavis API (<https://insights-api.clavistechnology.com/api/v2/>).


#### Are there any API limits I should be aware of?


The API requests are restricted to 50,000 requests per hour per single IP address and 20 requests per minute per customer.


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
