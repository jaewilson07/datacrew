

Intro
-------

In Domo, you can add maps representing data for states, provinces, or prefectures in individual countries.


 Country maps only require two data columns or rows from your DataSet:

. One column or row contains the name (or abbreviation, for certain countries) of the state, province, or prefecture, and the other contains the values for each such region.
2. Values for each region.

These values are represented in your map by varying shades of color, each of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet and are represented by a legend, which is automatically included beside the map.


 For information about the value, category, and series data, see

Understanding Chart Data

.

*Note:**
 If a DataSet contains multiple values for the same region, the map will show a single sum of the values. For example, if your DataSet contained three rows for "Georgia," the values for the rows would be combined, and the Georgia region in the map would show the total value. You
 *cannot*
 turn off this automatic aggregation in maps.

Powering Country Maps
-----------------------

In
 **Analyzer**
 , you choose the columns containing the data for your map.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a U.S. map:

For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 Customizing Country Maps
--------------------------

You can customize the appearance of a country map by editing its
 **Chart Properties**
 . The table below describes customization options. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Theme > Theme
  |
 Allows you to change the color theme for the map. For more information about setting colors, see

Changing the Default Colors in Your Chart

.
  |
 —
  |
|
 General > Balanced Distribution
  |
 Adjusts maps to include a balanced number of items within each range. This is helpful in spreading values across each range when your data contains extreme outliers.


 The pair of maps in the screenshots at right how
 **Balanced Distribution**
 works. In these maps, the values of most of the Canadian provinces are in the range of 100 to 1500. The outlier, Alberta, has a value of 10,000.
 **Balanced Distribution**
 has not been turned on in the top map, so a skewed version of the data is shown—Alberta appears dark and all of the other provinces appear light.


 In the bottom map, the user has turned on
 **Balanced Distribution**
 , so Alberta is grouped into the same range as the province with the next highest value.
  |


 |
|
 General > Auto Zoom to Data
  |
 Zooms in on the region of your map with data. In the example at right, the only states with data are Utah, Arizona, Colorado, and New Mexico, so the map zooms on them automatically. This option is only applicable if all regions with data are next to each other. For example, if the map at right showed Oregon as having data, the auto-zoom would not work because Oregon is not adjacent to any of the other states with data.
  |

|
|
 General> Hide No Data Items
  |
 Hides all items in your map without data. In the example at right, the only states with data are Utah, Arizona, Colorado, and New Mexico, so the map hides all other states. Unlike the "Auto Zoom to Data" property, this will work even if there are regions not adjacent to other regions.
  |

|
|
 General > Hide Abbreviated Legend
  |
 Hides the legend shown at the bottom of maps in some views.
  |
 —
  |
|
 General > Override Maximum Value
  |
 Lets you specify the maximum value for a map or Heat Map.


 By default, Domo uses the highest value in the DataSet as the maximum value. However, by setting this property you can override this value.
  |
 —
  |
|
 Hover Legend > Hide Legend
  |
 Hides the legend that normally appears on the right side of a map in the Details view.
  |
 —
  |
|
 Hover Legend > Hide Total
  |
 Hides the "Total" section of the legend that appears on the right side of a map in the Details view. The example shows a map in which this has been done.
  |

|
|
 Hover Legend > Hide Values
  |
 Hides the value and percent of total value in the legend that appears on the right side of a map in the Details view. The example shows a map in which this has been done.
  |

|
|
 Data Label Settings > Text
  |
 Specifies text for the data labels. This property is the "on switch" for data labels—you must specify text for them to appear.
  |
 —
  |
|
 Data Label Settings > Font Size
  |
 Allows you to increase or decrease the data label font size. The "Default" font size falls between the largest and second-smallest font sizes. For more information, see

Changing the Font Size in Your Chart

.
  |
 —
  |
|
 Data Label Settings > Text Color
  |
 Lets you determine the text color for your map data labels. If you select "Default," the color will be automatically determined based on the background color. This is shown in the example at right, in which the data labels on darker areas appear white and those on lighter areas appear dark red.
  |

|
|
 Data Label Settings > Value Abbreviation
  |
 Determines whether data label values are abbreviated (the default being 3 significant digits) or not.
  |
 —
  |
|
 Data Label Settings > Fill
  |
 Lets you add a colored fill to your map data labels. The example at right shows a chart in which a pale blue fill color with 60% transparency has been added.
  |

|
|
 Data Label Settings > Fill Color
  |
 Lets you specify the color for the fill in your map data labels. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Data Label Settings > Fill Transparency Percent
  |
 Lets you specify the fill transparency for map data labels. You can specify any number between 0 and 100, in which 0 is completely opaque and 100 is completely transparent. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Hover Text > Hover Text
  |
 Lets you set the text that appears in map hovers. A variety of macros for showing map values in your hovers is available. For more information and a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Hover Text > Always Show Over Map
  |
 Specifies whether hover text specified using the
 **Hover Text**
 option is turned on for your chart.
  |
 —
  |
|
 Values > Label Format
  |
 Determines the general number format for hover text and legend items in maps.
  |
 —
  |
|
 Values > Decimal Places
  |
 Determines the number of decimal places used in decimal values in hover text and legend items in maps.
  |
 —
  |
|
 Values > Negative Numbers
  |
 Determines the format for negative numbers in hover text and legend items in maps
  |
 —
  |
|
 Cities > Cities
  |
 Shows whether cities and city names are shown on the map. The closer a map is zoomed, the more cities are shown.


 The first example at right shows an "unzoomed" map of the United States. Note that only two cities are shown in Texas. In the second example, the map is zoomed to show only Texas, and many more cities are shown.
  |


 |

Properties for all chart types are listed and described in

Chart Properties

.


**Video - Map Charts**


 If you want a map for a country not available in Domo's default map list, you can add it as a custom chart. For more information, see

Custom Charts

.


 For information about world maps, see

Latitude-Longitude Map

.


 If you are experiencing issues, see

Troubleshooting.

More Map Options
------------------


 With both U.S. state maps and latitude-longitude maps in which U.S. cities are represented, you can create "zoomed" drill layers by drilling down to the same map.


 For example, if you had a latitude-longitude map showing values per state and you added the same map as a drill layer, clicking any point in the country-level map would bring up a "zoomed in" state or region level that displayed all of the original data points from that state or region.

Results from using this technique vary depending on the map type, your DataSet, and the specific columns you apply.


 For more information about adding drill layers to charts, see

Latitude-Longitude Map

.


 Adding Other Maps to Domo
---------------------------

If you want to install a map for a country not available in Domo, you can download it from any of a number of websites, such as

http://www.amcharts.com/svg-maps/

and

https://simplemaps.com/resources/svg-maps

. These sites also include maps for overseas territories such as French Guiana, Aruba, and so on. Once you have downloaded one of these maps, you can immediately upload it to Domo—there is no need to manipulate the XML (unless you are planning to divide it into subregions). For more information about uploading maps to Domo and building your own custom maps, see

Custom Charts

.

