---
title: LiveChat Connector
url: https://domo-support.domo.com/s/article/360042929614
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929614](https://domo-support.domo.com/s/article/360042929614)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003493
views: 1,086
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Live Chat is a customer service chat and ticketing platform. To learn more about the LiveChat API, visit their page ([https://developers.livechatinc.com/](https://developers.livechatinc.com/ "https://developers.livechatinc.com/")).


You connect to your LiveChat account in the Data Center. This topic discusses the fields and menus that are specific to the LiveChat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your LiveChat account and create a DataSet, you must have the following:


* The username for your LiveChat account.
* A LiveChat API key. For information about finding your API key, visit [https://docs.livechatinc.com/rest-ap...asic-api-usage](https://docs.livechatinc.com/rest-api/#basic-api-usage "https://docs.livechatinc.com/rest-api/#basic-api-usage").


Connecting to Your LiveChat Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the LiveChat Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your LiveChat account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username for your LiveChat account. |
| API Key | Enter your LiveChat API key. For information about finding your API key, visit [https://docs.livechatinc.com/rest-ap...asic-api-usage](https://docs.livechatinc.com/rest-api/#basic-api-usage "https://docs.livechatinc.com/rest-api/#basic-api-usage"). |


Once you have entered valid LiveChat credentials, you can use the same account any time you go to create a new LiveChat DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the LiveChat report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Agents | Returns a list of all LiveChat agents. |
| Agent Dashboard Report | Returns a statistics overview from the last 7 days for the specified agent. Shows his ratings, number of chats, and number of reached goals. |
| Availability Report | Shows how much the agent (or group or whole account) was available for chatting during specified period. When querying for one day, results are shown in minutes per every hour, otherwise in hours for each day. |
| Canned Responses | Returns a full list of your currently set canned responses. |
| Chat | Returns a list of all ended chats. |
| Chat Agents | Returns a list of chat agents. |
| Chat Custom Variables | Returns a list of chat custom variables. |
| Chat Events | Returns a list of chat events. |
| Chat Goals | Returns a list of chat goals. |
| Chat Messages | Returns a list of chat messages. |
| Chat Postchat Survey | Returns chat postchat survey data. |
| Chat Report | Shows how many chats occurred during the specified period. |
| Chat Supervisors | Returns a list of supervisors. |
| Chat Tags | Returns a list of chat tags. |
| Chat Tickets | Returns a list of chat tickets. |
| Chatting Time Report | Shows how much time the agent (or group) spent on chatting during specified period.  When querying for one day results are shown in minutes per every hour, otherwise in hours for each day. |
| Dashboard Report | Returns a statistics overview from last 7 days for the whole license. |
| Goals | Returns a list of currently set goals. |
| Goals Report | Shows the number of reached goals. |
| Greetings | Returns a list of greetings. |
| Greetings Report | Returns the "greetings to chat to goals" conversion rates report. |
| Groups | Returns a list of all created groups. |
| Group Dashboard Report | Returns statistics overview from last 7 days for the specified group. Shows ratings, number of chats and reached goals. |
| New Tickets Report | Shows the number of the tickets created during the specified period. |
| Queue Waiting Times Report | Shows Minimum, Average and Maximum waiting times for a given time period. |
| Queued Visitor Report | Shows how many visitors were waiting in the queue, how many abandoned the queue, or proceeded to chats. |
| Ranking Report | Shows the ratio of good to bad ratings for each operator. |
| Ratings Report | Shows how many chats were rated and how they have been rated during the specified period. |
| Solved Ticket Report | Shows the number of the tickets solved during the specified period. |
| Status Report | Returns the current status of your live chat instance. |
| Tickets First Response Report | Shows the time of the first response to tickets that were responded to for the first time during the specified period. |
| Ticket Resolution Time Report | Shows the resolution time of the tickets that were solved during the specified period. |
| Tickets | Returns a list of all tickets. |
| Ticket Sources Report | Shows the distribution of tickets between various channels. |
| Visitors  | Returns a list of visitors on the page with the tracking code installed. |
| Visitors Operators  | Returns a list of visitors operators. |
| Visitors Prechat Survey | Returns prechat survey data. |
| Visitors Visit Path | Returns visitors visit path data. |

 |
| Start Days | Enter the number of days back for which you want to start pulling report data. Pair with **End Days** to create a range of days. For example, if you entered 14 for **Start Days** and 7 for **End Days**, each time your report ran it would pull data from 14 days ago up until 7 days ago. |
| End Days | Enter the number of days back for which you want to stop pulling report data. Pair with **Start Days** to create a range of days. For example, if you entered 14 for **Start Days** and 7 for **End Days**, each time your report ran it would pull data from 14 days ago up until 7 days ago. |
| Group | Select the group you want to retrieve data for. |
| Login | Select the login name you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

