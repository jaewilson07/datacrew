---
title: Cordial Connector
url: https://domo-support.domo.com/s/article/360042929514
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929514](https://domo-support.domo.com/s/article/360042929514)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003501
views: 2,116
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Cordial lets you activate real-time data and deliver tailored messages that adapt to changing customer signals.  To learn more about the Cordial API, visit their page (<https://api.cordial.io/docs/v1/>).


You connect to your Cordial account in the Data Center. This topic discusses the fields and menus that are specific to the Cordial connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Cordial account and create a DataSet, you must have the following:


* An encoded Cordial API key
* The password for your Cordial account


For information about generating a Cordial API key, see <https://support.cordial.com/hc/en-us/articles/115005365087-API-Keys>. 


Connecting to Your Cordial Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Cordial Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Cordial account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your encoded Cordial API key. For information about generating an API key, see "Prerequisites," above. |
| Password | Enter the password for your Cordial account. |


Once you have entered valid Cordial credentials, you can use the same account any time you go to create a new Cordial DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Cordial report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Contact Attributes | Returns a list of account contact attributes. |
| Account Interests | Returns a list of account interests. |
| Account Lists | Returns a list of account lists. |
| Automation Templates | Returns a list of automation templates. |
| Batch Messages | Returns a list of batch messages. |
| Contact Activities | Returns a list of recent activities for your contacts. |
| Contacts | Returns your list of contacts. |
| Includes | Returns a list of "Includes" data. |
| Jobs | Returns a list of jobs. |
| Message Contacts | Returns a list of message contacts. |
| Orders | Returns a list of orders. |
| Products | Returns a list of products. |
| Schedule | Returns schedule information. |
| Schedule Log | Returns schedule log information. |
| Supplements | Returns a list of supplements. |
| Supplement Records | Returns a list of supplement records. |

 |
| Select the Type | Select the type of account contact attributes you want to pull into Domo. |
| Select the Index | Select an index value of 0 or 1 for your "Account Contact Attributes" report. |
| Active Status | Select the desired job status for jobs listed in your "Jobs" report. |
| Interest Name (Optional) | Enter the interest name you want to filter your report by. |
| List Name (Optional) | Enter the list name you want to filter your report by. |
| Time (Optional) | Enter the time you want to filter your report by. You can include modifiers such as lt, gt, lte, gte, between, start, and between.end. |
| Action (Optional) | Enter an action to filter your report by. This can include click, open, send, or any user-defined actions. |
| Email (Optional) | Enter the email address (search contact primary key) you want to filter your report by.  |
| Attribute Key (Optional) | Enter the attribute key you want to filter your report by. This can be the key of any custom attribute set up in your system. |
| Include Key (Optional) | Enter the include key you want to filter your report by. |
| Job Name (Optional) | Enter the job name you want to filter your report by. |
| Contact ID  | Select the contact ID you want to filter your report by. |
| Purchase Date (Optional) | Enter the purchase date in conjunction with eq, lt, gt (YYYY-MM-DD HH:ii:ss). For more information, reach out to your Cordial support representative.  |
| Schedule ID | Select the schedule you want to filter your report by. |
| Supplement Key | Select the supplement key you want to filter your report by. |
| Fields (Optional) | Enter the names of the fields (columns) you want to appear in your report. You can separate multiple fields using a comma. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### What version of the Coridal API does this connector use?


This connector uses version 1 of the Cordial API ([https://api.cordial.io/v1/](https://api.cordial.io/v1/ "https://api.cordial.io/v1/")).


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

