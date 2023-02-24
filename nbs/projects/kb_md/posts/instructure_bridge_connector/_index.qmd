---
title: Instructure Bridge Connector
url: https://domo-support.domo.com/s/article/360043435893
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435893](https://domo-support.domo.com/s/article/360043435893)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003323
views: 1,074
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Instructure Bridge is an employee development system to help train your workforce and increase productivity. It is an employee-centric solution where its main features bridge management with employees to nurture efficient growth. It is a comprehensive platform that does not only enhance communication and monitoring but also situates stakeholders in a conductive environment for co-development. With this at your disposal, developing your employees’ skills in line with business objectives is easier than ever. Use the Domo Instructure Bridge connector to receive data about courses, authors, learners, and more.


You connect to your Instructure Bridge account in the Data Center. This topic discusses the fields and menus that are specific to the Instructure Bridge connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Outreach account and create a DataSet, you must have the following:


* API Key
* API Secret
* Domain


Request your API key from the Instructure Bridge support team by emailing [support@getbridge.com](mailto:support@getbridge.com "mailto:support@getbridge.com"). Visit [API Keys + Support](https://docs.bridgeapp.com/doc/api/html/index.html) for more information about obtaining the API key.


Connecting to Your Instructure Bridge Account
---------------------------------------------


This section enumerates the options in the ****Credentials**** and ****Details**** panes in the Instructure Bridge Connector page. The components of the other panes in this page, ****Scheduling****and ****Name & Describe Your DataSet,**** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Instructure Bridge account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Instructure Bridge API Key. |
| API Secret | Enter your Instructure Bridge API Secret. |
| Domain | Enter your Instructure Bridge domain. Example, if your Bridge URL is [https://domo.bridgeapp.com](https://domo.bridgeapp.com "https://domo.bridgeapp.com"), your domain is "domo". |


Once you have entered valid Instructure Bridge credentials, you can use the same account any time you go to create a new Instructure Bridge DataSet. You can manage connector accounts in the ****Accounts**** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary ****Reports**** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report Group | Select the type of data to retrieve. |
| Report | Select the Instructure Bridge report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Checkpoint |  Lists checkpoints (tasks). |
|  Course Templates | Lists course templates. |
|  Enrollments | Lists enrollments. |
|  Live Courses | Lists live courses. |
|  Programs | Lists programs. |
|  Program Learners | Lists learners for the programs found in the date range selected. |
| Sub Accounts | Lists all Sub Accounts. |
| Tags | Lists all tags. |
|  Taggable Items | Lists all items capable of being tagged for each tag. |
| Tagged Items | Lists all tagged items for each tag. |
| Users | Lists all Users. |

 |
| Course Template Type | Select if the course template is archived or un-archived. |
| Query Date Type | Select the query date type. Selecting **Created** will return results based on their created date. Selecting **Deleted** will return results based on their deleted date. Selecting **Updated** will return results on their updated date. |
| Duration  | Select whether you want to pull data for a single date (e.g. January 23) or a date range (e.g. January 23-January 31). |
| Report Date | Select whether the report data is for a specific date or for a relative number of days back from today. If you choose ****Specific****, the report will always pull data for the selected date whenever it runs. If you choose ****Relative****, the report will pull data for the entered number of back days whenever it runs. For example, if you selected ****Relative**** and entered 7 for the number of days back, each time the report ran it would pull data for the last 7 days.  |
| Select Specific Date | Select the report date you want to pull data for using the date selector. |
| Days Back | Enter the number of days back that you would like to get data for. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in ****End Date.**** |
| End Date | Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in ****Start Date.**** |
| Select Specific Start Date | Select the first date in your date range using the date selector. |
| Select Specific End Date | Select the last date in your date range using the date selector. |
| Days Back to Start From | Enter the number of days back that you would like to get data from (start day). Combine with ****Days Back to End At**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of days back that you would like to get data to (end day). Combine with ****Days Back to Start From**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |
| Additional Data to Expand | Select the field you would like expanded in the data. This will cause multiple rows to show each object in the field selected. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

