---
    title: Anaplan Connector
    url: https://domo-support.domo.com/s/article/360043432713
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043432713](https://domo-support.domo.com/s/article/360043432713)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003636
    views: 2,162
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Anaplan is a cloud-based business modeling and planning platform for sales, operations and finance. Use Domo's Anaplan connector to return data you have created as an export in the Anaplan user interface. For more information about the Anaplan API, visit their website. ([https://docs.anaplan.apiary.io/](https://docs.anaplan.apiary.io/ "https://docs.anaplan.apiary.io/"))


You connect to your Anaplan account in the Data Center. This topic discusses the fields and menus that are specific to the Anaplan connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Anaplan account and create a DataSet, you must have the username and password for your Anaplan account. You must also have an export file set up in Anaplan, and you must know the workspace and model in which the file is located. For information about creating an export file, see [Setting Up an Export in Anaplan](/s/article/360043432713 "Anaplan Connector"). 


Connecting to Your Anaplan Account
----------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Anaplan Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your A﻿naplan account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username you use to log into your Anaplan account. |
| Password | Enter the password you use to log into your Anaplan account. |


Once you have entered valid Anaplan credentials, you can use the same account any time you go to create a new Anaplan DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


In this pane you select the Anaplan workspace and model with the export file you want to retrieve, as well as the name of the file itself. For information about setting up an export in Anaplan, see the next section. 




| Menu | Description |
| --- | --- |
| Workspaces | Select the Anaplan workspace that contains your export file. 
  |
| Models | Select the Anaplan model that contains your export file. |
| Files | Select the export file you want to pull into Domo. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Setting Up an Export in Anaplan
-------------------------------


Follow the instructions in this section to create a file for export in Anaplan. Files set up for export can then be pulled into Domo as DataSets. 




 

**Note:** You must have full access in Anaplan to do this. Otherwise the export cannot be saved as an "export definition" so it will not appear in the **File** menu in the **Details** pane for the Anaplan connector.



**To set up a file for export in Anaplan,**


1. In Anaplan, open the module or list you want to export from by doing the following:


	1. Click the Gear icon.
	2. Click **Modules**.
	3. Click the module where your file is located.
	4. Click **Open** at the top of the screen.
2. Click **Data** at the top of the screen.
3. Click **Export**.
4. Choose the desired export format.  
 It is recommended you select **CSV** as the file type and **Tabular Single Column** as the layout, and that you check the box for **Export all line items while omitting empty rows**.
5. Check the box for **Save Export Definition**.
6. Name your export.  
 This is the name that appears in the **File** menu in the **Details** pane for the Anaplan connector.
7. Click **Run Export**.


FAQs
----


##### What version of Anaplan does the connector use?


This connector uses major version 1 and minor version 3 of Anaplan. ([https://api.anaplan.com/{major}/{minor}](https://api.anaplan.com/%7Bmajor%7D/%7Bminor%7D "https://api.anaplan.com/{major}/{minor}"))  
Major Version = 1  
Minor Version = 3 


##### Which endpoints does each discovery call using this connector?




| Discovery Name | Endpoint URL |
| --- | --- |
| Workspaces | /workspaces |
| Models | /workspaces/{workspaceID}/models |
| Files | /workspaces/{workspaceID}/models/{modelID}/files |


##### Which endpoints are called to process the data?


* /workspaces/{workspaceID}/models/{modelID}/files/{fileID}/chunks
* /workspaces/{workspaceID}/models/{modelID}/exports/{fileID}/tasks
* /workspaces/{workspaceID}/models/{modelID}/exports/{fileID}/tasks/{taskID}


##### Can I use the same account to create multiple DataSets?


You sure can.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

