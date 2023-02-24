---
title: Facebook Atlas Connector
url: https://domo-support.domo.com/s/article/360042926774
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926774](https://domo-support.domo.com/s/article/360042926774)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003765
views: 2,107
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Atlas by Facebook keeps track of campaigns, ads, placements, packages and publishers. You connect to your Facebook Atlas account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Atlas connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Facebook Atlas account and create a DataSet, you must have the following:


* The name of the user who will have access to your Facebook Atlas data.
* The application ID for the app that you created to access your Facebook Atlas account.
* The application secret for the app that you created to access your Facebook Atlas account.


Connecting to Your Facebook Atlas Account
-----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Facebook Atlas Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Facebook Atlas account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Application ID | Enter the application ID for the app that you created to access your Facebook Atlas account. |
| Application Secret | Enter the application secret for the app that you created to access your Facebook Atlas account. |
| User Name | Enter the name of the user who will have access to your Facebook Atlas data.  |


Once you have entered valid Facebook Atlas credentials, you can use the same account any time you go to create a new Facebook Atlas DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with other menus for configuring your report.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook Atlas report you want to run. Currently only a single report type is available.

|  |  |
| --- | --- |
| Pre-Defined Reports | Returns data from a report that has been previously created in Facebook Atlas. The report *must* be configured to return data in CSV format. |

 |
| Company ID | Select the company associated with the account. |
| Report ID | Select the report you want to pull into Domo. The report *must* be configured to return data in CSV format. |
| Generated Reports | Select the generated report run you want to fetch data for. If the **Most Recently Generated** option is selected, the last generated report will be used. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### Do I need a certain kind of account with the data service to set up the connector?


You need to create an application that is authorized to read your Facebook Atlas data and a Facebook account that is authorized by that application. 


#### How do I get my Atlas reports to show up in Domo?


Domo can return data from a report that you have created in Facebook Atlas if it is configured to run automatically and returns the data in CSV format. The DataSet will retrieve the data from the most recent execution of the report.


#### How often can the data be updated?


DataSets should be set to update once a day.


#### Are there any API limits I should be aware of?


No.

