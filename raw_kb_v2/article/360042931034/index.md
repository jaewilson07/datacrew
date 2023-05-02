

Intro
-------


 The United States Geological Survey is a scientific agency of the United States government. The scientists of the USGS study the landscape of the United States, its natural resources, and the natural hazards that threaten it.

To find out more about USGS' API, see

https://earthquake.usgs.gov/fdsnws/event/1/

.


 There are two versions of this connector in Domo, this standard version and an advanced version. The standard version only allows you to retrieve data for a selected range of time, while the advanced version also lets you filter by earthquake magnitude as well as provide a start and end date for your data. To learn about the advanced version, see

USGS Advanced Connector

.


 You connect to your USGS Earthquakes account in the Data Center. This topic discusses the fields and menus that are specific to the USGS Earthquakes connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector gives you the when, where, and magnitude for recent earthquake activity (as far back as 1 month).
  |
|
**Primary Metrics**
 | * Earthquake Time
* Earthquake Place
* Earthquake Magnitude
 |
|
**Primary Company Roles**
 | * HR event planning roles
* Facilities roles
* Sales Analytics
* Director of Operations
* Manufacturing Planners
* Retail Purchasers
* Social Media Managers
 |
|
**Average Implementation Time**
 |
 Less than 1 minute
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 1
  |

Prerequisites
---------------

This connector returns public data, so no credentials are required.


 Connecting to Your USGS Earthquakes Account
---------------------------------------------


 This section enumerates the options in the
 **Details**
 pane in the USGS Earthquakes Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Details Pane


 This pane contains a single menu where you select the timeframe for your report.


|

Field

|

Description

|
| --- | --- |
|
 Report
  |
 Select whether you want to retrieve earthquake data for the last hour, day, week, or month.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API restrictions I should be aware of?

No.

