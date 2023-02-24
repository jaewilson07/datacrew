---
title: Emma Connector
url: https://domo-support.domo.com/s/article/360043431173
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431173](https://domo-support.domo.com/s/article/360043431173)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003764
views: 2,133
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Emma offers web-based email marketing services. Domo's Emma connector allows you to see Emma data in context with your entire organization so you can make real-time adjustments to your automated campaigns that boost not only your open rates, but your business as a whole.  Use Domo's Emma connector to compile reports about mailing groups and members, searches, responses, webhooks, and the like. To learn more about the Emma API, go to <http://api.myemma.com/>.


The Emma connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.   


This topic discusses the fields and menus that are specific to the Emma connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Emma account and create a DataSet, you must have the following:


* Your Emma public API key
* Your Emma private API key
* Your Emma account ID


You can find this information in your Emma **Account Settings**. For more information, see <http://api.myemma.com/>.


Connecting to Your Emma Account
-------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Emma Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Emma account. The following table describes what is needed for each field:




| **Field** | **Description** |
| --- | --- |
| Public API Key | Enter your public API key. |
| Private API Key | Enter your private API key.   |
| Account ID  | Enter your Emma account ID.  |


For information about obtaining these credentials, see "Prerequisites," above.


After you have entered valid Emma credentials, you can use the same account any time you go to create an Emma DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a **Report** menu in which you can select an Emma report type. Another selection menu, **Action**, appears when you select the **Response Mailing Information** report type.




| **Menu** | **Description** |
| --- | --- |
| Report | Select an Emma report. The following reports are available:

|  |  |
| --- | --- |
| Fields | Returns information about defined fields for the account, such as shortcut names, display names, field types, fields IDs, etc.   |
| Group Members | Returns information about group members, such as group and member IDs, status, email addresses, etc. |
| Groups  | Returns information about groups, such as group names and IDs, account IDs, etc. |
| Mailing Groups | Returns information about groups to which specific mailings have been sent. |
| Mailing Headsup  | Returns heads-up email addresses for specific mailings.  |
| Mailing Members  | Returns lists of members to whom specific mailings have been sent. Does not include groups or searches.  |
| Mailing Messages  | Returns personalized message content sent to given members as part of specified mailings.  |
| Mailing Searches  | Returns all searches associated with sent mailings.  |
| Mailings  | Returns information about current mailings.  |
| Member Groups  | Returns information about groups to which a member belongs.  |
| Member Import Stats  | Returns information and statistics about a given import.  |
| Member Imports  | Returns information about all imports for this account.  |
| Member Mailing History  | Returns the entire mailing history for a member.  |
| Member Optout  | Returns details of member opt-outs, including date and mailing ID.  |
| Members  | Returns a basic listing of all members of the account, including account and member IDs, email address, membership date, etc.  |
| Members Imported  | Returns a list of members affected by imports.  |
| Response Customer Share  | Returns a list of customer shares for given mailings.  |
| Response Mailing Information  | Returns a list of messages based on a specified action. 





**Note:** When this connector was initially implemented, the "Mailing ID" column in this report was mislabeled as "Import ID." Because changing the column name would break existing DataSets, this name will not be changed. If you need the Mailing ID, use the value in the "Import ID" column.   



 |
| Response Mailing Share  | Returns lists of shares for given mailings.  |
| Responses  | Returns the response summary for the account.  |
| Searches  | Returns a list of saved searches, including search name, search ID, search criteria, last run date and time, etc.   |
| Searches Members  | Returns the members matching given searches.  |
| Triggers  | Returns a basic listing of all triggers for the account.  |
| Triggers Mailings  | Returns a list of mailings sent by triggers.  |
| Webhook Events  | Returns a list of webhook events, including event name, ID, and description.  |
| Webhooks  | Returns a list of webhooks.  |

  |
| Action  | Select the desired action. The **Response Mailing Information** report retrieves all messages based on this action. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  


FAQ
---


#### Can I use the same account to create multiple DataSets?


Yes.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits I should be aware of?


Although the Emma API has rate limits, Domo's Emma connector automatically paces to that limit. 

