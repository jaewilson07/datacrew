---
    title: HasOffers Connector
    url: https://domo-support.domo.com/s/article/360044351913
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360044351913](https://domo-support.domo.com/s/article/360044351913)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003306
    views: 1,069
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


HasOffers is performance marketing software that enables ad networks, publishers, agencies, and media buyers to measure and optimize advertising traffic. Use Domo's HasOffers connector to retrieve customized HasOffers statistical reports. To learn more about the HasOffers API, visit their page ([https://developers.tune.com/affiliat...port-getstats/](https://developers.tune.com/affiliate/affiliate_report-getstats/ "https://developers.tune.com/affiliate/affiliate_report-getstats/")).


You connect to your HasOffers account in the Data Center. This topic discusses the fields and menus that are specific to the HasOffers connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your HasOffers account and create a DataSet, you must have the following:


* A HasOffers Network ID
* A HasOffers API key


To find your Network ID and API key, log into your HasOffers account then select **Tools > APIs**. 




 

**Note:**Keep your API key secure, as it is essentially the password to your account.  
  




Connecting to Your HasOffers Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the HasOffers Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your HasOffers account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Network ID | Enter your HasOffers Network ID. |
| API Key | Enter your HasOffers API key. |


For information about obtaining these credentials, see "Prerequisites" above.


Once you have entered valid HasOffers credentials, you can use the same account any time you go to create a new HasOffers DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus and options.




| Menu | Description |
| --- | --- |
| Report | Select the HasOffers report you want to run. Currently only a single report is available.

|  |  |
| --- | --- |
| Stats Report | Returns Affiliate Report statistics based on selected fields. |

 |
| Fields | Select the fields you want to appear in your report. |
| Groups  | Select the group names you want to group your report data by. |
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


### 
Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

