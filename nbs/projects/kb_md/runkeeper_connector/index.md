---
    title: RunKeeper Connector
    url: https://domo-support.domo.com/s/article/360042931314
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360043438593](https://domo-support.domo.com/s/article/360043438593)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042931314](https://domo-support.domo.com/s/article/360042931314)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003337
    views: 2,122
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


RunKeeper is a GPS fitness-tracking app for iOS and Android. It allows users to track fitness activities using GPS and to see detailed statistics around their pace, distance, and time. You can use Domo's RunKeeper connector to compile reports about physical activity, health, and nutrition. To learn more about the RunKeeper API, visit their page (<http://runkeeper.com/developer/healthgraph/>).


The RunKeeper connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your RunKeeper account in the Data Center. This topic discusses the fields and menus that are specific to the RunKeeper connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | * Monitoring fitness over time and exercise trends
* Competition between friends and coworkers about running data
 |
| **Primary Metrics** | * Distance traveled
* Time of activity
* Average pace
* Location of activity
* Friends' activities
* Rankings
* Type of activity
* Sleep
* Nutrition data
* Weight data
 |
| **Primary Company Roles** | * HR roles
* Anyone who wants to keep track of health and fitness data
 |
| **Average Implementation Time** | 5 minutes |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Best Practices
--------------


* Authenticate when you create the DataSet.
* Use the [RunKeeper QuickStart App](/s/article/360043438593 "RunKeeper QuickStart App") to quickly generate relevant cards and metrics from different connector reports.


Prerequisites
-------------


To connect to your RunKeeper account and create a DataSet, you must have the following:


* The email address you use to log into RunKeeper
* The password you use to log into RunKeeper


You can also connect to your RunKeeper account by signing into Facebook or Google+ and indicating that you want to create a connection to RunKeeper.  


Connecting to Your RunKeeper Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the RunKeeper Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo RunKeeper connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing RunKeeper accounts in Domo) to open the RunKeeper OAuth screen where you can choose whether to connect to RunKeeper by entering your RunKeeper, Facebook, or Google+ credentials. Once you have connected to RunKeeper and authorized Domo to connect to RunKeeper, you can use the same account any time you go to create a new RunKeeper DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into RunKeeper when you connect in Domo, you are authenticated automatically when you click Add account. If you want to connect to an account that is different from the one you are logged into, you must first log out of RunKeeper.



### Details Pane


This pane contains a primary menu, **Report**, along with two fields for entering timeframe data.




| Menu | Description |
| --- | --- |
| Report | Select a RunKeeper report. The following reports are available:

|  |  |
| --- | --- |
| Background Activities | Returns information about physical activity that occurs normally throughout the day, such as calories burned and steps taken. |
| Diabetes Measurements | Returns metrics about the user's blood glucose and hormone levels. |
| Fitness Activities | Returns activities that appear in the user's fitness feed on the RunKeeper website. |
| Friends | Returns the user's list of friends, with user ID, full name, profile URL, and status (pending or member). |
| General Body Measurements | Returns body measurements such as blood pressure, cholesterol, vitamin intake, white cell count, etc. |
| Nutrition  | Returns statistics about the user's diet.  |
| Personal Records  | Returns a list of the user's personal best records.   |
| Profile  | Returns the user's profile information, such as identity, geographical location, and fitness goals.  |
| Settings  | Returns the user's sharing and display preferences.  |
| Sleep  | Returns sleep statistics for the user, such as the length of time spent in various sleep stages and the number of times awoken during the night.  |
| Strength Training Activities  | Returns information about the user's strength training activities.  |
| Weight  | Returns statistics about the user's weight and body mass in kilograms.   |

  |
| Start Days | Enter the number of the farthest day back that should be represented in the report. Combine with **End Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Enter 0 for today. |
| End Days | Enter the number of the most recent day back that should be represented in the report. Combine with **Start Days** to create a range of represented days. For example, if you entered 10 for **Start Days** and 5 for **End Days**, the report would contain data for 10 days ago up until 5 days ago. Enter 0 for today. |


 


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Troubleshooting
---------------


Ensure you are using the correct credentials.

