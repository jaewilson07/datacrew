---
title: Facebook Ads Connector
url: https://domo-support.domo.com/s/article/360043431213
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431213](https://domo-support.domo.com/s/article/360043431213)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003771
views: 2,265
created_date: 2022-10-24 21:15:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Marketing experts use Facebook Ads to create targeted ads designed to reach different audiences and help them meet their business goals. Use Domo's Facebook Ads Connector to compile reports about all aspects of advertising, including accounts, campaigns, spending, and the like. To learn more about the Facebook API, visit their page ([https://developers.facebook.com/docs/marketing-apis](https://developers.facebook.com/docs/marketing-apis "https://developers.facebook.com/docs/marketing-apis")).


The Advanced version of the Facebook Ads connector allows you to access more reports than this simplified version but also requires more configuration. For information about the Advanced version, see Facebook Ads Advanced Connector.


You connect to your Facebook account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | * Tracking how many people view individual ads
* Tracking how many people are reached by each campaign
* Tracking how much money has been spent on campaigns
 |
| **Primary Metrics** | * Reach
* Spend
* Cost per lead
* Leads generated
* Impressions
* Clicks
* Cost per click
 |
| **Primary Company Roles** | Digital marketers |
| **Average Implementation Time** | 1-2 hours |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Best Practices
--------------


* This connector is used to get basic information, such spend, reach, cost per click, and impressions. It does not provide many options for customization. For more detailed, complex reports, the Facebook Ads Advanced connector should be used.
* This connector can take a very long time to run if the date range is very long and/or the account selected has a large number of campaigns or ads. The long run time occurs because Facebook is taking a long time to calculate the selected metrics. If the DataSet is taking too long or doesn't complete, the date range needs to be smaller.


Prerequisites
-------------


To connect to Facebook and create a Facebook Ads DataSet, you must have the following:


* The email address associated with your Facebook account, or your telephone number
* Your Facebook password
* Access to your company's Facebook Ads account


Connecting to Your Facebook Account
-----------------------------------


This section enumerates the options in the Credentials and Details panes in the Facebook Ads Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Facebook Ads connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Facebook Ads accounts in Domo) to open the Facebook OAuth screen where you can enter your Facebook credentials. Once you have entered valid Facebook credentials, you can use the same account any time you go to create a new Facebook Ads DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Facebook when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook Ads report you want to run. The following reports are available:

|  |  |
| --- | --- |
| General Metrics | Returns commonly-used insight metrics at the Campaign level. |
| Page Actions (Ad Sets) | Returns insights related to Page and Post interactions at the Ad Set level. |
| Page Actions (Ads) | Returns insights related to Page and Post interactions at the Ad level. |
| Placement Metrics | Returns common metrics broken down by screen placement at the Campaign level. |
| Responder Demographics | Returns common metrics broken down by age and gender at the AdSet level. |

 |
| Ad Set | Select the ad set you want to retrieve data for. |
| Ad Account ID | Select the ID for the ad account you want to retrieve information for. |
| Ad Campaign | Select the ad campaign you want to retrieve information for. |
| Ad | Select the ad you want to retrieve data for. |
| Time Increment | Select the time range your data is broken down by.
The following table shows what you should enter as your **Time Increment** value, based on what appears in your Facebook Ads UI:

| Facebook Ads UI | Time Increment Value |
| --- | --- |
| No time breakdown | Blank or all\_days |
| Monthly breakdown | monthly |
| Weekly breakdown | 7 |
| Daily breakdown | 1 |

 |
