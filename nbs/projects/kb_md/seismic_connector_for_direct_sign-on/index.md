---
    title: Seismic Connector for Direct Sign-On
    url: https://domo-support.domo.com/s/article/4770992455575
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4770992455575](https://domo-support.domo.com/s/article/4770992455575)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003189
    views: 2,135
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Seismic is sales and marketing enablement software that lets teams find the right sales content and optimize the sales process. From user-centric product design to deep support resources, Seismic’s platform solution is designed from the ground to help clients get results, fast. Use Domo's Seismic Direct Sign-On connector to combine Seismic data with other key sales and marketing data, and get a real-time view of your data for your entire team. To learn more about Seismic API, visit <https://developer.seismic.com/seismicsoftware/reference>.


You connect to your Seismic account in the Data Center. This topic discusses the fields and menus that are specific to the Seismic Direct Sign-On connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Seismic account and create a DataSet, you must have the following:


* Your Seismic tenant
* Your Seismic client ID and client secret
* Your Seismic username and password for direct sign-on


To obtain your Seismic tenant, contact your Domo administrator.


Connecting to Your Seismic Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Seismic Direct Sign-On connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Seismic Direct Sign-On account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Tenant | Enter your Seismic tenant. |
| Client ID | Enter your Seimic client ID for password flow authentication. |
| Client Secret | Enter your Seimic client secret for password flow authentication. |
| Username | Enter your Seismic username for direct sign-on. |
| Password | Enter your Seismic password for direct sign-on. |


Once you have entered valid Seismic Direct Sign-On credentials, you can use the same account any time you go to create a new Seismic Direct Sign-On DataSet. You can manage connector accounts in the ****Accounts**** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Seismic Direct Sign-On report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Content Property Assignments | Provides data on content property assignments. |
| Content Usage History | Provides data on users usage/deliveries of content sourced from the Library. |
| Content View History | Provides data on users views of content. |
| Library Contents | Provides a list of content in the Control Center Library. |
| Livesend Link Contents | Provides a list of content contained in Livesend links. |
| Livesend Link Members | Provides a list of email recipients for each Livesend link. |
| Livesend Links | Provides a list of all Livesend links created by all users from all applications. |
| Livesend Page Views | Provides a timeline of page views for all Livesend content viewed. |
| Search History | Provides data on searches in the platform. |
| Users | Provides a list of users in the system, including deleted users. |
| WorkSpace Contents | Provides a list of content in Workspace for all users. |
| Teamsites | Provides the full list of teamsites in a tenant, regardless of user access. |

 |
| Duration | Select whether you want to pull data for a single date (e.g. January 23) or a date range (e.g. January 23-January 31). |
| Report Date | Select whether the report data is for a specific date or for a relative number of days back from today. If you choose ********Specific********, the report will always pull data for the selected date whenever it runs. If you choose ********Relative********, the report will pull data for the entered number of back days whenever it runs. For example, if you selected ********Relative******** and entered 7 for the number of days back, each time the report ran it would pull data for the last 7 days.  |
| Select Specific Date | Select the report date you want to pull data for using the date selector. |
| Days Back | Enter the number of days back that you would like to get data for. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in ********End Date.******** |
| End Date | Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in ********Start Date.******** |
| Select Specific Start Date | Select the first date in your date range using the date selector. |
| Select Specific End Date | Select the last date in your date range using the date selector. |
| Days Back to Start From | Enter the number of days back that you would like to get data from (start day). Combine with ********Days Back to End At******** to create a range of represented days.
For example, if you entered 10 for ********Days Back to Start From******** and 5 for ********Days Back to End At********, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of days back that you would like to get data to (end day). Combine with ********Days Back to Start From******** to create a range of represented days.
For example, if you entered 10 for ********Days Back to Start From******** and 5 for ********Days Back to End At********, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

