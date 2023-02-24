---
    title: Constant Contact Connector
    url: https://domo-support.domo.com/s/article/360042926594
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926594](https://domo-support.domo.com/s/article/360042926594)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003791
    views: 2,133
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Constant Contact offers web-based email marketing services.   To learn more about the Constant Contact API, visit their page ([https://developer.constantcontact.co...ion-index.html](https://developer.constantcontact.com/docs/developer-guides/api-documentation-index.html "https://developer.constantcontact.com/docs/developer-guides/api-documentation-index.html")).


You connect to your Constant Contact account in the Data Center. This topic discusses the fields and menus that are specific to the Constant Contact connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Constant Contact account and create a DataSet, you must have your Constant Contact username and password.


Connecting to Your Constant Contact Account
-------------------------------------------


This section enumerates the options in the **Credentials** and **Details**panes in the Constant Contact Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Constant Contact connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Constant Contact accounts in Domo) to open the Constant Contact OAuth screen where you can enter your Constant Contact username and password. Once you have entered valid Constant Contact credentials, you can use the same account any time you go to create a new Constant Contact DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a menu from which you select your desired report type, along with various options for configuring your report.




| Menu | Description |
| --- | --- |
| Report | Select the Constant Contact report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Contact Action Summary | Returns a list of the recent emails sent to a specific contact and a summary of the actions the contact took on that email for the most recent 200 campaigns. |
| Contact Activity Details | Returns the tracking activity data for a given account and contact. |
| Contact Lists | Returns a list of contact lists in your account. |
| Contacts | Returns all contacts in your account. |
| Email Campaigns | Returns all email campaigns in user's account. |

 |
| Contact ID | Select the contact you want to retrieve information for. |
| Contact Status | Select the status you want to filter your report data by. |
| Include Subresource? | Select whether you want to include subresources in your report. |
| Tracking Activity Types | Select the tracking activity types you want to retrieve data for. |
| Updated After Date | Select a date. The report will return all data updated after this date.   |
| Updated Days Back | Enter a relative number of days back. Every time the report runs, it will return all data updated after this relative number of days. For example, if you entered 7, each time the report ran it would pull data updated within the last 7 days.  |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### What version of the Constant Contact API does this connector use?


This connector uses version 3 of the Constant Contact API (<https://api.cc.email/v3>).


##### What endpoint does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| Contact Action Summary | /reports/contact\_reports/{contactId}/activity\_summary |
| Contact Activity Details | /reports/contact\_reports/{contactId}/activity\_details |
| Contact Lists | /contact\_lists |
| Contacts | /contacts |
| Email Campaigns | /emails |


##### How do I know my Constant Contact credentials are secure?


The login process uses the OAuth process, so your Constant Contact credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.    


##### Can I use the same account to create multiple DataSets?


Yes.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


If the API reaches the daily call limit, the API key will not be able to make calls until 12:00 am the next day. 

