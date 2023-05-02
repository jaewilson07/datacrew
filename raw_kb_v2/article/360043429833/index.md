

Intro
-------

Refer to this topic to find information about chart properties available for Line charts, such as those for configuring running totals, projections, scale marker ranges, and so on.


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
 Starting Symbol
  |
 Lets you select the symbol used to represent the first line in all symbol-bar combination charts. (The default symbol is a triangle.) If more than one symbol series appears, the chart rotates through symbols in this order: Triangle, Circle, Plus, Square, Diamond. For example, if your chart had four symbol series and you selected
 **Plus**
 for the starting symbol, the first series would be represented using plus signs, the second with squares, the third with diamonds, and the fourth with triangles.


 In the example at right, circles, pluses, and squares are used.
  |  |
|
 Series on Left Scale
  |
 Refers to the number of lines and bars in vertical line-bar combination charts. By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines here. For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering
 `2`
 in the
 **Series on Left Scale**
 field.
  |
 —
  |
|
 Series on Top Scale
  |
 Refers to the number of lines and bars in horizontal line-bar combination graphs By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines here. For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering
 `2`
 in the
 **Series on Top Scale**
 field.
  |
 —
  |
|
 Line Style
  |
 Lets you change the line style in Grouped Bar with Line, Stacked Bar with Line, and Grouped and Stacked Bar with Line graphs. By default, lines in these chart types appear angular. If you want, you can change the line style to be curved. The example shows a Stacked Bar with Line chart in which the
 **Curved**
 line style has been set.
  |

|
|
 Thickness
  |
 Allows you to choose between three thickness values for the lines in all kinds of Line charts. Available options include
 **Thin**
 ,
 **Medium**
 , and
 **Thick**
 . Examples of all of these are shown at right.
  |
**Thin**

*Medium**

*Thick**

|
|
 Hide Empty Values
  |
 When you check this box, any gaps in your Line chart will be filled in, showing a complete line or lines.
  |
 —
  |
|
 Hide Area Fill
  |
 When you check this box, the fill that appears by default in single-line Line charts is hidden. The example at right shows a chart in which this has been done.
  |  |
|
 Number of Symbol Series
  |
 Refers to the number of series in Grouped Bar with Symbol and Stacked Bar with Symbol charts in which symbols appear in place of lines. By default, the first series that appears in your legend is made up of symbols, and all remaining series become bars. However, you can convert series from bars to symbols by entering the desired number of symbols series in
 **Chart Properties**
 . For example, if your chart had three series, the first series appearing in your legend would appear as symbols, and the remaining two series would appear as bars. You could turn the second series into symbols by entering

2

in the
 **Number of Symbol Series**
 field. For more information about Grouped Bar with Line and Stacked Bar with Line charts, see

Stacked Bar with Line Chart

, respectively.


**Note:**
 Symbols are auto-selected based on the series. You cannot assign a specific symbol to a given series.


 |
 —
  |
|
 Sync Value Scales
  |
 Determines whether value scales in dual-scale charts (such as Grouped Bar with Line and Stacked Bar with Line charts) are synced. For more information, see

Syncing Value Scales in a Dual-Scale Chart

. The example shows a chart with synced value scales.
  |

|
|
 Hide Second Scale
  |
 Hides the second value scale in dual-scale charts (such as Grouped Bar with Line and Stacked Bar with Line charts) in which you have synced the scales using the
 **Sync Value Scales**
 option. For more information, see

Syncing Value Scales in a Dual-Scale Chart

.
  |
 —

|
|
 Sync Zero Lines
  |
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
  |


 |
|
 Number of Running Total Lines
  |
 Lets you specify the number of lines in line-bar combination charts that are running total lines. Lines that become running total lines are determined by your chart series order as it appears in your legend. For example, if you indicated that you wanted two running total lines, the lines corresponding to the first two line series in your legend would become running total lines.


 In the example, the blue and light green lines are running total lines; the dark green line is not.
  |

