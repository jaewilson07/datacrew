---
    title: Mailjet Connector
    url: https://domo-support.domo.com/s/article/360042926974
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926974](https://domo-support.domo.com/s/article/360042926974)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003752
    views: 1,074
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Mailjet brings marketers and developers together on one platform to accelerate their business growth with email. To learn more about the Mailjet API, visit their page (<https://dev.mailjet.com/>).


You connect to your Mailjet account in the Data Center. This topic discusses the fields and menus that are specific to the Mailjet connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Mailjet account and create a DataSet, you must have the following:


* A Mailjet API key
* A Mailjet API secret


You should be able to find these credentials in your Mailjet API Key Management page. 


Connecting to Your Mailjet Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Mailjet Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Mailjet account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Mailjet API key. |
| API Secret | Enter your Mailjet API secret. |


Once you have entered valid Mailjet credentials, you can use the same account any time you go to create a new Mailjet DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Mailjet report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Bounce Events | Retrieves a list of all bounce events and details about them, such as message, contact and campaign IDs, timestamp, etc. |
| Click Events | Retrieves a list of all click events and details about them, such as message and contact IDs, timestamp, URL, and click delay. |
| Contacts | Retrieves a list of contacts.  |
| Contacts List | Retrieve details for all contact lists, such as name, subscriber count, creation timestamp, and deletion status. |
| Messages | Retrieves details about messages, such as sending time, delivery and contact engagement info, recipients, message size, etc. |
| Open Events | Retrieve a list of all open events and details about them, such as message, campaign and contact IDs, timestamp, etc. |
| Segmentation | Retrieves a list of all segments and details on their configuration. Segments can be applied to contact lists when campaigns are sent. |
| Sent Campaigns | Retrieve details about a list of sent campaigns, such as creation and sending time, sender, subject, tracking options enabled, etc. |

 |
| Select Filter Type | Select whether to filter by campaigns and event dates, contact lists and sent dates, or all campaigns.  |
| Filter by Campaign | Select whether you want to retrieve data for all campaigns or specific ones. |
| Campaigns | Select the campaigns you want to retrieve data for. |
| Contact Lists | Select the contact lists you want to retrieve data for. |
| Include Data for Deleted Lists? | Select whether you want to pull data for contact lists that have been deleted.  |
| Include Data for Deleted Campaigns? | Select whether you want to pull data for campaigns that have been deleted.  |
| Include Campaigns Created by the Newsletter Tool? | Select whether you want to pull data for campaigns created in Mailjet's legacy Newsletter Tool. |
| Include Data for Starred Items? | Select whether you want to pull data that has been marked as starred.  |
| Status | Select a status to pull only segments with that status (used, unused, or deleted). |
| Include Data for All Archived Campaigns, Drafts, and AB Testing Objects? | Select whether you want to pull data for all archived campaigns, drafts, and AB testing objects.  |
| Filter by Counter Resolution? | Select to filter by CounterResolution. The Lifetime option cannot be used with CounterTiming=Event. The maximum time period that can be selected between FromTSand ToTS equals 100 times the time scale selected for CounterResolution. So if CounterResolution=Highest, the period will be 500 minutes (8 hours and 20 minutes); if CounterResolution=Hour, it is 100 hours (4 days and 4 hours); if CounterResolution=Day, it is 100 days. |
| Filter by Counter Timing? | Select whether to filter your data by CounterTiming.  |
| Filter by Counter Source? | Select whether to filter your data by CounterSource. List: Contact list option can be only be used with CounterTiming=Message and CounterResolution=Lifetime. Also, the Sender : Sender email address option can only be used with CounterTiming = Message. |
| Date Filter by Update Date | Select whether to pull data modified since the last run or since a selected date (which you enter using the **Dates** option). If you choose the first option, be sure to select **Append** as your update mode in the **Scheduling** section. |
| Dates | Select the date you want to retrieve data for.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

