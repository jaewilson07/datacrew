

Intro
-------

Refer to this topic to find information about chart properties available for Maps and Heat Maps, such as those for configuring color themes, ranges, symbol settings, legends, and so on.


**Video - Map Charts**


 "General" Properties
----------------------

The properties in the following table are found in the
 **General**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Balanced Distribution
  |
 Adjusts maps and Heat Maps to include a balanced number of items within each range. This is helpful in spreading values across all ranges when your data contains extreme outliers. In the pair of maps shown in the screenshots at right, the values of most of the Canadian provinces are in the range of 100 to 1500. The outlier, Alberta, has a value of 10,000.
 **Balanced Distribution**
 has not been turned on in the top map, so a skewed version of the data is shown—Alberta appears dark and all of the other provinces appear light. In the bottom map, the user has turned on
 **Balanced Distribution**
 , so Alberta is grouped into the same range as the province with the next highest value.
  |


 |
|
 Auto Zoom to Data
  |
 Zooms in on the region of your map with data. In the example at right, the only states with data are Utah, Arizona, Colorado, and New Mexico, so the map zooms on them automatically. This option will not work if all of the regions in your map with data are not adjacent. For example, if the map at right showed Oregon as having data, the auto-zoom would not work because Oregon is not adjacent to any of the other states with data.
  |  |
|
 Hide No Data Items
  |
 Hides all items in your map without data. In the example at right, the only states with data are Utah, Arizona, Colorado, and New Mexico, so the map hides all other states. Unlike the "Auto Zoom to Data" property, this will work even if there are regions not adjacent to other regions.
  |  |
|
 Hide Abbreviated Legend
  |
 Hides the legend shown at the bottom of maps in some views.
  |
 —
  |
|
 Inner Margin
  |
 Determines the amount of space, in pixels, that separates the cells in a Heat Map. The example shows a heat map with margins set to
 `8`
 .
  |

|
|
 Override Maximum Value
  |
 Lets you specify the maximum value for a map or Heat Map.


 By default, Domo uses the highest value in the DataSet as the maximum value. However, by setting this property you can override this value.
  |
 —
  |

"Diverging" Properties
------------------------

The properties in the following table are found in the
 **Diverging**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show
  |
 When selected, the map will be shown as a diverging map with 2 sets of color ranges, one above and one below the midpoint.
  |  |
|
 Number of Ranges
  |
 The number of ranges to be displayed either above or below the midpoint. (Maximum is 5)
  |
 —
  |
|
 Midpoint Value Type
  |
 The type or value to be used as the midpoint. The default value is the median value.
  |
 —
  |
|
 Midpoint Value
  |
 The value used as the midpoint when the value type is set to "Manual".
  |
 —
  |
|
 Show Midpoint Range
  |
 When set, a range will be displayed for the midpoint value in the legend and chart.
  |  |
|
 Midpoint Range Color
  |
 The color to be used for the range representing the midpoint.
  |
 —
  |
|
 Upper Color Theme
  |
 The colors used for ranges above the midpoint.
  |
 —
  |
|
 Lower Color Theme
  |
 The color theme used for the colors below the midpoint.
  |
 —
  |

"Hover Legend" Properties
---------------------------

The properties in the following table are found in the
 **Hover Legend**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hide Legend
  |
 Hides the legend that normally appears on the right side of a map in the Details view.
  |
 —
  |
|
 Hide Total
  |
 Hides the "Total" section of the legend that appears on the right side of a map in the Details view. The example shows a map in which this has been done.
  |  |
|
 Hide Values
  |
 Hides the value and percent of total value in the legend that appears on the right side of a map in the Details view. The example shows a map in which this has been done.
  |  |

"Data Label Settings" Properties
----------------------------------

The properties in the following table are found in the
 **Data Label Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Text
  |
 Specifies text for the data labels. This property is the "on switch" for data labels—you must specify text for them to appear.
  |
 —
  |
|
 Font Size
  |
 Allows you to increase or decrease the data label font size. The "Default" font size falls between the largest and second-smallest font sizes. For more information, see

Changing the Font Size in Your Chart

.
  |
 —
  |
|
 Text Color
  |
 Lets you determine the text color for your map data labels. If you select "Default," the color will be automatically determined based on the background color. This is shown in the example at right, in which the data labels on darker areas appear white and those on lighter areas appear dark red.
  |  |
|
 Value Abbreviation
  |
 Determines whether data label values are abbreviated (the default being 3 significant digits) or not.
  |
 —
  |
|
 Fill
  |
 Lets you add a colored fill to your map data labels. The example at right shows a chart in which a pale blue fill color with 60% transparency has been added.
  |

|
|
 Fill Color
  |
 Lets you specify the color for the fill in your map data labels. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |
|
 Fill Transparency Percent
  |
 Lets you specify the fill transparency for map data labels. You can specify any number between 0 and 100, in which 0 is completely opaque and 100 is completely transparent. This property is only available when you check the
 **Fill**
 box.
  |
 —
  |

