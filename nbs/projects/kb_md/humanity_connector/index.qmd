---
title: Humanity Connector
url: https://domo-support.domo.com/s/article/360042928214
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928214](https://domo-support.domo.com/s/article/360042928214)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003640
views: 1,086
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Humanity (formerly called ShiftPlanning) is an online workforce management and scheduling system designed to help users easily manage time clock, attendance, human resources and payroll. Use Domo's Humanity connector to retrieve data about schedules, employees, notifications, and so on. For more information about the Humanity API, visit their website. ([https://www.Humanity.com/api/](https://www.shiftplanning.com/api/ "https://www.shiftplanning.com/api/"))


The Humanity connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.   


You connect to your Humanity account in the Data Center. This topic discusses the fields and menus that are specific to the Humanity connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Humanity account and create a DataSet, you must have the following: 


* A Humanity username and password.
* The API key for your Humanity account. You can find this by logging into your Humanity account and navigating to **Admin > Data API**.


Connecting to Your Humanity Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Humanity Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Humanity account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Humanity username.  |
| Password  | Enter your Humanity password.  |
| API Key | Enter the API key for your Humanity account. For information about obtaining an API key, see "Prerequisites," above. |


Once you have entered valid Humanity credentials, you can use the same account any time you go to create a new Humanity DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report category and an **Action** menu in which you select a specific report within that category. For example, if you selected **Admin** in the **Report** menu, you could then select **Backups**, **Files**, or **Settings** in the **Action** menu as your specific report. Depending on the options you select in these menus, other options may be available.




| Menu | Description |
| --- | --- |
| Report/Action | Select a Humanity report category and report within that category. The following reports are available:

|  |  |
| --- | --- |
| Admin > Backups | Returns a list of all Backups uploaded into Humanity. |
| Admin > Files | Returns a list of all files uploaded into Humanity. |
| Admin > Settings | Returns a list of all modules, methods, and their support variables and types. |
| Dashboard > Notifications | Returns a list of notifications. |
| Dashboard > On Now | Returns a list of currently clocked-in employees. |
| Messaging > Messages | Returns a list of all user messages. |
| Messaging > Wall | Returns wall messages and comments. |
| Payroll > Report | Returns payroll reports on schedule/time sheet data. |
| Schedule > Conflicts | Returns a list of schedule conflicts. |
| Schedule > Schedules | Returns a list of all schedules. |
| Schedule > Shifts | Returns a list of shifts. |
| Schedule > Vacations | Returns a list of vacations.  |
| Staff > Employees | Returns a list of all employees. |
| Staff > Skills | Returns a list of all skills. |
| Timeclock > Timeclocks | Returns a list of all Timeclocks.  |
| Timeclock > Timesheets | Returns a list of all Timesheets. |

 |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 

