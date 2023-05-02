

Intro
-------

NOAA's National Climatic Data Center (NCDC) is responsible for preserving, monitoring, assessing, and providing public access to climate and historical weather data and information.  To learn more about the NOAA Historical Weather API, visit their page (

http://www.ncdc.noaa.gov/cdo-web/webservices/v2

).


 You connect to your NOAA Historical Weather account in the Data Center. This topic discusses the fields and menus that are specific to the NOAA Historical Weather connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your NOAA Historical Weather account and create a DataSet, you must have an NOAA CDO token. For information about obtaining a token, visit this page:

https://www.ncdc.noaa.gov/cdo-web/token

Connecting to Your NOAA Historical Weather Account
----------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the NOAA Historical Weather Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your NOAA Historical Weather account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Token
  |
 Enter your NOAA CDO token. For information about obtaining a token, visit this page:

https://www.ncdc.noaa.gov/cdo-web/token

|


 Once you have entered valid NOAA Historical Weather credentials, you can use the same account any time you go to create a new NOAA Historical Weather DataSet. You can manage connector accounts in the
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
 Select the NOAA Historical Weather report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Annual Summaries
  |
 Returns data about annual land surface observations from around the world.
  |
|
 Daily Summaries
  |
 Returns data about daily land surface observations from around the world.
  |
|
 Data Categories
  |
 Returns a grouping of data types.
  |
|
 Data Types
  |
 Returns a list of data types.
  |
|
 Datasets
  |
 Returns a list of CDO datasets.
  |
|
 Locations Categories
  |
 Returns a grouping of locations.
  |
|
 Locations
  |
 Returns location data.
  |
|
 Monthly Summaries
  |
 Returns data about monthly land surface observations from around the world.
  |
|
 Normals Annual/Seasonal
  |
 Returns the annual and seasonal climate normals. This is computed for the 30-year period from 1981 to 2010.
  |
|
 Normals Daily
  |
 Returns data about the daily climate normals computed from 1981 to 2010.
  |
|
 Normals Hourly
  |
 Returns hourly climate normals that are computed for the 30-year period from 1981 to 2010.
  |
|
 Normals Monthly
  |
 Returns monthly normals that are computed for the 30-year period from 1981 to 2010
  |
|
 Precipitation 15 minute
  |
 Returns data of historical 15-minute precipitation observations.
  |
|
 Precipitation Hourly
  |
 Returns historical hourly precipitation observations.
  |
|
 Stations
  |
 Returns a list of stations.
  |

|
|
 Days Offset
  |
 Enter the number of days back you want to end the report at. Use

0

for today. Combine with
 **Days**
 to create a range of days. For example, if you entered

14

for
 **Days**
 and

7

for
 **Days Offset**
 , the report would include data for a two-week period, ending 7 days before today.
  |
|
 Days
  |
 Enter the number of days to run the report for. Combine with
 **Days Offset**
 to create a range of days. For example, if you entered

14

for
 **Days**
 and

7

for
 **Days Offset**
 , the report would include data for a two-week period, ending 7 days before today.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

