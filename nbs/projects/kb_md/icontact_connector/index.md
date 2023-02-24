---
title: iContact Connector
url: https://domo-support.domo.com/s/article/360043431373
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431373](https://domo-support.domo.com/s/article/360043431373)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003758
views: 1,077
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


iContact is a cloud-based email and social media marketing company that enables customers to create, track, and send HTML-based emails and social media messages.  To learn more about the iContact API, visit their page ([https://www.icontact.com/developerportal](https://www.icontact.com/developerportal "https://www.icontact.com/developerportal")).


You connect to your iContact account in the Data Center. This topic discusses the fields and menus that are specific to the iContact connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your iContact account and create a DataSet, you must have the following:


* Your iContact username.
* Your iContact API password. Note that this is the password you create for your iContact app ID, *not* your iContact account password.
* Your iContact app ID.


For information about obtaining an app ID and API password, see [https://www.icontact.com/developerpo...ister-your-app](https://www.icontact.com/developerportal/documentation/register-your-app "https://www.icontact.com/developerportal/documentation/register-your-app"). 


Connecting to Your iContact Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the iContact Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your iContact account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your iContact username. |
| Password | Enter your iContact API password. Note that this is the password you create for your iContact app ID, *not* your iContact account password. |
| App ID | Enter your iContact app ID. |


For information about obtaining an app ID and API password, see [https://www.icontact.com/developerpo...ister-your-app](https://www.icontact.com/developerportal/documentation/register-your-app "https://www.icontact.com/developerportal/documentation/register-your-app"). 


Once you have entered valid iContact credentials, you can use the same account any time you go to create a new iContact DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a single menu from which you select an iContact report.




| Menu | Description |
| --- | --- |
| Report | Select the iContact report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaign Message Statistics | Returns statistics for all messages grouped by campaign or sender. |
| Campaigns | Returns a list of campaigns in the profile. |
| Contacts | Returns a list of all the contacts present in the profile. |
| Message Statistics | Returns statistics for all messages. |
| Subscription | Returns data for all subscriptions in the profile. |
| Track Message Bounces | Returns bounce information for all messages. |
| Track Message Clicks | Returns click information for all messages. |
| Track Message Opens | Returns opens information for all messages. |
| Track Message Unsubscribes | Returns unsubscribe information for all messages. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

