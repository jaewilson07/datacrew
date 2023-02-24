---
    title: Mandrill Connector
    url: https://domo-support.domo.com/s/article/360043872854
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043872854](https://domo-support.domo.com/s/article/360043872854)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003313
    views: 1,078
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Mandrill is an email infrastructure service developed by MailChimp. Use Domo's Mandrill connector to view your email data within Domo. To learn more about the Mandrill API, visit their page ([https://mandrillapp.com/api/docs/](https://mandrillapp.com/api/docs/ "https://mandrillapp.com/api/docs/")).


You connect to your Mandrill account in the Data Center. This topic discusses the fields and menus that are specific to the Mandrill connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Mandrill account and create a DataSet, you must have a Mandrill API key. To obtain an API key, do the following:


1. In MailChimp, open Mandrill.
2. Under **Settings**, click **SMTP & API Info**.
3. Click **New API Key**.


Connecting to Your Mandrill Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Mandrill Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Mandrill account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter  your Mandrill API key. For information about generating an API key, see "Prerequisites," above. |


Once you have entered valid Mandrill credentials, you can use the same account any time you go to create a new Mandrill DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Mandrill report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Tags Time-Series | Returns hourly stats for the last 30 days for all tags. |
| Email Rejection Blacklist | Returns your email rejection blacklist. |
| Email Rejection Whitelist | Returns your email rejection whitelist. |
| Inbound Calls | Lists domains that have been configured for inbound delivery. |
| List Exports | Returns a list of exports. |
| List IP Pools | Lists your dedicated IP pools. |
| List IPs | Lists your dedicated IPs. |
| List Custom Metadata | Returns the list of custom metadata fields indexed for the account. |
| List Scheduled Messages | Queries your scheduled emails. |
| List Subaccounts | Returns the list of subaccounts defined for the account. |
| List Templates | Returns a list of templates available to this user. |
| List Webhooks | Returns the list of webhooks defined on the account. |
| Message Details | Returns information for a recently sent message. |
| Most Clicked URLs | Returns the 100 most clicked URLs. |
| Search Most Clicked URLs | Returns the 100 most clicked URLs matching the provided search query. |
| Search Recently Sent Messages | Returns recently sent messages. |
| Search Time-Series | Returns the hourly stats for the last 30 days for a sender. |
| Senders | Returns both verified and unverified senders who have tried to use the account. |
| Senders Domain | Returns sender domains added to the account. |
| Tag Info | Returns detailed information about a provided tag, including aggregates of recent stats. |
| Tag Time-Series | Returns hourly stats for the last 30 days for a tag. |
| Template Time-Series | Returns hourly stats for the last 30 days for a template. |
| Tracking Domains | Returns a list of tracking domains set up for the account. |
| URL Time-Series | Returns hourly stats for the last 30 days for a URL. |
| Users Calls | Returns information about the API-connected user. |

 |
| Query | Enter search terms you want to return data for. For example: email:[gmail.com](http://gmail.com) |
| Message ID | Enter the message ID you want to retrieve data for. |
| Tag | Select the tag you want to retrieve data for. |
| Sender Email Address | Enter the email address of the sender you want to retrieve data for. |
| URL | Enter the URL you want to retrieve data for. |
| Template Name | Enter the name of the template you want to retrieve data for. |
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


### 
Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

