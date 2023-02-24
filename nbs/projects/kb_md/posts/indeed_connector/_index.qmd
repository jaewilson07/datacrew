---
title: Indeed Connector
url: https://domo-support.domo.com/s/article/360043432633
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432633](https://domo-support.domo.com/s/article/360043432633)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003641
views: 1,107
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


Indeed is a job search engine that offers access to millions of employment opportunities from thousands of websites. To learn more about the Indeed API, visit their page ([https://www.indeed.com/publisher](https://www.indeed.com/publisher "https://www.indeed.com/publisher")).  


You connect to your Indeed account in the Data Center. This topic discusses the fields and menus that are specific to the Indeed connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Indeed account and create a DataSet, you must have an Indeed publisher key. You can obtain a publisher key at [https://ads.indeed.com/jobroll/xmlfeed](https://ads.indeed.com/jobroll/xmlfeed "https://ads.indeed.com/jobroll/xmlfeed"). 


Connecting to Your Indeed Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Indeed Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Indeed account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Publisher Key | Enter your Indeed publisher key. You can obtain a publisher key at [https://ads.indeed.com/jobroll/xmlfeed](https://ads.indeed.com/jobroll/xmlfeed "https://ads.indeed.com/jobroll/xmlfeed").  |


Once you have entered valid Indeed credentials, you can use the same account any time you go to create a new Indeed DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus that allow you to configure your report.




| Menu | Description |
| --- | --- |
| Report | Select the Indeed report you want to run. Currently only one report type is available.

|  |  |
| --- | --- |
| Search | Returns data about Indeed job searches. |

 |
| Search | Enter the keyword you want to filter by in your report. For example, if you entered Aircraft repair technician, your report would return job listings for that profession.  |
| Job Type | Select a job type to filter your results by. |
| Country | Select the country you want to retrieve job listings for. |
| Location (Optional) | Enter the U.S. city you want to retrieve job listings for, in city, state format. For example: Seattle, Washington |
| Sort | Select whether you want to sort by date or relevance. **Date** sorts the job listings by job posting date. **Relevance** sorts by search relevance. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


 

