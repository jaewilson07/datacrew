---
title: Lenos Connector
url: https://domo-support.domo.com/s/article/360058708833
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360058708833](https://domo-support.domo.com/s/article/360058708833)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003301
views: 1,069
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Lenos Software is a provider of innovative marketing automation software to easily design, manage and analyze branded meetings and event marketing. Lenos Software is the leading innovator of enterprise Event Marketing Cloud automation solutions. Use Domo’s Lenos connector to get the most out of your Lenos data.


You connect to your Lenos account in the Data Center. This topic discusses the fields and menus that are specific to the Lenos Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in[Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Lenos account and create a DataSet, you must have the following:


* Your Lenos account Username
* Your Lenos account  Password


Connecting to Your Lenos Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Lenos Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Lenos account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username associated with your Lenos account. |
| Password | Enter the password associated with your Lenos account. |


Once you have entered valid Lenos credentials, you can use the same account any time you go to create a new Lenos DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Lenos report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Agenda | Returns all agendas for the Event. |
| Attendee Activity and Payment | Returns the summary of payment information and all selected activities with fees and no fees. |
| Attendees | Returns all invitees/registrants for the event. |
| Attendee Session Schedule | Returns all schedules for the given event ID and confirmation number. |
| Custom Attendees | Returns all invitees/registrants for the event with custom data. |
| Events | Returns all events for the account. |
| Itinerary | Returns all itineraries for the event. |
| Report Data | Returns data for the given event ID, report, and confirmation number. |
| Schedule | Returns all schedules for the event. |
| Session | Returns all sessions for the event. |
| Speaker | Returns all speakers for the account. |

 |
| Event ID | Select the event ID for which the data is to be fetched. |
| Filter By | Select whether you want your data to be filtered by the creations date or the modification date. |
| Date | Select whether you want the data to be filtered for a single date, a date range, or a time period. |
| Single Date | Select whether you want the data to be filtered for a **specific date** or for the **relative** number of days |
| Single Date - Specific | Select the report date using the date selector. |
| Single Date - Relative | Choose ****Relative**** if you want the report to retrieve data for a given number of days back from the current date (which you specify in ****Days Back****). |
| Date Range | Select the date range the data to be filtered for. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. |
| End Date | Specify whether the last date in your date range is a specific or relative date. |
| Start Date - Relative | Choose ****Relative**** start date if you want the report to retrieve data for a given number of days back from the current date (which you specify in ****Days Back to Start From****). If you choose ****Relative**** here, you should also choose ****Relative**** for ****End Date**** and specify a value for ****Days Back to End At****.
For example, if you enter 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At**** and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past. |
| End Date - Relative | Choose ****Relative**** end date if you want the report to retrieve data for a given number of days back from the current date (which you specify in ****Days Back to End At****). If you choose ****Relative**** here, you should also choose ****Relative**** for ****Start Date**** and specify a value for ****Days Back to Start From****.
For example, if you enter 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Time Period | Select the time period for which you would like to receive data. |
| Report Name | Enter the name of report for the specified event. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

