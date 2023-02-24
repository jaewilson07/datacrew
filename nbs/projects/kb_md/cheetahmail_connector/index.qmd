---
title: CheetahMail Connector
url: https://domo-support.domo.com/s/article/360043431013
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431013](https://domo-support.domo.com/s/article/360043431013)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003785
views: 1,084
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


CheetahMail provides email marketing software and services. To learn more about the CheetahMail API, visit their page ([https://api.cheetahmail.fr/api\_v1.html](https://api.cheetahmail.fr/api_v1.html "https://api.cheetahmail.fr/api_v1.html")).


You connect to your CheetahMail account in the Data Center. This topic discusses the fields and menus that are specific to the CheetahMail connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your CheetahMail account and create a DataSet, you must have a CheetahMail username and password.    


Connecting to Your CheetahMail Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the CheetahMail Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your CheetahMail account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your CheetahMail username. |
| Password | Enter your CheetahMail password. |


Once you have entered valid CheetahMail credentials, you can use the same account any time you go to create a new CheetahMail DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the CheetahMail report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Change of Address | Returns information on all change of address operations performed on a given day. |
| Subscriber List | Returns all subscriber lists for your account. |
| User List | Returns a user's demographics and subscription information. |

 |
| Email | Enter the email address for the user you want to retrieve information for. |
| Year (Optional) | Enter the year you want to pull change-of-address data for. If you do not enter a year, this defaults to yesterday's year (based on the U.S. Eastern time zone). |
| Month (Optional) | Enter the month you want to pull change-of-address data for. If you do not enter a month, this defaults to yesterday's month (based on the U.S. Eastern time zone). |
| Day (Optional) | Enter the day you want to pull change-of-address data for. If you do not enter a day, this defaults to yesterday (based on the U.S. Eastern time zone). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

