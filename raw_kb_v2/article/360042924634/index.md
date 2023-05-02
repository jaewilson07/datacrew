

Intro
-------

Heat maps are a special type of chart in which both the X and Y axes contain category data. Rectangle colors vary depending on how a particular data point fits into the specified data ranges. Heat maps allow you to visualize relationships between data categories and draw attention to "hot spots" of activity and trends.


 Powering heat maps
--------------------

Heat maps require three data columns or rows from your data source. Two of these contain category data, and the other contains the values for each category pair. No series data is represented. Values for each category pair are represented in your map by varying shades of color, each of which corresponds to a specific range. Ranges are determined automatically based on the distribution of values in your DataSet; however, you can also specify your own ranges in
 **Chart Properties > Ranges**
 . Ranges are represented by a legend, which is automatically included under the chart.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your heat map. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a heat map:

Customizing heat maps
-----------------------

You can customize the appearance of a heat map by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.

*Video - Creating and Customizing Heat Maps**

Unique properties of heat maps include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Theme
  |
 Allows you to change the color theme for a heat map. For more information about setting colors, see

Changing the Default Colors in Your Chart

.
  |
 —
  |
|
 General > Inner Margin
  |
 Allows you to set the amount of space, in pixels, that separates the cells in your heat map. The example shows a heat map with margins set to

8

.
  |  |
|
 General > Balanced Distribution
  |
 Adjusts maps and heat maps to include a balanced number of items within each range. This is helpful in spreading values across each range when your data contains extreme outliers.


 The pair of maps in the screenshots at right how
 **Balanced Distribution**
 works. In these heat maps, the values of most of the squares are in the range of 2 to 100. The outlier, Eastern diamondbacks for the city of Tampa, has a value of 214.
 **Balanced Distribution**
 has not been turned on in the top map, so a skewed version of the data is shown—Eastern diamondbacks/Tampa appears dark and all of the other provinces appear light. In the bottom map, the user has turned on
 **Balanced Distribution**
 , so Eastern diamondbacks/Tampa is grouped into the same range as the square with the next highest value.
  |


 |
|
 General > Override Maximum Value
  |
 Lets you specify the maximum value for a map or heat map.


 By default, Domo uses the highest value in the DataSet as the maximum value. However, by setting this property you can override this value.
  |
 —
  |
|
 Diverging > Show
  |
 When selected, the map will be shown as a diverging map with 2 sets of color ranges, one above and one below the midpoint.
  |  |
|
 Diverging > Number of Ranges
  |
 The number of ranges to be displayed either above or below the midpoint. (Maximum is 5)
  |
 —
  |
|
 Diverging > Midpoint Value Type
  |
 The type or value to be used as the midpoint. The default value is the median value.
  |
 —
  |
|
 Diverging > Midpoint Value
  |
 The value used as the midpoint when the value type is set to "Manual".
  |
 —
  |
|
 Diverging > Show Midpoint Range
  |
 When set, a range will be displayed for the midpoint value in the legend and chart.
  |  |
|
 Diverging > Midpoint Range Color
  |
 The color to be used for the range representing the midpoint.
  |
 —
  |
|
 Diverging > Upper Color Theme
  |
 The colors used for ranges above the midpoint.
  |
 —
  |
|
 Diverging > Lower Color Theme
  |
 The color theme used for the colors below the midpoint.
  |
 —
  |
|
 Ranges > Show Zero like No-data
  |
 Determines whether squares in a heat map with a value of 0 display in the same gray color as those squares with no data.
  |
 —
  |
|
 Ranges > Range
 *X*
 Maximum Value
  |
 Lets you specify the maximum value for a given range. For more information, see the next section.
  |
 —
  |
|
 Ranges > Range
 *X*
 Minimum Value
  |
 Lets you specify the minimum value for a given range. For more information, see the next section.
  |
 —
  |
|
 Ranges > Range
 *X*
 Color
  |
 Lets you select the color for a given range. For more information, see the next section.
  |
 —
  |


###
 Setting custom ranges

When you create a heat map, Domo determines the range values automatically. It also bases all colors off of the theme you select in
 **Theme**
 in
 **Chart Properties**
 . If you want, you can set custom ranges by specifying the minimum and maximum range values and selecting the color for each range. You can customize up to nine ranges in a heat map.


 For example, the following screenshot shows a heat map with ranges and colors determined automatically by Domo:

The Card creator decides the Card would be easier to interpret if more colors were present. He also wants to set the ranges manually instead of using the automatically determined ranges. So he sets five ranges, as follows:

 Range 1 — Minimum 1 and Maximum 20, with color set to blue
* Range 2 — Minimum 21 and Maximum 40, with color set to green
* Range 3 — Minimum 41 and Maximum 60, with color set to yellow
* Range 4 — Minimum 61 and Maximum 80, with color set to orange
* Range 5 — Minimum 81 and Maximum 100, with color set to red

The resulting heat map appears as follows:

*To set custom ranges on a heat map,**

. Open the Analyzer for the gauge.
2. In
 **Chart Properties**
 , click
 **Ranges**
 .
3. Enter a minimum value in the
 **Range 1**
**Minimum Value**
 field.


 This value is the minimum value for your first range.
4. Enter a maximum value in the
 **Range 1**
**Maximum Value**
 field.


 This value is the maximum value for your first range.
5. Click the menu next to
 **Range 1 Color**
 and select a color for the range.
6. (Optional) Continue adding new ranges as desired.


