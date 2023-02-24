---
title: CallRail Connector
url: https://domo-support.domo.com/s/article/360043433753
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433753](https://domo-support.domo.com/s/article/360043433753)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003542
views: 2,126
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


CallRail provides call analytics services to help businesses learn what makes their phones ring. To learn more about the CallRail API, visit their page ([http://apidocs.callrail.com/](http://apidocs.callrail.com/ "http://apidocs.callrail.com/")).


You connect to your CallRail account in the Data Center. This topic discusses the fields and menus that are specific to the CallRail connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your CallRail account and create a DataSet, you must have a CallRail API Key. To obtain an API key, do the following:


1. Log into your CallRail account.
2. In the CallRail dashboard, select **My Account > Account** in the top right corner.
3. Select **API Access**.
4. Click **Add API Key** in the top right.


Your CallRail API Key appears in the table. 


Connecting to Your CallRail Account
-----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the CallRail Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your CallRail account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your CallRail API Key. For information about obtaining an API Key, see "Prerequisites," above. |


Once you have entered valid CallRail credentials, you can use the same account any time you go to create a new CallRail DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the CallRail report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Conversations | Returns all conversations, Conversation objects include the two most recent messages. |
| Calls | Returns a list of all calls in the target account. |
| Companies | Returns all companies associated with the target account. |
| Form Submissions | Returns all form submissions associated with the target account. |
| Notifications | Returns notifications within the target account. |
| Outbound Caller IDs | Returns all outbound caller Id's within the target company. |
| Summarizing Call Data | Returns summarized call data for an Agency or for a Company. |
| Summarizing Call Data by Time Series | Returns aggregate call data for an account or company, grouped by date. |
| Summary Email Subscriptions | Returns summary emails within the target account or company. |
| Tags | Returns tags within the target account. |
| Trackers | Returns all trackers associated with the target account. |
| Users | Returns users within the target account. |

 |
| Account ID | Select the account you want to retrieve data for. |
| Company ID | Select the company you want to retrieve data for. |
| User ID | Select the user you want to retrieve data for. |
| Group By | Select the category you want to group data in your report by (by campaign, by company, etc.). |
| Fields  | Select a field to aggregate data by in your "Summarizing Call Data by Time Series" report. |
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


##### What version of the CallRail API does the connector use?


This connector uses version 2 of the CallRail API (<https://api.callrail.com/v2>).


##### Which endpoints does each report call in this connector?




| Report  | Endpoint URL |
| --- | --- |
| All Conversations | /a/{account\_id}/text-messages.json |
| Calls | /a/{account\_id}/calls.json |
| Companies | /a/{account\_id}/companies.json |
| Form Submissions | /a/{account\_id}/form\_submissions.json |
| Notifications | /a/{account\_id}/notifications.json |
| Outbound Caller IDs | /a/{account\_id}/caller\_ids.json |
| Summarizing Call Data | /a/{account\_id}/calls/summary.json |
| Summarizing Call Data by Time Series | /a/{account\_id}/calls/timeseries.json |
| Summary Email Subscriptions | /a/{account\_id}/summary\_emails |
| Tags | /a/{account\_id}/tags.json |
| Trackers | /a/{account\_id}/trackers.json |
| Users | /a/{account\_id}/users.json |


##### What kind of credentials do I need to power up this connector?


You need your CallRail API Key.


##### Where can I find my API Key?


To obtain the API Key:


1. Log into your CallRail account.
2. In the CallRail dashboard, select **My Account>Account**in the top right corner.
3. Select **API Access.**
4. Click **Add API Key** in the top right.


Your CallRail API Key appears in the table.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

