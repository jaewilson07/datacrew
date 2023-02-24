---
title: HireVue Connector
url: https://domo-support.domo.com/s/article/360042928194
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042928194](https://domo-support.domo.com/s/article/360042928194)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003645
views: 1,071
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


HireVue is an online video recruiting software suite with a focus on technology to hire the best talent faster. To learn more about the HireVue API, visit their page ([https://www.hirevue.com/why-hirevue/partners](https://www.hirevue.com/why-hirevue/partners "https://www.hirevue.com/why-hirevue/partners")).


You connect to your HireVue account in the Data Center. This topic discusses the fields and menus that are specific to the HireVue connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your HireVue account and create a DataSet, you must have the following:


* The email address associated with your HireVue account.
* Your HireVue API key. If you do not have an API key, reach out to your HireVue account manager.
* The domain for your HireVue account. For example, if you log in to your account at <https://domo.hirevue.com>, you would enter "[domo.hirevue.com](http://domo.hirevue.com)" here. The standard domain is [app.hirevue.com](http://app.hirevue.com), but this could vary depending on your account.


Connecting to Your HireVue Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HireVue Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your HireVue account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the email address associated with your HireVue account. |
| API Key | Enter your HireVue API key. |
| Domain | Enter your HireVue company domain.  |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid HireVue credentials, you can use the same account any time you go to create a new HireVue DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the HireVue report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Evaluations | Returns interview evaluations for a given position. |
| Interviews | Returns interview data according to your selected filters. |
| Positions | Returns data about positions according to your selected filters. |
| Questions | Returns interview questions for a given position. |
| Teams | Returns team and user data. |

 |
| Status | Select the interview status you want to filter your results by. |
| Include Positions in Archived State | Select whether you want to include archived positions in your results. |
| Include Positions in Draft State | Select whether you want to include positions in draft state in your results. |
| Date Type (for "Evaluations," "Questions," and "Positions" reports) | Select whether to filter on Created Date or Position Due Date. "Evaluations" and "Questions" reports are filtered based on the dates of the positions they relate to. Note that if no Position Due Date has been set on a position, no data will be returned when filtering on Position Due Date.  |
| Date Type (for "Interviews" report) | Select whether to filter on the Created Date or Taken Date.  |
| Sub Report | Select a subreport to include with your report, if desired. If you do not want to include a subreport, select **None**. |
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


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### Why is my DataSet missing "positions"?


Depending on the filters you select, you may be unintentionally excluding positions. For example, if you use "due date" as your date filter, but your position does not have a "due date" assigned, the position will never be returned, no matter what range you select in the date selector. You must also specifically request that archived and draft positions be returned using the available checkboxes in the UI. 


##### How do the filters work for the "Evaluations" and "Questions" reports?


You may find these filters a bit confusing because you aren't actually filtering the evaluations or questions. In this case, Domo requests positions for the criteria you select and we return the evaluations or questions that apply to each position that matches the filter criteria.

