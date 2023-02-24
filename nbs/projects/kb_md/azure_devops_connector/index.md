---
title: Azure DevOps Connector
url: https://domo-support.domo.com/s/article/1500002644442
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500002644442](https://domo-support.domo.com/s/article/1500002644442)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003245
views: 2,186
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Azure DevOps Server is a Microsoft product that provides version control, reporting, requirements management, project management, automated builds, testing and release management capabilities. It covers the entire application lifecycle, and enables DevOps capabilities. Use the Domo Azure DevOps connector to retrieve data about your projects, teams and work items. Use Domo's Azure DevOps connector to retrieve data about your projects, teams and work items. To learn more about the Azure DevOps API, visit their page ([https://docs.microsoft.com/en-us/res...evops-rest-6.1](https://docs.microsoft.com/en-us/rest/api/azure/devops/?view=azure-devops-rest-6.1 "https://docs.microsoft.com/en-us/rest/api/azure/devops/?view=azure-devops-rest-6.1")).


You connect to your Azure DevOps account in the Data Center. This topic discusses the fields and menus that are specific to the Azure DevOps connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


 


To connect to your Azure DevOps account and create a DataSet, you must have the following:


* The username you use to sign into your Azure DevOps account. If it is an email address, the @subdomain portion may not be necessary.
* Your Personal Access Token that you can generate by going to **User Settings > Personal Access Token** in your [Azure DevOps](https://dev.azure.com/ "https://dev.azure.com") account.
* Your Azure DevOps organization. For example, if you logged into your Azure DevOps instance at "[https://dev.azure.com/domo"](https://dev.azure.com/domo)", you would enter "domo" here.


Connecting to Your Azure DevOps Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Azure DevOps Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Azure DevOps account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Username | Enter the username you use to sign into your Azure DevOps account. If this is an email address, the @subdomain portion may not be necessary. |
| Personal Access Token | Enter your Personal Access Token that you can generate by going to **User Settings > Personal Access Token** in your [Azure DevOps](https://dev.azure.com/ "https://dev.azure.com") account. |
| Organization | Enter your Azure DevOps organization. For example, if you logged into your Azure DevOps instance at "[https://dev.azure.com/domo"](https://dev.azure.com/domo)", you would enter "domo" here. |


Once you have entered valid Azure DevOps credentials, you can use the same account any time you go to create a new Azure DevOps DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Azure DevOps report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Projects | Retrieves details about your projects. |
| Teams | Retrieves details about your teams. |
| Work Items | Retrieves details about your work items. |

 |
| Backfill Date | Select the date to retrieve Work Items from based on the Work Item's 'ChangedDate' field. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
