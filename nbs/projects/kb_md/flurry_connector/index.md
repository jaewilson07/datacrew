---
    title: Flurry Connector
    url: https://domo-support.domo.com/s/article/360043433833
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043433833](https://domo-support.domo.com/s/article/360043433833)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003528
    views: 2,110
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Flurry is a mobile analytics platform that measures mobile app performance for various mobile platforms.  For more information about the Flurry API, visit their website. ([https://developer.yahoo.com/flurry/docs/api/](https://developer.yahoo.com/flurry/docs/api/ "https://developer.yahoo.com/flurry/docs/api/"))


The Flurry connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.   


You connect to your Flurry account in the Data Center. This topic discusses the fields and menus that are specific to the Flurry connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Flurry account and create a DataSet, you must have a Flurry Programmatic Access Token. You can obtain an access code by navigating to [https://developer.yahoo.com/flurry/d...code/apptoken/](https://developer.yahoo.com/flurry/docs/api/code/apptoken/ "https://developer.yahoo.com/flurry/docs/api/code/apptoken/") and following the instructions. 


Connecting to Your Flurry Account
---------------------------------


This section enumerates the options in the  **Credentials**  and  **Details**  panes in the Flurry Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains a single field where you enter your Flurry API Access Code.  For information about obtaining this code, see "Prerequisites," above.


Once you have entered a valid Access Code, you can use the same account any time you go to create a new Flurry DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type.




| Menu | Description |
| --- | --- |
| Report | Select a Flurry report. The following reports are available:

|  |  |
| --- | --- |
| App Events | Returns application events-related data. |
| App Event Parameters | Returns application event parameters data. |
| App Usage | Returns application usage related data. |
| Publisher History | Returns up to 400 days worth of publishing daily, weekly, monthly, quarterly, or yearly data. |
| Publisher Recent | Returns up to 15 days of the most recent hourly or daily data. |
| Real Time | Returns an application's recent data. |

 |
| Metrics | Select all of the metrics you want to show in your report. |
| Having (Optional) | Enter criteria to filter metrics data in your report. You can combine multiple metrics criteria. The format is metric-operator[value(s)]. 
Available operators are: equal(eq), greaterThan(gt), lessThan(lt)
For example:
`sessions-gt[1000],activeDevices-gt[200]`
This essentially filters your report to show "Sessions" values that are greater than 1000 and "Active Devices" values greater than 200. |
| Dimensions | Select all of the dimensions you want to show in your report. |
| Dimension Filters (Optional) | Enter criteria to filter dimensions data in your report. You can combine multiple dimensions criteria. Some dimensions have additional attributes referred to in the **Dimensions** field.The format is dimension1|attribute-operator[value(s)]. Operators include the following:* in
* notin
* contains
* startsWith

Example:
country|name-in['United States','Canada','Mexico'],appVersion|name-in['2.3'] |
| Time Grains | Select whether you want your report data to be aggregated by day, month, week, or all. Intervals must align to the time grain specified in the query. The Flurry connector automatically adjusts the dates to match the interval selected. 

|  |  |
| --- | --- |
| Month | First of the month for both start and end period |
| Week | Dates for Monday of the week for corresponding start and end periods. |
| Quarter | Quarter must start and end on the 1st day of the 1st, 4th, 7th, or 10th month of a year. |
| Year | Year must start on January 1st and end on January 1st. |

 |
| Start Date | Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in **End Date**.  |
| End Date | Specify whether the last date in your date range is a specific or relative date. You select the first date in your range in **Start Date**.  |
| Select Specific Start Date | Select the first date in your date range.  |
| Select Specific End Date | Select the second date in your date range.  |
| Days Back to Start From | Enter the number of the farthest day back that should be represented in the report. Combine with **Days Back to End At** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Days Back to End At | Enter the number of the most recent day back that should be represented in the report. Combine with **Days Back to Start From** to create a range of represented days.
For example, if you entered 10 for **Days Back to Start From** and 5 for **Days Back to End At**, the report would contain data for 10 days ago up until 5 days ago. |
| Application | Select all platforms/applications you want to retrieve data for. |
| Event Name | Select the event you want to retrieve data for.  |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


#### How often can the data be updated?


As often as needed.


#### Are there any API limits I should be aware of?


No.

