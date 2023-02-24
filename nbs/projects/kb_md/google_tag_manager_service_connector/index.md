---
title: Google Tag Manager Service Connector
url: https://domo-support.domo.com/s/article/1500000199961
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500000199961](https://domo-support.domo.com/s/article/1500000199961)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003273
views: 2,143
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Google Tag Manager is a tag management system that allows you to easily track tags and related code fragments on your website or mobile app. Google Tag Manager delivers simple, reliable, easily integrated tag management solutions, and manages all your website tags without editing code. Use Domo's Google Tag Manager Service connector to view your tag related data in Domo. To learn more about the Google Tag Manager API, visit their page (<https://developers.google.com/tag-manager/api/v2>).


You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Tag Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to a Google Tag Manager Service account, you must have a Google service account JSON key.


To generate a Google service account JSON key, do the following:


1. In the GCP Console, open the ****************IAM & Admin**************** page.
2. Click ********************************Service accounts******************************** in the left-hand navigation pane.
3. Select your project and click ********************************Open********************************.
4. Click ********************************Create Service Account********************************.
5. Enter a name and description for the service account.
6. Click ********************************Create********************************.
7. Select ********************************Project Owner********************************.
8. Click ********************************Continue********************************.
9. Click ********************************Create key********************************.
10. Select ********************************JSON******************************** as the key type.
11. Click ********************************Create********************************.


A private key will be saved to your computer.


Connecting to Your Google Account
---------------------------------


This section enumerates the options in the ********Credentials******** and ********Details******** panes in the Google Tag Manager Service connector page. The components of the other panes in this page, ********Scheduling********and ********Name & Describe Your DataSet,******** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to a Google Tag Manager Service account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Service Account Key JSON | Copy and paste the JSON for your Google service account key. For information about creating a key, see [Prerequisites](#h_01ES1RHNQNYHPNDX4DME091F12 "Google Tag Manager Service Connector"). |


Once you have entered a valid key, you can use the same account any time you go to create a new Google Tag Manager Service DataSet. You can manage connector accounts in the ********************************Accounts******************************** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary ********Reports******** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Google Tag Manager report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Lists all Google Tag Manager accounts you have access to. |
| Built-In Variables | Lists all the enabled Built-In Variables of a Google Tag Manager Container. |
| Containers | Lists all containers that belong to a Google Tag Manager account. |
| Environments | Lists all Google Tag Manager environments of a Google Tag Manager container. |
| Folders | Lists all Google Tag Manager folders of a container. |
| Tags | Lists all Google Tag Manager Tags of a Container. |
| Triggers | Lists all Google Tag Manager Triggers of a Container. |
| User Permissions | Lists all users with access to the account. |
| Variables | Lists all Google Tag Manager Variables of a Container. |
| Version Headers | Lists all container versions of a Google Tag Manager Container. |
| Workspaces | Lists all workspaces that belong to a Google Tag Manager Container. |

 |
| Account | Select account. |
| Container | Select container. |
| Workspace | Select workspace. |
| Details | Select the details to include in the data. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

