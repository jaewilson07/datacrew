---
    title: Cornerstone OnDemand Connector
    url: https://domo-support.domo.com/s/article/1500009366622
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500009366622](https://domo-support.domo.com/s/article/1500009366622)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003227
    views: 2,140
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Cornerstone OnDemand helps organizations recruit, train, engage, and manage their employees. Cornerstone also helps people be their best at work with the right development and experiences.The Cornerstone OnDemand connector allows you to pull data from your Cornerstone OnDemand system into Domo. To learn more about the Cornerstone OnDemand API, visit their page ([https://apiexplorer.csod.com/apiconn.../apiexplorer#/](https://apiexplorer.csod.com/apiconnectorweb/apiexplorer#/ "https://apiexplorer.csod.com/apiconnectorweb/apiexplorer#/")).


You connect to your Cornerstone OnDemand account in the Data Center. This topic discusses the fields and menus that are specific to the Cornerstone OnDemand connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Cornerstone OnDemand account and create a DataSet, you must have the following:


* A valid username associated with an active account in the portal.
* The client assigned hostname for your Cornerstone OnDemand application (Corpname).
* The API Key and API Secret. It can be retrieved from the Manage API tab in Integration Center.


 


Connecting to Your Cornerstone OnDemand Account
-----------------------------------------------


This section enumerates the options in the Credentials and Details panes in the Cornerstone OnDemand Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Cornerstone OnDemand account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Username | Enter a valid username associated with an active account in the portal. |
| Coprname | Enter the client assigned hostname for your CornerStone OnDemand application (Corpname). |
| API Key | Enter the API Key. It can be retrieved from the Manage API tab in Integration Center. |
| API Secret | Enter the API Secret. It can be retrieved from the Manage API tab in Integration Center. |
| Environment | Select the environment (Pilot, Stage, or Production). |


Once you have entered valid Cornerstone OnDemand credentials, you can use the same account any time you go to create a new Cornerstone OnDemand DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Views | Select a view from the dropdown. The views that are accessible to you are dependent on your access level. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What endpoint is the base URL for this connector?


The base URL for Cornerstone OnDemand varies per your environment selection.




| Environment | Base URL |
| --- | --- |
| Pilot | <https://{>corpname}-[pilot.csod.com/services/api/x/odata/api](http://pilot.csod.com/services/api/x/odata/api) |
| Stage | <https://{>corpname}-[stg.csod.com/services/api/x/odata/api](http://stg.csod.com/services/api/x/odata/api) |
| Production | <https://{>corpname}.[csod.com/services/api/x/odata/api](http://csod.com/services/api/x/odata/api) |


#### What kind of credentials do I need to power up this connector?


You need the username, corp name, API key, and API secret associated with your Cornerstone OnDemand account. You can get your API key and API secret from the Manage API tab in Integration Center. You also need to select the environment (Pilot, Stage, or Production).


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


None


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
