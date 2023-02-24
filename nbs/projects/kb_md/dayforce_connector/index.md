---
    title: Dayforce Connector
    url: https://domo-support.domo.com/s/article/360043430453
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043430453](https://domo-support.domo.com/s/article/360043430453)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003818
    views: 1,135
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Dayforce is an industry-leading, online human capital management platform. To learn more about the Dayforce API, visit their page (<https://usconfigr57.dayforcehcm.com/api/ddn/swagger/>).


You connect to your Dayforce account in the Data Center. This topic discusses the fields and menus that are specific to the Dayforce connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Dayforce account and create a DataSet, you must have the following:


* Your Dayforce username and password
* The client name space that uniquely identifies the Dayforce instance.


Connecting to your Dayforce account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Dayforce Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains fields for entering credentials to connect to your Dayforce account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Dayforce username. |
| Password | Enter your Dayforce password. |
| Client Name Space | Enter the client name space that uniquely identifies your Dayforce instance. |


Once you have entered valid Dayforce credentials, you can use the same account any time you go to create a new Dayforce DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Dayforce report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Get Report | Retrieves the data of the report customized on Dayforce. |
| Documents | Retrieves a list of documents. |
| Employee Availability | Retrieves employee availability information. |
| Employee Compensation Summary | Retrieves compensation information. |
| Employee Details | Retrieves details for a given employee. |
| Employee Ethnicity | Retrieves employee ethnicity information. |
| Employee Locations | Retrieves employee location data. |
| Employee Managers | Retrieves a list of employee managers.  |
| Employee Org Info | Retrieves data for where employees fall in the organization. |
| Employee Punch | Retrieves employee punchcard data.  |
| Employee Raw Punch | Retrieves employees' punchcard data in raw format. |
| Employee Schedule | Retrieves employee scheduling information. |
| Employee Time Away from Work | Retrieves data for how much time employees are spending away from work. |
| Employee Union | Retrieves employee union data. |
| Employee Work Assignments | Retrieves employee work assignment information. |
| Employee Work Contracts | Retrieves a list of employee work contracts. |
| Employee Job Postings | Retrieves a list of job postings. |

 |
| X Ref Code Type | Select whether you want to pull data for all employees (**All**) or for a specific employee based on their employee code (**Select XRef Code**).  |
| Skip Employee Without Documents? | Check this box if you want your report to ignore employees who do not have documents in the system. |
| Employee Code | Select the code for the employee you want to retrieve data for. |
| Report Code | Select the report you want to import into Domo. |
| Status | Select the status you want to filter your report by. |
| Include Date Filter? | Check this box if you wish to filter your report by date. |
| Dates | Select the desired date range for your report.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

