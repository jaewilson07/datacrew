---
    title: GTmetrix Connector
    url: https://domo-support.domo.com/s/article/360043433873
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433873](https://domo-support.domo.com/s/article/360043433873)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003532
    views: 1,073
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


GTmetrix is a free tool that analyzes webpage speed performance. To learn more about the GTmetrix API, visit their page ([https://gtmetrix.com/api/](https://gtmetrix.com/api/ "https://gtmetrix.com/api/")).


You connect to your GTmetrix account in the Data Center. This topic discusses the fields and menus that are specific to the GTmetrix connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your GTmetrix account and create a DataSet, you must have the following:


* A GTmetrix API key
* The email address associated with your GTmetrix account


You can generate or view API keys here: [https://gtmetrix.com/api/](https://gtmetrix.com/api/ "https://gtmetrix.com/api/"). Note that you must be logged into GTmetrix to do this.


Connecting to Your GTmetrix Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the GTmetrix Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your GTmetrix account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your GTmetrix API key. |
| Email Address | Enter the email address associated with your GTmetrix account. |


Once you have entered valid GTmetrix credentials, you can use the same account any time you go to create a new GTmetrix DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the GTmetrix report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Locations | Returns a list of locations your site loads. |
| Browsers | Returns information about how your site works with different browsers. |
| Test State | Returns test data for a specified URL. |
| Test Resource | Returns test data for a specified resource. |
| Status | Returns your GTmetrix account status. |

 |
| Browser ID (Optional) | Enter a browser ID to return data on that browser. If you don't enter an ID, data will be returned for all IDs. |
| Test URL | Enter the URL you want to retrieve data for. |
| Test Resource | Enter the resource you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How frequently will my data update?


As often as needed.


##### Are there any API rate limits I should be aware of?


While GTmetrix may enforce call rate limits, you should not need to worry about it.

