---
title: Google Calendar Connector
url: https://domo-support.domo.com/s/article/360043434953
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434953](https://domo-support.domo.com/s/article/360043434953)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003424
views: 2,147
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Google Calendar is a time-management and scheduling calendar service that allows users to create and edit events.  To learn more about the Google Calendar API, visit their page (<https://developers.google.com/google-apps/calendar/v3/reference>).  


You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Calendar connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to Google and create a Google Calendar DataSet, you must have a Google username and password.


Connecting to Your Google Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Calendar Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Google Calendar connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google Calendar accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Calendar DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains two menus—one in which you select the calendar to import events from and another in which you select a report type.




| Menu | Description |
| --- | --- |
| Calendar | Select the Google calendar you want to import events from.  |
| Report | Select the Google Calendar report you want to run. The following reports are available:

|  |  |
| --- | --- |
| ACL Feeds | Returns the rules in the access control list for the calendar. |
| Calendar Event Entries | Returns events from the selected calendar. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### What kind of credentials do I need to power up the Google BigQuery connector?


You need Google account credentials.  


##### How do I know my Google account credentials are secure?


Domo's Google Calendar connector uses OAuth, which authenticates the account with Google, without Domo ever having access to your Google account credentials.


##### How often can the data be updated?


DataSets should be set to update no more than once every 15 minutes.


##### Are there any API limits that I need to be aware of?


While Google may enforce rate call limits, you should not have to worry about them. 

