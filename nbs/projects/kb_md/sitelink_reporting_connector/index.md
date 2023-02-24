---
    title: SiteLink Reporting Connector
    url: https://domo-support.domo.com/s/article/4418190973335
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4418190973335](https://domo-support.domo.com/s/article/4418190973335)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003195
    views: 2,112
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


SiteLink Reporting's self-storage software helps small and large operators manage their self-storage tenants and grow profits while reducing costs. It manages your units, tenants, invoices, etc. quickly and cost-effectively. 


Domo connects directly to SiteLink and delivers the information you need in real-time visualizations that make analysis easier. Use this information to ensure you have all the customer data you need to drive your strategic growth plans. By combining your data with Domo, you empower the data-driven decisions at every level of your organization in an efficient and streamlined manner. Enhance your performance with the powerful insights about the finance, inquiry, discounts, rent, management, and much more. To learn more about the SiteLink Reporting API, visit their page (<https://www.sitelink.com/solutions/integrations-partners>).


The SiteLink Reporting Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your SiteLink account in the Data Center. This topic discusses the fields and menus that are specific to the SiteLink Reporting Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your SiteLink Reporting account and create a DataSet, the username, password, and corp code associated with your SiteLink account. 


Connecting to Your SiteLink Account
-----------------------------------


This section enumerates the options in the Credentials and Details panes in the SiteLink Reporting Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your SiteLink account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Username | Enter your username associated with the SiteLink account. |
| Password | Enter your password associated with the SiteLink account.  |
| Corp Code | Enter the corporate code associated with your SiteLink account. |


Once you have entered valid SiteLink credentials, you can use the same account any time you go to create a new SiteLink Reporting DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the SiteLink Reporting report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Consolidated Management Summary | Returns consolidated management summary. |
| Custom Reports By Report ID | Returns custom report's data for the provided report ID. |
| Discounts | Returns details about discounts. |
| Financial Summary | Returns financial summary data. |
| Inquiry Tracking | Returns inquiry tracking data. |
| Insurance Roll | Returns insurance roll data. |
| Management Summary | Returns management summary data. |
| Move Ins and Move Outs | Returns details about move ins and move outs. |
| Occupancy Statistics | Returns occupancy statistics. |
| Past Due Balances | Returns details about past due balances. |
| Rent Roll | Returns details about rent rolls. |

 |
| Site/Location Option | Specify whether you want to select all sites or from the available sites. |
| Location Code | Select the location code. |
| Custom Report ID | Select the custom report ID. |
| Start Date | Select report start date using relative or specific dates. Relative meaning number of days from today or a specific date using the date selector |
| Select Specific Start Date | Select the report date using the date selector. |
| Days back to start from | The number of days back that you would like to get data from (start day). Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| End Date | Select report end date using relative or specific dates. Relative meaning number of days from today or a specific date using the date selector |
| Select Specific End Date | Select the report date using the date selector. |
| Days back to end at | The number of days back that you would like to get data to (end day). Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What endpoint is the base URL for this Connector use?


This base URL for the SiteLink Reporting Connector is <https://api.smdservers.net/CCWs_3.5/ReportingWs.asmx>.


#### What kind of credentials do I need to power up this Connector?


You need the username, password, and corp code associated with your Sitelink account.


#### Can I use the same account multiple times to create datasets?


Yes


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


No


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