|
|
 Number of Running Total Bars
  |
 Lets you specify the number of bars in line-bar combination charts that are running total bars. Bars that become running total bars are determined by your chart series order as it appears in your legend. For example, if you indicated that you wanted two running total bars, the bars corresponding to the first two bar series in your legend would become running total bars.


 In the example, the light and dark green bars are running total bars; the other bars are not.
  |

|
|
 Show as Running Totals
  |
 Lets you specify whether lines appear with running totals in several kinds of horizontal Line charts. In other words, each point in a series line displays the cumulative total of all points in the line up to that point. The example screenshots show the same Curved Line chart without and with running totals. In the first example,
 **Show as Running Totals**
 is off so the chart appears with each data point reflecting only the new data up to that point. In the second example,
 **Show as Running Totals**
 is on so each data point reflects all of the data in the line up to that point. This property is available for the following kinds of Line charts: Curved Line, Step Line, Symbol Line, and Curved Symbol Line. Several types of charts have built-in running total functionality, so there is no need to set a chart property. These include the following:

Running Total Line Chart

.
  |


 |
|
 Show Right Scale
  |
 Includes a second vertical scale in most kinds of multi-line Line charts, with or without date or time data. This is useful in situations where you want to display lines with vastly different value increments in the same chart. In the example at right, the left scale shows values in increments of $20,000 and the right scale shows values in increments of 2. Because two scales are present, both lines can be interpreted independently on their own scales. If there was only one scale, the $20,000 increments would be used for both lines, so one of the lines would appear flat.


 |

|
|
 Lines on Left Scale
  |
 When
 **Show Right Scale**
 is checked, determines how many of the lines in the chart are measured on the left scale. All additional lines are measured on the right scale. If
 **Show Right Scale**
 is not checked, this property does not work.
  |
 —
  |
|
 Style (all Area graphs but Stream)
  |
 Determines the style for an Area chart, either "Flat" or "Folded." "Flat" is the default style for this type of chart. If you select "Folded," the chart takes on a 3-D appearance, as shown in the example at right.
  |

|
|
 Style (Stream graphs)
  |
 Determines the style for a Stream chart, either
 **Curved**
 (default) or
 **Flat**
 . The example shows a Stream chart that uses the "Flat" style.
  |  |


 "Grid Lines" Properties
-------------------------


 The properties in the following table are found in the
 **Grid Lines**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Remove Min/Max/Avg Lines
  |
 Removes the minimum, maximum, and average lines that normally display on mouse-over in many kinds of Bar and Line charts.
  |
 —
  |

"Outlier Filtering" Properties
--------------------------------

The properties in the following table are found in the
 **Outlier Filtering**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show When Points Above
  |
 Filters your Line chart to show only those lines with any values above the value you specify. Note that
 *any*
 values above this threshold count toward this filter. So if you entered

5000

for this value, and only one point exceeded 5000, the line would still appear.


 If you enter a value in
 **Show When Points Above**
 that is less than the value you enter in
 **Show When Points Below**
 , only lines with
 *all*
 points between these two values are displayed.


 For more information about this property, including examples, see

Filtering Outliers in a Line Chart

.
  |
 —
  |
|
 Show When Points Below
  |
 Filters your Line chart to show only those lines with any values below the value you specify. Note that
 *any*
 values below this threshold count toward this filter. So if you entered

5000

for this value, and only one point fell below 5000, the line would still appear.


 If you enter a value in
 **Show When Points Below**
 that is greater than the value you enter in
 **Show When Points Above**
 , only lines with
 *all*
 points between these two values are displayed.


 For more information about this property, including examples, see

Filtering Outliers in a Line Chart

.
  |
 —
  |

"Last Bar Value Projection" Properties
----------------------------------------

The properties in the following table are found in the
 **Last Bar Value Projection**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Project Using
  |
 Determines whether a final value is projected for bars in a Grouped Bar with Line chart and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically either by taking the average of the previous points in the chart or by using a linear regression. The example at right shows a Grouped Bar with Line chart in which a final value for the bars has been projected using the average of the four previous values. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Projection Value
  |
 Lets you specify the final projected value for the bars in a Grouped Bar with Line chart. This only works if you have selected
 **Specified Value**
 as the
 **Project Using**
 property. For more information, see

Projecting the Last Value in Your Chart

