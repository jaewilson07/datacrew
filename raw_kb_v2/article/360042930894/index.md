

Intro
-------

You can use Domo's NOAA Weather connector to retrieve a weather forecast or current observations for a specified latitude and longitude from the public National Oceanic and Atmospheric Administration (NOAA) data.


 You create an NOAA Weather DataSet in the

Data Center

.


 The NOAA Weather connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the NOAA Weather connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None


 Creating an NOAA Weather DataSet
----------------------------------


###
 Details Pane


####
 Report

There are two types of reports to choose from:

. The
 **Forecast**
 report returns future forecast weather data at either a daily or hourly period.
2. The
 **Current Observations**
 report returns 1 row of the last recorded values for a specific weather station.


####
 Latitude and Longitude

Provide the latitude and longitude for the coordinates you would like to return data for.


**Tip:**
 These fields will only handle positive and negative numbers. Adding an N at the end of your latitude will case an error. (Ex: 40.3452 N)

###
 Weather Station

You must select a weather station when choosing the current observations report. The weather station drop-down list is populated with the closest stations to the latitude and longitude provided.

##
 Other Panes

Then, schedule updates for your new DataSet in the
 **Scheduling**
 pane. For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

