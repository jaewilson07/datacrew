

Intro
-------

The National Aeronautics and Space Administration, or NASA, is an independent agency of the United States Federal Government responsible for the civilian space program as well as aeronautics and aerospace research.  To learn more about the NASA API, visit their page (

https://api.nasa.gov/

).


 You connect to NASA's API in the Data Center. This topic discusses the fields and menus that are specific to the NASA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to the NASA API and create a DataSet, you must have a NASA API key. To request an API key, visit

https://api.nasa.gov/index.html#apply-for-an-api-key

.


 Connecting to the NASA API
----------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the NASA Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to the NASA API. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your NASA API key. To request an API key, visit

https://api.nasa.gov/index.html#apply-for-an-api-key

.
  |


 Once you have entered valid NASA credentials, you can use the same account any time you go to create a new NASA DataSet. You can manage connector accounts in the
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
 Select the NASA report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Astronomy Picture of the Day
  |
 Returns data about the Astronomy Picture of the Day.
  |
|
 Coronal Mass Ejection
  |
 Returns coronal mass ejection (CME) data for the given time period.
  |
|
 Geomagnetic Storm
  |
 Returns geomagnetic storm (GST) data for the given time period.
  |
|
 Interplanetary Shock
  |
 Returns interplanetary shock (IPS) data for the given time period.
  |
|
 Solar Flare
  |
 Returns solar flare (FLR) data for the given time period.
  |
|
 Solar Energetic Particle
  |
 Returns solar energetic particle (SEP) data for the given time period.
  |
|
 Magnetopause Crossing
  |
 Returns magnetopause crossing (MPC) data for the given time period.
  |
|
 Radiation Belt Enhancement
  |
 Returns radiation belt enhancement (RBE) data for the given time period.
  |
|
 High Speed Stream
  |
 Returns high speed stream (HSS) data for the given time period.
  |
|
 WSA + ENLIL Simulation
  |
 Returns WSA + ENLIL simulation data for the given time period.
  |
|
 Notifications
  |
 Returns all notifications for the given time period.
  |

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

