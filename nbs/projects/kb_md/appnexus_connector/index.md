---
    title: AppNexus Connector
    url: https://domo-support.domo.com/s/article/360042926434
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926434](https://domo-support.domo.com/s/article/360042926434)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003799
    views: 1,085
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


AppNexus is a global technology company whose cloud-based software platform enables and optimizes programmatic online advertising. To learn more about the AppNexus API, visit their page ([https://wiki.appnexus.com/display/documentation/APIs](https://wiki.appnexus.com/display/documentation/APIs "https://wiki.appnexus.com/display/documentation/APIs")).


The AppNexus API will get you access to the reporting API for the Ad Delivery and Campaign Management environment. From here you'll be able to get reporting on your campaigns by a number of dimensions and metrics. Virtually any metric or dimension available by the AppNexus Web Console will be allowed via the API.


You connect to your AppNexus account in the Data Center. This topic discusses the fields and menus that are specific to the AppNexus connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is helpful for monitoring campaign ad impressions and clicks. |
| **Primary Metrics** | * Impressions
* Clicks
* CTR
* CPM
 |
| **Primary Company Roles** | * Data specialists
* Analysts
 |
| **Average Implementation Time** | * Credentials - 15 minutes or less (unless AppNexus hasn't permissioned your username for API calls).
* Configuring the connector - 5 minutes for pre-configured reports. 60 minutes for each custom report.
* Most runs of the connector will run in less than an hour.
 |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 5 |


Best Practices
--------------


* The AppNexus API may limit your API calls for fields and metrics that don't "play nicely" together. For example, Device API calls don't work well with Network Analytics reporting.
* This connector is easy to use if you can find what you need in the pre-configured reports. If you must use the Custom Reporting and JSON text box, you should have a good knowledge of JSON API calls. It is suggested you use the console to ensure the metrics you are attempting to select in JSON work well together.
* If you intend to append the report each day, it is suggested you just pull yesterday's data and schedule the report to run daily.


Prerequisites
-------------


To connect to your AppNexus account and create a DataSet, you must have the username and password you use to log into the [AppNexus Console](https://console.appnexus.com "https://console.appnexus.com"). You'll need to ensure that your credentials are properly permissioned by AppNexus. They may make you take an API quiz in order to submit calls with your credentials.


Connecting to Your AppNexus Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the AppNexus Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your AppNexus account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username you use to log into the AppNexus Console. |
| Password | Enter the password you use to log into the AppNexus Console. |


Once you have entered valid AppNexus credentials, you can use the same account any time you go to create a new AppNexus DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the AppNexus report you want to run.  You have access to 5 preconfigured reports: "Advertisers," "Campaigns," "Line Items," "Members," and "Pixels." If the fields provided in these 5 preconfigured reports are not all you need, you can use the "Custom" report type and provide your own JSON API call in the text box.
The following reports are available:

|  |  |
| --- | --- |
| Advertisers | Retrieves data about advertisers in the account. |
| Campaigns | Retrieves data about campaigns controlled by the account. |
| Custom Report | Returns a custom report, which you query using JSON. |
| Line Items | Retrieves data about line items tracked by the account. |
| Members | Retrieves data about members of the AppNexus account. |
| Pixels | Retrieves data about conversion pixels managed by the account. |

 |
| Start Days | Enter the number of the farthest day back that should be represented in the report. Combine with **End Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Use 0 for today.  |
| End Days | Enter the number of the most recent day back that should be represented in the report. Combine with **Start Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Use 0 for today. |
| Interval | Select the interval for which certain statistics columns will be calculated. This does not affect which items will be displayed in the report. |
| Report JSON | Enter the JSON query for your custom report. For more information about JSON, see the [AppNexus documentation](https://wiki.appnexus.com/display/sdk/Publisher+Analytics+Report "https://wiki.appnexus.com/display/sdk/Publisher+Analytics+Report"). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


Ensure you have API access for the credentials you supply.

