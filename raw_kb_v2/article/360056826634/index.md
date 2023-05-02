

Intro
-------

The National Water and Climate Center maintains a large database of soil, water, and climate data known as AWDB (air and water database). Use Domo's National Resources Conservation Service Connector to pull data from National Resources Conservation Center API for USA States.


 You create a National Resources Conservation Service DataSet in the Data Center.


 The National Resources Conservation Service connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the National Resources Conservation Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None.


 Creating a National Resources Conservation Service DataSet
------------------------------------------------------------


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
 Select the National Resources Conservation Service report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Central Tendency Data
  |
 Returns the 30-year central tendency (average or median) value(s) for the current normals period. The method takes a Duration in order to retrieve DAILY, MONTHLY, SEMIMONTHLY, or ANNUAL central tendencies.
  |
|
 Central Tendency Peak Data
  |
 Returns the peak 30-year central tendency (average or median) value(s) for the current normals period. The method takes a Duration in order to retrieve DAILY, MONTHLY, SEMIMONTHLY, or ANNUAL central tendencies.
  |
|
 Data
  |
 Returns an array of Data objects that contain the data values for each station requested. The data will be returned in the same order as the stations requested.
  |
|
 Data Inserted Or Updated Since
  |
 Returns data (any duration but HOURLY) for one or more stations, for a single element, for a range of dates, but only returns data that has been inserted or modified since some date that the user specifies.
  |
|
 Elements
  |
 Returns list of Element objects (one for each element defined in the AWDB database).
  |
|
 Forecast Periods
  |
 Returns a list of all forecast periods defined in the AWDB database.
  |
|
 Forecast Points
  |
 Returns one or more forecast points using search criteria such as station ids, state codes, network codes, etc. Any of the parameters that take a list can be null if you don’t want to search by that criteria. If any of the parameters that take a list have more than one item, the search will return forecast points that match any of those items.
  |
|
 Height Depths
  |
 Returns a list of all possible height/depths that are defined in AWDB (returned as a list of HeightDepth objects). Each HeightDepth object consists of a value (positive for a height, and negative for a depth).
  |
|
 Hourly Data
  |
 Returns an array of HourlyData objects that contain the data values for each station requested.
  |
|
 Instantaneous Data
  |
 Returns instantaneous SNOTEL or SCAN data for one or more stations for a single element for a range of dates.
  |
|
 Peak Data
  |
 Returns the annual peak data value for each water year requested, for one or more stations, for a single element. The peak data value is the highest value in each water year (if there are multiple values that equal the highest value, the last one is returned).
  |
|
 Reservoir Metadata Multiple
  |
 Retrieves metadata for several reservoir stations in a single call.
  |
|
 Station Metadata Multiple
  |
 Returns a list of StationMetadata objects that contain the station metadata for each station requested. The metadata will be returned in the same order as the stations requested.
  |
|
 Stations
  |
 Returns a list of strings that are the stationTriplets for the stations which match the search criteria passed in.
  |
|
 Station Elements
  |
 Returns a list of all elements that a station has (or had) data or normals for a specified begin and end date.
  |
|
 Units
  |
 Returns a list of all units defined in the AWDB database. Each item in the returned list will be a unit object that contains the unit code and the name (plural name) of the unit.
  |

|
|
 Select State
  |
 Select the state for which you want to fetch the data.
  |
|
 Network Codes
  |
 The network code of the data to retrieve.
  |
|
 Element Codes
  |
 The element code of the data to retrieve.
  |
|
 Duration
  |
 The time span to retrieve the data for.
  |
|
 Ordinal
  |
 Enter the number that indicates whether the element is from the primary sensor(1), the secondary sensor(2), and so on.
  |
|
 Get Flags
  |
 Choose whether you want to retrieve the flags by selecting either of the True or False values. If true, flags associated with the report will be retrieved and returned, otherwise the flags won’t be returned.
  |
|
 Height Depth Value
  |
 Enter the height/depth for the element of the data to retrieve, or null if the element doesn’t have a height/depth. Use default value 0 (Zero) for passing null.
  |
|
 Central Tendency Type
  |
 Select the type of central tendency values to retrieve. This can be AVERAGE, MEDIAN or NORMAL; where NORMAL will be the default type for the given station and element.
  |
|
 Begin Day
  |
 The first day of the first month for which the central tendencies to be retrieved (1-31).
  |
|
 Begin Month
  |
 The first month of central tendencies to retrieve.
  |
|
 End Day
  |
 The last day of the last month for which the central tendencies to be retrieved (1-31).
  |
|
 End Month
  |
 The last month of central tendencies to retrieve.
  |
|
 Begin Year
  |
 The first water year for which to get the peak data value.
  |
|
 End Year
  |
 The last water year for which to get the peak data value.
  |
|
 Filter
  |
 Filter determines which subset of data to retrieve. This can be ALL to get all values, FIRST OF DAY to get only the first value of each day, or MIDNIGHT ONLY to get only the midnight value of each day requested.
  |
|
 Unit System
  |
 Select the unit code that indicates the units of the calculated forecast values and the period average.
  |
|
 Insert or Update  Begin Date
  |
 Select the date selection format to begin the data insert or update.
  |
|
 Date (Date Selection)
  |
 Select the date selection format.
  |
|
 Single Date - Specific Date
  |
 Select a specific date for which you want fetch the data using the date picker.
  |
|
 Single Date - Relative Date
  |
 Select or enter the number of days for which you would like to receive data back from the current date (which you specify in
 ****Days Back****
 ). For example, enter 0 for today, 1 for yesterday, or 7 for 7 days ago.
  |
|
 Date Range
  |
 Select the start date and end date between which you want the data to be fetched.
  |
|
 Start Date
  |
 Specify whether the start date in your date range is a specific or relative date. Select
 **Specific Date**
 if you want to fetch data for a particular day using the date picker. Select
 ****Relative****
 if you always want the report to retrieve data for a given number of days back from the current date (which you specify in
 ****Days Back****
 ). If you choose
 ****Relative****
 here, you should also choose
 ****Relative****
 for
 ****End Date****
 and specify a value for
 ****Days Back****
 .


 For example, if you enter 10 for
 ****Days Back****
 in Start Date and 5 for
 ****Days Back****
 in End Date and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 End Date - Specific Date
  |
 Specify whether the end date in your date range is a specific or relative date. Select
 **Specific Date**
 if you want to fetch data for a particular day using the date picker. Select
 ****Relative****
 if you always want the report to retrieve data for a given number of days back from the current date (which you specify in
 ****Days Back****
 ). If you choose
 ****Relative****
 here, you should also choose
 ****Relative****
 for
 ****End Date****
 and specify a value for
 ****Days Back****
 .


 For example, if you enter 10 for
 ****Days Back****
 in Start Date and 5 for
 ****Days Back****
 in End Date and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Time Period
  |
 Select the time period for which you would like to receive data.
  |
|
 Starting Day of the Week
  |
 Select whether you want the week to begin by Sunday or Monday while fetching the data.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

