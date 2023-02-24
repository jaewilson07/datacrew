---
title: LinkedIn Ads Connector
url: https://domo-support.domo.com/s/article/360042926954
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926954](https://domo-support.domo.com/s/article/360042926954)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003750
views: 2,232
created_date: 2022-10-24 21:14:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


LinkedIn Ads is a self-service advertising product that allows advertisers to reach a targeted professional audience of their choosing. To learn more about the LinkedIn Ads API, visit their page ([https://developer.linkedin.com/](https://developer.linkedin.com/ "https://developer.linkedin.com/")).


You connect to your LinkedIn Ads account in the Data Center. This topic discusses the fields and menus that are specific to the LinkedIn Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your LinkedIn Ads account and create a DataSet, you must have the following:


* The email address you use to sign into LinkedIn
* Your LinkedIn password
* At least one LinkedIn Ads account with access to **Manage Ads** (otherwise you will not be able to retrieve report data)


Connecting to Your LinkedIn Ads Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the LinkedIn Ads Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo LinkedIn Ads connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing LinkedIn Ads accounts in Domo) to open the LinkedIn OAuth screen where you can enter your LinkedIn credentials. Once you have entered valid LinkedIn credentials, you can use the same account any time you go to create a new LinkedIn Ads DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

**Note:** If you are already logged into LinkedIn when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of LinkedIn.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the LinkedIn Ads report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Ad Accounts | Returns the list of Ad Accounts. |
| Ad Analytics | Returns Ad Analytics insights on click intelligence numbers. |
| Ad Budget Pricing | Returns key insights on pricing metrics based on targeting criteria. |
| Ad Campaigns | Returns the list of Ad Campaigns. |
| Ad Campaign Groups | Returns the list for all the Ad Campaign Groups. |
| Ad Conversion Tracking | Returns conversion data for the selected accounts. |
| Ad Creatives | Returns a list of Creatives within a given campaign. |
| Ad Forms | Returns Ad Forms associated with an account. |
| Ad Form Question | Returns Ad Forms questions associated with an account. |
| Ad Targeting Facets | Returns Facets describing the demographic groups of members on the LinkedIn platform. |
| Ads Targeting Reach | Returns the forecasting of the reach of your targeting criteria. |
| Targeting Options By Ad Targeting Facet | Returns the information about Ad targeting facet. |
| Targeting Options By Similar Entities | Returns similar available options within each type of targeting.  |
| Targeting Options By Typeahead | Returns similar options using typeahead capabilities. |

 |
| Search by Status | Select the Status for account details you want to retrieve. |
| Search by Types | Select the account type you want to search for. |
| Reporting Facet | Select the object type that will be reported on. |
| Account | Select the account. |
| Pivot | Select the object that each report data point will be grouped by. |
| Time Granularity | Select the time granularity for the report. |
| Campaign Type | Select the campaign type. |
| BID Type | Select the BID type. |
| Match Type | Select the match type. |
| Currency | Select the currency. |
| Targeting Facets | Select the Targeting Facets to include. |
| Campaigns | Select the campaigns to include. |
| Filter by Campaign Status | Select which status' to filter by. Active is the default and at least one must be selected. |
| Form IDs | Enter the Form ID. (Multiple Form IDs can be entered comma separated.) |
| Question IDs | Enter the Question ID. (Multiple Question IDs can be entered comma separated.) |
| Creatives | Select the Creative you want to retrieve information for. |
| Duration  | Select whether you want to pull data for a specific date, a date range, or the past 24 hours. |
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


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

