---
    title: Facebook Partition Connector
    url: https://domo-support.domo.com/s/article/1500001404182
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360043434433](https://domo-support.domo.com/s/article/360043434433)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/1500001404182](https://domo-support.domo.com/s/article/1500001404182)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003256
    views: 1,076
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:41:00
    ---



Intro
-----


Domo's Facebook Partition connector can combine Facebook insights with data from any other source—finance analytics, CRM software, etc.—to target campaigns with unparalleled precision. Use this connector to retrieve data about posts, page fans, account information, and more. This connector provides reports about the user account, posts, application monitoring and public page information, and also allows you to query data for any date range. To learn more about the Facebook API, visit their page ([https://developers.facebook.com](https://developers.facebook.com "https://developers.facebook.com")).


To learn about the simplified version of the Facebook connector, see [Facebook Connector](/s/article/360043434433 "Facebook Connector").  


You connect to your Facebook account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Partition connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




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
* Social Media Analysts
 |
| **Average Implementation Time** | Usually less than an hour, but could take much longer to pull the desired data. |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 4 |


Configuring the connector to backfill data
------------------------------------------




### Configuring the connector for initial run


The *Backfill* field in the connector determines how much historical data prior to the value in the *End date* field to bring into the dataset on the first run of the connector.


Example: If the *End Date*field is set to **March 30th 2021** on the initial run of the connector, and the *Backfill Days* is set to **10,**the connector will bring in data between **March 20th 2021 and March 30th 2021**on the initial run.





### Configuring the connector for subsequent runs


After the initial run, the connector will only request a limited amount of data from the provider on subsequent runs. You can configure the connector to update rows that have already been added to the dataset as well as new rows, or just add new rows. To configure the connector for subsequent runs, use the *Start Date*and *End Date* fields to describe the date range the connector should request data for.


The *Start Date* determines how far back the connector should request data for, and the *End Date* determines the last day the connector requests data for. 


Example: If the *Start Date* is set to 3 days ago and the *End Date*is set to today, then


* On April 3rd, the connector will request data for March 31st  – April 3rd.
* On April 4th, the connector will request data for April 1st to April 4th. It will update the rows in the dataset for April 1st and April 3rd , and create a new row for April 4th.
* On April 5th, the connector will request data from April 2nd to April 5th. It will update the rows in the dataset for April 2nd to April 4th, and create a new row for April 5th.



Prerequisites
-------------


To connect to your Facebook account and create a DataSet, you must have the following:


* Your Facebook username or your telephone number
* Your Facebook password


Connecting to Your Facebook Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Facebook Partition Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


The Domo Facebook Partition connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Facebook accounts in Domo) to open the Facebook OAuth screen where you can enter your Facebook credentials. Once you have entered valid Facebook credentials, you can use the same account any time you go to create a new Facebook Partition DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Facebook when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Facebook Partition report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Account Information | Returns information about the authenticated user, such as their name and email address. |
| Complete Page Insights | Returns a full list of available insights for pages selected under **Accounts**. |
| Complete Page Post Insights | Returns a full list of metrics for the posts on the pages selected under **Accounts**. |

 |
| Accounts | Check all of the pages you want to pull data from. |
| Application ID | Enter the ID of the application (managed by the user) to retrieve information for. |
| Page IDs | Enter a comma-separated list of page IDs. |
| Fields | Select the fields that should be reported. If no fields are selected, a default list will be returned. |
| Domain IDs | Enter a comma-separated list of Domain IDs to retrieve information for. |
| Period | Select the time period for which insight metrics will be shown. |
| Select Insight Metrics | Select all metrics you want to retrieve information for. If you select none, information is retrieved for all of them. |
| Insight | Select the Application Insight to report. |
| Instant Article Metric | Select an Instant Article Metric to retrieve data for. |
| Instant Article Count | Enter the number of Instant Articles that will have insights reported. |
| Skip Errors | If you select **True**, pages that return errors are silently skipped, and all other Pages will be included in the results. If you select **False**, the DataSet fails with an error if any page returns an error. |
| Start Date | Enter the start date for the report using the format yyyy-MM-dd (for example, 2015-01-15).
You can also use the keywords today or yesterday to return data for those days. If you want, you can specify an offset like yesterday-3. This would set the start date to 3 days in the past. |
| End Date | Enter the end date for the report using the format yyyy-MM-dd (for example, 2015-01-15).
You can also use the keywords today or yesterday to return data for those days. If you want, you can specify an offset like yesterday-3. This would set the end date to 3 days in the past. |
| End Date Should Be Inclusive? | Select **Yes** if you want data to be retrieved for all days up to and including the specified end date.
Select **No** if you want data to be retrieved for all days up to but not including the specified end date. |
| Backfill | Enter the number of days (before the previous End Date) you want to backfill for. This action will be performed **only** the first time the data source runs. On subsequent runs, the specified **Start Date** to **End Date** range is used.





**Note:** If you need to rerun the backfill, place a \* at the end, then save the connector and re-run. Remove the \* and save after it has ran.


 |


### 
Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


FAQs
----


#### What version of the Facebook API does this connector use?


This connector uses version 7 of the Facebook API ([https://graph.facebook.com/v7](https://developers.facebook.com/docs/graph-api/changelog/version3.2 "https://graph.facebook.com/v3.2")).


#### Which endpoint(s) does each report call in this connector?




| Report Name | Endpoint URL(s) |
| --- | --- |
| Account Information | /me |
| Complete Page Insights | /*{page\_id}*/insights |
| Complete Page Post Insights | /*{post\_id}*/insights |


#### What kind of credentials do I need to power up this connector?


You need the email address and password associated with your Facebook account.


#### How do I know my Facebook credentials are secure?


The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


#### Do I need a certain kind of account to set up the connector?


Any Facebook account can be used to set up the connector. However, some of the reports are designed to return data and statistics about pages. You must be an administrator of the page(s) that you want to retrieve this data for.


#### What's the difference between the Facebook and Facebook Partitions connectors?


The Facebook Partition connector supports Date partitioning and backfilling for the available reports. It also allows to query data for any date range.  
The Facebook connector's reports are limited to deal directly with pages and it is limited to return information about the last 30 days.


#### How frequently will my data update?


Most information about pages is updated every 24 hours. A small number of insight metrics are updated roughly every 15 minutes. It is recommended that DataSets usually be configured to run every 24 hours.


#### Why are the dates in Facebook's Insights UI and the dates in Domo sometimes different?


Often people validate their DataSets by comparing the results of the connector to the statistics they can see in Facebook's Insights UI. When they are doing so, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that ends at the timestamp specified. In this example, there were 1000 views during the day that ended at Midnight on March 4, in other words, March 3. The Insights UI takes this into account and reports the 1000 views as having happened on March 3.


#### Are there any API limits I should be aware of?


Facebook limits the number of calls that can be made each hour for each user and page. As long as you don't run the DataSet too often, the connector manages this for you.


Troubleshooting
---------------


* Review the configuration to make sure that all required items have been selected.
* Review the connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the time frame that you are trying to pull.
* Be aware that when comparing page statistics in your Facebook Partition DataSet to those found in Facebook’s Insights UI, the dates are generally off by 1 day. For example, if the Facebook UI shows 1000 views for a page on March 3, the connector will report 1000 views with a date timestamp of March 4. This is because the API returns data for a time period that *ends* at the timestamp specified. In this example, there were 1000 views during the day that ended at midnight on March 4—in other words, March 3. The Insights UI takes this into account, and reports the 1000 views as having happened on March 3.
