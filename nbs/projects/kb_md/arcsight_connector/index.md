---
    title: ArcSight Connector
    url: https://domo-support.domo.com/s/article/360042928574
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928574](https://domo-support.domo.com/s/article/360042928574)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003590
    views: 1,091
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


HP ArcSight is a cyber security company that provides big data security analytics and intelligence software for security information and event management (SIEM) and log management solutions. You can use Domo’s ArcSight connector to pull Report Service and Query Viewer service reports. To learn more about ArcSight, visit their page ([https://h41382.www4.hpe.com/gfs-shared/downloads-273.pdf](https://h41382.www4.hpe.com/gfs-shared/downloads-273.pdf "http://www8.hp.com/us/en/software-solutions/siem-security-information-event-management/index.html")).  


You connect to your ArcSight account in the Data Center. This topic discusses the fields and menus that are specific to the ArcSight connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your ArcSight account and create a DataSet, you must have the following:


* The username and password for your ArcSight account
* The hostname and port number for your ArcSight server
* The report ID if you are retrieving a Report Service report, or the query ID if you are retrieving a Query Viewer Service report


Connecting to Your ArcSight Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the ArcSight Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your ArcSight account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username you use to log into your ArcSight account. |
| Password | Enter the password you use to log into your ArcSight account. |
| Host Name | Enter the hostname of the server where ArcSight is located. |
| Port Number | Enter the port number of the server where ArcSight is located. |


Once you have entered valid ArcSight credentials, you can use the same account any time you go to create a new ArcSight DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the ArcSight report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Report Service | Returns the report associated with the specified **Report ID**. |
| Query Viewer Service | Runs the query indicated in the **Query ID** field. |

 |
| Report ID | Enter the ID of the Report Service report you want to retrieve. |
| Query ID | Enter the ID of the Query Viewer Service query you want to run. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  

