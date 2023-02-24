---
title: DoubleClick Search Connector
url: https://domo-support.domo.com/s/article/360042926714
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926714](https://domo-support.domo.com/s/article/360042926714)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003779
views: 1,223
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


DoubleClick Search (DS) is a search management platform that helps agencies and marketers efficiently manage some of the largest search marketing campaigns in the world, across multiple engines and media channels. To learn more about the DoubleClick Search API, visit their page (<https://developers.google.com/doubleclick-search/>).  


You connect to your DoubleClick Search account in the Data Center. This topic discusses the fields and menus that are specific to the DoubleClick Search connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your DoubleClick Search account and create a DataSet, you must have the following:


* A DoubleClick Search client ID
* A DoubleClick Search client secret


You can create a client ID and secret in the [Google API Console](https://console.developers.google.com/). To do this, follow these steps:


1. Go to Google API Console at <https://console.developers.google.com>.
2. Click **Credentials** in the left column.
3. In the **Create Credentials** menu, select **OAuth Client ID**.
4. (Conditional) If **OAuth Consent** is not set up already, continue to the **Consent** screen. Otherwise, skip to Step 5.
	1. Add an **App Name**, **User Support Email**, and the **Authorized Domain** as **[domo.com](http://domo.com)**, everything else can be left blank.
	2. **Save** **and Continue**.
	3. There is no scope required, **Save and Continue**.
	4. There are no test users required, **Save and Continue**.
	5. Click **Credentials** in the left column.
	6. In the **Create Credentials** menu, select **OAuth Client ID**.
5. Select **Web application** as the **Application Type**.
6. Enter the desired name for the client (such as "DoubleClick Search Client").
7. For the **Authorized Redirect URL**, enter <https://oauth.domo.com/api/data/v1/oauth/providers/doubleclick-search/exchange>.
8. Click **Create**.  
A box then pops up showing the client ID and secret.


You will also need to make sure access is enabled to the DoubleClick Search API. To do this, follow these steps:


1. Click **Library** in the left column.
2. Click the **DoubleClick Search API** link.
3. Click the **Enable** button found at the top of the screen. (If the button reads **Disable**, the API is already enabled.)


For more information, [click here](https://developers.google.com/doubleclick-search/v2/authorizing).


Connecting to Your DoubleClick Search Account
---------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the DoubleClick Search Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your DoubleClick Search account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Client ID | Enter your DoubleClick Search client ID. |
| Client Secret | Enter your DoubleClick Search client secret. |


For information about obtaining these credentials, see "Prerequisites," above.


Once you have entered valid DoubleClick Search credentials, you can use the same account any time you go to create a new DoubleClick Search DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the DoubleClick Search report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account | Returns data about engine accounts, including performance metrics across all of an engine account's campaigns. |
| Ad | Returns performance metrics and configuration attributes for ads. |
| Ad Group | Returns performance metrics and configuration attributes for ad groups. |
| Ad Group Dynamic Search Ads Target | Returns performance metrics and configuration attributes for dynamic ad targets. |
| Ad Group Remarketing List Target | Returns performance metrics and configuration attributes for ad group remarketing targets. |
| Ad Group Target | Returns performance metrics for ad group level targets, which include other targets. |
| Advertiser | Returns performance metrics across all of an advertiser's engine accounts and campaigns. |
| Campaign | Returns performance metrics and configuration attributes for campaigns. |
| Campaign Location Target | Returns performance metrics for geo-location targets, proximity targets, and location extension targets. |
| Campaign Target | Returns performance metrics for campaign targets, which include different targets and remarketing list targets. |
| Conversion | Provides raw event data about conversions. |
| Feed Item | Returns performance metrics and configuration attributes for feed items. |
| Keyword | Returns performance metrics and configuration attributes for keywords.  |
| Paid and Organic | Returns the search terms that either triggered your ads to appear on Google, triggered Google to display unpaid (organic) search results for your site, or both. |
| Product Group | Returns performance metrics and configuration attributes for product groups. |
| Product Target | Returns performance metrics and configuration attributes for product targets. |

 |
| Agency (Report Scope) | Select the Agency used to define the report scope. The report scope is a set of IDs which are used to determine which subset of entities will be returned in the report. |
| Advertiser | Select the Advertiser used to define the report scope. The report scope is a set of IDs which are used to determine which subset of entities will be returned in the report. |
| Additional Report Scopes (Optional) | Select up to 5 additional report scopes. |
| Time Range Type | Select the desired time range type. |
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
| Filter (Optional) | Select the desired filter for your report. |
| Filter Operator | Select the desired operator to apply to your selected **Filter**. |
| Filter Value  | Enter the value to use as an operand with the selected **Filter** and **Filter Operator**. |
| Include Removed Entities | Select **Yes** if you want to show removed entities in your report; otherwise select **No**. |
| Currency | Select the desired currency type, either the currency of your provided agency or U.S. dollars (**USD**). |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").  

