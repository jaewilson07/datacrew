---
    title: Compose Connector
    url: https://domo-support.domo.com/s/article/360042928614
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928614](https://domo-support.domo.com/s/article/360042928614)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003596
    views: 1,072
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Compose, formerly known as MongoHQ, makes it easy to deploy your favorite open source databases in minutes into your preferred cloud datacenter. To learn more about the Compose API, visit their page ([https://apidocs.compose.com/](https://apidocs.compose.com/ "https://apidocs.compose.com/")).


You connect to your Compose account in the Data Center. This topic discusses the fields and menus that are specific to the Compose connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Compose account and create a DataSet, you must have a Compose API token. You can obtain a token in the Compose console, under **Account > API Tokens**. You will be prompted for your user password.


Connecting to Your Compose Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Compose Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Compose account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Token | Enter your Compose API tokenn. For information about obtaining a token, see "Prerequisites," above. |


Once you have entered valid Compose credentials, you can use the same account any time you go to create a new Compose DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Compose report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Accounts | Returns information about all accounts of which your user is a member. |
| Audit Events | Returns all audit events for which your user has access. |
| Billables | Returns a list of billable items associated with your user. |
| Clusters | Returns all clusters accessible for your user. |
| Databases | Returns a list of available databases and their versions. |
| Datacenters | Returns a list of currently available datacenters in the Compose platform. |
| Deployments | Returns information about deployments accessible to your user. |
| Deployments Addons | Lists add-ons for a given deployment. |
| Deployments Alerts | Returns current alerts for a given deployment. |
| Deployments Backups | Returns information about all backups for a given deployment. |
| Deployments Recipes | Retrieves past and present recipes for a deployment. |
| Deployments Roles | Lists user roles for a deployment. |
| Deployments Scalings | Returns scaling information about your deployment. |
| Deployments Team Roles | Lists team roles for a deployment. |
| Deployments Versions | Returns possible version transitions for a given deployment. |
| Teams | Lists teams on the account. |

 |
| Deployment ID | Select the ID of the deployment you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

