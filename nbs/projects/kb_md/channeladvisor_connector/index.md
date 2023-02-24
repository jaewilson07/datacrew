---
title: ChannelAdvisor Connector
url: https://domo-support.domo.com/s/article/360043432173
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043432173](https://domo-support.domo.com/s/article/360043432173)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003687
views: 1,103
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


ChannelAdvisor provides cloud-based ecommerce solutions that enable retailers and manufacturers to integrate, manage and optimize their merchandise sales. To learn more about the ChannelAdvisor API, visit their page ([https://developer.channeladvisor.com/](https://developer.channeladvisor.com/ "https://developer.channeladvisor.com/")).


You connect to your ChannelAdvisor account in the Data Center. This topic discusses the fields and menus that are specific to the ChannelAdvisor connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your ChannelAdvisor account and create a DataSet, you must have the following:


* Your ChannelAdvisor API developer key
* Your ChannelAdvisor password


To obtain ChannelAdvisor developer credentials, visit [http://complete.channeladvisor.com/D...ApiDevKey.aspx](http://complete.channeladvisor.com/DeveloperNetwork/RequestApiDevKey.aspx "http://complete.channeladvisor.com/DeveloperNetwork/RequestApiDevKey.aspx"). 


Connecting to Your ChannelAdvisor Account
-----------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the ChannelAdvisor Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your ChannelAdvisor account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Developer Key | Enter your ChannelAdvisor API developer key. |
| Developer Password | Enter your ChannelAdvisor developer password. |


For information about receiving credentials, see "Prerequisites," above.


Once you have entered valid ChannelAdvisor credentials, you can use the same account any time you go to create a new ChannelAdvisor DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the ChannelAdvisor report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Get Attributes | Returns attributes of the selected inventory SKU. |
| Get Filter Items | Returns a filtered list of SKUs. |
| Get Inventory Item List | Returns a list of inventory items. |
| Get Orders List | Returns order details such as recipients, body, subject, size, etc. |
| Get Inventory List with Full Details | Returns inventory item details such as cost, total, title, attributes, etc. |

 |
| Account ID | Select the ID for the account you want to retrieve data for. |
| Date Range Field | Select how you want dates to be broken down in your report. You can choose to break down dates by creation date, last updated date, or quantity last modified date. |
| Inventory Start Date | Select the start date for the date range in your report. |
| Inventory End Date | Select the end date for the date range in your report. |
| Sort Field | Select whether you want your report rows to be sorted by title or SKU. |
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
| Sort Direction  | Select whether you want an ascending or descending sort order in your report. |
| Classification Name (Optional) | Enter a classification name to pull the data for all of the SKUs assigned to that classification. |
| Label Name (Optional) | Enter a label name to pull the data for all of the SKUs assigned to that label. |
| Quantity Check Field | Combine with **Quantity Check Type**and **Quantity Check Value** to build a filter query for the SKU data in your report.
For example, if you wanted to show all open items under 10, you would select **Open**for **Quantity Check Field**and **Less Than**for **Quantity Check Type** and enter 10 for **Quantity Check Value**.   |
| Quantity Check Type  | Combine with **Quantity Check Field**and **Quantity Check Value** to build a filter query for the SKU data in your report.
For example, if you wanted to show all open items under 10, you would select **Open**for **Quantity Check Field**and **Less Than**for **Quantity Check Type** and enter 10 for **Quantity Check Value**.   |
| Quantity Check Value | Combine with **Quantity Check Field**and **Quantity Check Type** to build a filter query for the SKU data in your report.
For example, if you wanted to show all open items under 10, you would select **Open**for **Quantity Check Field**and **Less Than**for **Quantity Check Type** and enter 10 for **Quantity Check Value**.   |
| Order Create Date | Select the desired order create date. The report will returns only those orders created after this timestamp. Combine with **Order End Date** to create a range of data for your report.  |
| Order End Date | Select the desired order end date. The report will returns only those orders created before this timestamp. Combine with **Order Create Date** to create a range of data for your report.  |
| Detail Level (Optional) | Select the detail level for your report.  |
| Export State (Optional) | Select the desired export state for your report, either **Exported**, **Not Exported**, or **Unknown**. |
| Order State (Optional) | Select the desired order state for your report, either **Active**, **Archived**, or **Cancelled**. |
| Payment Status (Optional) | Select the payment status you want to retrieve information for. |
| Checkout Status (Optional) | Select the checkout status you want to retrieve information for. |
| Shipping Status (Optional) | Select the shipping status you want to retrieve information for. |
| Refund Status (Optional) | Select the refund status you want to retrieve information for. |
| Distribution Center Code (Optional) | Enter the code for the distribution center you want to retrieve information for.  |
| SKU | Enter the SKU of the inventory item you want to retrieve information for. For example: SGFSKSKYMD |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector")


Troubleshooting
---------------


We have had customers report situations in which they still could not authenticate even with a working developer key. However, they were able to successfully authenticate after creating a SOAP API authorization on the account. The following page provides more information about how to do this: [https://developer.channeladvisor.com...edentials-flow](https://developer.channeladvisor.com/authorization/soap-api-credentials-flow "https://developer.channeladvisor.com/authorization/soap-api-credentials-flow"). (It is possible this issue may only affect users with seller accounts.)  

