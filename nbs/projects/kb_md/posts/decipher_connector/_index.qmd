---
title: Decipher Connector
url: https://domo-support.domo.com/s/article/360042950514
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042950514](https://domo-support.domo.com/s/article/360042950514)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003312
views: 1,076
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Decipher is a mobile-friendly, online survey software and reporting solution for insights pros who need to execute sophisticated quantitative research. To learn more about the Decipher API, visit their page ([https://support.focusvision.com/Deci...r\_REST\_API\_2.0](https://support.focusvision.com/Decipher/0003_Build/REST_API/010_Decipher_REST_API_2.0 "https://support.focusvision.com/Decipher/0003_Build/REST_API/010_Decipher_REST_API_2.0")).


You connect to your Decipher account in the Data Center. This topic discusses the fields and menus that are specific to the Decipher connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in adding  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Decipher account and create a DataSet, you must have the following:


* Your Decipher API key. To generate an API key, navigate to [https://support.focusvision.com/Deci...r\_REST\_API\_2.0](https://support.focusvision.com/Decipher/0003_Build/REST_API/010_Decipher_REST_API_2.0 "https://support.focusvision.com/Decipher/0003_Build/REST_API/010_Decipher_REST_API_2.0") then scroll down to the section called "Generate an API Key from the Research Hub" and follow the steps.
* Your Decipher host URL. By default this is set to [https://v2.decipherinc.com](https://v2.decipherinc.com "https://v2.decipherinc.com"), but you can modify this if necessary.


Connecting to Your Decipher Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Decipher Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Decipher account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Decipher API key.  |
| Host URL | Enter your Decipher host URL. |


Once you have entered valid Decipher credentials, you can use the same account any time you go to create a new Decipher DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Decipher report you want to run. The following reports are available:

|  |  |
| --- | --- |
| All Surveys | Returns a collection of available surveys. |
| Crosstab Configuration | Retrieves segments and globally available weighting variables configured for a survey. |
| Datamap | Retrieves the datamap of a survey, explaining questions and variables. |
| Datasource | Returns the definition of a single datasource. |
| Datasource Data | Returns all datasource data. |
| Datasources | Returns a list of current datasources and their data. |
| Feed | Retrieves new data.  |
| Feed State | Returns the internal state of a data feed. |
| Layouts | Returns a list of data layouts for a survey. |
| Quota | Retrieves quota cell definitions.  |
| Saved Reports | Lists “saved reports” and “saved crosstabs” created on a survey. |
| Survey Data
  | Returns respondent data for survey.
  |

 |
| Survey Path | Select the survey path you want to retrieve data for. |
| Datasource List | Select the datasource you want to pull data from. |
| Feed | Enter the ID of the feed you want to pull data from. |
| Layout (Optional) | Enter the number of the layout you want to retrieve data for. |
| State | Enter the survey state. |
| Fields (Optional) | Enter the names of the fields you want to return, separated by commas. For example: uuid,id |
| Datamap Key | Select the datamap key to pull data for, either **Questions** or **Variables**. |
| Quota Key | Select the key for your "Quota" report. Available keys include the following:

|  |  |
| --- | --- |
| Defines | Maps a marker name to an object. |
| Markers | Maps each quota cell marker name to an object describing its current state. |
| Sheets | Maps sheet names to definitions. Each sheet definition is an array of tables. |
| Stopped | Returns an object with the quota cell markers of cells that were stopped in the field report and the user who stopped the cell. |

 |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### 


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

