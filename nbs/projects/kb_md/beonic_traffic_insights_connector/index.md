---
title: Beonic Traffic Insights Connector
url: https://domo-support.domo.com/s/article/360042927694
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042927694](https://domo-support.domo.com/s/article/360042927694)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003688
views: 1,079
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Beonic Traffic Insights is a brick-and-mortar retail visitor counter solution. Beonic Technologies uses internet-connected IoT hardware to count visitors to your storefront, enabling you to better make decisions regarding foot traffic, sales and marketing. To learn more about the Beonic Traffic Insight API, visit their page (<https://skyfii.io/io-connect/>).


You connect to your Beonic Traffic Insights account in the Data Center. This topic discusses the fields and menus that are specific to the Beonic Traffic Insights connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Beonic account and create a DataSet, you must have the following:


* Your Beonic Traffic Insights customer ID
* Your Beonic Traffic Insights account username and password


Connecting to Your Beonic Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Beonic Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Beonic account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Company ID | Enter the subdomain of your Beonic Traffic Insights instance. For example, if your instance was [https://company.trafficinsight.com](https://company.trafficinsight.com "https://company.trafficinsight.com"), you would enter company here. This field is only required if you use a hosted instance of Beonic Traffic Insights. |
| Customer ID | Enter your Beonic Traffic Insights customer ID. |
| Username | Enter the username for your Beonic Traffic Insights account. |
| Password | Enter the password for your Beonic Traffic Insights account. |


Once you have entered valid Beonic credentials, you can use the same account any time you go to create a new Beonic DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Beonic report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Annotations | Returns annotation data. |
| Data | Returns raw data collected from Beonic Traffic Insights. |
| Devices | Returns data about devices and their locations. |
| Device Information | Returns device metadata and a device ID (can be joined with the Devices report in ETL). |
| CSV Reports | Returns custom CSV Reports available in Beonic Traffic Insights. Requires the report name. |

 |
| CSV Report Name | Enter the name of the CSV report you want to import into Domo. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

