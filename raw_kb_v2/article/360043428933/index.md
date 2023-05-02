


 In Domo, maps are used to represent numerical data across two or more regions. Maps are accompanied by legends so you can determine the range for each state or country. Various color themes are available for maps; you can change the existing color theme. For more information, see


 Chart Properties


 .

*Video - Map Charts**

The following table lists the types of Maps available in Domo. You can click a thumbnail image to see a larger image.


|
 Map Type
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Country map


 |
 Represents data for states, provinces, subdivisions, and prefectures in any of a number of different countries. Regions in a country may be represented using two-letter abbreviations, full names, or both, depending on the country.


 For more information, see

Country Map

.
  |

|
|
 Continental or regional map
  |
 Represents data for countries within a specific continent or region. Countries in a continent or region may be represented using two-letter ISO 3166-1-alpha-2 codes or full names.


 For more information, see

Continental/Regional Map

.
  |

|
|
 World map

|
 Represents data for world nations. Nations in your DataSet are represented using ISO 3166-1-alpha-2 codes. For a current list of countries and their corresponding codes, see

country codes

.


 For more information, see

World Map

.
  |

|
|
 Latitude-longitude map

|
 Displays data for any region in the world using latitude and longitude coordinates. The region that displays for a DataSet is "zoomed" depending on the given coordinates. For example, if all of the cities in your DataSet were in Germany, the resulting map would show Germany; likewise, if some cities in the DataSet were in Germany and others were in France, the map would be "zoomed out" to show western Europe. Filters you apply to a latitude/longitude map also work this way. For example, if you were in the
 **Details**
 view for a map of the United States and you used Analyzer to show only cities in Washington and California, your map would be updated to show the westmost region of the United States. For more information about applying filters, see

Adding Filters to Your Chart

.


 For more information about latitude/longitude maps, see

Latitude-Longitude Map

.
  |

|
|
 Latitude-longitude route map

|
 A latitude-longitude map in which coordinate points are connected using lines. Two value columns are required; one of these is applied to the start point of a given route line and the other is applied to the end point. In the map, differences in the values of start and end points are represented by the thickness of the lines. In the example at right, all of the start points are set to 0 and the end points are set to the value of the product being shipped. In this way the viewer can see where their most valuable customers are located by looking at the thickness of the lines.

In other respects, a latitude-longitude route map is the same as a latitude-longitude map. The provided coordinates and applied filters determine the "zoom" level of the map. You can also have multiple distinct routes by uploading an optional series column. For example, in the screenshot there are three distinct routes, one colored orange, one colored green, and one colored blue.


 For more information about latitude-longitude route maps, see

Latitude-Longitude Route Map

.
  |

|
|
 U.S. county map

|
 A U.S. county map shows data for U.S. counties at the country level. This type of map requires only two data columns—one with values and the other with county FIPS codes.


 For more information about U.S. county maps, see

U.S. County Map

.
  |

|


