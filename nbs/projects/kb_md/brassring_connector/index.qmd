---
title: BrassRing Connector
url: https://domo-support.domo.com/s/article/360043432493
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432493](https://domo-support.domo.com/s/article/360043432493)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003650
views: 1,085
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


IBM Kenexa BrassRing Inc. designs and develops cloud-based recruitment consulting and outsourcing solutions. To learn more about the BrassRing API, visit their page (<http://www-01.ibm.com/support/docview.wss?uid=swg21995062>).  


You connect to your BrassRing account in the Data Center. This topic discusses the fields and menus that are specific to the BrassRing connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your BrassRing account and create a DataSet, you must have the following:


* The API URL domain for your BrassRing account. For example:  <https://stagingimport.brassring.com>
* Your BrassRing Sender ID.
* Your BrassRing Credential.
* Your BrassRing Client ID.
* Your BrassRing Site ID.


Connecting to Your BrassRing Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the BrassRing Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your BrassRing account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| API URL | Enter the API URL domain for your BrassRing account. |
| Sender ID | Enter your BrassRing Sender ID. |
| Credential | Enter your BrassRing credential. |
| Client ID | Enter your BrassRing Client ID. |
| Site ID | Enter your BrassRing Site ID. |


Once you have entered valid BrassRing credentials, you can use the same account any time you go to create a new BrassRing DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains only two configuration options—a **Report** menu (which currently contains only one report) and a field where you enter your XML envelope content.




| Menu | Description |
| --- | --- |
| Report | Select the desired BrassRing report. Currently only one report type is available.

|  |  |
| --- | --- |
| XML Envelope | Lets you post custom-created XML envelope content to the BrassRing API. |

 |
| XML Envelope | Enter the BrassRing XML envelope to POST to the API. The envelope content must be valid and well-formed XML. For more information on constructing the XML envelope, please see BrassRing API documentation at <http://www-01.ibm.com/support/docview.wss?uid=swg21995062>.
Credential fields in the XML envelope MUST be aliased in the following format: 

|  Credential | Alias |
| --- | --- |
| Sender ID | {{senderID}} |
| Credential | {{credential}} |
| Client ID | {{clientID}} |
| Site ID | {{siteID}} |

To get an idea of how an envelope is constructed, you can look at the example envelope provided in the BrassRing connector UI. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").   

