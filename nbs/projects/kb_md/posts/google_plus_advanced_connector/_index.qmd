---
title: Google Plus Advanced Connector
url: https://domo-support.domo.com/s/article/360043434453
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434453](https://domo-support.domo.com/s/article/360043434453)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003482
views: 2,115
created_date: 2022-10-24 21:13:00
last updated: 2022-10-24 22:40:00
---



Intro
-----


 







**Important:** Google+ APIs have been shut down as of **March 7, 2019**. For more information, visit: <https://developers.google.com/+/api-shutdown>




Google+ is a social network and social layer for Google services. Use Domo's Google+ connector to retrieve data about activity streams, comments, and people. To learn more about the Google+ API, visit their page (<https://developers.google.com/+/api/>).


This Advanced version of the Google+ connector provides more reports than the simplified version as well as more advanced configuration options. It also lets you pull more than 30 days worth of data. To learn more about the simplified version, see Google+ Connector.


The Google+ Advanced connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your Google+ Advanced account in the Data Center. This topic discusses the fields and menus that are specific to the Google+ Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




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
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 3 |


Prerequisites
-------------


To connect to a Google+ account and create a DataSet, you must have the password for the account you want to connect to.  


Connecting to Your Google+ Account
----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Google+ Advanced Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Google+ Advanced connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Google accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, you are asked for the password for that account. Once you have entered a valid password, you can use the same account any time you go to create a new Google+ DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.



### Details Pane


This pane contains a primary **Report** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select a Google+ Advanced report. The following reports are available:

|  |  |
| --- | --- |
| Activity Details | Returns information about the activity with the provided activity ID. For information about obtaining an activity ID, see FAQs. |
| Comment Details | Returns information about the comment with the provided comment ID. For information about obtaining a comment ID, see FAQs. |
| In Your Circles Count (Deprecated) | Returns the total number of users in the authenticated user's circles. *This report is no longer supported by Google*. |
| List of Activities | Returns a list of posts for the authenticated user, along with the number of comments and "+1"s each post received. |
| List of People Details | Returns details about users in the authenticated user's circle. |
| List of Moments (Deprecated) | Returns a list of the authenticated user's actions, such as making a purchase or commenting on a blog. *This report is no longer supported by Google*. |
| Specific Person Details | Returns information about the selected user. |

  |
| Activity ID | Enter the ID for the activity you want to retrieve data for. You can find activity IDs for a specific user by running the **List of Activities** report. |
| Comment ID | Enter the ID of the comment you want to retrieve data for. You can find comment IDs by running the **Comments** report. |
| User ID | Select the ID for the user in your circle you want to retrieve information for. Select **me** to retrieve data for the authenticated user.  |
| Duration  | Select whether you want to pull data for all time, a specific date, or a date range.  |
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


Troubleshooting
---------------


If you run into problems, check credentials and permissions.


FAQs
----


#### How do I know my Google+ credentials are secure?


The connector uses OAuth, which authenticates the account with Google without Domo ever having to access your Google account credentials.


#### Do I need a certain kind of account?


Any Google account that has Google+ enabled can be used.


#### How frequently will my data update?


Changes to your data are available almost immediately; however, it is recommend you run your DataSets every 24 hours. 


#### Where do I get an Activity ID for the "Activity Details" report?


The Activity ID can be found by running the "List of Activities" report and copying the value found in the "ID" column.


#### Where do I get a Comment ID for the "Comment Details" report?


The Comment ID can be found by running the "List of Comments" report and copying the value found in the "ID" column.


#### Why does the "In Your Circles Count" report say I have 0 people in my circles?


Google disabled this report on its side. It is still available in the connector to keep existing reports from breaking. 


#### Are there any API limits I should be aware of?


Google allows roughly 5 queries per second per user. Note that a single DataSet run may require multiple queries. 

