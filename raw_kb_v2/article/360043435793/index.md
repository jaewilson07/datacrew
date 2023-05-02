

Intro
-------

Neurio is a residential electricity usage monitoring service. Using smart devices installed in the home, Neurio can report your energy usage through a web-based dashboard. To learn more about the Neurio API, visit their page (

https://api-docs.neur.io/

).


 You connect to your Neurio account in the Data Center. This topic discusses the fields and menus that are specific to the Neurio connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Neurio account and create a DataSet, you must have the email address and password you use to log into Neurio.


 Connecting to Your Neurio Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Neurio Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Neurio connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Neurio accounts in Domo) to open the Neurio OAuth screen where you can enter your Neurio credentials. Once you have entered valid Neurio credentials, you can use the same account any time you go to create a new Neurio DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Neurio when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Neurio.


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
 Select the Neurio report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Appliances
  |
 Returns data about Neurio appliances for a specified location.
  |
|
 Appliance Events
  |
 Returns data about Neurio appliance events for a specified location.
  |
|
 Appliance Statistics for a Specific Appliance
  |
 Returns statistical data for a specific Neurio appliance within a given time range.
  |
|
 Appliance Statistics by Location
  |
 Returns statistical data for appliances in a specified location within a given time range.
  |
|
 Energy Statistics
  |
 Returns statistics for energy consumed within a given time interval.
  |
|
 Last Sample
  |
 Returns the last sample returned by a given sensor.
  |
|
 Recent Appliance Events
  |
 Returns data about appliance events created or updated after a specified time.
  |
|
 Recent Samples
  |
 Returns recent samples, one sample per second for up to the last 2 minutes.
  |
|
 Samples
  |
 Returns a given sensor's samples for a specified time period.
  |
|
 Specific Appliance
  |
 Returns data about a specified Neurio appliance.
  |

|
|
 Location ID
  |
 Enter the ID for the location you want to retrieve data for.
  |
|
 Sensor ID
  |
 Select the sensor you want to retrieve data for.
  |
|
 Appliance ID
  |
 Select the appliance you want to retrieve data for.
  |
|
 Granularity
  |
 Select how you want the data in your report to be broken down. For example, if you choose
 **Days**
 , the data will be broken down by day.
  |
|
 Frequency
  |
 Enter the frequency of the sampled data. This should be a multiple of 5 when using
 **Minutes**
 granularity.
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

