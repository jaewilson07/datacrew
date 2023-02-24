---
title: Figma Connector
url: https://domo-support.domo.com/s/article/4409812099735
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4409812099735](https://domo-support.domo.com/s/article/4409812099735)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003211
views: 1,079
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:40:00
---



Intro
-----






Figma is a web-based, collaborative graphics editor and prototyping tool used in interface designing. With Figma, everyone works towards a shared goal. The Figma apps for Android and iOS allow viewing Figma prototypes in real-time on mobile devices. Use Domo's Figma Connector to obtain the details about the files in a specific project, components, component sets and styles within a file library as well as a team library, and the projects within a specified team.  
With the Figma Connector, enable your product teams to ship new products faster and feel more confident in their decisions. By combining your Figma data with Domo's leading business intelligence platform, you'll develop comprehensive strategies to fully optimize your business. Within minutes you'll be able to create customized reports for your most important KPIs, helping you get a holistic view of your file library and team library performance. To learn more about the Figma API, visit their page (<https://www.figma.com/developers/api>).






The Figma Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Figma account in the Data Center. This topic discusses the fields and menus that are specific to the Figma Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Figma account and create a DataSet, you must have the personal access token of your Figma account. The token can be obtained in Account Settings under the Personal access token section.


Connecting to Your Figma Account
--------------------------------


This section enumerates the options in the Credentials and Details panes in the Figma Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Figma account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Personal Access Token | Enter the personal access token of your Figma account.  |


Once you have entered valid Figma credentials, you can use the same account any time you go to create a new Figma DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Figma report you want to run. The following reports are available:

|  |  |
| --- | --- |
| File Components | Get a list of published components within a file library |
| File Component Sets | Get a list of published component\_sets within a file library |
| File Styles | Get a list of published styles within a file library |
| Project Files | List the files in a given project. |
| Team Components | Get a paginated list of published components within a team library |
| Team Component Sets | Get a paginated list of published component\_sets within a team library |
| Team Projects | Get a list of all the Projects within the specified team. |
| Team Styles | Get a paginated list of published styles within a team library |

 |
| File Key | Enter the key of the file to list data from. |
| Project ID | Enter the ID of the project to list files from. |
| Team ID | Enter the ID of the team to list data from. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Figma API does this Connector use?


This Connector uses version 1 of the Figma API (<https://api.figma.com/v1>).


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| File Components | /files/{file\_key}/components |
| File Component Sets | /files/{file\_key}/component\_sets |
| File Styles | /files/{file\_key}/styles |
| Project Files | /projects/{project\_id}/files |
| Team Components | /teams/{team\_id}/components |
| Team Component Sets | /teams/{team\_id}/component\_sets |
| Team Projects | /teams/{team\_id}/projects |
| Team Styles | /teams/{team\_id}/styles |


#### What kind of credentials do I need to power up this Connector?


You need the personal access token of your Figma account. The token can be obtained in Account Settings under the Personal access token section.


#### How often can the data be updated?


As frequently as needed.


#### Are there any API limits I should be aware of?


No


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
