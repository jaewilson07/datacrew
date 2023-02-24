---
    title: CDC Connector
    url: https://domo-support.domo.com/s/article/360042930814
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042930814](https://domo-support.domo.com/s/article/360042930814)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003378
    views: 2,102
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


As the USA's health protection agency, CDC (Centers for Disease Control and Prevention) saves lives and protects people from health, safety, and security threats. Use Domo's CDC connector to retrieve data from more than 800 public datasets. To learn more about CDC APIs, visit their page (<https://open.cdc.gov/apis.html>).


You connect to CDC datasets in the Data Center. This topic discusses the fields and menus that are specific to the CDC connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


None. All of the data available through this connector is public, so there is no need to enter credentials. 


Connecting to CDC datasets
--------------------------


This section enumerates the options in the **Details** pane in the CDC Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Details Pane


This pane contains a primary **Report** menu, along with a **Dataset ID** menu from which you can select your desired CDC dataset. 




| Menu | Description |
| --- | --- |
| Report | Select a report from the menu. Currently only a single report type is available.

|  |  |
| --- | --- |
| CDC Dataset | Lets you select a CDC dataset in the **DataSet ID** menu. |

 |
| Dataset ID | Select the CDC dataset you want to pull into Domo. You can search for a specific dataset in the **Search** field or filter the list to show only datasets you have selected by clicking the eye icon. 
You can view available datasets and their descriptions at [https://data.cdc.gov/browse](https://data.cdc.gov/browse "https://data.cdc.gov/browse"). |
| Update Data | Generally CDC updates data once a month. Please select YES if you only want updated data on Scheduled runs and select NO if you want to return existing/updated data if CDC has not-updated/updated data on Scheduled runs |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### What kind of credentials do I need to power up this connector?


No credentials required.


##### How often should I update my CDC DataSets?


DataSets cannot be updated more than once per day, and in most cases it is recommended that you only update once per month.


##### Are there any API limits that I need to be aware of?


No