| Duration | Select whether to pull data for a single date or a range of dates. |
| Report Date | Specify whether the report data is for a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back from the current date (which you specify in **Days Back**). For example, if you enter 5 for **Days Back** and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past. |
| Select Specific Date | Select the report date using the date selector. |
| Start Date | Specify whether the first date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back from the current date (which you specify in **Days Back to Start From**). If you choose **Relative** here, you should also choose **Relative** for **End Date** and specify a value for **Days Back to End At**.
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At** and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past. |
| End Date | Specify whether the last date in your date range is a specific or relative date. Choose **Relative** if you always want the report to retrieve data for a given number of days back from the current date (which you specify in **Days Back to End At**). If you choose **Relative** here, you should also choose **Relative** for **Start Date** and specify a value for **Days Back to Start From**.
For example, if you enter 10 for **Days Back to Start From** and 5 for **Days Back to End At**and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past. |
| Select Specific Start Date | Select the first date in your date range using the date selector. |
| Select Specific End Date | Select the last date in your date range using the date selector. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Tips and Tricks
---------------


### Aggregating Statistics


It is often tempting to use a Custom Insights report that is reporting at a very detailed level to calculate results for a higher level. For example, a DataSet may be reporting daily metrics for multiple campaigns. You could add up the daily data for all the campaigns in order to determine the total for the account that holds the campaigns. This works for some metrics like Clicks, Spend, or Impressions. However, for metrics that count individual people (such as "Reach"), this approach will fail and produce incorrect values. "Reach," for example, fails because individuals are counted for each day they saw an ad. Then, if the Reach values for the month are added together, those people are counted multiple times. If the user compares this result to the result for the month in the Facebook Ads UI, they find that the aggregated value is far too high. The Facebook Ads UI removed the duplicated viewers, and only counted them once in the specified time period.


To avoid this problem, any time the user wants to get a value for a larger time period, the period needs to be defined in the DataSet itself, and not calculated afterward. If a user wants Reach for a particular month, the DataSet should be defined with the start and end dates for the month, and the **Time Increment** value should be set to all\_days or left blank. The user can get monthly data, aggregated and deduplicated by Facebook, by setting a large date range (for example, Jan 1, 2016 to Dec 31, 2016) and entering monthly as the **Time Increment** value. Similarly, if a user wants Reach data at the Account level, the user needs to set the DataSet's **Level** value to **Accounts** (not **Campaigns**), followed by summing the values in Domo.


It is often useful to compare the results of the connector to the results available in the Facebook Ads UI. To perform the comparison correctly, however, the UI and the connector need to be configured identically. They need to be set to the same time period (start and end dates) as well as the same reporting level and time increment value.


Troubleshooting
---------------


* Does the user have access to the company's Facebook Ads account?
* Is the time range valid for the account/campaigns/ad sets/ads selected?


FAQ
---


#### What version of the Facebook API does this connector use?


This connector uses version 14 of the Facebook Marketing API (<https://graph.facebook.com/v14>).


#### Do I need a certain kind of account to set up the connector?


You will need a Facebook account that has access to the Facebook Ads account(s) that you are interested in. There are three levels of access available: Analyst, Advertiser and Administrator. Analyst-level access is enough for the reports available in the connector.


#### What is the difference between the Facebook Ads and Facebook Ads Advanced connectors?


The Facebook Ads Advanced connector provides far more reports and options than the Facebook Ads connector. The biggest difference is that the Custom Insights report is only available in the Advanced connector.


The Facebook Ads connector is a predefined set of easy-to-use reports. For more options and flexibility with report configuration, you should use the Advanced connector.


#### How often can the data be updated?


The data in this connector is roughly real-time. However, many statistics are subject to change for up to 3 days as Facebook determines the exact number of views, etc.


#### Are there any API limits I should be aware of?


Facebook may enforce rate limits on calls to its API, but you should not have to worry about this.


#### My Facebook Ads DataSets take a long time to run. What can I do to make them run faster?


Facebook Ads is known to take a long time because Facebook has to calculate the results of a query before we can start pulling the data. Depending on the load on their servers, this can take a LONG time. It seems that scheduling queries for off-peak times helps DataSets run faster. For example, one team in India was able to run a Facebook Ads DataSet in 15 minutes, but when another user tried the same DataSet 6-8 hours later, it took about 2 hours.

