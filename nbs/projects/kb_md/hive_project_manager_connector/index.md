---
    title: Hive Project Manager Connector
    url: https://domo-support.domo.com/s/article/4402689409687
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4402689409687](https://domo-support.domo.com/s/article/4402689409687)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003215
    views: 1,074
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Hive provides an efficient, reliable tool for streamlining, planning, and managing several workflows simultaneously. It allows users to create and organize tasks for themselves and their teammates, with task deadlines, attachments and labels. The Domo Hive Project Manager connector can return various reports such as Teams, Actions, Labels, Role Tags and much more. To learn more about the Hive API, visit <https://developers.hive.com/reference>.


You connect to your Hive Project Manager account in the Data Center. This topic discusses the fields and menus that are specific to the Hive Project Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Hive Project Manager account and create a DataSet, you must have the following:


* Your Hive API key
* Your Hive user ID


Connecting to Your Hive Project Manager Account
-----------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Hive Project Manager Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Hive Project Manager account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Hive API key. |
| User ID | Enter your Hive user ID. |


Once you have entered valid Hive Project Manager credentials, you can use the same account any time you go to create a new Hive Project Manager DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Hive Project Manager report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Actions | Retrieve all actions for a given workspace |
| Action Templates | Retrieve all action templates for a given workspace |
| Custom Tags | Retrieve all custom tags |
| Groups | Retrieve all chat groups for a given workspace |
| Labels | Retrieve all labels for a given workspace |
| Projects | Retrieve all projects for a given workspace |
| Role Tags | Retrieve all role tags for a given workspace |
| Teams | Retrieve all teams for your workspace |
| Users | Retrieve a list of users for the workspace |
| Workspaces | Retrieve a list of workspaces that you're is a member of |
| Workspace Users | Retrieve all users for a given workspace that the user has access to |

 |
| Workspace ID | Select the workspace IDs. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

