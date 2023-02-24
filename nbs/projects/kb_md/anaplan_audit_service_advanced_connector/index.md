---
title: Anaplan Audit Service Advanced Connector
url: https://domo-support.domo.com/s/article/7938129701527
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/7938129701527](https://domo-support.domo.com/s/article/7938129701527)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003179
views: 1,076
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


The Anaplan Audit API is intended as a delivery mechanism for audit logs and is designed for audit information to be pulled frequently so that you can leverage your own technology for filtering, analysis, and storage.  For more information about the Anaplan API, visit their website. ([https://docs.anaplan.apiary.io/](https://anaplan.docs.apiary.io/# "https://docs.anaplan.apiary.io/"))


You connect to your Anaplan account in the Data Center. This topic discusses the fields and menus that are specific to the Anaplan Audit Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Anaplan account and create a DataSet you must have the following.


* An Anaplan private key.
* A CA-issued X509 certificate.


To procure the CA certificate please click the link [here](https://help.anaplan.com/7b025de8-75ba-4bb2-9109-867edb26ec4b-Procure-CA-Certificates)


Connecting to your Anaplan account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Anaplan Audit Service Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials pane


This pane contains fields for entering credentials to connect to your Anaplan account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| CA Certificate | Copy and paste the text from your CA-issued X509 certificate.  |
| Private Key | Enter your Anaplan private key.  |


Once you have entered a valid certificate and key, you can use the same account any time you go to create a new Anaplan DataSet. You can manage connector accounts in the **Accounts**tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Anaplan report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Audit Events | Retrieves audit events for the tenant with which your user is associated. |
| Users | Retrieves a list of users based on your Anaplan authentication token.  |

 |
| Audit Events Response Format | Select the Audit Events output response format, either CEF or JSON. |
| Type | Select the type of events to return, either BYOK (Bring Your Own Key) or User Activity. |
| Start Date | Select the desired start date for your report. |
| End Date | Select the desired end date for your report. |
| Interval in Hours | Enter the hourly interval of events to return. For example, if you entered 2, the report would return the previous 2 hours of events.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

