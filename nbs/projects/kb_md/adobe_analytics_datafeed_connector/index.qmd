---
title: Adobe Analytics Datafeed Connector
url: https://domo-support.domo.com/s/article/360043433613
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433613](https://domo-support.domo.com/s/article/360043433613)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003547
views: 2,141
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Data that is collected from websites or mobile apps, or is uploaded using web service APIs or data sources, is processed and stored in Adobe's Data Warehouse. This raw clickstream data forms the dataset used by Adobe Analytics. To learn more about the Adobe Analytics API, visit their page ([https://marketing.adobe.com/develope...c-introduction](https://marketing.adobe.com/developer/en_US/get-started/introduction/c-introduction "https://marketing.adobe.com/developer/en_US/get-started/introduction/c-introduction")).


You import Adobe Analytics datafeed data by connecting to the Amazon Web Services (AWS) S3 bucket containing the data. You do this in the Data Center in Domo. This topic discusses the fields and menus that are specific to the Adobe Analytics Datafeed connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to an AWS S3 bucket and import Adobe Analytics datafeed data, you must have the following:


* Your AWS access key. You can find this in the ****Security Credentials**** section of the AWS Console. Alternatively, if you are using IAM, you can find it under ****Users****.
* Your AWS secret key, which was provided when you created your access key. You can generate a new secret key in the AWS Console.
* The name of the AWS S3 Bucket you want to retrieve files from.


Connecting to an AWS S3 Bucket and Pulling Adobe Analytics Data
---------------------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Adobe Analytics Datafeed Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Adobe Analytics account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Access Key | Enter your AWS access key. For information about finding your access key, see "Prerequisites," above. |
| Secret Key | Enter your AWS secret key. For information about finding your secret key, see "Prerequisites," above. |
|  Bucket |  Enter the Amazon S3 Bucket you want to pull Adobe Analytics data from. |
| Region | Select the S3 Bucket Region where your file is located. |


Once you have entered valid AWS credentials, you can use the same account any time you go to create a new Adobe Analytics Datafeed DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Adobe Analytics report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Daily | Returns the most recent daily data. |
| Hourly | Returns the most recent hourly data. |

 |
| Prefix (Optional) | Enter a prefix to limit results to only those keys beginning with this prefix. |
| Quote Character  | Select the quote character used in your data. |
| Additional Columns | Select whether you want additional columns ("Browser Details," "Event List," Unique ID," and "Unique Visitor ID") in your report.  |
| Multiple Files | Select whether you want to support multiple files. If you select **True**, multiple files will be processed during the first run. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

