---
title: BrightRoll Connector
url: https://domo-support.domo.com/s/article/360043430913
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430913](https://domo-support.domo.com/s/article/360043430913)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003803
views: 1,074
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


BrightRoll by Yahoo! is a video advertising software system. To learn more about the BrightRoll API, visit their page ([https://developer.yahoo.com/dsp/api/.../?guccounter=1](https://developer.yahoo.com/dsp/api/docs/traffic/?guccounter=1 "https://developer.yahoo.com/dsp/api/docs/traffic/?guccounter=1")).


You connect to your BrightRoll account in the Data Center. This topic discusses the fields and menus that are specific to the BrightRoll connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your BrightRoll account and create a DataSet, you must have the following:


* A BrightRoll authorization code
* A BrightRoll client ID
* A BrightRoll client secret


To generate these credentials, follow these instructions: [https://developer.yahoo.com/brightro.../enable\_oauth/](https://developer.yahoo.com/brightroll/dsp/api/docs/authentication/enable_oauth/ "https://developer.yahoo.com/brightroll/dsp/api/docs/authentication/enable_oauth/"). You will generate your client ID and client secret in step 4 and your authorization code in step 5.


Connecting to Your BrightRoll Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BrightRoll Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BrightRoll account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Authorization Code | Enter your BrightRoll authorization code. |
| Client ID | Enter your BrightRoll client ID. |
| Client Secret | Enter your BrightRoll client secret. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid BrightRoll credentials, you can use the same account any time you go to create a new BrightRoll DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the BrightRoll report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Ads | Retrieves a list of your ads. |
| Advertisers | Retrieves a list of advertisers in your account. |
| Campaigns | Retrieves a list of your campaigns. |

 |
| Advertisers | Select all advertisers you want to retrieve information for. |
| Campaigns | Select the campaigns you want to retrieve information for. |
| Lines | Select the lines you want to retrieve information for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### How often can the data be updated?


As often as needed.


##### Are there any API restrictions I should be aware of?


No.

