---
title: HasOffers Advertiser Connector
url: https://domo-support.domo.com/s/article/1500003942781
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500003942781](https://domo-support.domo.com/s/article/1500003942781)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003236
views: 1,078
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


HasOffers is performance marketing software that enables ad networks, publishers, agencies, and media buyers to measure and optimize advertising traffic. The HasOffers Advertiser platform offers complete partner management, proactive fraud prevention, comprehensive payment processing, and all the tools you need to build better relationships. It helps you maximize ROI with your most important partners, affiliates, agencies, and any other business development relationships. Use Domo’s HasOffers Advertiser connector to retrieve customized statistical reports for the advertisers and make better decisions. To learn more about the HasOffers API, visit their page ([https://developers.tune.com/affiliat...port-getstats/](https://developers.tune.com/affiliate/affiliate_report-getstats/ "https://developers.tune.com/affiliate/affiliate_report-getstats/")).


You connect to your HasOffers Advertiser account in the Data Center. This topic discusses the fields and menus that are specific to the HasOffers Advertiser connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your HasOffers Advertiser account and create a DataSet, you must have the following:


* The individual domain name (network ID) that is used to log into your HasOffers Advertiser account.
* The API key. You can generate it by logging into HasOffers Advertiser account.


Connecting to Your HasOffers Advertiser Account
-----------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HasOffers Advertiser Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your HasOffers Advertiser account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Network ID | Enter your individual domain name (network ID) that is used to log into your HasOffers Advertiser account. |
| API Key | Enter the API key. You can generate it by logging into HasOffers Advertiser account. |


Once you have entered valid HasOffers Advertiser credentials, you can use the same account any time you go to create a new HasOffers Advertiser DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the HasOffers Advertiser report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Stats Report | Returns Advertiser Report Stats based on numerous fields. |

 |
| Fields | Select the Fields that you want to retrieve data for. |
| Filter 1 | Select filter 1. |
| Operator 1 | Select operator 1. |
| Filter Value 1 | Enter the filter value. |
| Filter 2 | Select filter 2. |
| Operator 2 | Select operator 2. |
| Filter Value 2 | Enter the filter value. |
| Filter 3 | Select filter 3. |
| Operator 3 | Select operator 3. |
| Filter Value 3 | Enter the filter value. |
| Filter 4 | Select filter 4. |
| Operator 4 | Select operator 4. |
| Filter Value 4 | Enter the filter value. |
| Filter 5 | Select filter 5. |
| Operator 5 | Select operator 5. |
| Filter Value 5 | Enter the filter value. |
| Filter 6 | Select filter 6. |
| Operator 6 | Select operator 6. |
| Filter Value 6 | Enter the filter value. |
| Date | Select the date value you want to filter the data by. |
| Hour Offset | Enter Hour Offset to shift the time stamps by a number of positive or negative hours from your network's default time zone. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the HasOffers API does this connector use?


This connector uses version 3 of the HasOffers API (https:/{networkId}.[api.hasoffers.com/Apiv3](http://api.hasoffers.com/Apiv3)/json.) 


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| Stats Report | ?Target=Advertiser\_Report&Method=getStats |


#### What kind of credentials do I need to power up this Connector?


You need the network ID and API key associated with your HasOffers account. You can generate the API key by logging into your HasOffers Advertiser account.



#### How often can the data be updated?


As often as needed.





#### Are there any API limits that I need to be aware of?


No





#### What's the difference between the HasOffers and HasOffers Advertiser connectors?


The HasOffers connector returns the affiliate stats data whereas the HasOffers Advertiser connector returns the advertiser stats data. Also, the HasOffers Advertiser connector supports filter parameters for data filtering.



Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
