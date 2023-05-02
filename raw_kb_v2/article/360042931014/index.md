

Intro
-------


 The United States Geological Survey is a scientific agency of the United States government. The scientists of the USGS study the landscape of the United States, its natural resources, and the natural hazards that threaten it.

Use Domo's USGS Earthquakes connector to retrieve earthquake data for the last hour, day, week, or month. To find out more about USGS' API, see

https://earthquake.usgs.gov/fdsnws/event/1/

.


 There are two versions of this connector in Domo, a standard version and this advanced version. The standard version only allows you to retrieve data for a selected range of time, while the advanced version also lets you filter by earthquake magnitude as well as provide a start and end date for your data. To learn about the standard version, see

USGS Earthquakes Connector

.


 You can build USGS Advanced DataSets in the Data Center. This topic discusses the fields and menus that are specific to the USGS Earthquakes connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector lets you pull feed data for a selected earthquake magnitude and time period as well as retrieve data filtered by state and end date and/or minimum and maximum magnitude.
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
 2
  |

Prerequisites
---------------

This connector returns public data, so no credentials are required.


 Connecting to Your USGS Advanced Account
------------------------------------------


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


 This pane contains various menus in which you specify what data you want to retrieve


|

Field

|

Description

|
| --- | --- |
|
 Report
  |
 Select the desired report type.


|  |  |
| --- | --- |
|
 Query
  |
 Retrieves earthquake data based on your specifications.
  |
|
 Feed
  |
 Retrieves earthquake data from a feed updated regularly.
  |

|
|
 Start Date
  |
 Select the first date in your desired date range from the date picker.
  |
|
 End Date
  |
 Select the last date in your desired date range from the date picker.
  |
|
 Minimum Magnitude
  |
 Enter the minimum earthquake magnitude you want to show in your report.
  |
|
 Maximum Magnitude
  |
 Enter the maximum earthquake magnitude you want to show in your report.
  |
|
 Earthquake Size
  |
 Select the earthquake size you want to retrieve data for.
  |
|
 Time Period
  |
 Select the time range you want to show data for.
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

