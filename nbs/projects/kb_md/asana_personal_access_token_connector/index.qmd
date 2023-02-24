---
title: Asana Personal Access Token Connector
url: https://domo-support.domo.com/s/article/5395550067095
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/5395550067095](https://domo-support.domo.com/s/article/5395550067095)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003190
views: 2,122
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Asana's cloud-based project management platform helps organizations track their productivity. Domo brings your Asana projects into clearer focus by analyzing every piece of the process-users, tasks, and projects-so users can create reports, share the data with stakeholders, and get more done in less time.  
The Asana Connector is a safe and quick data connection that you can use to measure success and progress of initiatives at your company. Get automated reports in just seconds. Domo pulls only the most pertinent data to create lightning fast Asana reports, so you're never making choices based on outdated information. Domo's easy-to-use platform encourages more productive collaboration. To learn more about the Asana API, visit their page ([https://asana.com/developers/documen...arted/overview](https://asana.com/developers/documentation/getting-started/overview "https://asana.com/developers/documentation/getting-started/overview")).


You connect to your Asana account in the Data Center. This topic discusses the fields and menus that are specific to the Asana connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Asana account and create a DataSet, you must have the personal access token associated with your Asana account..


Connecting to Your Asana Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Asana Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Asana account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Personal Access Token | Enter your Asana personal access token. |


Once you have entered valid Asana credentials, you can use the same account any time you go to create a new Asana DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select. If you select the "Tasks" report, a "Subreport" menu appears from which you may select a secondary report.




| Menu | Description |
| --- | --- |
| Report | Select the Asana report you want to run. The following reports are available:

| Report | Description |
| --- | --- |
| Attachments | This report pulls your asana attachments for a specified workspace. |
| Custom Fields | This report pulls your asana custom fields for a specified workspace. |
| Goals | This gets detail Goals record for all Goals associated with the selected workspace. |
| Parent Goals | This gets detail Parent Goals records for all Goals associated to a selected workspace. |
| Projects | This report gets all projects in a workspace. |
| Stories | This report gets all stories in a workspace |
| Subgoals | This gets detail Subgoals records for all Goals associated to a selected workspace. |
| Subtasks | This report gets all subtasks in a workspace |
| Supporting Work | This gets detail Supporting Work records for all Goals associated to a selected workspace. |
| Tags | This report gets all tags made on all tasks in a workspace. |
| Tasks | This report gets all tasks in a workspace. |
| Teams | This report gets all teams in a workspace. |
| Users | This report gets all users on a workspace |
| Workspaces | This gets all workspaces for a client. |

 |
| Subreport | Select the desired subreport for the "Tasks" report. The following subreports are available:

| Sub-report | Description |
| --- | --- |
| None | This report gets all tasks in a workspace. |
| Custom Fields | This report gets all tasks in a workspace enhanced with custom fields data. |
| Followers | This report gets all tasks in a workspace enhanced with followers data. |
| Hearts | This report gets all tasks in a workspace enhanced with hearts data. |
| Memberships | This report gets all tasks in a workspace enhanced with memberships data. |
| Projects | This report gets all tasks in a workspace enhanced with task projects. |

 |
| Workspace | Select the workspace you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  


FAQ
---


#### What version of the Asana API does this connector use?


This connector uses version 1 of the Asana API (<https://app.asana.com/api/1.0>).


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Attachments | /tasks/{task-id}/attachments |
| Custom Fields | /workspaces/{workspace-id}/custom\_fields |
| Goals | /goals/{id} |
| Parent Goals | /goals/{id}/parentgoals |
| Projects | /workspaces/{workspace-id}/users |
| Stories | /tasks/{task-id}/stories |
| Subgoals | /goals/{id}/subgoals |
| Subtasks | /tasks/{task-id}/subtasks |
| Supporting Work | /goals/{id}/supportingWork |
| Tags | /workspaces/{workspace-id}/tags |
| Tasks | /projects/{project-id}/tasks |
| Teams | /organizations/{organization-id}/teams |
| Users | /users |
| Workspaces | /workspaces |


#### What kind of credentials do I need to power up this connector?


You need the personal access token associated with your Asana account.


#### Can I use the same account multiple times to create datasets?


Yes


#### How often can the data be updated?


Datasets can be updated as often as once an hour.


#### Are there any API limits that I need to be aware of?


No

