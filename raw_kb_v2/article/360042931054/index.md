

Intro
-------

Weather Source provides a continuum of past, present, and forecast hyper-local global weather data for business intelligence and analytics.  Use the Domo Weather Source connector to obtain access to hyper-local weather data for any point on any landmass in the world and up to 200 miles offshore.  All data is available in hourly or daily format and supports all major weather parameters, including temperature, humidity, precipitation, snowfall, wind, pressure, freezing rain, cloud cover, and more.  Climatology data (the statistics of weather over time) is also available.  To learn more about Weather Source and its products, please visit their website at

www.weathersource.com

. To learn more about the Weather Source API, visit their page (

https://developer.Weather Source.com/documentation/

).


 You connect to your Weather Source account in the Data Center. This topic discusses the fields and menus that are specific to the Weather Source connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for obtaining industry leading past, present and forecast hyper-local global weather data for any point in the world or geographic areas such as ZIP or postal codes.
  |
|
**Primary Metrics**
 |
 N/A
  |
|
**Primary Company Roles**
 | * Any business unit within an organization that is looking to correlate weather data with business performance for meaningful business intelligence.
* Any individual or business requiring weather data that is tied to a specific location, region, or geographic area.
 |
|
**Average Implementation Time**
 |
 ~10 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your Weather Source account and create a DataSet, you must have a Weather Source API key. A key is generated for you when you sign up for a Weather Source account.


 Connecting to Your Weather Source Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Weather Source Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Weather Source account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Weather Source API key. You receive an API key when you sign up for a Weather Source account.
  |


 Once you have entered valid Weather Source credentials, you can use the same account any time you go to create a new Weather Source DataSet. You can manage connector accounts in the
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
 Select the Weather Source report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns the authenticated user's account settings.
  |
|
 Astronomy by Latitude & Longitude
  |
 Returns the astronomy (such as sunrise and sunset times) for a specified latitude and longitude and time period.
  |
|
 Astronomy by Postal Code
  |
 Returns the astronomy (such as sunrise and sunset times) for a specified postal code and time period.
  |
|
 Forecast by Latitude & Longitude
  |
 Returns forecast data for a specified latitude and longitude.
  |
|
 Forecast by Postal Code
  |
 Returns forecast data for a specified postal code.
  |
|
 History by Latitude & Longitude
  |
 Returns the weather history for a specified latitude and longitude and time period. Available for 2013 onward.
  |
|
 History by Postal Code
  |
 Returns the weather history for a specified postal code and time period. Available for 2013 onward.
  |

|
|
 Enter Latitude Location
  |
 Enter the latitude for the location you want to see data for. This should be a decimal latitude value between 0 and 90. For example:

32.7153
  |
|
 Enter Longitude Location
  |
 Enter the longitude for the location you want to see data for. This should be a decimal longitude value between -180 (West) and 180 (East). For example:

-117.5134
  |
|
 Period to Use
  |
 Specify whether you want data in your report to be broken down by hour or day.
  |
|
 Start Date
  |
 Select the start date for the data you want to see in your report.
  |
|
 End Date
  |
 Select the end date for the data you want to see in your report.
  |
|
 Select Country
  |
 Select the country you want to return data for.
  |
|
 Enter Zip Code
  |
 Enter a comma-delimited list of the ZIP codes you would like to use. Partial US ZIP codes are allowed, which will be expanded to include all US ZIP codes beginning with that partial ZIP code.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

