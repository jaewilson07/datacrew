

In Domo, you can add maps representing data for U.S. Counties. You do this by building a U.S. State map or a U.S. County map. These are nearly the same, with one important difference. U.S. County maps show County data on the
 *national*
 level—that is, your County data appears on a map of the entire United States (though you can add a

drilldown

allowing users to jump to individual states). U.S. State maps, on the other hand, automatically zoom in on the State indicated in your DataSet, allowing you to build maps for individual States.


 Both U.S. State and U.S. County maps require a column or row containing the FIPS codes representing each County and another containing the values for each such County. A FIPS code is a five-digit number that identifies Counties and County equivalents in the United States, certain U.S. possessions, and certain freely associated States. The first two digits are the FIPS State code and the last three are the County code within the State or possession. For example, the FIPS State code for Florida is 12, and the FIPS County code for Miami-Dade County is 086, so to represent Miami-Dade County in your DataSet you would use the number "12086."


 You can find FIPS codes for any U.S. county by setting up the Domo Dimensions Connector using the following steps:

. Navigate to the
 **Appstore**
 .
2. Type
 **Domo Dimensions**
 into the Search bar.
3. Select the Domo Dimensions Connector.
4. Click
 **Get the data**
 .
5. Select the
 **zips\_to\_fips\_latest.csv**
 file.
6. Click
 **Next**
 .
7. Name the DataSet.
8. Click
 **Save**
 .
9. Join the Domo Dimensions DataSet you just created to your data on the Zip column.


**Tip:**
 In Domo, maps are generated based on the existing data you provide. When building a U.S. State map, you can use ZIP codes instead of FIPS codes. Your map will then automatically switch to a ZIP code-level map. If a

column name includes "st" (short for "state") the state-level map will load. If


 the column name in the ETL is "zip2fip," the zipcode-level map will load.

When using the US counties map, you can use either ZIP codes or FIPS codes in the county selector. Domo will try and match FIPS or ZIPS by matching column name clues like "Zip" or "zip code". It will try "FIPS" or "county" for the county column name.

If you want to build a U.S. State map and your DataSet includes information for multiple States, you can select the State you want to show by

applying a filter

.


 Values in your U.S. State or U.S. County map are represented by varying shades of color, each of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet and are represented by a legend, which is automatically included beside the map.

*Note:**
 When multiple instances of a single region occur in a DataSet, the values for that region are summed to show a single value for the region in the map. For example, if your DataSet contained three rows for "Georgia," the values for the rows would be summed, and the Georgia region in the map would show the total value. You
 *cannot*
 turn off this automatic aggregation in maps.

For information about Country maps, see

Latitude-Longitude Map

.


 For information about troubleshooting when an area in your map does not show data but there is data, see

Troubleshooting

.


 Powering U.S. County Maps
---------------------------

In the Analyzer, you choose the columns containing the data for your map. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a U.S. County map:

Powering U.S. State Maps
--------------------------

This scenario is the same as the one for powering a U.S. County map. If your DataSet contains data for more than one State, you will need to point to the desired State by

adding a filter

. For example, if your DataSet contained data for all of the States in the "South" region but you only wanted to show a map for Florida, you would follow these steps:

. Build your map by dragging your "FIPS" and value columns into the fields above the chart preview area.
2. Drag your "State" column into the
 **Filters**
 pane.
3. Check the box for "Florida."
4. Click
 **Apply**
 .

Your preview should now update to show a zoomed-in map of Florida.


 Customizing U.S. County/U.S. State Maps
-----------------------------------------

You can customize the appearance of a U.S. County or State map by editing its
 **Chart Properties**
 . Properties for all chart types are listed and described in

Chart Properties

. Unique properties of U.S. County and State maps include the following:


 Property
  |
 Description
  |
 Example
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


 The pair of maps in the screenshots at right show how
 **Balanced Distribution**
 works. (These are Country maps for Canada, not World maps, but the principle is the same.) In these maps, the values of most of the Canadian provinces are in the range of 100 to 1500. The outlier, Alberta, has a value of 10,000.
 **Balanced Distribution**
 has not been turned on in the top map, so a skewed version of the data is shown—Alberta appears dark and all of the other provinces appear light. In the bottom map, the user has turned on
 **Balanced Distribution**
 , so Alberta is grouped into the same range as the province with the next highest value.
  |


 |
|
 General > Auto Zoom to Data
  |
 Zooms in on the region of your map with data. In the example at right, the only States with data are Utah, Arizona, Colorado, and New Mexico, so the map zooms on them automatically. This option will not work if all of the regions in your map with data are not adjacent. For example, if the map at right showed Oregon as having data, the auto-zoom would not work because Oregon is not adjacent to any of the other States with data.
  |

|
|
 General> Hide No Data Items
  |
 Hides all items in your map without data. In the example at right, the only States with data are Utah, Arizona, Colorado, and New Mexico, so the map hides all other States. Unlike the "Auto Zoom to Data" property, this will work even if there are regions not adjacent to other regions.
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


