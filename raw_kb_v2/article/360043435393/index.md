

Intro
-------

The Google Directions API is a service that calculates directions between locations using an HTTP request. You can search for directions for several modes of transportation, including transit, driving, walking, or cycling. Directions may specify origins, destinations, and waypoints either as text strings (e.g.

Chicago, IL

or

Darwin, NT, Australia

) or as latitude/longitude coordinates. The Directions API can return multi-part directions using a series of waypoints.


 You connect to Google Directions account in the Data Center. This topic discusses the fields and menus that are specific to the Google Directions connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None


 Connecting to Google Directions
---------------------------------


 This section enumerates the options in the
 **Details**
 pane in the Google Directions Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###
 Details Pane

This pane contains a number of options for specifying the data you want to retrieve into Domo.


 Menu
  |
 Description
  |
| --- | --- |
|
 Origin
  |
 Enter the origin. This can be a place name or latitude and longitude coordinates. Ensure that no space exists between the latitude and longitude values.
  |
|
 Destination
  |
 Enter the destination. This can be a place name or latitude and longitude coordinates. Ensure that no space exists between the latitude and longitude values.
  |
|
 Sensor
  |
 Select
 **Yes**
 if the device has a location sensor.
  |
|
 Mode
  |
 Select the travel mode you want to pull data for. If you select
 **Transit**
 , be sure to enter a time in either the
 **Departure Time**
 or
 **Arrival Time**
 field.
  |
|
 Alternatives
  |
 Select whether you want your route to include alternate routes.
  |
|
 Waypoints (Optional)
  |
 Enter waypoints you would like to appear in your route, separated by the pipe '|' character (for example:

Charlestown,MA|Lexington,MA

).
  |
|
 Avoid
  |
 Select whether you want to avoid ferries, highways, or tolls in your route. You can also choose to select
 **All**
 or
 **None**
 .
  |
|
 Unit
  |
 Select whether to show metric or imperial units in your report.
  |
|
 Departure Time (Optional)
  |
 Enter the estimated departure time. The accepted format is

dd/MM/YYYY hh:mm AM/PM.

For example:

01/09/2014 6:55 PM

.
  |
|
 Arrival Time (Optional)
  |
 Enter the estimated arrival time. The accepted format is

dd/MM/YYYY hh:mm AM/PM.

For example:

01/09/2014 6:55 PM

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

