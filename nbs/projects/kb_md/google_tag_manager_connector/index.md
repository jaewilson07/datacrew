---
    title: Google Tag Manager Connector
    url: https://domo-support.domo.com/s/article/360042929314
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929314](https://domo-support.domo.com/s/article/360042929314)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003526
    views: 2,124
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Google Tag Manager is a tag management system that allows you to easily track tags and related code fragments on your website or mobile app. Use Domo's Google Tag Manager connector to view your tag data in Domo. To learn more about the Google Tag Manager API, visit their page (<https://developers.google.com/tag-manager/api/v2>).


You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Tag Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Google account and create a Google Tag Manager DataSet, you must have your Google credentials. 


Connecting to Your Google Account
---------------------------------


This section enumerates the options in the ****Credentials**** and ****Details**** panes in the Google Tag Manager Connector page. The components of the other panes in this page, ****Scheduling****and ****Name & Describe Your DataSet,**** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Google Tag Manager connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click ****Connect**** (or select ****Add Account**** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Tag Manager DataSet. You can manage connector accounts in the ****Accounts**** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.



### Details Pane


This pane contains a primary ****Reports**** menu, along with various other menus which may or may not appear depending on the report type you select.




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
| Details | Select the details to include in the data (It is not recommended to select more than 2 at once). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