.
  |
 —
  |
|
 Previous Values to Average
  |
 Lets you specify the number of points to average to determine the final projected value for the bars in a Grouped Bar with Line chart. This only works if you have selected Average Previous Values as the Project Using property. For more information, see

Projecting the Last Value in Your Chart

.
  |
 —
  |

"Last Line Value Projection" Properties
-----------------------------------------

The properties in the following table are found in the
 **Last Line Value Projection**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Project Using
  |
 Determines whether a final value is projected for lines in a Grouped Bar with Line chart and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically either by taking the average of the previous points in the chart or by using a linear regression. The example at right shows a Grouped Bar with Line chart in which a final value for the lines has been projected using the average of the four previous values. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Projection Value
  |
 Lets you specify the final projected value for the lines in a Grouped Bar with Line chart. This only works if you have selected
 **Specified Value**
 as the
 **Project Using**
 property. For more information, see

Projecting the Last Value in Your Chart

.
  |
 —
  |
|
 Previous Values to Average
  |
 Lets you specify the number of points to average to determine the final projected value for the lines in a Grouped Bar with Line chart. This only works if you have selected
 **Average Previous Values**
 as the
 **Project Using**
 property. For more information, see

Projecting the Last Value in Your Chart

.
  |
 —
  |

"Regression Line" Properties
------------------------------

The properties in the following table are found in the
 **Regression Line**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Show Linear Regression Line
  |
 Allows you to add a regression line to single-series Vertical Bar and Line charts and most Line chart subtypes. In the examples at right, the dashed orange line represents the regression line.
  |


 |
|
 Include Last Data Point
  |
 Determines whether the last data point in your Bar or Line chart is included in the calculation for the regression line. If your chart shows a timeline that is not complete (for example, November appears as the last month in the timeline but has not yet ended), you should check this box.
  |
 —
  |
|
 Line Style
  |
 Lets you specify whether your regression line is solid or dashed (default).
  |
 —
  |
|
 Line Color
  |
 Lets you select the color for the regression line.
  |
 —
  |

"Scale Marker Range" Properties
---------------------------------

The properties in the following table are found in the
 **Scale Marker Range**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Minimum Value
  |
 Lets you specify the minimum value for a scale marker range in a Line chart. This value makes up the bottommost border of the range in the chart. The example at right shows a typical Line chart in which a scale marker range has been set, with the arrow pointing out the minimum value of the range. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 Maximum Value
  |
 Lets you specify the maximum value for a scale marker range in a Line chart. This value makes up the topmost border of the range in the chart. The example at right shows a typical Line chart in which a scale marker range has been set, with the arrow pointing out the maximum value of the range. For more information, see

Adding Scale Markers to Your Chart

.
  |

|
|
 Color
  |
 Lets you select the color for the scale marker range in a Line chart. For more information, see

Adding Scale Markers to Your Chart

.
  |
 —
  |
|
 Show Lines
  |
 Determines whether minimum and maximum lines are shown for scale marker ranges in Line charts. For more information, see

Adding Scale Markers to Your Chart

.
  |
 —
  |
|
 Fill Outliers
  |
 Determines whether outlier regions (that is, regions of a line falling outside of a scale marker range) are filled in Line charts in which scale marker ranges have been set. The example at right shows a typical Line chart in which a scale marker range has been set, with arrows pointing out the filled outliers. For more information, see

Adding Scale Markers to Your Chart

.
  |

|

"Hints" Properties
--------------------

The properties in the following table are found in the
 **Hints**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Remove Hints
  |
 Prevents value labels from appearing over each bar or line point in a chart in the Details view.
  |
 —
  |
|
 Style
  |
 Lets you select a style for the value labels that appear over each bar or line point in a chart in the Details view. Options include
 **Plain**
 (the default) and
 **Tooltip**
 . The first example at right shows a chart with
 **Plain**
 selected. The second example shows the same chart with
 **Tooltip**
 selected.
  |


 |

"Value Options," "Change Value Options," and "Line Options" Properties
------------------------------------------------------------------------

For information about these Spark Line properties, see

Properties for Miscellaneous Charts

.

