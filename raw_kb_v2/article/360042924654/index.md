

Intro
-------

A latitude-longitude route map is a

latitude-longitude map

in which coordinate points are connected using lines. Two value columns are required. The values in one of these columns is applied to the start points of all given connection lines, and the values in the other are applied to the end points. In the map, differences in the values of start and end points are represented by the thickness of the lines. For example, if a line started out small at the start point of a line and became bigger, this would indicate that the value became larger. If the opposite scenario were true, this would indicate that the value shrank. If the start and end points were the same, the line would have the same thickness throughout.


 In other respects, a latitude-longitude route map is the same as a latitude-longitude map. The provided coordinates and applied filters determine the "zoom" level of the map. For more information about filters, see

Adding Filters to Your Chart

. You can also have multiple distinct routes by uploading an optional series column.


 For information about world maps, see

U.S. County Map

.


 For information about troubleshooting when an area in your map does not show data but there is data, see

Troubleshooting

.


 Understanding latitude-longitude route maps
---------------------------------------------

Latitude-longitude route maps require seven data columns or rows from your DataSet, and you can add an optional eighth column for series data if you want. The required columns or rows are as follows:

 A column or row containing the names of each route line (for example, "Denver-Omaha").
* A column or row containing the source latitude for each route line (that is, the latitude for the starting point in a route line).
* A column or row containing the source longitude for each route line.
* A column or row containing the destination latitude for each route line.
* A column or row containing the destination longitude for each route line.
* A column or row containing the values for each route line's starting point.
* A column or row containing the values for each route line's ending point.

Values are represented in your map by varying point sizes, each size of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet and are represented by a legend, which is automatically included beside the map. Differences in the values of start and end point pairs are represented by the thickness of the line connecting them. If you only want to show routes between points, without worrying about values, you can do so by ensuring that all of the values in your DataSet are set to 0.


 You can break down route lines into color categories by adding an optional eighth column that contains series data. Series data is represented in the map by varying colors of groupings. For example, if the routes in your DataSet were broken down into two different classes, "Group A" and "Group B," the lines and points for Group A would appear orange by default, and the lines and points for Group B would appear blue. The sums for each series are shown in the map legend. If a user clicks on a point in a latitude-longitude route map with series data, the drill table that appears shows all items for that series in the map. For more information about drilling into a chart, see

Drilling into Data

.


 For information about value, category, and series data, see

Understanding Chart Data

.


 Latitudes and longitudes are recognizable by Domo in any of a number of different formats. For a list of accepted formats, see

Formats for latitudes and longitudes

.


 Powering latitude-longitude route maps
----------------------------------------

In the Analyzer, you choose the columns containing the data for your map. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.

##
 Example

The following graphic shows you how data from a typical column-based spreadsheet is converted into a latitude-longitude route map:


###
 Formats for latitudes and longitudes

Domo recognizes latitudes and longitudes written in any of the following formats:


 Format Name
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Signed degrees
  |
 Uses the format "
 `DDD.dddd`
 ." In this format, South latitudes and West longitudes are preceded by a minus sign. Latitudes range from -90 to 90, and longitudes range from -180 to 80.
  |
`41.25, -120.9762`
 |
|
 Degrees minutes seconds
  |
 Uses the format "
 `DDD MM SS`
 + compass direction (
 `N`
 ,
 `S`
 ,
 `E`
 , or
 `W`
 )." Latitudes range from 0 to 90 and longitudes range from 0 to 180. The last degree, minute, or second or a latitude or longitude may contain a decimal portion.
  |
`41 25 01N, 120 58 57W`


`41º25'01"N, 120º58'57"W`


`S17 33 08.352, W69 01 29.74`
 |
|
 Degrees minutes
  |
 Uses the format "
 `DDD MM`
 + compass direction (
 `N`
 ,
 `S`
 ,
 `E`
 , or
 `W`
 )." Latitudes range from 0 to 90 and longitudes range from 0 to 180. The last degree or minute of a latitude or longitude may contain a decimal portion.
  |
`41 25N, 120 58W`


`41º25'N, 120º58'W`


`N41 25.117, W120 58.292`
 |
|
 Degrees only
  |
 Uses the format "
 `DDD`
 + compass direction (
 `N`
 ,
 `S`
 ,
 `E`
 , or
 `W`
 )." Latitudes may range from 0 to 90 and longitudes range from 0 to 180. The last degree of a latitude or longitude may contain a decimal portion.
  |
`41N, 120W`


`41 N, 120 W`


`41ºN, 120ºW`


`N41.092, W120.8362`
 |

Customizing latitude-longitude route maps
-------------------------------------------

You can customize the appearance of a latitude-longitude route map by editing its
 **Chart Properties**
 . Properties for all chart types are listed and described in

Chart Properties

. Unique properties of latitude-longitude route maps include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Routes > Symbol Color
  |
 Allows you to set the color for map points and connection lines. The default is orange. If your map contains a series column, colors are determined automatically—setting this property in this case has no effect.
  |
 —
  |
|
 Routes > Straight Routes
  |
 When checked, route lines appear straight instead of curved (which is the default). In the first example at right, route lines appear curved; in the second example they appear straight.
  |


 |
|
 Routes > Symbol Transparency
  |
 Determines the transparency for connection lines. You can select any value from "none" (totally opaque) to 80% (almost transparent). The default is "none." In the first example at right, the transparency has been set to "none"; in the second example, it has been set to 80%.
  |


 |
|
 Scale > Use Log Scale
  |
 Allows you to convert your map scale to a logarithmic scale.
  |
 —
  |
|
 Background > Color
  |
 Lets you choose the lightness of the background. The default is
 **Very Light**
 . The example shows a map in which the background lightness has been set to
 **Medium**
 .
  |

|

Aggregating rows
------------------

You can aggregate like rows in a latitude-longitude route map, and the map points reflect the aggregated values. In the following example, the user uploads a DataSet with two rows for "Berlin-Paris."

In the map, the individual "Route 2" values for "Berlin-Paris" are aggregated, and the corresponding map point (located near "Paris") is sized larger accordingly.

Drilling from map to map
--------------------------

As with state maps and standard latitude-longitude maps that represent U.S. cities, you enable "zoomability" on routes in a latitude-longitude route map by adding the same map as a drill layer. For example, if you had a route connecting San Antonio and Dallas, you could create a drill layer. A user clicking on the route would then be taken to a zoomed-in view of the route within the state of Texas. This works
 *only*
 for routes located entirely inside of the United States.


 For more information about adding drill layers to a chart, see

Adding Drill Path to Your Chart

.

