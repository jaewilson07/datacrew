---
title: DocuSign Connector
url: https://domo-support.domo.com/s/article/360042930194
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930194](https://domo-support.domo.com/s/article/360042930194)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003443
views: 2,120
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


DocuSign provides services for facilitating electronic exchanges of contracts and signed documents. Domo's DocuSign connector allows you to speed up transactions and cut costs by retrieving data about DocuSign entities such as users, folders, templates, and so on. To learn more about the DocuSign API, visit their website. (<https://www.docusign.com/developer-center/documentation>)


The DocuSign connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your DocuSign account in the Data Center. This topic discusses the fields and menus that are specific to the DocuSign connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector lets you retrieve data for DocuSign users and documents managed using DocuSign. |
| **Primary Metrics** | * Signed/unsigned documents
* Template documents
* Rejected document signings
 |
| **Primary Company Roles** | * Legal
* HR
* Sales
* Realtors
 |
| **Average Implementation Time** | Less than an hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


* Make sure the credentials and the report configuration are valid.
* Use "Replace." If you use "Append," you may need to deduplicate using a DataFlow.
* The connector pages data back for date-driven reports. Entering the number of days back will pull that many days back but will also increase the connector runtime. Only pull the data you need. If you have data older than the days back you have entered, the connector will keep going without getting any more data before it finishes.


Prerequisites
-------------


To connect to your DocuSign account and create a DataSet, you must have the email address and password you use to sign in to your DocuSign account.


Connecting to Your DocuSign Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the DocuSign Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your DocuSign account. The following table describes what is needed for each field: 




| **Field** | **Description** |
| --- | --- |
| Email Address | Enter the email address you use to log into your DocuSign account. |
| Password | Enter the password you use to log into your DocuSign account. |


Once you have entered valid DocuSign credentials, you can use the same account any time you go to create a new DocuSign DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains two primary menus in which you can select a DocuSign report and pertinent accounts.  




| **Menu** | **Description** |
| --- | --- |
| Report | Select a DocuSign report. The following reports are available:

|  |  |
| --- | --- |
| Account Information | Returns information about the selected account. |
| Account Information Billing Plan | Returns billing plan information about the selected account. |
| Brands Profile Information | Returns a list of brand profiles associated with the selected account. |
| Envelopes | Returns envelope status changes for all envelopes in the selected account.  |
| Envelopes Audit Events | Returns audit events for all envelopes in the selected account. |
| Envelopes Custom Fields | Returns custom field information for all envelopes in the selected account. |
| Envelopes Documents | Returns a list of documents associated with all envelopes in the selected account. |
| Envelopes Notifications | Returns reminder and expiration information for all envelopes in the selected account. |
| Envelopes Status | Returns the overall status for all envelopes in the selected account. |
| Folders | Returns a list of folders for the selected account. |
| Groups | Returns a list of user groups in the selected account. |
| Permission Profiles | Returns a list of permission profiles for the selected account. |
| Templates | Returns the list of templates for the selected account. |
| Unsupported File Types | Returns a list of file types that are not supported for uploads in the selected account. |
| Users | Return a list of users in the selected account. |
| Users Information | Returns information for all users in the selected account, including name, ID, user type, email, etc. |

  |
| Account | Select the DocuSign account you want to pull information for.  |
| Start Days  | Enter the number of past days for which you want to pull data.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQ
---


##### Do I need a certain kind of account to set up this connector?


Any DocuSign account can be used to set up the connector.


##### How frequently will my data update?


As often as needed.


##### Can I use the same DocuSign account for multiple DataSets?


Yes.

