---
title: Facebook Advanced Connector
url: https://domo-support.domo.com/s/article/360043434413
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043434433](https://domo-support.domo.com/s/article/360043434433)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434413](https://domo-support.domo.com/s/article/360043434413)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003478
views: 2,224
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


Domo's Facebook Advanced connector can combine Facebook insights with data from any other source—finance analytics, CRM software, etc.—to target campaigns with unparalleled precision. Use this connector to retrieve data about posts, page fans, referrals, account information, and the like. To learn more about the Facebook API, visit their page ([https://developers.facebook.com](https://developers.facebook.com "https://developers.facebook.com")).


This Advanced version of the connector includes more report types and configuration parameters. It also allows you to retrieve more than 30 days worth of Facebook data. To learn about the simplified version of the connector, see [Facebook Connector](/s/article/360043434433 "Facebook Connector").  


You connect to your Facebook account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | Retrieving social media metrics, tracking content, and viewing your Facebook page performance. |
| **Primary Metrics** | * Impressions
* Engagement
* Comments
* Likes
* Shares
* Reactions
* Page fans
 |
| **Primary Company Roles** | * CMO
* Director of marketing
* Marketing analyst
 |
| **Average Implementation Time** | Usually less than an hour, but could take much longer to pull the desired data. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4 |


Prerequisites
-------------


To connect to your Facebook account and create a DataSet, you must have the following:


* Your Facebook username or your telephone number
* Your Facebook password


Connecting to Your Facebook Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Facebook Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Facebook Advanced connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Facebook Advanced accounts in Domo) to open the Facebook OAuth screen where you can enter your Facebook credentials. Once you have entered valid Facebook credentials, you can use the same account any time you go to create a new Facebook Advanced DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Facebook when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook Advanced report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Information | Returns information about the authenticated user, such as first and last name, gender, Facebook URL, location, time zone, etc. |
| Application Insights | Returns information on insights for specified application IDs. |
| Complete Domain Insights | Returns domain insights for the specified domain IDs. |
| Complete Page Insights | Returns a full list of available insights for pages selected under **Accounts**. |
| Complete Page Post Insights | Returns a full list of metrics for the posts on the pages selected under **Accounts**. |
| Instant Article Aggregated Insights | Returns information about all instant articles on the pages selected under **Accounts**, aggregated together. |
| Page Fans | Returns information on users who have “liked” the pages selected under **Accounts**. |
| Page Fans by Age, Gender | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by age and gender. |
| Page Fans by City | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by city. |
| Page Fans by Country | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by country. |
| Page Fans by Like Source | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by the most common places that users can “like” the page. |
| Page Fans Online | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by the hours in which they are online. |
| Page Feed | Returns a list of Posts on the pages selected under **Accounts**. This includes Posts created by the Page, and those created by other users. |
| Page Impression Details | Returns metrics relating to how many people saw or interacted with the pages selected under **Accounts**. |
| Page Impressions by Age, Gender | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by age and gender. |
| Page Impressions by City | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by city. |
| Page Impressions by Country | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by country. |
| Page Impressions by View Frequency | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by the number of times they have seen the content. |
| Page Info | Returns information about pages selected under **Accounts**. |
| Page Interactions | Returns information about how many users have interacted with any content associated with the pages selected under **Accounts**. |
| Page Posts | Returns information about posts on the pages selected under **Accounts**. |
| Page Post Comments | Returns a list of comments from Posts from pages selected under **Accounts**. |
| Page Post Lifetime Metrics | Returns information about views/impressions that each post in selected pages has received, and where those views came from. |
| Page Ratings | Returns details about ratings that the selected pages have received. |
| Page Post Video Daily Metrics | Returns information about the number of people that watch or interacted with videos on the selected page(s), broken down by day. |
| Page Post Video Metrics | Returns metrics related to the number of users who watched or interacted with videos on the pages selected under **Accounts**. |
| Public Page Info | Returns publicly available information for pages whose IDs are entered in the **Page IDs** field. |
| Public Page Insights (Deprecated) | Returns publicly available insight metrics for pages whose IDs are entered in the **Page IDs** field. |
| Public Page Posts | Returns information about posts on the public pages specified by Page IDs. |
| Published Posts | Returns information about everything you have published to the selected Pages. This includes status updates, videos, links, etc. |
| Referrals from Page (Deprecated) | Returns information about the number of users who followed links on the pages selected under **Accounts**. |
| Referrals to Page | Returns information about the number of users who followed links leading to the pages selected under **Accounts**. This information is broken down by the sources of links users followed to get to the selected pages. |
| Video Crosspost Information | Returns about crossposting of videos posted by the pages selected under **Accounts** during the specified time range. |
| Video Insights | Returns lifetime insight metrics for videos posted by the pages selected under **Accounts** during the specified time range. |
| Videos | Returns a list of videos posted by the pages selected under **Accounts** during the specified time range. |

 |
