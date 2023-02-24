---
title: Google Plus Connector
url: https://domo-support.domo.com/s/article/360043434473
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434473](https://domo-support.domo.com/s/article/360043434473)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003474
views: 2,116
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:42:00
---




Intro
------


 







**Important:** Google+ APIs have been shut down as of **March 7, 2019**. For more information, visit: <https://developers.google.com/+/api-shutdown>




Google+ is a social network and social layer for Google services. Use Domo's Google+ connector to retrieve data about activity streams, comments, and people. To learn more about the Google+ API, visit their page (<https://developers.google.com/+/api/>).


This connector provides only three simple report types and can only retrieve up to 30 days worth of data. If you want access to more reports and/or a longer period of data, consider using the Google+ Advanced connector.


The Google+ connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Google+ account in the Data Center. This topic discusses the fields and menus that are specific to the Google+ connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | This connector is useful for helping you track the performance of your social media efforts. |
| **Primary Metrics** | * Likes
* Follows
* Shares
* Impressions
* Reach
* Engagement
 |
| **Primary Company Roles** | * Social campaign manager
* Marketing director
 |
| **Average Implementation Time** | Less than an hour |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Prerequisites
-------------


To connect to a Google+ account and create a DataSet, you must have the password for the account you want to connect to.  


Connecting to Your Google+ Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google+ Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google+ connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, you are asked for the password for that account. Once you have entered a valid password, you can use the same account any time you go to create a new Google+ DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.



### Details Pane


This pane contains a primary **Report** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a Google+ report. The following reports are available:

|  |  |
| --- | --- |
| List of Activities | Returns a list of posts for the authenticated user for the last 30 days, along with the number of comments and "+1"s each post received. (For time periods longer than 30 days, use the Google+ Advanced connector instead.) |
| List of People Details | Returns details about users in the authenticated user's circle. |
| Specific Person Details | Returns information about the selected user. |

 |
| User ID | Select the ID for the user in your circle you want to retrieve information for. Select **me** to retrieve data for the authenticated user.  |


 


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


* If you run into problems, check credentials and permissions.
* Verify that you have actually posted to Google+ within the last 30 days (otherwise no data is returned).


FAQs
----


#### How do I know my Google+ credentials are secure?


The connector uses OAuth, which authenticates the account with Google without Domo ever having to access your Google account credentials.


#### Do I need a certain kind of account?


Any Google account that has Google+ enabled can be used.


#### How frequently will my data update?


Changes to your data are available almost immediately; however, it is recommend you run your DataSets every 24 hours. 


#### What is the difference between this connector and the Google+ Advanced connector?


The Google+ Advanced connector includes additional reports to get the details about specific posts and comments. 

