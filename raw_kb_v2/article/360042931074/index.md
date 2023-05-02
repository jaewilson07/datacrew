

Intro
-------

Weather Underground provides national, local and crowd-sourced weather reports. To learn more about the Weather Underground API, visit their page (

https://www.wunderground.com/weather/api/

).


 You connect to your Weather Underground account in the Data Center. This topic discusses the fields and menus that are specific to the Weather Underground connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Weather Underground account and create a DataSet, you must have a Weather Underground API key. To sign up for a key, visit

https://www.wunderground.com/signup?mode=api\_signup

.


 Connecting to Your Weather Underground Account
------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Weather Underground Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Weather Underground account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Weather Underground API key.
  |


 Once you have entered valid Weather Underground credentials, you can use the same account any time you go to create a new Weather Underground DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

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
 Select the Weather Underground report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Current Conditions
  |
 Personal Weather Stations (PWS) Current Conditions returns the current conditions observations for the current record.Current record is the last record reported within 60 minutes.
  |
|
 7 Day History
  |
 Personal Weather Station (PWS) Daily Summary Historical Observations returns the daily summary of daily observations for each day's observations report.
  |
|
 1 Day - Rapid History
  |
 Personal Weather Station (PWS) Rapid Historical Observations returns the daily observations records in rapid frequency as frequent as every 5 minutes.
  |
|
 7 Day - Hourly History
  |


 Personal Weather Stations (PWS) Hourly Historical Observations returns the hourly records for each day's observations report.
  |
|
 PWS Historical Hourly
  |
 5 Personal Weather Stations (PWS) Historical Data returns the historical PWS data for a single date, returning hourly data.
  |
|
 PWS Historical All
  |
 Personal Weather Stations (PWS) Historical Data returns the historical PWS data for a single date, returning hourly data, summary data for the entire day, or both.
  |
|
 PWS Historical Daily
  |
 Personal Weather Stations (PWS) Historical Data returns the historical PWS data for a single date, returning summary data for the entire day.
  |
|
 Daily Forecast (5 Day)
  |
 This returns weather forecasts starting current day.
  |

|
|
 Filter
  |
 Select the filter you want to use to filter your report data.
  |
|
 Zip Code
  |
 Enter the zip code you want to retrieve data for.
  |
|
 Forecast Days
  |
 Select the number of days you want to appear in your report, either
 **3 Days**
 or
 **10 Days**
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

