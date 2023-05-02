

Intro
-------

NHTSA (National Highway Traffic Safety Administration) is an organization under the U.S. Department of Transportation (DOT). Domo's NHTSA connectors provide access to NHTSA safety information, including locations of child safety seat inspection stations, Civil Penalty Payments collected, complaints submitted, and more. For information about the NHTSA API, visit their page (

https://one.nhtsa.gov/webapi/Default.aspx?Recalls/API/83

).


 There are 4 NHTSA connectors in Domo, all of which are discussed in this article. The first of these is a standard Domo API connector, while the other three are used to pull public datasets (which are discussed in more detail

here

). These connectors are as follows:

 **NHTSA**
 . Provides access to numerous categories of NHTSA data, such as child safety seat inspection information, civil penalty payments, recalls, and so on. This connector lets you choose from a number of reports and configure filters, whereas the others in this list are automatically set to pull a specific report without filters.
* **NHTSA Complaints**
 . Pulls all NHTSA complaint data, with summary, incident date, vehicle make and model, number of injuries, and more.
* **NHTSA Recalls**
 . Pulls all NHTSA recall data, with list of recalls with summary, manufacturer, make and model, and more.
* **NHTSA Safety Ratings**
 . Pulls all NHTSA safety rating data, with a list of safety ratings, such as overall rating, crash ratings, rollover ratings, and more.

You connect to NHTSA reports in the Data Center. This topic discusses the fields and menus that are specific to the NHTSA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

None. Because this data is public, there is no need to enter connection information.


 Connecting to Your NHTSA Account
----------------------------------


 This section enumerates the options in the
 **Details**
 panes in the NHTSA Connector page. (Note these options appear for the NHTSA connector only,
 *not*
 the NHTSA Complaints, Recalls, or Safety Ratings connectors.) The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

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
 Select the NHTSA report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Complaints
  |
 Returns a list of complaints with summary, incident date, vehicle make and model, number of injuries, and more.
  |
|
 All Complaints by Model Year
  |
 Returns a list of complains for a selected model year.
  |
|
 All Recalls
  |
 Returns a list of recalls with summary, manufacturer, make and model, and more.
  |
|
 All Recalls by Model Year
  |
 Returns a list of recalls for a selected model year.
  |
|
 All Safety Ratings
  |
 Returns a list of safety ratings, such as overall rating, crash ratings, rollover ratings, and more.
  |
|
 All Safety Ratings by Model Year
  |
 Returns a list of safety ratings for a selected model year.
  |
|
 Child Safety Seat Inspection Station Locator By Geo Location
  |
 Returns a list of CSSI Stations near the interested geographical location by its latitude and longitude.
  |
|
 Child Safety Seat Inspection Station Locator By State
  |
 Returns a list of CSSI Stations in a given state.
  |
|
 Child Safety Seat Inspection Station Locator By Zip
  |
 Returns a list of CSSI Stations for a given zip code.
  |
|
 Civil Penalty Payments
  |
 Returns a list of civil penalty entries in the repository.
  |
|
 Civil Penalty Payments By Fiscal Year
  |
 Returns a list of civil penalty entries in the repository for a given fiscal year.
  |
|
 Complaints
  |
 Returns a list of complaints for the given model year, make, and model.
  |
|
 Complaints By ODI Number
  |
 Returns a list of complaints for the specified ODI number.
  |
|
 Recalls
  |
 Returns a list of recalls for the given model year, make and model.
  |
|
 Recalls By Campaign Number
  |
 Returns a list of recalls for the specified NHTSA recall campaign number.
  |
|
 Safety Ratings
  |
 Returns a list of safety ratings for the given vehicle variant.
  |

|
|
 Latitude
  |
 Enter the latitude you want to retrieve information for. Only numbers are accepted (e.g.

40.357494

).
  |
|
 Longitude
  |
 Enter the longitude you want to retrieve information for. Only numbers are accepted (e.g.

-111.777995

).
  |
|
 Miles
  |
 Enter the number of miles from the specified
 **Latitude**
 and
 **Longitude**
 for which you want to retrieve information.
  |
|
 Filter by Stations Participating in CPS Week
  |
 Select
 **True**
 if you only want to retrieve data for stations participating in CPS Week. Select
 **False**
 to pull data for all stations.
  |
|
 Filter by Spanish-Speaking Stations
  |
 Select
 **True**
 if you only want to retrieve data for Spanish-speaking stations. Select
 **False**
 to pull data for all stations.
  |
|
 State
  |
 Enter the two-letter abbreviation for the state you want to retrieve information for.
  |
|
 ZIP Code
  |
 Enter the ZIP code for the area you want to retrieve information for.
  |
|
 Fiscal Year
  |
 Enter the fiscal year you want to retrieve information for.
  |
|
 Model Years
  |
 Select the vehicle model year you want to retrieve information for.
  |
|
 Makes for the Model Year
  |
 Select the vehicle make you want to retrieve information for.
  |
|
 Model for the Make and Model Year
  |
 Select the vehicle model you want to retrieve information for.
  |
|
 ODI Number
  |
 Enter the ODI number of the vehicle you want to retrieve information for.
  |
|
 Campaign Number
  |
 Enter the campaign number of the recall you want to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