| Accounts | Check the box for each page you want to pull data from. You can select all attributes for the entity by clicking **Select All** or clear all selected pages by clicking **Clear All**. |
| Start Date | Enter the start date for the report using the format yyyy-MM-dd (for example, 2015-01-15).
You can also use the keywords today or yesterday to return data for those days. If you want, you can specify an offset like yesterday-3. This would set the start date to 3 days in the past. |
| End Date | Enter the end date for the report using the format yyyy-MM-dd (for example, 2015-01-15).
You can also use the keywords today or yesterday to return data for those days. If you want, you can specify an offset like yesterday-3. This would set the end date to 3 days in the past. |
| End Date Should Be Inclusive? | Select **Yes** if you want data to be retrieved for all days up to and including the specified end date.
Select **No** if you want data to be retrieved for all days up to but not including the specified end date. |
| Backfill | Enter the number of days before the start date that should be backfilled. This action will be performed only the first time the DataSet runs. On subsequent runs, the specified **Start Date** to **End Date** range is used. |
| Page IDs | Enter a comma-separated list of page IDs. |
| Period | Select the time period for which insight metrics will be shown. |
| Application ID | Enter the ID of the user-managed application you want to retrieve information for. |
| Domain IDs | Enter a comma-separated list of Domain IDs to retrieve information for. |
| Select Insight Metrics | Select all metrics you want to retrieve information for. If you select none, information is retrieved for all of them. |
| Skip Errors | If you select **True**, pages that return errors are silently skipped, and all other Pages will be included in the results. If you select **False**, the DataSet fails with an error if any page returns an error. |
| Instant Article Metric | Select an Instant Article Metric to retrieve data for. |
| Fields | Select all fields you want to retrieve data for. If you don't select any fields, a default list of fields is retrieved. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### What version of the Facebook API does this connector use?


This connector uses version 13 of the Facebook API ([https://graph.facebook.com/v13](https://developers.facebook.com/docs/graph-api/changelog/version3.2 "https://graph.facebook.com/v3.2")).


##### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Account Information | /me |
| Application Insights | /*{app\_id}*/app\_insights |
| Complete Domain Insights | /*{domain\_id}*/insights |
| Complete Page Insights | /*{page\_id}*/insights |
| Complete Page Post Insights | /*{post\_id}*/insights |
| Instant Article Aggregated Insights | /instant\_articles\_insights |
| Page Fans | /*{page\_id}*/insights |
| Page Fans by Age, Gender | /*{page\_id}*/insights |
| Page Fans by City | /*{page\_id}*/insights |
| Page Fans by Country | /*{page\_id}*/insights |
| Page Fans by Like Source | /*{page\_id}*/insights |
| Page Fans Online | /*{page\_id}*/insights |
| Page Feed | /*{page\_id}*/feed |
| Page Impressions Details | /*{page\_id}*/insights |
| Page Impressions by Age, Gender | /*{page\_id}*/insights |
| Page Impressions by City | /*{page\_id}*/insights |
| Page Impressions by Country | /*{page\_id}*/insights |
| Page Impressions by View Frequency | /*{page\_id}*/insights |
| Page Info | /*{page\_id}* |
| Page Interactions | /*{page\_id}*/insights |
| Page Posts | /*{page\_id}*/posts |
| Page Post Comments | /*{post\_id}*/comments |
| Page Post Lifetime Metrics | /*{post\_id}*/insights |
| Page Ratings | /*{page\_id}*/ratings |
| Page Post Video Daily Metrics | /*{post\_id}*/insights |
| Page Post Video Metrics | /*{post\_id}*/insights |
| Public Page Info | /*{page\_id}* |
| Public Page Insights (Deprecated) | /*{page\_id}*/insights |
| Public Page Posts | /*{page\_id}*/posts |
| Published Posts | /*{page\_id}*/published\_posts |
| Referrals from Page | /*{page\_id}*/insights |
| Referrals to Page | /*{page\_id}*/insights |
| Video Crosspost Information | /*{page\_id}*/videos |
| Video Insights | /*{page\_id}*/videos |
| Videos | /*{page\_id}*/videos |


##### What kind of credentials do I need to power up this connector?


You need the email address and password associated with your Facebook account.


##### How do I know my Facebook credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


##### Do I need a certain kind of account to set up the connector?


Any Facebook account can be used to set up the connector. However, many of the reports are designed to return data and statistics about pages. You must be an administrator of the page(s) that you want to retrieve this data for.


##### Can I get information about pages I am not an administrator of?


Yes. There are reports that allow you to retrieve public information about pages that you are not an administrator for. To use these reports, you will need to know the pages' names. For example, if the URL of a page is "[www.facebook.com/DomoHQ"](http://www.facebook.com/DomoHQ)", then you would enter "DomoHQ" as the page name.


##### What is the difference between the Facebook and Facebook Advanced connectors?


The Facebook Advanced connector provides more reports than the Facebook connector. The Facebook connector's reports are limited to deal directly with pages. Reports about the user, domains, application monitoring and public page information are in the Advanced connector.


The Facebook connector is also limited to return information about the last 30 days, while the Advanced connector allows the user to query data for any date range.


##### How frequently will my data update?


Most information about pages is updated every 24 hours. A small number of insight metrics are updated roughly every 15 minutes. It is recommended that DataSets usually be configured to run every 24 hours.


##### Why are the dates in Facebook's Insights UI and the dates in Domo sometimes different?


Often people validate their DataSets by comparing the results of the connector to the statistics they can see in Facebook's Insights UI. When they are doing so, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that ends at the timestamp specified. In this example, there were 1000 views during the day that ended at Midnight on March 4, in other words, March 3. The Insights UI takes this into account and reports the 1000 views as having happened on March 3.


##### Are there any API limits I should be aware of?


Facebook limits the number of calls that can be made each hour for each user and page. As long as you don't run the DataSet too often, the connector manages this for you.


Troubleshooting
---------------


* Review the configuration to make sure that all required items have been selected.
* Review the connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the time frame that you are trying to pull.
* Be aware that when comparing page statistics in your Facebook Advanced DataSet to those found in Facebook’s Insights UI, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that *ends* at the timestamp specified. In this example, there were 1000 views during the day that ended at midnight on March 4—in other words, March 3. The Insights UI takes this into account, and reports the 1000 views as having happened on March 3.
