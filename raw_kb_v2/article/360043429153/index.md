

Intro
-------

A standard grouped bar with line chart is a combination of a

stacked bar with line chart

, the difference being that in a grouped bar with line chart, series are represented as vertical bars laid out side by side in their respective categories, whereas in a stacked bar with line chart, series are stacked on top of each other in their categories.


 The grouped bar with line chart has a number of subtype charts:

 Vertical grouped bar with symbols
* Vertical grouped bar with curved line
* Vertical line with grouped bar
* Horizontal grouped bar with line
* Horizontal grouped bar with symbols
* Horizontal grouped bar with curved line
* Line with grouped bar (called "Grouped Bar + Line" in the user interface instead of the usual "Line + Grouped Bar")

For descriptions and screenshots of all these chart types, see

Available Bar charts

.


 Powering grouped bar with line charts
---------------------------------------

Grouped bar with line charts require three columns or rows of data from your DataSet—one for series, one for categories, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your grouped bar with line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a grouped bar with line chart:

Customizing grouped bar with line charts
------------------------------------------

You can customize the appearance of a grouped bar with line chart by editing its
 **Chart Properties**
 and by changing the sorting, scale syncing, and number formatting.

##
 Chart properties

Unique properties of grouped bar with line charts include the following. You can click a thumbnail image to see a larger image.


 For information about all chart properties, see

Chart Properties

.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Starting Symbol
  |
 Lets you select the symbol used to represent the first line in all symbol-bar combination charts. (The default symbol is a triangle.) If more than one symbol series appears, the chart rotates through symbols in this order: Triangle, Circle, Plus, Square, Diamond. For example, if your chart had four symbol series and you selected
 **Plus**
 for the starting symbol, the first series would be represented using plus signs, the second with squares, the third with diamonds, and the fourth with triangles.


 In the example at right, circles, pluses, and squares are used.
  |

|
|
 General > Series on Top Scale
  |
 Refers to the number of lines and bars in horizontal line-bar combination charts By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines here. For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering

2

in the
 **Series on Top Scale**
 field.
  |
 —
  |
|
 General > Series on Left Scale
  |
 Determines how many series in your chart appear as lines (or symbol series in a Symbol Bar chart). By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines in
 **Chart Properties**
 . For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering

2

in the
 **Series on Left Scale**
 field.


**Note:**
 Symbols are auto-selected based on the series. You cannot assign a specific symbol to a given series


 |
 —
  |
|
 General > Line Style
  |
 Lets you change the line style in your chart. By default, lines in line-bar combination charts appear angular. If you want, you can change the line style to be curved.


 The example shows a chart in which the line style has been set to
 **Curved**
 .
  |

|
|
 General > Sync Value Scales
  |
 Determines whether value scales in dual-scale charts are synced. For more information, see

Syncing Value Scales in a Dual-Scale chart

.


 The example shows a chart with synced value scales.
  |

|
|
 General > Hide Second Scale
  |
 Hides the second value scale in dual-scale charts in which you have synced the scales using the
 **Sync Value Scales**
 option. For more information, see

Syncing Value Scales in a Dual-Scale chart

.
  |
 —
  |
|
 General > Number of Running Total Lines
  |
 Lets you specify the number of lines in line-bar combination charts that are running total lines. Lines that become running total lines are determined by your chart series order as it appears in your legend. For example, if you indicated that you wanted two running total lines, the lines corresponding to the first two line series in your legend would become running total lines.


 In the example, the blue and light green lines are running total lines; the dark green line is not.
  |

|
|
 General > Number of Running Total Bars
  |
 Lets you specify the number of bars in line-bar combination charts that are running total bars. Bars that become running total bars are determined by your chart series order as it appears in your legend. For example, if you indicated that you wanted two running total bars, the bars corresponding to the first two bar series in your legend would become running total bars.


 In the example, the light and dark green bars are running total bars; the other bars are not.
  |

|
|
 General > Sync Zero Lines
  |
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
  |


 |
|
 Last Bar/Line Value Projection > Project Using
  |
 Determines whether a final value is projected for bars or lines in a grouped bar with line chart and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically either by taking the average of the previous points in the chart or by using a linear regression. Two examples of grouped bar with line charts are shown at right. In the first, the final value for the bars has been projected using the average of the four previous values. In the second, the final value for the lines has been projected using a specified value. For more information, see

Projecting the Last Value in Your Chart

.
  |


 |
|
 Data Label Settings >  Show Data Labels On
  |
 Determines whether data labels appear for lines, bars, or both.
  |
 —

|


###
 Sorting

You can manipulate which series becomes lines and bars in a grouped bar with line chart by changing the series order in your legend. By default, the sort method is set to
 **No Sorting**
 , which arranges your series in alphabetical order. For most charts with both lines and bars, this is
 *not*
 the optimal sort method. For the best results, do the following:

 Ensure that the series that should correspond to the line appears first in your DataSet, and
* choose an item-based sorting method, either ascending or descending.

Because item-based sorting sorts the items in the DataSet alphabetically by category, with the series items in each category appearing in the same order that they appear in the spreadsheet, the first series in your DataSet becomes the line. For more information about sorting, see

Sorting the Data in Your Chart

.

##
 Syncing value scales

By default, the two value scales in a grouped bar with line chart are matched to the data they measure, not to each other. For example, the values for your line might range from 0 to 100, and the values for your bars might range from 2 to 12. You can sync the scales by checking
 **Sync Value Scales**
 in
 **Chart Properties**
 . For more information, see

Syncing Value Scales in a Dual-Scale chart

.

##
 Changing scale formatting

It is possible to have separate number formatting for both vertical axes in a grouped bar with line chart. For example, you could have percent symbols affixed to the values in one axis and currency symbols affixed to the values in the other. You can do this in the
 **Format**
 menus or the
 **Chart Properties**
 . Domo recommends that you use
 **Chart Properties**
 to make formatting changes, not the
 **Format**
 menus, because the options in the
 **Format**
 menus are overridden by formatting changes in
 **Chart Properties**
 . For more information about formatting values, see

Formatting Values in Your Chart

.

