

Intro
-------

A latitude-longitude map displays data for any region in the w


 orld using latitude and longitude coordinates. The region that displays for a DataSet is "zoomed" in or out depending on the given coordinates. For example, if all of the cities in your DataSet were in Germany, the resulting map would show Germany; likewise, if some cities in the DataSet were in Germany and others were in France, the map would be "zoomed out" to show western Europe. Filters you apply to a latitude/longitude map also work this way. For example, if you were in the Details view for a map of the United States and you used Analyzer to show only cities in Washington and California, your map would be updated to show the westmost region of the United States. For more information about applying filters, see

Adding Filters to Your Chart

.


 This type of map is almost the same as the

latitude-longitude route map

. The difference is that points in a latitude-longitude route map are connected to form routes. These maps are more complex than standard latitude-longitude maps, requiring seven columns or rows of data.


 For information about world maps, see

U.S. County Map

.


 For information about troubleshooting when an area in your map does not show data but there is data, see

Troubleshooting

.


**Video - Map Charts**


 Understanding latitude-longitude maps
---------------------------------------

Latitude-longitude maps require four data columns or rows from your DataSet, though you can add an optional fifth column for series data if you want. One column or row contains the latitudes of the points you want to plot, one contains the longitudes, one contains the values that correspond with each latitude-longitude pairing, and one contains text for the hover label that appears for each point. Maps also include permanent data labels for specific cities. These are
 *not*
 determined by your DataSet—they are included automatically based on the region. For this reason, it is possible your map may include points that do not have data labels. However, all points have hover text.


 Values are represented in your map by varying point sizes, each size of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet and are represented by a legend, which is automatically included beside the map.


 If you want, you can add an optional fifth column that contains series data, which is represented in the map by varying colors of map points. For example, if the cities in your DataSet were broken down into two different classes, "A" and "B," the points within class "A" would appear orange by default, and the points within class "B" would appear blue. The sums for each series are shown in the map legend. If a user clicks on a point in a latitude-longitude map with series data, the drill table that appears shows all items for that series in the map. For more information about drilling into a chart, see

Drilling into Data

.


 For information about value, category, and series data, see

Understanding Chart Data

.


 Latitudes and longitudes are recognizable by Domo in any of a number of different formats. For a list of accepted formats, see

Formats for latitudes and longitudes

.


 Powering latitude-longitude maps
----------------------------------

In the Analyzer, you choose the columns containing the data for your map. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.

##
 Example

The following graphic shows you how data from a typical column-based spreadsheet is converted into a latitude-longitude map:


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
 Uses the format "DDD.dddd." In this format, South latitudes and West longitudes are preceded by a minus sign. Latitudes range from -90 to 90, and longitudes range from -180 to 80.
  |

41.25, -120.9762

|
|
 Degrees minutes seconds
  |
 Uses the format "DDD MM SS + compass direction (N, S, E, or W)." Latitudes range from 0 to 90 and longitudes range from 0 to 180. The last degree, minute, or second or a latitude or longitude may contain a decimal portion.
  |

41 25 01N, 120 58 57W


 41º25'01"N, 120º58'57"W


 S17 33 08.352, W69 01 29.74

|
|
 Degrees minutes
  |
 Uses the format "DDD MM + compass direction (N, S, E, or W)." Latitudes range from 0 to 90 and longitudes range from 0 to 180. The last degree or minute of a latitude or longitude may contain a decimal portion.
  |

41 25N, 120 58W


 41º25'N, 120º58'W


 N41 25.117, W120 58.292

|
|
 Degrees only
  |
 Uses the format "DDD + compass direction (N, S, E, or W)." Latitudes may range from 0 to 90 and longitudes range from 0 to 180. The last degree of a latitude or longitude may contain a decimal portion.
  |

41N, 120W


 41 N, 120 W


 41ºN, 120ºW


 N41.092, W120.8362

|

Customizing latitude-longitude maps
-------------------------------------

You can customize the appearance of a latitude-longitude map by editing its
 **Chart Properties**
 . Properties for all chart types are listed and described in

Chart Properties

. Unique properties of latitude-longitude maps include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Symbols > Symbol Color
  |
 Allows you to set the color for map points. The default is orange. If your map contains a series column, colors are determined automatically—setting this property in this case has no effect.
  |
 —
  |
|
 Symbols > Symbol Sizes
  |
 Determines the relative size for map points. The default is medium.
  |
 —
  |
|
 Symbols > Symbol Transparency
  |
 Determines the transparency for map points. You can select any value from "none" (totally opaque) to 80% (almost transparent). The default is "none." In the first example at right, the transparency has been set to "none"; in the second example, it has been set to 80%.
  |


 |
|
 Scale > Symbol Borders
  |
 When set, this option will show borders around the symbols on the map.
  |  |
|
 Scale > Manual Minimum Value
  |
 Allows you to set the minimum value in your scale.
  |
 —
  |
|
 Scale > Manual Maximum Value
  |
 Allows you to set the maximum value in your scale.
  |
 —
  |
|
 Scale > Use Log Scale
  |
 Allows you to convert your map scale to a logarithmic scale.
  |
 —

|
|
 Legend > Show Series Total in Legend As
  |
 Lets you choose whether the series totals in the map legend are calculated as totals or averages or do not appear at all. The default is "Total."
  |
 —

|
|
 Background > Color
  |
 Lets you choose the lightness of the background. The default is
 **Very Light**
 . The example shows a map in which the background lightness has been set to
 **Very Dark**
 .
  |

|

Aggregating rows
------------------

You can aggregate like rows in a latitude-longitude map, and the map points reflect the aggregated values. In the following example, the user uploads a DataSet with two rows for "Geneva."

In the map, the individual values for "Geneva" are aggregated, and the corresponding map point is sized larger accordingly.

Drilling from map to map
--------------------------

With both U.S. state maps and latitude-longitude maps in which U.S. cities are represented, you can create "zoomed" drill layers by drilling down to the same map. For example, if you had a latitude-longitude map showing values per state and you added the same map as a drill layer, clicking any point in the country-level map would bring up a "zoomed in" state or region level that displayed all of the original data points from that state or region.


 Results from using this technique vary depending on the map type, your DataSet, and the specific columns you apply.


 For more information about adding drill layers to a chart, see

Adding Drill Path to Your Chart

.

