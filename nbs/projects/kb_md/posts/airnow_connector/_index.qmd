---
title: AirNow Connector
url: https://domo-support.domo.com/s/article/4406661839895
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/4406661839895](https://domo-support.domo.com/s/article/4406661839895)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000003222
views: 1,077
created_date: 2022-10-24 21:11:00
last updated: 2022-10-24 22:39:00
---



Intro
-----


AirNow receives real-time air quality observations from over 2,000 monitoring stations and collects forecasts for more than 300 cities around North America. Use Domo's AirNow Connector to access these air quality observations and forecasts through Domo.


You create an AirNow DataSet in the Data Center.


The AirNow Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking **Cloud App** in the toolbar at the top of the window.


You connect to your AirNow account in the Data Center. This topic discusses the fields and menus that are specific to the AirNow  Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).




|  |  |
| --- | --- |
| **Primary Use Cases** | This Connector lets you retrieve the real-time data about the air quality observations. |
| **Primary Metrics** | * Observations and forecasts by longitude/latitude
* Observations and forecasts by zip code
* Historical observations
* Monitoring site by geographical bounding box
 |
| **Primary Company Roles** | * Disaster management department
* Weather control department
* Any business unit within an organization looking to correlate weather data with business performance for meaningful business intelligence
* Any individual or business requiring weather data that is tied to a specific location, region, or geographic area
 |
| **Average Implementation Time** | Less than 10 mins |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 2 |


Prerequisites
-------------


To connect to your AirNow account and create a DataSet, you must have your AirNow API key.


You can request your API Key at <https://docs.airnowapi.org/account/request/>


Connecting to Your AirNow Account
---------------------------------


This section enumerates the options in the Credentials and Details panes in the AirNow Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


### Credentials Pane


This pane contains fields for entering credentials to connect to your AirNow account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter your AirNow Api key. You can request your API Key at <https://docs.airnowapi.org/account/request/> |


Once you have entered valid AirNow credentials, you can use the same account any time you go to create a new AirNow DataSet. You can manage Connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054).


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the AirNow report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Current Observations by Reporting Area by Latitude/Longitude | Takes a latitude, longitude, and distance (optional) and returns the current air quality observations. |
| Current Observations by Reporting Area by Zip code | Takes a Zip code and distance (optional) and returns the current air quality observations. |
| Forecasts by Latitude/Longitude | Takes a latitude, longitude, date (optional), and distance (optional) and returns the air quality forecast. |
| Forecasts by Zip code | Takes a Zip code, date (optional), and distance (optional) and returns the air quality forecast. |
| Historical Observations by Reporting Area by Latitude/Longitude | Takes a latitude, longitude, date, and distance (optional) and returns the peak air quality observation for that date. |
| Historical Observations by Reporting Area by Zip code | Takes a Zip code, date, and distance (optional) and returns the peak air quality observation for that date. |
| Observations by Monitoring Site by Geographical bounding box | Takes a geographic bounding box, start and end date/times (optional), list of parameters, data type (AQI or concentration), and returns observational data by monitoring site |

 |
| Zip Code | Enter the zip code. |
| Distance | Enter the distance. |
| Latitude | Enter the latitude value. |
| Longitude | Enter the longitude value. |
| UTC for Start Date | Enter the UTC time for start date. |
| UTC for End Date | Enter the UTC time for end date. |
| Northern Border | Enter the value for northern border. Max value is 180 and min value is -180. |
| Western Border | Enter the value for western border. Max value is 90 and min value is -90. |
| Eastern Border | Enter the value for eastern border. Max value is 90 and min value is -90. |
| Southern Border | Enter the value for southern border. Max value is 180 and min value is -180. |
| Parameters | Enter the parameters. |
| Monitor Type | Select whether you want the permanent monitors, mobile monitors, or all monitor types. |
| Data Type | Select the data type (AQI, Concentrations, or both.) |
| Verbose | Specify whether you want to use verbose. |
| Include Raw Concentration | Specify whether you want to include raw concentration. |
| Date Selection | Select the date format for your data. |
| Single Date | Select whether the report data is for a specific date or for a relative number of days back from today. |
| Specific Date | Select the specific date using the date selector. |
| Relative Date | Enter the number of days back that you would like to get data for in the **Days Back** field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past. |
| Date Range | Select the specific or relative date range. |
| Start Date - Specific | Select the first date in your date range using the date selector. |
| End Date - Specific | Select the last date in your date range using the date selector. |
| Start Date - Relative | Enter the number of days back that you would like to get data from (start day). Combine with ********End Date******** to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |
| End Date - Relative | Enter the number of days back that you would like to get data to (end day). Combine with ********Start Date********to create a range of represented days.
For example, if you entered 10 for ********Start Date******** and 5 for ********End Date********, the report would contain data for 10 days ago up until 5 days ago. |


### Other Panes


For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

