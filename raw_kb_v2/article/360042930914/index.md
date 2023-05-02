

Intro
-------

OpenWeatherMap is an online service that provides weather data, including current weather data, forecasts, and historical data to the developers of web services and mobile applications. To learn more about the OpenWeatherMap API, visit their page (

https://openweathermap.org/api

).


 You connect to your OpenWeatherMap account in the Data Center. This topic discusses the fields and menus that are specific to the OpenWeatherMap connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Common use cases are for...
 * Retailers that need to see how weather impacts sales, and
* Logistics companies that need to understand forecasts and historical weather.


 Basically this connector is great for any organization that relies on weather trends for attendance, product delivery, or outdoor work.
  |
|
**Primary Metrics**
 | * Temperature and precipitation forecasts
* Historical weather patterns
* Likelihood of weather events occurring
* Possibility of extreme events.
 |
|
**Primary Company Roles**
 | * Facilities
* Event planning
* Operations manager
* Program manager
* Sales teams
 |
|
**Average Implementation Time**
 |
 Less than 1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Prerequisites
---------------

To connect to your OpenWeatherMap account and create a DataSet, you must have an OpenWeatherMap API key. You can obtain an API key by doing the following:

. Log into your OpenWeatherMap account.
2. Click the
 **API Keys**
 tab.
3. Copy and paste the default API key into Domo OR use the
 **Create Key**
 option to generate a new key.

Connecting to Your OpenWeatherMap Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the OpenWeatherMap Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your OpenWeatherMap account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your OpenWeatherMap API key. For information about obtaining a key, see "Prerequisites," above.
  |


 Once you have entered valid OpenWeatherMap credentials, you can use the same account any time you go to create a new OpenWeatherMap DataSet. You can manage connector accounts in the
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
 Select the OpenWeatherMap report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Current Weather Data
  |
 Returns current weather data for one location, based on city ID, city name, geographic coordinates (latitude and longitude), or ZIP code.
  |
|
 Current Weather Data for Multiple Cities
  |
 Returns current weather data for several city IDs.
  |
|
 Five-Day Three-Hour Forecast
  |
 Returns a weather forecast for the next five days, at three hour intervals, for one location identified by city ID, city name, or geographic coordinates (latitude and longitude).
  |
|
 Historical Data
  |
 Returns historical weather data for one location identified by city ID, city name, or geographic coordinates (latitude and longitude). Requires a separate paid plan; for more information see

OpenWeatherMap Subscription Pricing

.
  |
|
 Sixteen Day Daily Forecast
  |
 Returns a 16-day weather forecast with daily average parameters for one location identified by city ID, city name, or geographic coordinates (latitude and longitude).
  |
|
 Current Weather by Weather Station
  |
 Returns current weather from one or several weather stations.
  |

|
|
 Choose Location By
  |
 Select whether you want the location for your report to be based on city ID, city name, latitude and longitude, or zip code. For the most accurate results, choose
 **City ID**
 .
  |
|
 City ID
  |
 Enter the City ID. A list of City IDs can be downloaded from

OpenWeatherMap

.
  |
|
 City Name
  |
 Enter the name of the city you want to retrieve data for.
  |
|
 Latitude
  |
 Enter the latitude of the region you want to retrieve data for. This can be a positive or negative number with up to 6 decimal places. Degree-minutes-seconds form is not accepted.
  |
|
 Longitude
  |
 Enter the longitude of the region you want to retrieve data for. This can be a positive or negative number with up to 6 decimal places. Degree-minutes-seconds form is not accepted.
  |
|
 Zip Code
  |
 Enter the ZIP code of the area you want to retrieve data for.
  |
|
 Units
  |
 Select whether to return temperature data in Kelvin, Celsius, or Fahrenheit units.
  |
|
 Search Accuracy
  |
 Select whether to return the one closest match (
 **Accuracy**
 ) or all similar values (
 **Like**
 ).


 For example, if this was set to
 **Accurate**
 and you searched for a city named "Cedar," your report would return data for "Cedar Rapids" (since this is the city determined by the server to be the best match). But if this parameter was set to
 **Like**
 , you would get results for "Cedar City," "Cedar Hills," as well as cities named "Cedar."
  |
|
 Multiple City IDs
  |
 Enter a comma-separated list of City IDs. For example:

524901,703448,2643743

A list of City IDs can be downloaded from

OpenWeatherMap

.
  |
|
 Start Date
  |
 Select the start date for the range of data you want to pull.
  |
|
 End Date
  |
 Select the end date for the range of data you want to pull.
  |
|
 Choose Station By
  |
 Select whether to pull station data for a station ID, a geographic point (based on latitude and longitude), or a rectangular zone.
  |
|
 Station ID
  |
 Enter the ID of the station you want to retrieve data for. You can find station IDs by searching for weather stations using geographic coordinates and noting the IDs in the returned data.
  |
|
 Count
  |
 Enter the expected number of weather stations.
  |
|
 Bounding Box
  |
 Enter the coordinates for the rectangular zone you want to retrieve data for. The format for this is:

[longitude of top left point],[latitude of top left point],[longitude of bottom right point],[latitude of bottom right point],[map zoom level]

.


 For example:

8.87,49.07,65.21,61.26,6

|
|
 Cluster
  |
 Select whether to use server clustering of points.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Double-check the spelling on the city name.
* If using city IDs, make sure the IDs are correct.
* Ensure the free API key is valid.
* If data limits or speed becomes an issue, consider upgrading to a paid plan.


