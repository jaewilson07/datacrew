---
    title: Aventri Connector
    url: https://domo-support.domo.com/s/article/360043435873
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043435873](https://domo-support.domo.com/s/article/360043435873)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003335
    views: 1,071
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Aventri is a cloud-based event management software company. To learn more about the Aventri API, visit their page (<https://developer.aventri.com/>).


You connect to your Aventri account in the Data Center. This topic discusses the fields and menus that are specific to the Aventri connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Aventri account and create a DataSet, you must have the following:


* An Aventri API key (for information about obtaining an API key, visit <https://developer.aventri.com/>)
* Your Aventri account ID


Connecting to your Aventri account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Aventri connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains fields for entering credentials to connect to your Aventri account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter your Aventri API key. For information about obtaining an API key, see <https://developer.aventri.com/> |
| Aventri Account ID | Enter your Aventri account ID. |
| Server Region | Select the server region for your Aventri account. |


Once you have entered valid Aventri credentials, you can use the same account any time you go to create a new Aventri DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Aventri report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Attendee | Returns detailed information for attendees at a given event. |
| Categories | Returns the list of available categories for a given event. |
| Line Items | Returns a list of line items for a given event. |
| Reports | Returns detailed information for a given report and event. |
| Session | Returns detailed information for sessions at a given event. |

 |
| Event ID | Select the event you want to retrieve information for. |
| Report ID | Select the report you want to retrieve information for.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### What version of the Aventri API does this connector use?


This connector uses version 2 of the Aventri API (<https://api-{>region}.[eventscloud.com/api/v2/ereg/](http://eventscloud.com/api/v2/ereg/).)


##### What endpoint does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| Attendee | /getAttendee.json |
| Categories | /listCategories.json |
| Line Items | /listLineItems.json |
| Reports | /listReports.json |
| Session | /getSession.json |


##### Can I use the same account to create multiple DataSets?


Yes.


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.

