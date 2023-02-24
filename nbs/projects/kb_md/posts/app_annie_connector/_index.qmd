---
title: App Annie Connector
url: https://domo-support.domo.com/s/article/360043433673
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433673](https://domo-support.domo.com/s/article/360043433673)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003536
views: 2,135
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


App Annie is a business intelligence company and analyst firm that produces a range of business intelligence tools and market reports for the apps and digital goods industry. Use Domo's App Annie connector to compile reports about accounts, products, advertising metrics, and the like. To learn more about the App Annie API, visit their website ( [https://support.appannie.com/hc/en-u...-Analytics-API](https://support.appannie.com/hc/en-us/sections/204363108-App-Analytics-API "https://support.appannie.com/hc/en-us/sections/204363108-App-Analytics-API") ).


You connect to your App Annie account in the Data Center. This topic discusses the fields and menus that are specific to the App Annie connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | Use this connector to pull data about user accounts and mobile products. |
| **Primary Metrics** | * Account Connections
* Product Sales
* Advertising Sales
* Top Apps
* Product Ratings
 |
| **Primary Company Roles** | * Mobile app advertising
* Manager
* Analytics
 |
| **Average Implementation Time** | Less than 1 hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Prerequisites
-------------


To connect to your App Annie account and create a DataSet, you must have the email address you use to log into App Annie, as well as your App Annie password.


Connecting to Your App Annie Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the App Annie Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo App Annie connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing App Annie accounts in Domo) to open the App Annie OAuth screen where you can enter your App Annie credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new App Annie DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into App Annie when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook or switch accounts (using the **Switch Accounts** option in the OAuth screen).



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the App Annie report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Connections List | Retrieves all account connections available in the authenticated user's account. |
| Account Connection Products List | Retrieves the product list for the selected account connection. |
| Account Connection Sales | Retrieves sales information for the selected account connection. |
| Advertising Account Site & Campaign List | Retrieves a list of all sites and/or campaigns for a specific ad platform account. |
| App Site & Campaign List | Retrieves a list of all sites and campaigns linked to the selected app. |
| IAP List | Retrieves the In Product Purchase list for the selected product. |
| Product Sales | Retrieves sales data for the selected product, such as number of downloads, refunds, etc. |
| Shared Products List | Retrieves a list of shared products the authenticated user may have access to. |
| User Advertising Sales | Returns advertising metrics for the authenticated user. |

 |
| Account Name | Select the account you want to retrieve information for. |
| Breakdown | Select the dimension the report data should be broken down by. |
| Currency | Select the world currency you want to retrieve data for. |
| Product | Select whether to return data for a specified product or all products. |
| Product Name | Select the product you want to retrieve information for. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of days back you want to retrieve data for. For example, 0 would return today's data; 1 or yesterday would retrieve yesterday's data; 7 or today-7 would retrieve data for the past 7 days; and so on. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Number of Days Back for Historical Data on First Run | Enter the number of past days to backfill on the first run of the DataSet. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