"Hover Text" Properties
-------------------------

The properties in the following table are found in the
 **Hover Text**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hover Text
  |
 Lets you set the text that appears in map hovers. A variety of macros for showing map values in your hovers is available. For more information and a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Always Show Over Map
  |
 Specifies whether hover text specified using the
 **Hover Text**
 option is turned on for your chart.
  |
 —
  |

"Values" Properties
---------------------

The properties in the following table are found in the
 **Values**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Label Format
  |
 Determines the general number format for hover text and legend items in most maps.
 **Number**
 is the default format; when you select this, numbers appear without currency or percentage symbols. Selecting
 **Currency**
 or
 **Percentage**
 affixes a "$" or "%," respectively, to numbers in your hover text and legend items. For currency numbers, you can change the default symbol by specifying the desired symbol in the
 **Currency Symbol**
 field (which is found under
 **Number Format**
 ). You can also specify whether currency symbols appear before or after numbers in the
 **Currency Symbol Position**
 menu (they appear before numbers by default).
  |
 —
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in decimal values in hover text and legend items in most maps. You can choose from
 **Default**
 ,
 **None**
 , and options for numbers of decimal places (from ".0" to ".00000"). By default, Domo automatically determines the optimal number of decimal places for each number in the chart. When you select
 **None**
 , all values are rounded to the nearest whole number.
  |
 —
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers in hover text and legend items in most maps. If you select
 **-100**
 , all negative numbers have a minus symbol affixed. If you select
 **(100)**
 , all negative numbers are enclosed in parentheses.
  |
 —
  |

"Theme" Properties
--------------------

The properties in the following table are found in the
 **Theme**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Theme
  |
 Allows you to change the color theme for most maps as well as Heat Maps and calendars. For more information about setting colors, see

Changing the Default Colors in Your Chart

.
  |
 —
  |

"Symbols" Properties
----------------------

The properties in the following table are found in the
 **Symbols**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Symbol Color
  |
 Allows you to set the color for points in a latitude-longitude map. The default is orange. If your map contains a series column, colors are determined automatically—setting this property in this case has no effect.
  |
 —
  |
|
 Symbol Sizes
  |
 Determines the relative size for points in a latitude-longitude map. The default is medium.
  |
 —
  |
|
 Symbol Transparency
  |
 Determines the transparency for points in a latitude-longitude map. You can select any value from "none" (totally opaque) to 80% (almost transparent). The default is "none." In the first example at right, the transparency has been set to "none"; in the second example, it has been set to 80%.
  |


 |

"Routes" Properties
---------------------

The properties in the following table are found in the
 **Routes**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Symbol Color
  |
 Allows you to set the color for points and connection lines in a latitude-longitude route map. The default is orange. If your map contains a series column, colors are determined automatically—setting this property in this case has no effect.
  |
 —
  |
|
 Straight Routes
  |
 When checked, route lines in a latitude-longitude route map appear straight instead of curved (which is the default). In the first example at right, route lines appear curved; in the second example they appear straight.
  |


 |
|
 Symbol Transparency
  |
 Determines the transparency for connection lines in a latitude-longitude route map. You can select any value from "none" (totally opaque) to 80% (almost transparent). The default is "none." In the first example at right, the transparency has been set to "none"; in the second example, it has been set to 80%.
  |


 |

"Scale" Properties
--------------------

The properties in the following table are found in the
 **Scale**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Use Log Scale
  |
 Converts the scale in a latitude-longitude map, latitude-longitude route map, or Heat Map Table into a logarithmic scale.
  |
 —
  |
|
 Independent Column Ranges
  |
 Causes ranges to be applied separately to each column in a Heat Map Table.
  |
 —
  |

"Legend" Properties
---------------------

The properties in the following table are found in the
 **Legend**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show Series Total in Legend As
  |
 Lets you choose whether the series totals in a latitude-longitude map are calculated as totals or averages or do not appear at all. The default is "Total."
  |
 —
  |

"Background" Properties
-------------------------

The properties in the following table are found in the
 **Background**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Color
  |
 Lets you choose the lightness of the background for Latitude-Longitude and Latitude-Longitude Route Maps. The default is
 **Very Light**
 . The example shows a map in which the background lightness has been set to
 **Very Dark.**
 |

|

"Ranges" Properties
---------------------

The properties in the following table are found in the
 **Ranges**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show Zero like No-data
  |
 Determines whether squares in a Heat Map with a value of 0 display in the same gray color as those squares with no data.
  |
 —
  |
|
 Range 1 Minimum Value...Range 9 Maximum Value
  |
 Let you customize the ranges in a Heat Map. For each of the nine ranges in the Heat Map, you can enter both a minimum and maximum value. You cannot change the number of ranges in a Heat Map, however.
  |
 —
  |
|
 Range 1 Color...Range 9 Color
  |
 Lets you specify colors for each range in a Heat Map.
  |

|


