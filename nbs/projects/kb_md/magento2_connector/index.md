---
title: Magento2 Connector
url: https://domo-support.domo.com/s/article/4404322668951
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4404322668951](https://domo-support.domo.com/s/article/4404322668951)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003219
views: 1,101
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


Magento is an open-source content management system for e-commerce websites.  Use the Domo Magento 2 connector to pull customer, invoice, order data and more from your Magento system. To learn more about the Magento REST API, visit their page ([https://devdocs.magento.com/guides/v...arted-api.html](https://devdocs.magento.com/guides/v2.2/get-started/bk-get-started-api.html "https://devdocs.magento.com/guides/v2.2/get-started/bk-get-started-api.html")).  


You connect to your Magento account in the Data Center. This topic discusses the fields and menus that are specific to the Magento2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Magento account and create a DataSet, you need the following:


* The domain name of your hosted Magento ecommerce shop
* The username and password of your Magento account


SSL is required for this connector to work.


Connecting to Your Magento Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Magento2 Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Magento account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Domain | Enter the URL for your hosted Magento ecommerce shop.
Example: If your Magento storefront was located at "[https://mycompany.com,"](https://mycompany.com,)" your domain would be "[mycompany.com](http://mycompany.com)".  |
| Username | Enter the username for your Magento account. |
| Password | Enter the password for your Magento account. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid Magento credentials, you can use the same account any time you go to create a new Magento2 DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Magento2 report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Customers | Retrieve the lists of customers that match specified search criteria. |
| Invoices | Retrieve the lists of invoices that match specified search criteria. |
| Orders | Retrieve the lists of orders that match specified search criteria. |
| Products | Retrieve the lists of products that match specified search criteria. |
| Promotion Rules | Retrieve sales rules that match the specified criteria. |
| Returns | Return list of rma data objects based on search criteria. |
| Shipments | Retrieve the lists shipments that match specified search criteria. |
| Stock Items | Retrieve the lists Stock Items that match specified search criteria. |

 |
| Date Type | Select the desired date type. |
| Value to Flatten | Select whether you want to expand your items or status histories. |
| Page Size | This is the number of records to get per request from the Magento server. Enter a page size between 50 and 500. You may want to lower this value if you are receiving internal server errors from Magento or internal connector errors from Domo.  |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### What endpoint is the base URL for this connector?


The base URL for Magento is <https://{>DOMAIN}/api/rest/V1.


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL |
| --- | --- |
| Customers | /customers/search |
| Invoices | /invoices |
| Orders | /orders |
| Products | /products |
| Promotion Rules | /salesRules/search |
| Returns | /returns |
| Shipments | /shipments |
| Stock Items | /stockItems |


#### What kind of credentials do I need to power up this connector?


You need the hosted domain for your Magento instance, and the username and password of your Magento account.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


No

