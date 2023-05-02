

Intro
-------

Mist is an AI-driven wireless platform that allows companies to simplify wireless operations and/or deliver value-add location services, such as push advertising, wayfinding, visitor analytics, and asset tracking. To learn more about the Mist API, visit their page (

https://api.mist.com/api/v1/docs/Home

).


 You connect to your Mist account in the Data Center. This topic discusses the fields and menus that are specific to the Mist connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your Mist account and create a DataSet, you must have a Mist username and password.


 Connecting to Your Mist Account
---------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Mist Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Mist account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Mist account.
  |
|
 Password
  |
 Enter the password for your Mist account.
  |


 Once you have entered valid Mist credentials, you can use the same account any time you go to create a new Mist DataSet. You can manage connector accounts in the
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
 Select the Mist report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Detail Asset Stats
  |
 Returns asset statistics details for a particular record.
  |
|
 Discovered BLE Assets
  |
 Returns a list of discovered BLE beacons.
  |
|
 Historical Clients
  |
 Returns client data for the specified scope.
  |
|
 Historical Client Stats
  |
 Returns client statistics details for the specified client Mac.
  |
|
 Historical data for Captive Portal Logins
  |
 Returns a list of all portal logic data for the specified scope.
  |
|
 Historical User Sessions for a Map
  |
 Returns user session history for the specified map.
  |
|
 Historical User Sessions for a Zone
  |
 Returns user session history for the specified zone.
  |
|
 Historical Zone Sessions for a User
  |
 Returns zone session history for the specified user.
  |
|
 Historical Zone Analytics
  |
 Returns zone history analytics data for the specified zone.
  |
|
 SDK and Wi-Fi clients in a Zone
  |
 Returns zone statistics details for the specified zone.
  |
|
 Unconnected Client Stats
  |
 Returns all unconnected client statistics details for the specified map.
  |
|
 Wireless Client Stats
  |
 Returns all wireless client statistics details.
  |
|
 Zone and Virtual Beacon Analytics
  |
 Returns all the analytics data based on the geofence type selected.
  |

|
|
 Sites
  |
 Select the sites you want to retrieve data for.
  |
|
 Asset Stats
  |
 Select the asset stats you want to retrieve data for.
  |
|
 Maps
  |
 Select the maps you want to retrieve data for.
  |
|
 Hostnames
  |
 Select the hostnames you want to retrieve data for.
  |
|
 Start Date
  |
 Select the start date for your report data.
  |
|
 End Date
  |
 Select the end date for your report data.
  |
|
 Clients
  |
 Select the clients you want to retrieve data for.
  |
|
 Interval
  |
 Enter the desired interval for your report data in seconds (default is

3600

).
  |
|
 Metrics
  |
 Enter the metrics you want to retrieve data for, separated by commas. You can choose from any of the following metrics:
 * bytes
* rx\_bytes
* tx\_bytes
* rssi
* location
* rssi-min
* rssi-max
* client-assoc-latency
* client-dhcp-latency
 |
|
 Range
  |
 Enter the desired time range for the report in seconds.
  |
|
 Client Types
  |
 Select the client types you want to retrieve data for.
  |
|
 Zones
  |
 Select the zones you want to retrieve data for.
  |
|
 Geofence Type
  |
 Select the geofence type you want to retrieve data for.
  |
|
 Context
  |
 Enter the vb/zone, map, or site level for the geofence type.
  |
|
 Context ID
  |
 Enter the zone, vb, map, or site ID.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see


 Adding a DataSet Using a Data Connector


 .

