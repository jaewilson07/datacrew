---
    title: Shareablee Connector
    url: https://domo-support.domo.com/s/article/360043434113
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434113](https://domo-support.domo.com/s/article/360043434113)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003509
    views: 1,077
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Shareablee is a strategic marketing intelligence solution empowering brands, content publishers, and agencies to easily get the insights they need to know across all measurable channels of social engagement to drive their most important marketing and business decisions.


Use Domo's Shareablee connector to retrieve data across social platforms and industry-standard metrics. To learn more about the Shareablee API, visit their page ([https://www.shareablee.com/product/api-integrations](https://www.shareablee.com/product/api-integrations "https://www.shareablee.com/product/api-integrations")). The Shareablee API offers a great selection of industry-wide owned, paid and earned metrics for Facebook, Instagram, Twitter and YouTube –on single brand level, keyword or topic and category level (which represent a predefined or custom set of brands).


You connect to your Shareablee account in the Data Center. This topic discusses the fields and menus that are specific to the Shareablee connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Shareablee account and create a DataSet, you must have the following:


* A Shareablee API key
* A Shareablee API secret


To obtain these credentials, reach out to your Shareablee account representative.


Connecting to Your Shareablee Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Shareablee Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Shareablee account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Shareablee API key. |
| API Secret | Enter your Shareablee API secret. |


Once you have entered valid Shareablee credentials, you can use the same account any time you go to create a new Shareablee DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.


Reports regarding Content and Page Insights also serve private data that is available for owners of social pages that authenticate them to the Shareablee technology.




| Menu | Description |
| --- | --- |
| Report | Select the Shareablee report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Category Cross Platform Member Info | Returns brand-specific information related to the members of a given category for all social platforms. |
| Category Cross Platform Member Rankings | Returns member ranking data for a given category across supported platforms based on total engagement |
| Category Cross Platform Top Content | Returns a list of top content for a given category across supported services along with general engagement metrics |
| Category Member Info | Returns brand-specific information related to the members in a given category for all social platforms. |
| Category Metrics | Returns a vast list of engagement and page-specific metrics for a given category. |
| Category Ranking | Returns a list of category members sorted descending by total engagement. |
| Category Time Series | Returns a list of the values of the requested metric per day in specified date range. |
| Cross Platform User Info | Returns platform-specific information related to a given brand. |
| List Category IDs | Returns a list of category IDs. |
| List Entity IDs | Returns a list of entity IDs. |
| Page Insights | Returns a list of property level insights data for the given entity. Earliest start date is 2016-01-01. |
| User Content | Returns a list of media  content for a given user identified by the entity ID along with set of content specific metrics. |
| User Cross Platform Top Content | Returns a list of top content for a given user identified by the entity ID across supported services along with set of content specific metrics |
| User Metrics | Returns a list of all page level metrics for a given user identified by the entity ID. |
| User Stories | Returns a list of last 100 stories posts for a specified entity ID – requires page authentication |
| User Real Time Series | Returns a list of the values of the requested metric per day in the date offset range (0 to 6 days). |
| User Time Series | Returns a list of the values of the requested metric per day in the date range. |

 |
| Entity ID | Enter the entity ID you want to pull data for, or enter multiple IDs separated by commas. Entity ID represents a Brand. |
| Category ID | Enter the category ID you want to pull data for, or enter multiple IDs separated by commas. Categories are preconfigured sets of Brands reflecting e.g., industries or markets. |
| Service | Select the service you want to pull data for. Service represent Social Platform. |
| Field | Select the field you want to receive data for. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### How frequently will my data update?


As often as needed.


#### Are there any API restrictions I should be aware of?


Each API token and/or IP address is limited to 5 requests per second. If you exceed these limits, you may be subject to additional terms, review, and/or have the API token revoked.

