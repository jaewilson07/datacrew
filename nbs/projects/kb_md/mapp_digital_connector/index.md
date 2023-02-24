---
    title: Mapp Digital Connector
    url: https://domo-support.domo.com/s/article/360043431513
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431513](https://domo-support.domo.com/s/article/360043431513)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003744
    views: 1,086
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Mapp Digital (formerly known as BlueHornet Corp.) is a marketing automation SaaS company which develops automated marketing and demand generation software and services for marketers. Use Domo’s Mapp Digital connector to compile reports on marketing statistics such as contacts, emails opened, website visits, subscribes and unsubscribes, and so on. To learn more about Mapp Digital API, visit their website ([http://bh-ems-static-content.s3.amaz...tication1.html](http://bh-ems-static-content.s3.amazonaws.com/mappapi/authentication1.html "http://bh-ems-static-content.s3.amazonaws.com/mappapi/authentication1.html")).  


You connect to your Mapp Digital account in the Data Center. This topic discusses the fields and menus that are specific to the Mapp Digital connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Mapp Digital account and create a DataSet, you must have the following:


* The API key for your Mapp Digital account
* The Shared Secret for your Mapp Digital account


To learn more about the Mapp Digital API and obtaining credentials, see [https://developers.mapp.com/](https://developers.mapp.com/ "https://developers.mapp.com/").


Connecting to Your Mapp Digital Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Mapp Digital Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Mapp Digital account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API Key | Enter the API key you use to log into your Mapp Digital account. |
| Shared Secret | Enter the Shared Secret you use to log into your Mapp Digital account. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Mapp Digital credentials, you can use the same account any time you go to create a new Mapp Digital DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Mapp Digital report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Categories | Returns a collection of all categories created for your account. |
| Account Custom Fields | Returns a collection of all custom fields created for your account. |
| Account Relational Fields | Returns relational table data. |
| Account Static Segments | Returns a collection of all static segments created for your account. |
| Legacy Message Stats | Returns message delivery and response metrics. |
| Legacy Message Stats with Links | Returns message delivery and response metrics including links. |
| Legacy Segment Category Data | Returns all the static segments and categories for a client's account. |
| Legacy Segment Group Data | Returns all the static segments and groups for a client's account. |
| Legacy Unsubscribes | Returns a list of contacts who have unsubscribed. |
| Message Subscriber Data | Returns subscriber response data for a specified promotional message. |
| Tasks | Returns current status of specified tasks. |
| Transactional Bounce List | Returns a list of bounce codes for a specified email. |
| Transactional Message Contact Activity | Returns message recipient response data for a specified transactional message. |
| Transactional Templates | Returns a list of all templates in a client's account along with associated information. |
| Welcome Messages | Returns descriptive information about all welcome messages created in your account. |

 |
| Message ID | Enter the ID for the message you want to retrieve information for. |
| Template ID | Enter the ID number for the template you want to retrieve information for. |
| End Days | Enter the number of the most recent day that should be represented in the report. Combine with **Start Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Enter 0 for today.  |
| Start Days | Enter the number of the farthest day back that should be represented in the report. Combine with **End Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Enter 0 for today. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).   

