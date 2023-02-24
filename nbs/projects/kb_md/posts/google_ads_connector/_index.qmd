---
title: Google Ads Connector
url: https://domo-support.domo.com/s/article/360060270674
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/5005702805271](https://domo-support.domo.com/s/article/5005702805271)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042926814](https://domo-support.domo.com/s/article/360042926814)', '[https://domo-support.domo.com/s/article/360060270674](https://domo-support.domo.com/s/article/360060270674)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003252
views: 2,365
created_date: 2022-10-24 21:12:00
last updated: 2022-10-24 22:41:00
---



Intro
-----


 




 


**Important:** Google will sunset their Adwords API on April 27th 2022 in favor of their Google Ads API.  
As a result, Domo will deprecate its Google Ads connector (com.domo.connector.adwords.oauth) which relies on the Adwords API.  See [Google Ads Connector Deprecation](/s/article/5005702805271) for more information.  







Google Ads, formerly Google Adwords, is an online advertising service where advertisers pay to display brief ads to web users. Use the Google Ads connector to retrieve performance reports about your accounts, ads, campaigns, budgets, and many more. For more information about the Ads API, see [https://developers.google.com/adword...s/guides/start](https://developers.google.com/adwords/api/docs/guides/start "https://developers.google.com/adwords/api/docs/guides/start"). 


This topic discusses the fields and menus that are specific to the Google Ads OAuth connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Google Ads data using this connector, you must have your Google credentials (email address and password). 


Connecting to Google Ads Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google Ads OAuth Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google Ads OAuth connector uses OAuth to connect to Google. Click **Connect** (or select **Add Account** if you have existing Google Ads accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a Google Ads OAuth DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.



### Details Pane


This pane contains a number of fields and menus you can use to configure your report.




| Menu | Description |
| --- | --- |
| Report | Select the Google Ads OAuth report type to run. The following reports are available:

|  |  |
| --- | --- |
| Account Performance | Returns all statistics aggregated by default at the account level. |
| Ad Performance | Returns all statistics aggregated at the ad level. |
| Ad Group Performance | Returns all statistics aggregated by default at the ad group level. |
| Budget Performance | Returns all statistics aggregated by default at the budget level. |
| Keywords Performance | Returns all statistics aggregated at the keyword level. |
| Campaign Performance | Returns all statistics aggregated by default at the campaign level. |
| Placement Performance | Returns all statistics aggregated at the placement level. |

 |
| Customer ID | Enter a comma-separated list of the Customer ID you want to retrieve data for. Customer IDs must be for your Google Ads advertiser accounts not for a manager account. |
| Segments | Select the segments to breakdown the data. |
| Metrics | Select the metrics you want to retrieve. |
| Currency Display | Select whether to display money amounts as micro units of local currency ($100.00->100,000,000.00) or local currency. |
| Date Range | Select the date range for the data in your report. |
| Date Type | Specify whether you want to retrieve the data for a specific date or a date range. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date | Select the specific date using the date selector. |
| Relative Date | Enter the number of days back that you would like to get data for in the **Days Back** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ********End Date******** to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ********Start Date********to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### This connector is not working for me. Are there any other ways to bring my AdWords data into Domo?


If this connector does not bring your data into Domo, try using one of the following Domo connectors:  
Google Ads via Google BigQuery Service Connector, Google BigQuery Service Connector, or Google Sheets Connector.  
[Google Ads Connector](/s/article/360042926814)


#### What kind of credentials do I need to power up this connector?


You need your Google credentials.


#### How do I know that my login credentials are secure?


The login process uses the OAuth process, so your Google credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


#### How often can the data be updated?


As often as needed.


#### Are there any API limits that I need to be aware of?


No


#### Can I use the same account to create multiple datasets?


Yes

