---
title: Changepoint Connector
url: https://domo-support.domo.com/s/article/360043434913
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434913](https://domo-support.domo.com/s/article/360043434913)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003421
views: 1,073
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Changepoint is an enterprise project and portfolio management platform. To learn more about Changepoint, visit their website ([https://www.changepoint.com/](https://www.changepoint.com/ "https://www.changepoint.com/")).


You connect to your Changepoint account in the Data Center. This topic discusses the fields and menus that are specific to the Changepoint connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Changepoint account and create a DataSet, you must have the following:


* The username and password for your Changepoint account.
* Your Changepoint hostname or URL, e.g. [mycompany.changepointasp.com](http://mycompany.changepointasp.com)


Connecting to Your Changepoint Account
--------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Changepoint Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Changepoint account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Username | Enter your Changepoint username. |
| Password | Enter your Changepoint password. |
| Host | Enter your Changepoint hostname or URL, e.g. [mycompany.changepointasp.com](http://mycompany.changepointasp.com) |


Once you have entered valid Changepoint credentials, you can use the same account any time you go to create a new Changepoint DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Changepoint report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Contact | Returns a list of contacts. |
| Customer | Returns a list of customers. |
| Opportunity | Returns a list of opportunities. |
| Project | Returns a list of projects. |

 |
| Subreport | Select a Changepoint subreport type. |
| Return Rows (Optional) | Enter the number of rows of data you want to be returned in your report. |
| Customer | Select the customer ID you want to retrieve data for. |
| Name | Enter the name of the customer you want to retrieve data for. |
| User Defined ID | Enter the ID of the user you want to retrieve data for. |
| First Name (Optional) | Enter the first name of the user you want to retrieve data for. |
| Last Name (Optional) | Enter the last name of the user you want to retrieve data for. |
| Action Resource ID (Optional) | Enter the action resource ID you want to retrieve data for. |
| Contact ID | Enter the ID of the contact you want to retrieve data for. |
| Project | Select the project you want to retrieve data for. |
| Code Name | Enter the code name you want to retrieve data for. |
| Opportunity | Select the opportunity you want to retrieve data for. |
| Billing Offices | Select the billing offices you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

