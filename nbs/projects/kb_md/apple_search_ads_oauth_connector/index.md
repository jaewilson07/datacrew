---
    title: Apple Search Ads OAuth Connector
    url: https://domo-support.domo.com/s/article/1500009771882
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500009771882](https://domo-support.domo.com/s/article/1500009771882)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003223
    views: 2,107
    created_date: 2022-10-24 21:11:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Apple Search Ads allows larger advertisers or agencies to create and manage many campaigns programmatically and to run reports for customer insights and trends. The Apple Search Ads OAuth connector allows to pull the data about the performance metrics for your campaigns and ad groups from your Apple Search Ads system into Domo. Use Domo's Apple Seach Ads OAuth connector to combine your Apple Search Ads data with the data from other systems securely for more insights than ever. To learn more about the Apple Search Ads API, visit their page ([https://searchads.apple.com/advanced...gn-management/](https://searchads.apple.com/advanced/help/campaign-management/ "https://searchads.apple.com/advanced/help/campaign-management/")).


You connect to your Apple Search Ads OAuth account in the Data Center. This topic discusses the fields and menus that are specific to the Apple Search Ads OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Apple Search Ads OAuth account and create a DataSet, you must have the following:


* Your Apple Ads client ID
* Your Apple Ads team ID
* Your Apple Ads key ID
* The private key, including begin and end EC private key tags.


You get your client ID, team ID, and key ID after uploading your public key to Apple Search Ads.


Visit [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn about obtaining your credentials.


Connecting to Your Apple Search Ads OAuth Account
-------------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Apple Search Ads OAuth Connector page.  The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your Apple Search Ads OAuth account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| Client ID | Enter your Apple Search client ID that you get after uploading your public key to Apple Search Ads. Visit [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn more. |
| Team ID | Enter your Apple Search team ID that you get after uploading your public key to Apple Search Ads. Visit [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn more. |
| Key ID | Enter your Apple Search key ID that you get after uploading your public key to Apple Search Ads. Visit [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn more. |
| Private Key | Enter the private key, including begin and end EC private key tags. Visit [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn more. |


Once you have entered valid Apple Search Ads OAuth credentials, you can use the same account any time you go to create a new Apple Search Ads OAuth DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Apple Search Ads OAuth report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Campaign Report (New) | Returns metadata and performance metrics of all the campaigns for selected org. |
| AdGroup Report (New) | Returns metadata and performance metrics of all the adgroups for a selected campaign. |

 |
| Org ID | Select the org you want to retrieve data for. |
| Granularity | Select the desired date granularity for your report. |
| Campaign IDs | Select the campaign IDs you want to retrieve data for. |
| Duration  | Select whether you want to pull data for a specific date or a date range.  |
| Report Date  | Select whether the report data is for a specific date or for a relative number of days back from today.  |
| Select Specific Date  | Select the date for the report.  |
| Days Back | Enter the number of past days that should appear in the report.   |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in ****End Date****.  |
| End Date | Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in ****Start Date****.   |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with ****Days Back to End At**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with ****Days Back to Start From**** to create a range of represented days.
For example, if you entered 10 for ****Days Back to Start From**** and 5 for ****Days Back to End At****, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Apple Search Ads API does this connector use?


This connector uses version 3 of the Apple Search Ads API (<https://api.searchads.apple.com/api/v3>).


#### Which endpoint(s) does each report call in this Connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| AdGroup Report | /reports/campaigns/{CAMPAIGN\_ID}/adgroups |
| Campaign Report | /reports/campaigns |


#### What kind of credentials do I need to power up this Connector?


You need the client ID, team ID, key ID, and private key associated with your Apple Search Ads account. You get your client ID, team ID, and key ID after uploading your public key to Apple Search Ads. You need to enter your private key including the begin and end EC private key tags.  
Visit the [Apple Search Ads OAuth documentation](https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api "https://developer.apple.com/documentation/apple_search_ads/implementing_oauth_for_the_apple_search_ads_api") to learn about obtaining your credentials.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


No


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
