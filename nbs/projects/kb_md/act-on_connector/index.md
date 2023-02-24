---
    title: Act-On Connector
    url: https://domo-support.domo.com/s/article/360042926314
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926314](https://domo-support.domo.com/s/article/360042926314)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003810
    views: 1,093
    created_date: 2022-10-24 21:15:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


Act-On is a marketing automation platform designed to coordinate inbound and outbound marketing campaigns. To learn more about the Act-On API, visit their page ([https://developer.act-on.com/documentation/](https://developer.act-on.com/documentation/ "https://developer.act-on.com/documentation/")).


You connect to your Act-On account in the Data Center. This topic discusses the fields and menus that are specific to the Act-On connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Act-On account and create a DataSet, you must have an Act-On username and password.


Connecting to Your Act-On Account
---------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Act-On Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Act-On account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter the username for your Act-On account. |
| Password | Enter the password for your Act-On account. |


Once you have entered valid Act-On credentials, you can use the same account any time you go to create a new Act-On DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Act-On report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaign Message | Returns campaign messages. |
| Campaign Message List All Types | Returns a campaign messages list of all types. |
| Campaign Message Report | Returns campaign message report data. |
| Campaign Message Report Drilldown | Returns a campaign message drilldown report. |
| Campaign Message Rollup | Returns campaign message rollup data. |
| Contact API Subscription Category | Returns a list of contact API subscription categories. |
| Content API Form List | Returns a list of content API forms. |
| Content API Form Report | Returns content API form report data. |
| Content API Header Fetch | Returns content API header fetch data. |
| Content API Header List | Returns a list of content API headers. |
| Content API Image Fetch | Returns content API image fetch data. |
| Content API Image List | Returns a list of content API images. |
| Content API Logo List | Returns a list of content API logos. |
| Content API Media List | Returns a list of content API media. |
| Content API Media Message Drilldown | Returns content API media message drilldown data. |
| Content API Media Rollup Report | Returns content API media rollup report data. |
| Content API Media Timeline Drilldown | Returns content API media timeline drilldown data. |
| Content API Media Views Drilldown | Returns content API media views drilldown data. |
| Content API Page List | Returns a list of content API pages. |
| Content API Page Report | Returns content API page report data. |
| Content API Page URLs | Returns a list of content API page URLs. |
| Content API Promotional URLs | Returns a list of content API promotional URLs. |
| Fact API Contact Record Facts | Returns a list of fact API content record facts. |
| Fact API List Optout | Returns fact API list optout data. |
| List API | Returns list API data. |
| List API Details | Returns list API details. |
| List API Hard Bounce | Returns list API hard bounce data. |
| List API Spam Complaint | Returns list API spam complaint data. |
| SEO API Keywords | Returns a list of SEO API keywords. |

 |
| Listing Type | Select the type of content list you want to pull into your report. |
| Period | Select a filter for your data. |
| Date | Select the date for your report. Note that this is a monthly report so only the month and year will be used. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQ
---


##### How often can the data be updated?


As often as needed.


##### Are there any API limits I should be aware of?


No.


##### Can I use the same Act-On account for multiple datasets?


Yes.

