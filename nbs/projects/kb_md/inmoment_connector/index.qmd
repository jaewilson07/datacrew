---
title: InMoment Connector
url: https://domo-support.domo.com/s/article/360042930714
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930714](https://domo-support.domo.com/s/article/360042930714)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003389
views: 1,089
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


InMoment is a cloud-based customer experience optimization platform that gives you the ability to listen to and engage with your customers to improve business results through better experiences. Use Domo's InMoment connector to retrieve survey answers, scores, tags, and more. To learn more about the InMoment API, visit their page ([http://www.inmoment.com/solutions/](http://www.inmoment.com/solutions/ "http://www.inmoment.com/solutions/")).


You connect to your InMoment account in the Data Center. This topic discusses the fields and menus that are specific to the InMoment connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your InMoment account and create a DataSet, you must have the following:


* The username and password for your InMoment account.
* Your InMoment client ID generated when you created the application.
* Your InMoment client secret when you created the application.


Connecting to Your InMoment Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the InMoment Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your InMoment account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your InMoment client ID. |
| Client Secret | Enter your InMoment client secret. |
| Username | Enter the username for your InMoment account. |
| Password | Enter the password for your InMoment account. |


Once you have entered valid InMoment credentials, you can use the same account any time you go to create a new InMoment DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the InMoment report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Date Field Label | Returns label data for a given date range and organization. |
| Data Field Options | Returns options and options label data for a given date range and organization. |
| Data Field Text | Returns data field text data for a given date range and organization. |
| Gateway | Returns gateway data for a given date range and organization. |
| Offer | Returns offer data for a given date range and organization. |
| Survey | Returns survey data for a given date range and organization. |
| Survey Response Alerts | Returns survey response alerts for a given date range and organization. |
| Survey Response Answers | Returns survey response answers for a given date range and organization. |
| Survey Response Incidents | Returns survey response incident data for a given date range and organization. |
| Survey Response Scores | Returns survey response scores for a given date range and organization. |
| Survey Response Tags | Returns survey response tags for a given date range and organization. |
| User | Returns user data for a given date range and organization. |
| Unit | Returns unit data for a given date range and organization. |

 |
| Category Dimension | Select the category dimension to filter your report by.
Select **Current** to pull all data since the report was last run. If the report has never run, the last day of data will be pulled.
Select **Historical** to specify the date range you wish to pull. |
| Start Days | Enter the number of past days for the start date for your report data. Pair with **End Days** to create a range of days. For example, if you enter 14 for **Start Days** and 7 for **End Days**, your report will pull all data from 14 days ago up until 7 days ago. |
| End Days | Enter the number of past days for the end date for your report data. Pair with **Start Days** to create a range of days. For example, if you enter 14 for **Start Days** and 7 for **End Days**, your report will pull all data from 14 days ago up until 7 days ago. |
| Organization ID | Enter the ID of the organization you want to retrieve data for. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

