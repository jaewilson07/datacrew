---
    title: Sensor Tower Connector
    url: https://domo-support.domo.com/s/article/360043431833
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043431833](https://domo-support.domo.com/s/article/360043431833)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003720
    views: 1,094
    created_date: 2022-10-24 21:14:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Sensor Tower provides mobile app store marketing intelligence to give you vital keyword and competitive data so you can improve visibility, performance, and ROI. To learn more about the Sensor Tower API, visit their page ([https://sensortower.com/api/v1/index.html](https://sensortower.com/api/v1/index.htm)). Note that you must be signed into Sensor Tower to access their API documentation.


You connect to your Sensor Tower account in the Data Center. This topic discusses the fields and menus that are specific to the Sensor Tower connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Sensor Tower account and create a DataSet, you must have a Sensor Tower authentication token. You can find your token by logging in to the Sensor Tower Web UI and navigating to <https://sensortower.com/users/edit>. 


Connecting to Your Sensor Tower Account
---------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Sensor Tower Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Sensor Tower account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Authentication Token | Enter your Sensor Tower authentication token. For information about obtaining a token, see "Prerequisites," above. |


Once you have entered valid Sensor Tower credentials, you can use the same account any time you go to create a new Sensor Tower DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Sensor Tower report you want to run. The following reports are available:

|  |  |
| --- | --- |
| App History Summary | Retrieves a summary of positive or negative reviews of a particular app by  day, along with the app's version update information. |
| Apps List | Retrieves app metadata, such as app name, publisher, categories, description, screenshots, rating, etc. |
| App Reviews | Retrieves user reviews with information such as the review's content, rating, username, App ID, version, date, tags, and more. |
| App Update Timeline | Retrieves a detailed app update history for a particular app, with information such as update version, summary, price, description, and screenshots.  |
| Category History | Retrieves historical ranking information for a particular app, category, and chart type. |
| Category Rankings | Retrieves today's category ranking summary for a particular app with data on chart type, category, and rank. |
| Current Keywords | Retrieves a list of filtered and unfiltered keywords for any app on the Google Play / App Store. |
| iOS Visibility Scores | Retrieves historical visibility information for a particular app and country (iOS only), ordered by descending date. |
| Keyword Rankings | Retrieves a summary of the keywords that you are currently tracking for a particular app that you own or manage. Information includes keyword traffic, ranking difficulty, trend, and current rank. |
| Sales Report | Retrieves a detailed sales report of your apps by country and date, with information such as downloads, revenues, app store views, in-app purchases, and active devices. |
| Sales Estimate Report | Retrieves a detailed sales estimate report. |
| Top Ranking Apps | Retrieves a list of the top ranking apps on a specific category and chart type. |
| User Apps | Retrieves detailed information on the iOS and Android apps that you own or currently have access to. |

 |
| Operating System | Select whether you want to retrieve data for Android or iOS. |
| How Do You Want to Enter your App ID? | Select **Discovery** if you want to search for available app IDs based on a specified date/date range and category. Select **Manual** if you want to enter an App ID manually. |
| Start Date to Filter App IDs | Select whether you want to search for app IDs for a specific date or a given number of days back (relative).  |
| Start Date | Enter the date for which you want to search for app IDs. |
| Start Days Offset | Enter the number of days back for which you want to search for app IDs. |
| Select Category | Select the name of the category you want to retrieve data for. |
| Enter App IDs | Enter the name of the app ID you want to retrieve data for. Separate multiple app IDs with commas.  |
| Select App IDs | Select the apps you want to retrieve data for. |
| Country | Select the country you want to retrieve data for. |
| Enter the Search Term | Enter the term you want to pull data for in your report. |
| Select Chart Type | Select the chart type you want to retrieve data for. |
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


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

