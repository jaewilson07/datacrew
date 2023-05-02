

Intro
=======

Weathernews' Weather Data API provides weather data that can be used for a variety of businesses. For example, in the retail industry, the ability to analyze in detail the relationship between weather conditions around a store and the number of customers and sales enables advanced business optimization and marketing.


 You connect to your Weathernews account in the Data Center. This topic discusses the fields and menus that are specific to the Weathernews connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
===============

To connect to your Weathernews account and create a DataSet, you must have the following:

 The API Key for your Weathernews Account.

API Keys can be obtained by signing up for

WxTech®

service.


 Connecting to Your Weathernews Account
========================================

This section enumerates the options in the Credentials and Details panes in the Weathernews Connector page. The components of the other panes in this page, Scheduling and Name & Describe Your DataSet, are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


 Credentials Pane
------------------

This pane contains fields for entering credentials to connect to your Weathernews account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter your Weathernews API Key.
  |

For information about obtaining these credentials, see


**Prerequisites**


 above.


 Once you have entered valid Weathernews credentials, you can use the same account any time you go to create a new Weathernews DataSet. You can manage connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


 Details Pane
--------------

This pane contains a primary


**Reports**


 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
| **1km メッシュ ピンポイント天気予報 - 短期予報(1時間ごと72時間)**  |
 Obtains the weather forecast for the specified latitude and longitude. Retrieves hourly weather forecast data for the next 72 hours, calculated on a 1 km grid based on latitude and longitude.
  |
| **1km メッシュ ピンポイント天気予報 - 中期予報(1日ごと10日間)**  |
 Obtains the weather forecast for the specified latitude and longitude. Retrieves 10-day daily weather forecast data calculated for each 1 km grid based on latitude and longitude.
  |
| **1km メッシュ 過去天気データ**  |
 Retrieves historical weather data for a 1 km mesh containing the specified latitude and longitude. For historical data, data since 2018-01-01 is supported. As for the observation frequency, the data for this period are those observed at 1-hour intervals. The latitude and longitude that can be specified are limited to within Japan. Note that data may be missing for various reasons, which may result in missed observations. This includes cases of failure such as periodic maintenance or equipment failure. Values are expressed as -999 or -9999 in areas where no data exist.Data for the previous day is updated at 3 AM JST.

*Date**


 parameter is required.
  |

|
|
 Lat
  |
 Specify the latitude of the location from which weather forecast data or historical weather data will be retrieved. The range that can be specified is limited to within Japan.
  |
|
 Lon
  |
 Specify the longitude and latitude of the location from which weather forecast data or historical weather data will be retrieved. The range that can be specified is limited to within Japan.
  |
|
 Date
  |
 When retrieving the


**1km メッシュ 過去天気データ**


 report, specify the date to be retrieved.

However, please note that an error will occur if today's date is specified due to API specifications.*

Select in


**Date Type**


 from the followings whether the report data is for a specific date or for a relative number of days back from today:


|  |  |
| --- | --- |
|
 Single date
  |
 Select the specific or relative single date.
  |
|
 Date range
  |
 Select the specific or relative date range.
  |
|
 Time period
  |
 Select the time period from


 Time period dropdown for your report.
  |


 |
|
 Date - Date
  |
 Select in


**Date Type**


 from the followings whether the report data is for a specific date or for a relative number of days back from today:


|  |  |
| --- | --- |
|
 Relative
  |
 Enter the number of days back that you would like to get data for in the


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Specific
  |
 Select the specific date using the date selector in the


**Date**


 field.
  |

|
|
 Date - Start Date
  |
 Select in


**Date Type**


 from the followings:


|  |  |
| --- | --- |
| **Relative**  |
 Enter the number of days back that you would like to get data from (start day). Combine with


**End Date**


 to create a range of represented days.

For example, if you entered


`10`


 for


**Start Date**


 and


`5`


 for


**End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
| **Specific**  |
 Select the first date in your date range using the date selector.
  |

|
|
 Date - End Date
  |
 Select in


**Date Type**


 from the followings:


|  |  |
| --- | --- |
|
 Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with


**Start Date**


 to create a range of represented days.


 For example, if you entered


`10`


 for


**Start Date**


 and


`5`


 for


**End Date**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Specific
  |
 Select the last date in your date range using the date selector.
  |

|
|
 Date - Time period
  |
 Choose the time period for which you would like to receive data.
  |

Other Panes
-------------

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the Weathernews API does this connector use?

This connector uses version 1 of the Weathernews API.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 1km メッシュ ピンポイント天気予報 - 短期予報(1時間ごと72時間)
  | `/api/v1/ss1wx`  |
|
 1km メッシュ ピンポイント天気予報 - 中期予報(1日ごと10日間)
  | `/api/v1/ss1wx`  |
|
 1km メッシュ 過去天気データ
  | `/api/v1/ss1wx`  |


####
 Are there any API limits that I need to be aware of?

API is set to be called up at most 50 times per second for each API Key. Please note that


**1km メッシュ 過去天気データ**


 requires API calls for a number of days.

###
 How frequently does my data update?


* 1km メッシュ ピンポイント天気予報 - 短期予報(1時間ごと72時間)

Your data can be retrieved every hour.

 1km メッシュ ピンポイント天気予報 - 中期予報(1日ごと10日間)

Your data can be retrieved every day.

 1km メッシュ 過去天気データ

Your data can be retrieved every day. Yesterday's data will be updated at 3:00 AM Japan time.

