

Intro
-------


 Kontakt.io

Inc. is an industry leader in indoor location services and BLE beacons. It better connects people, locations and things to increase customer satisfaction, saves costs, and improve productivity and safety.

Kontakt.io

is on a mission to simplify the global delivery of location data insights. It offers fleet management software, location and condition services, beacons and gateways to help customers focus on core innovation, reducing costs and time to market. Use Domo’s Kontakt connector to comprehend your dwell times, locations, zones, and more. To learn more about the Kontakt API, visit their page

https://developer.kontakt.io/api-reference/10/

.


 You connect to your Kontakt account in the Data Center. This topic discusses the fields and menus that are specific to the Kontakt connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Kontakt account and create a DataSet, you must have your Kontakt  API key.


 Connecting to Your Kontakt Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Kontakt

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Kontakt

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter the API key associated with your

Kontakt.io

account.
  |


 Once you have entered valid

Kontakt

credentials, you can use the same account any time you go to create a new

Kontakt

DataSet. You can manage connector accounts in the
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
 Select the Kontakt report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Dwell Times
  |
 Returns an hourly aggregation of dwell times within the selected date range. Data updates once per hour.
  |
|
 Entities
  |
 Returns a list of entities.
  |
|
 Locations
  |
 Returns a list of locations.
  |
|
 People At Risk (Beta access only)
  |
 Returns people at risk within the selected date range for the selected entity. Data updates once per day.
  |
|
 Zones
  |
 Returns a list of zones.
  |

|
|
 Date Selection
  |
 Select the date format for your data.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |
|
 Include Sensors
  |
 Check this box if you would like sensor data included with your request.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

