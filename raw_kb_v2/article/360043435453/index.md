

Intro
-------

Netatmo provides online interfaces and APIs for interacting with and managing its internet-connected devices, such as cameras, thermostats and weather stations. Use Domo's Netatmo connector to retrieve public weather data, device listings, and so on. To learn more about the Netatmo API, visit their page (

https://dev.netatmo.com/

).


 You connect to your Netatmo account in the Data Center. This topic discusses the fields and menus that are specific to the Netatmo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Netatmo account and create a DataSet, you must have a Netatmo username and password.


 Connecting to Your Netatmo Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Netatmo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Netatmo connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Netatmo accounts in Domo) to open the Netatmo OAuth screen where you can enter your Netatmo username and password. Once you have entered valid Netatmo credentials, you can use the same account any time you go to create a new Netatmo DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Netatmo when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Netatmo.


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
 Select the Netatmo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Enterprise - Partner Devices
  |
 Retrieves a list of devices associated with your Enterprise application.
  |
|
 Measurements
  |
 Retrieves selected measurements for weather station or thermostat devices or modules.
  |
|
 Weather - Public Data
  |
 Returns public weather data for a geographic area between the given northeast and southwest coordinate.
  |
|
 Weather Stations - Data
  |
 Returns data from your weather station device(s).
  |
|
 Welcome - Home Data
  |
 Returns information about users' homes and cameras.
  |
|
 Welcome - Home Data - Cameras
  |
 Returns home data, including a list of cameras.
  |
|
 Welcome - Home Data - Persons
  |
 Returns home data, including a list of persons.
  |

|
|
 Device
  |
 Select the ID of the device you want to retrieve data for.
  |
|
 Scale (Aggregation)
  |
 Select how you want your report data to be aggregated.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Latitude Northeast
  |
 Enter the latitude of the northeast corner of the requested area. This should be an integer between -85 and 85 degrees.
  |
|
 Longitude Northeast
  |
 Enter the longitude of the northeast corner of the requested area. This should be an integer between -180 and 180 degrees.
  |
|
 Latitude Southwest
  |
 Enter the latitude of the southwest corner of the requested area. This should be an integer between -85 and 85 degrees.
  |
|
 Longitude Southwest
  |
 Enter the longitude of the southwest corner of the requested area. This should be an integer between -180 and 180 degrees.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

