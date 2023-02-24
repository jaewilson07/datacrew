---
title: Entrata V2 Connector
url: https://domo-support.domo.com/s/article/4422714455191
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4422714455191](https://domo-support.domo.com/s/article/4422714455191)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003202
views: 2,134
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Entrata is property management software for property owners, property managers, and residents. Using the Entrata API to pull data into Domo, you'll get a consistent and reliable data connection that you can use to monitor income and expenses of properties, financial picklist, leads, lease and more so that you can get the most out of your Entrata platform. For more information about the Entrata API, visit their website. ([https://www.entrata.com/api-documentation](https://www.entrata.com/api-documentation "https://www.entrata.com/api-documentation"))


The Entrata V2 connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Entrata account in the Data Center. This topic discusses the fields and menus that are specific to the Entrata V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Entrata account and create a DataSet, you must have the following: 


* Your Entrata username and password
* Your Entrata account domain. For example, if you logged into Entrata at '[domo.entrata.com](http://domo.entrata.com)', your domain would be 'domo'.


Connecting to Your Entrata Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Entrata V2 Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Entrata V2 account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Entrata username.  |
| Password  | Enter your Entrata password.  |
| Domain | Enter the account domain for your Entrata instance.  |


Once you have entered valid Entrata credentials, you can use the same account any time you go to create a new Entrata V2 DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type. Depending on the report type you select, other options may be available.




| Menu | Description |
| --- | --- |
| Report | Select an Entrata V2 report. The following reports are available:

|  |  |
| --- | --- |
| Financial PickList | Retrieves financial picklist. |
| Invoices | Retrieves invoice batch. |
| Lead Events | Retrieves lead events for selected property. |
| Leads | Retrieves leads for selected property. |
| Lease Details | Retrieves charge detail information for all leases for the selected property. |
| Leases | Retrieves lease information for selected property. |
| Property PickList | Retrieves a pick list for properties. |
| Report Data | Retrieves data about a report based on user supplied filters. |
| Specials | Retrieves a specials/concessions for the selected property. |

 |
| Select Property  | Specify whether you would like to retrieve all properties or a specific property. |
| Property | Select the property you would like to view. |
| Picklist | Select the property picklist you would like to view. |
| Date Filter Type | Select the date type to filter.





**Note:** You can select only the future dates for the **Move In Date** date filter in **Leases** report.


 |
| Date Selection | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date | Select the specific date using the date selector. |
| Relative Date | Enter the number of days back that you would like to get data for in the **Days Back** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Date Range | Select the specific or relative date range. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ********End Date******** to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ********Start Date********to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |
| Time Period | Specify the time period that you would like to receive data for. |
| Starting Day of the Week | Select the day you would like your week to start with. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).  


FAQ
---


#### What endpoint is the base URL for this connector?


The base URL for Entrata V2 is <https://{>DomainName}.[entrata.com](http://entrata.com)/api.


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Financial PickList | /financial |
| Invoices | /vendors |
| Lead Events | /leads |
| Leads | /leads |
| Lease Details | /leases |
| Leases | /leases |
| Property PickList | /properties |
| Report Data | /reports |
| Specials | /propertyunits |


#### What kind of credentials do I need to power up this connector?


You need the username, password, and domain of your Entrata account. For example, if you logged into Entrata at '[domo.entrata.com](http://domo.entrata.com)', your domain would be 'domo'.


#### Can I use the same account multiple times to create datasets?


Yes


#### How often can the data be updated?


Datasets can be updated as often as once an hour.


#### Are there any API limits that I need to be aware of?


No

