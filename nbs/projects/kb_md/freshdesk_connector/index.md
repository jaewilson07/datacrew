---
    title: Freshdesk Connector
    url: https://domo-support.domo.com/s/article/360043434193
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434193](https://domo-support.domo.com/s/article/360043434193)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003498
    views: 1,096
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Freshdesk is an online help desk software program that integrates traditional support channels such as email, phone, chat, and the web with new social channels. To learn more about the Freshdesk API, visit their page ([https://freshdesk.com/api](https://freshdesk.com/api "https://freshdesk.com/api")).


You connect to your Freshdesk account in the Data Center. This topic discusses the fields and menus that are specific to the Freshdesk connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Freshdesk account and create a DataSet, you must have the following:


* A Freshdesk API token
* The domain of your Freshdesk instance


Connecting to Your Freshdesk Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Freshdesk Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Freshdesk account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Token | Enter your Freshdesk API token. |
| Domain | Enter the URL of  your company Freshdesk instance. |


Once you have entered valid Freshdesk credentials, you can use the same account any time you go to create a new Freshdesk DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Freshdesk report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Groups | Retrieves a list of groups in your account. |
| All Solution Articles | Retrieves a list of solution articles in your account. |
| All Solution Categories | Retrieves a list of solution categories in your account. |
| All Solution Folders | Retrieves a list of solution folders in your account. |
| Comments in Topics | Retrieves a list of comments in topics in your account. |
| Email Config | Retrieves email configuration details. |
| Forums in Categories | Retrieves a list of forums in categories in your account. |
| List Agents | Retrieves a list of agents. |
| List All Business Hours | Retrieves a list of business hours. |
| List All Contacts | Retrieves a list of contacts in your account. |
| List All Time Entries | Retrieves a list of time entries in your account. |
| List Companies | Retrieves a list of companies in your account. |
| List Conversation Tickets | Retrieves a list of conversation tickets in your account. |
| List Entries Tickets | Retrieves a list of entry tickets in your account. |
| List Forum Categories | Retrieves a list of forum categories in your account. |
| List Roles | Retrieves a list of roles in your account. |
| List Satisfaction Rating Tickets | Retrieves a list of satisfaction rating tickets in your account. |
| List Tickets | Retrieves a list of tickets in your account. |
| Products | Retrieves a list of products in your account. |
| Satisfaction Ratings | Retrieves a list of satisfaction ratings in your account. |
| SLA Policies | Retrieves a list of SLA policies in your account. |
| Surveys | Retrieves a list of surveys in your account. |
| Topics in Forums | Retrieves a list of forum topics in your account. |

 |
| Select Forum | Select the forum you want to retrieve information for. |
| Select Forum Category | Select the forum category you want to retrieve information for. |
| Execution Duration  | Select whether you want to pull data for a specific date or a date range.  |
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
| Ticket Display Number | Enter the display number of the ticket you want to retrieve information for. |
| Ticket Filter | Select a filter for the tickets in your report. If you do not want to filter tickets, select **All**. |
| Date Since | Select whether you want to pull data for a specific date (**Specific**) or a set number of days back (**Relative**). |
| Specific Date | Select the date you want to pull data for in the date picker. |
| Days Back | Enter the number of days back you want this report to pull data for each time it runs. For example, if you entered 5, the report would pull data for 5 days ago each time it ran. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### Can I use the same account multiple times to create DataSets?


Yes.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits I should be aware of?


No.

