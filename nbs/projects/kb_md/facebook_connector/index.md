---
    title: Facebook Connector
    url: https://domo-support.domo.com/s/article/360043434433
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043434413](https://domo-support.domo.com/s/article/360043434413)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434433](https://domo-support.domo.com/s/article/360043434433)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003477
    views: 5,310
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Domo's Facebook connector can combine Facebook insights with data from any other source—finance analytics, CRM software, etc.—to target campaigns with unparalleled precision. Use this connector to retrieve data about posts, page fans, referrals, account information, and the like. To learn more about the Facebook API, visit their page ([https://developers.facebook.com](https://developers.facebook.com/)).


This version of the Facebook connector allows you to retrieve only 30 days worth of Facebook data. The Advanced version allows you to retrieve more than 30 days worth of data and also includes more report types and configuration parameters. To learn about the Advanced version of the connector, see [Facebook Advanced Connector](/s/article/360043434413 "Facebook Advanced Connector").


The Facebook connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Facebook account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector lets you retrieve data about Facebook impressions, followers, likes, and sentiment toward your company. |
| **Primary Metrics** | * Followers
* Post likes
* Trending posts
* Reaction to posts
* Audience demographics
* Page ratings
* Impressions
* Views
* Comments
* Top post metrics over time
 |
| **Primary Company Roles** | * Director of marketing
* Social media manager
* CMO
* Sales and marketing teams
 |
| **Average Implementation Time** | Typically less than an hour, but may take longer to get the right data in. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4  |



Best Practices
---------------


* Multiple accounts can be selected for reports. This is useful for large organizations with multiple locations or divisions.
* Reports allow for custom date ranges to be selected.
* This connector only provides 30 days worth of data. If you want to retrieve more data, use the [Facebook Advanced connector](/s/article/360043434413 "Facebook Advanced Connector").


Prerequisites
-------------


To connect to your Facebook account and create a DataSet, you must have the following:


* Your Facebook username or your telephone number
* Your Facebook password


Connecting to Your Facebook Account
-----------------------------------


This section enumerates the options in the Credentials and Details panes in the Facebook Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Facebook connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Facebook accounts in Domo) to open the Facebook OAuth screen where you can enter your Facebook username and password. Once you have entered valid Facebook credentials, you can use the same account any time you go to create a new Facebook DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Facebook when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Complete Page Insights | Returns a full list of available insights for pages selected under **Accounts**. |
| Page Fans | Returns information on users who have “liked” the pages selected under **Accounts**.  |
| Page Fans by Age, Gender | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by age and gender.  |
| Page Fans by City | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by city.  |
| Page Fans by Country | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by country. |
| Page Fans by Like Source | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by the most common places that users can “like” the page.  |
| Page Fans Online | Returns information on users who have “liked” the pages selected under **Accounts**, broken down by the hours in which they are online.  |
| Page Feed | Returns a list of Posts on the pages selected under **Accounts**. This includes Posts created by the Page, and those created by other users. |
| Page Impressions by Age, Gender | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by age and gender. |
| Page Impressions by City | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by city. |
| Page Impressions by Country | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by country. |
| Page Impressions by View Frequency | Returns information on users that have seen any content associated with the pages selected under **Accounts**, broken down by the number of times they have seen the content. |
| Page Impressions Details | Returns metrics relating to how many people saw or interacted with the pages selected under **Accounts**. |
| Page Info | Returns information about pages selected under **Accounts**. |
| Page Interactions | Returns metrics relating to how many users interacted with certain parts of the pages selected under **Accounts**. |
| Page Posts | Returns information about posts on the pages selected under **Accounts**. |
| Page Post Lifetime Metrics | Returns the lifetime metrics related to page posts selected under **Accounts**. |

  |
| Accounts | Check the box for each page you want to pull data from. You can select all attributes for the entity by clicking **Select All** or clear all selected pages by clicking **Clear All**. |
| Period | Select the time period for which insight metrics will be shown.
  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


##### What version of the Facebook API does this connector use?


This connector uses version 2.2 of the Facebook API ([https://graph.facebook.com/v2.2](https://developers.facebook.com/docs/graph-api/changelog/version2.12 "https://graph.facebook.com/v2.2")).


##### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Complete Page Insights | /*{page\_id}*/insights |
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
| Page Post Lifetime Metrics | /*{post\_id}*/insights |


##### What kind of credentials do I need to power up this connector?


You need the email address and password associated with your Facebook account.


##### How do I know my Facebook credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


##### Do I need a certain kind of account to set up the connector?


Any Facebook account can be used to set up the connector. However, you must be an administrator of the page(s) that you want to retrieve data for.


##### Can I get information about pages I am not an administrator for?


Not with this connector. To retrieve public information about pages that you are not an administrator for, you need to use the [Facebook Advanced connector](/s/article/360043434413 "Facebook Advanced Connector").


##### How frequently will my data update?


Most information about pages is updated every 24 hours. A small number of insight metrics are updated roughly every 15 minutes. It is recommended that DataSets usually be configured to run every 24 hours.


##### Why are the dates in Facebook's Insights UI and the dates in Domo sometimes different?


Often people validate their DataSets by comparing the results of the connector to the statistics they can see in Facebook's Insights UI. When they are doing so, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that ends at the timestamp specified. In this example, there were 1000 views during the day that ended at Midnight on March 4, in other words, March 3. The Insights UI takes this into account and reports the 1000 views as having happened on March 3.


##### What is the difference between the Facebook and Facebook Advanced connectors?


The Facebook Advanced connector provides more reports than the Facebook connector. The Facebook connector's reports are limited to deal directly with pages. Reports about the user, domains, application monitoring and public page information are in the Advanced connector.


The Facebook connector is also limited to return information about the last 30 days, while the Advanced connector allows the user to query data for any date range.


##### Are there any API limits I should be aware of?


Facebook limits the number of calls that can be made each hour for each user and page. As long as you don't run the DataSet too often, the connector manages this for you.


Troubleshooting
---------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.
* Be aware that when comparing page statistics in your Facebook DataSet to those found in Facebook’s Insights UI, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that *ends* at the timestamp specified. In this example, there were 1000 views during the day that ended at midnight on March 4—in other words, March 3. The Insights UI takes this into account, and reports the 1000 views as having happened on March 3.
