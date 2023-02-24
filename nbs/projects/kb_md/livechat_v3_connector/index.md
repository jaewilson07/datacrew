---
    title: LiveChat V3 Connector
    url: https://domo-support.domo.com/s/article/360057014874
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360058892613](https://domo-support.domo.com/s/article/360058892613)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360057014874](https://domo-support.domo.com/s/article/360057014874)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003293
    views: 2,121
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


LiveChat is an online customer service software with online chat, help desk software, and web analytics capabilities. Use Domo’s LiveChat connector to delight your customers and fuel your sales. To learn more about the LiveChat V3 API, visit <https://developers.livechat.com/updates/release-stable-livechat-api-v3-2>.


You connect to your LiveChat account in the Data Center. This topic discusses the fields and menus that are specific to the LiveChat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360058892613 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your LiveChat account and create a DataSet, you must have the following:


* Your LiveChat Account ID
* Your LiveChat Personal Access Token


Connecting to Your LiveChat Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the LiveChat Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360058892613 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your LiveChat account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Account ID | Enter your LiveChat account ID. |
| Personal Access Token | Enter your LiveChat personal access token. |


Once you have entered valid LiveChat credentials, you can use the same account any time you go to create a new LiveChat DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the LiveChat report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Availability | Returns statistics on availability |
| Chats - Chatting Time | Returns statistics on time spent chatting |
| Chats - Engagement | Returns statistics on chat engagement |
| Chats - First Response Time | Returns statistics on time to first response in chats |
| Chats - Goals | Returns statistics on goals |
| Chats - Greetings | Returns statistics on greetings |
| Chats - Not Replied Chats | Returns statistics on chats not replied |
| Chats - Queued Visitors | Returns statistics on number of queued visitors |
| Chats - Queued Visitors Waiting Times | Returns statistics on how long queued visitors are waiting |
| Chats - Rankings | Returns chat ranking data |
| Chats - Ratings | Returns chat ratings data |
| Chats - Response Time | Returns statistics on chat response times |
| Chats - Total Chats | Returns statistics on total number of chats |
| Tickets - First Response Time | Returns statistics on time to first response on tickets |
| Tickets - New Tickets | Returns statistics on new tickets |
| Tickets - Rankings | Returns data on ticket rankings |
| Tickets - Ratings | Returns data on ticket ratings |
| Tickets - Resolution Time | Returns statistics on ticket resolution time |
| Tickets - Solved Tickets | Returns statistics on solved tickets |
| Tickets - Ticket Sources | Returns data on Ticket Sources |
| Management API |  |
| Agents | Returns a list of agents |
| Bot Agents | Returns a list of bot agents |
| Groups | Returns a list of groups |
| License Properties | Returns a list of license properties |
| Registered Properties | Returns a list of registered properties |

 |
| Date Selection | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Single Date - Specific  | Select the specific date using the date selector. |
| Single Date - Relative | Enter the number of days back that you would like to get data for in the ****Days Back**** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926054 "Adding a DataSet Using a Data Connector").

