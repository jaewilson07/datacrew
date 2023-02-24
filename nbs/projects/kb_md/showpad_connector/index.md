---
    title: Showpad Connector
    url: https://domo-support.domo.com/s/article/360042928014
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928014](https://domo-support.domo.com/s/article/360042928014)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003663
    views: 1,084
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Showpad is a sales enablement platform focused on helping sales teams deliver the best buyer experience through smarter and more relevant conversations with their customers and prospects. To learn more about the Showpad API, visit their page ([https://help.showpad.com/hc/en-us/ar...oper-resources](https://help.showpad.com/hc/en-us/articles/115003169134-Developer-resources "https://help.showpad.com/hc/en-us/articles/115003169134-Developer-resources")).


You connect to your Showpad account in the Data Center. This topic discusses the fields and menus that are specific to the Showpad connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Showpad account and create a DataSet, you must have the following:


* A Showpad client ID
* A Showpad client secret


To generate these credentials, do the following:


1. In Showpad, go to **Settings > API > Manage OAuth Clients > OAuth Client**.
2. Use the following as your Redirect URI: <https://oauth.domo.com/api/data/v2/oauth/providers/showpad/exchange>
3. Check **Automatically refresh access tokens**
4. Check all **View** boxes.


Connecting to Your Showpad Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Showpad Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Showpad account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Showpad URL | Enter your company's Showpad URL. For example: <https://mysubdomain.showpad.biz>  |
| Client ID | Enter your client ID. For information about generating this, see "Prerequisites," above. |
| Client Secret | Enter your client secret. For information about generating this, see "Prerequisites," above. |


Once you have entered valid Showpad credentials, you can use the same account any time you go to create a new Showpad DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Showpad report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Assets | Returns a list of assets in your account. |
| Asset Tags | Returns a list of asset tags in your account. |
| Channels | Returns a list of channels in your account. |
| Contacts | Returns a list of contacts in your account. |
| Devices | Returns a list of devices in your account. |
| Divisions | Returns a list of divisions in your account. |
| Events | Returns a list of events in your account. |
| Export Assets | Returns a list of export assets in your account. |
| Shares | Returns a list of shares in your account. |
| Tags | Returns a list of tags in your account. |
| Tickets | Returns a list of tickets in your account. |
| User Groups | Returns a list of user groups in your account. |
| Users | Returns a list of users in your account. |
| User User Groups | Returns a list of user user groups in your account. |

 |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

