---
title: Booker Connector
url: https://domo-support.domo.com/s/article/360043435613
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435613](https://domo-support.domo.com/s/article/360043435613)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003347
views: 1,078
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Booker is an online spa and salon management tool. To learn more about the Booker API, visit their page (<https://apidoc.booker.com/Content/index.html>).


You connect to your Booker account in the Data Center. This topic discusses the fields and menus that are specific to the Booker connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Booker account and create a DataSet, you must have the following:


* The client ID for your Booker application
* The client secret for your Booker application
* The subscription key for your Booker application, found under the **Profile** section of your account. Your subscription must have "Merchant" level access.
* The personal access token for your Booker application, found under the **Profile** section of your account.


Connecting to Your Booker Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Booker Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Booker account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter the client ID for your Booker application. |
| Client Secret | Enter the client secret for your Booker application. |
| Subscription Key | Enter the subscription key for your Booker application. |
| Personal Access Token | Enter the personal access token for your Booker application. |


Once you have entered valid Booker credentials, you can use the same account any time you go to create a new Booker DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Booker report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Customers | Returns a list of customer records that have been modified within the selected date period. |
| Customer Memberships | Returns a list of customer memberships for customer records that have been modified within the selected date period. |
| Employees | Returns a list of employees for the selected locations. |
| Employee Schedules | Returns employee schedules for the selected locations within the selected date period. |
| Locations | Returns a list of locations. |
| Location Schedules | Returns schedules for the selected locations within the selected date period. |
| Memberships | Returns details about offered membership plans. |
| Notes | Returns customer and progress notes for customer records that have been modified within the selected date period. |
| Products | Returns a list of products. |
| Orders | Returns order records for the selected locations within the selected date period. |
| Rooms | Returns details about rooms within the selected locations. |
| Treatments | Returns details about treatments available at the selected locations. |
| Customers | Returns a list of customer records that have been modified within the selected date period. |
| Customer Memberships | Returns a list of customer memberships for customer records that have been modified within the selected date period. |

 |
| Include Expired? | Select **True** if you want to return data for expired memberships. |
| Location Selection Type | Select whether to retrieve data for all locations or specific locations. |
| Location Selection | Select all locations you want to retrieve data for. |
| Ignore Freelancers? | Select **True** if you do not want to return data for freelancers. |
| Only Active Employees? | Select **True** if you want to return data only for active employees; select **False** to return data for all employees. |
| Get Schedule Defaults? | Select **True** if you want to your data to include schedule defaults only. |
| Sub-Report | Choose the sub-report to include, either "Items" or "Refunds." Each record in the sub-report will become its own row of data. Be aware this will result in duplicates when combining values that are not a part of this sub-report. |
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

