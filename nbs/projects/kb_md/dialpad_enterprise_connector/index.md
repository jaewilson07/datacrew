---
    title: Dialpad Enterprise Connector
    url: https://domo-support.domo.com/s/article/4420450699415
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4420450699415](https://domo-support.domo.com/s/article/4420450699415)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003201
    views: 2,111
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Dialpad Enterprise is a cloud-based phone system, allowing you to make and receive calls and messages. Dialpad provides you an all-in-one workspace with a great connectivity. Experience truly unified communications built-in-AI, scale faster, deploy your global teams together, and get enterprise class security. Use this connector to receive data about your phone system usage, including users, offices, departments, and more. To learn more about the Dialpad API, visit their page (<https://developers.dialpad.com/docs>).


The Dialpad Enterprise Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Dialpad Enterprise account in the Data Center. This topic discusses the fields and menus that are specific to the Dialpad Enterprise Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Dialpad Enterprise account and create a DataSet, you must have your Dialpad API Key associated with your Enterprise account.


Connecting to Your Dialpad Enterprise Account
---------------------------------------------


This section enumerates the options in the Credentials and Details panes in the Dialpad Enterprise Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Dialpad Enterprise account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter your Dialpad API Key for your Enterprise account. |


Once you have entered valid Dialpad Enterprise credentials, you can use the same account any time you go to create a new Dialpad Enterprise DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Dialpad Enterprise report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Offices | Get a list of all offices. |
| Call Centers | List all the call centers in an Office. |
| Operators | List all the pperators in a given call center. Each entry contains a key parameter that uniquely identifies each operator. |
| Stats | Get summary stats and call/text logs. |

 |
| Office | Select an office. |
| Target Type | Select the target Type for an ID. |
| Call Center | Select a call center. |
| Stat Type | Select a stat type. |
| Export Type | Select whether you want to export stats or records. |
| Today's Data | Select 'Yes' to retrieve the data for the current day. Note that, you cannot combine Today's Data with the historical data. Select 'NO' to see date range options. |
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


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Dialpad API does this Connector use?


This Connector uses version 2 of the Dialpad API (<https://dialpad.com/api/v2>).


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Offices | /offices |
| Call Centers | /offices/{office\_id}/callcenters |
| Operators | /callcenters/{callcenter\_id}/operators |
| Stats | /stats |


#### What kind of credentials do I need to power up this Connector?


You need your Dialpad API Key associated with your Enterprise account.


#### Are there any API limits I should be aware of?


No


#### How often can the data be updated?


As often as needed.


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
