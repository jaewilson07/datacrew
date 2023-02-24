---
    title: Sentry Connector
    url: https://domo-support.domo.com/s/article/360042929074
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042929074](https://domo-support.domo.com/s/article/360042929074)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003553
    views: 1,082
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Sentry is an open-source error tracking platform that helps developers monitor and fix crashes in real time. To learn more about the Sentry API, visit their [documentation page](https://docs.sentry.io/api/auth/ "Sentry Connector"). 


You connect to your Sentry account in the Data Center. This topic discusses the fields and menus that are specific to the Sentry connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042929074 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Sentry account and create a DataSet, you must have a Sentry API Auth Token. See Sentry's [authentication document](https://docs.sentry.io/api/auth/ "Sentry Connector") to learn how to find or create authentication tokens within Sentry. 


Connecting to your Sentry Account
---------------------------------


This section enumerates the options in the ****Credentials**** and ****Details**** panes in the Sentry Connector page. The components of the other panes in this page, ****Scheduling,**** and ****Name & Describe Your DataSet****, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042929074 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Sentry account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Auth Token | Enter your Sentry API Auth Token. For more information, see [Prerequisites](/s/article/360042929074 "Sentry Connector"), above.  |


Once you have entered valid Sentry credentials, you can use the same account any time you go to create a new Sentry DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042929074 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.


 




| Menu | Description |
| --- | --- |
| Report | Select the Sentry report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Events Counts Organization | Returns a set of points representing a normalized timestamp and the number of events seen in the period. |
| Events Counts Project | Returns a set of points representing a normalized timestamp and the number of events seen in the period. |
| Events Counts Team | Returns a set of points representing a normalized timestamp and the number of events seen in the period. |
| Issues Events | Returns a list of issue's events. |
| Issues Events Entries | Returns a list of issue's events entry list. |
| Organization Projects | Returns a list of projects in an organization. |
| Organization Repositories | Returns a list of repositories in an organization. |
| Organization Teams | Returns a list of teams in an organization. |
| Organizations | Returns a list of organizations. |
| Projects | Returns a list of projects |
| Project Feedback | Returns a list of user feedback items within this project. |
| Project Events | Returns a list of events bound to a project. |
| Project Events Entries | Returns a list of event's entries bound to a project. |
| Projects Issues | Returns a list of issues (groups) bound to a project. |
| Projects Users | Returns a list of users seen within this project.  |
| Team Projects | Returns a list of projects bound to a team. |

  |
| Organizations | Select the organization that you would like to include in your DataSet.  





**Note:** This option is available with the following reports: 
* Projects Issues
* Organization Projects
* Organization Repositories
* Organization Teams
* Team Projects
* Events Counts Organization
* Events Counts Team





 |
| Projects | Select the project that you would like to include in your DataSet.  





**Note:** This option is available with the following reports: 
* Projects Events
* Project Events Entries
* Projects Issues
* Project Users
* Project Feedback
* Events Counts Project





 |
| Issue ID | Enter the Issue ID you would like to include in your DataSet.  





**Note:** This option is available with the following reports: 
* Issues Events
* Issues Events Entries





 |
| Teams | Select the teams that you would like to include in your DataSet.  





**Note:** This option is available with the following reports:
* Team Projects
* Events Counts Team





 |
| Stat | Select the stat for the report.  





**Note:** This option is available with the following reports:
* Events Counts Organization
* Events Counts Project
* Events Counts Team





 |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in ****End Date****.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in ****Start Date****.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with ****Days Back to End At**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with ****Days Back to Start From**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |


Other Panes
-----------


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042929074 "Adding a DataSet Using a Data Connector").


FAQ
---


**What kind of credentials do I need to power up this connector?**


You need the authentication token associated with your Sentry account.


**Where can I find my authentication token?**


You can find your authentication token by logging in to Sentry Web UI and navigating to [https://sentry.io/auth/login/](https://sentry.io/auth/login/ "Sentry Connector").


**How often can the data be updated?**


As often as needed.


**Are there any API limits that I need to be aware of?**


No.

