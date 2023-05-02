

Intro
-------

Refer to this topic to find information about chart properties available for Bar and Bar-type charts, such as those for configuring bar width and height, regression lines, last value projections, and so on.


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
 Sort Each Category
  |
 Allows you to sort the items in each individual category in most kinds of multi-series Bar and Lollipop charts. You can choose an ascending or descending sort. If you select
 **Default**
 , the default sort is applied. This option does not work when the
 **Value Scale > Log Scale**
 box is checked.


 In the example at right, bars within all categories are sorted in descending order.
  |

|
|
 Sort on Totals
  |
 Allows you to sort categories in many kinds of Bar and Lollipop charts by their total values, in either ascending or descending order. If you select
 **Default**
 , the default sort is applied. This option does not work when the chart has automatic time scaling applied. (You can turn off automatic time scaling by checking the box for
 **Category Scale > Never Use Time Scale**
 .


 In the example at right, the categories are sorted by their totals in ascending order.
  |

|
|
 Maximum Bars
  |
 Allows you to specify the number of bars that appear in your Bar chart. Data for all remaining bars is lumped into a single "Other" bar (unless you hide this bar using the
 **Hide 'Other' Bar**
 toggle.


 The example at right shows a Bar chart in which the maximum number of bars has been set to 7.
  |

|
|
 Hide 'Other' Bars
  |
 Hides or shows the "Other" bar that appears when you set a maximum number of bars using the
 **Maximum Bars**
 option.
  |
 —
  |
|
 Series on Left Scale
  |
 Refers to the number of lines and bars in Grouped Bar with Line, Stacked Bar with Line, and Grouped and Stacked Bar with Line graphs. By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines in
 **Chart Properties**
 . For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering
 `2`
 in the
 **Series on Left Scale**
 field. For more information about Grouped Bar with Line, Stacked Bar with Line, and Grouped and Stacked Bar with Line graphs, see

Grouped and Stacked Bar with Line Chart

, respectively.
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
 Number of Symbol Series
  |
 Refers to the number of series in Grouped Bar with Symbol and Stacked Bar with Symbol graphs in which symbols appear in place of lines. By default, the first series that appears in your legend is made up of symbols, and all remaining series become bars. However, you can convert series from bars to symbols by entering the desired number of symbols series in
 **Chart Properties**
 . For example, if your chart had three series, the first series appearing in your legend would appear as symbols, and the remaining two series would appear as bars. You could turn the second series into symbols by entering
 `2`
 in the
 **Number of Symbol Series**
 field. For more information about Grouped Bar with Line and Stacked Bar with Line graphs, see

Stacked Bar with Line Graph

, respectively.
  |
 —
  |
|
 Sync Value Scales
  |
 Determines whether value scales in dual-scale graphs (such as Grouped Bar with Line and Stacked Bar with Line graphs) are synced. For more information, see

Syncing Value Scales in a Dual-Scale Chart

. The example shows a chart with synced value scales.
  |

|
|
 Hide Second Scale
  |
 Hides the second value scale in dual-scale graphs (such as Grouped Bar with Line and Stacked Bar with Line graphs) in which you have synced the scales using the
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
 Syncs the zero lines in dual-scale graphs with negative values so the "0" values match.


 The first example at right shows a dual-scale graph with scales that do not match. The right-side graph is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case, the scale starts at -2000. Because the scales do not match, the graph is difficult to interpret.


 The second example shows the same graph with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
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
 Number of Running Total Series
  |
 Lets you choose the number of aggregated series in most Running Total charts. Series that remain aggregated are determined by your chart series order as it appears in your legend. For example, if you had a Running Total Grouped Bar chart and you indicated that you wanted two running total series, the bars corresponding to the first two bar series in your legend would remain aggregated, and all other bars would show their literal values.


 In the example, only one series has been selected as a running total series. This is the blue series at the bottom of each stack. All other series are shown with their literal values.
  |

|
|
 Hide Group in Legend
  |
 Hides the legend text for the "group bars" in Nested Bar graphs (the vertical or horizontal gray bars that show the total for each category).
  |
 —
  |
|
 Group Legend Text
  |
 Lets you specify the legend text for the "group bars" in Nested Bar graphs (the vertical or horizontal gray bars that show the totals for each category). In the example, the default group bar legend text has been replaced with the words "Group Total."
  |

|

"Bar Settings" Properties
---------------------------

The properties in the following table are found in the
 **Bar Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Width Percentage
  |
 Determines the percentage of space taken up by each bar in a vertical bar chart. For more information, see

Specifying the Size of Bars in Bar Charts

. The first example shows a Vertical Bar graph with a
 **Width Percentage**
 of
 `20`
 . The second example shows the same graph with a
 **Width Percentage**
 of
 `100`
 .
  |


 |
|
 Height Percentage
  |
 Determines the percentage of space taken up by each bar in a horizontal bar chart. For more information, see

Specifying the Size of Bars in Bar Charts

. The first example shows a Horizontal Bar graph with a
 **Height Percentage**
 of
 `20`
 . The second example shows the same graph with a
 **Height Percentage**
 of
 `100`
 .
  |


 |
|
 Fixed Bar Width
  |
 Determines a fixed width for all bars in a vertical bar graph, in pixels. If a
 **Width Percentage**
 value has been specified, this property supersedes that percentage. If the
 **Fixed Bar Width**
 exceeds the total space allocated to each bar, bars will overlap. For more information, see

Specifying the Size of Bars in Bar Charts

.
  |
 —
  |
|
 Fixed Bar Height
  |
 Determines a fixed height for all bars in a horizontal bar graph, in pixels. If a
 **Height Percentage**
 value has been specified, this property supersedes that percentage. If the
 **Fixed Bar Height**
 exceeds the total space allocated to each bar, bars will overlap. For more information, see

Specifying the Size of Bars in Bar Charts

.
  |
 —

|
|
 Non-Stacked Interactivity
  |
 Turns off the default Stacked Bar graph interactivity. When you hover over any series in a Stacked Bar, 100% Stacked Bar, or Running Total Stacked Bar graph, all of the corresponding series are highlighted and connected across the graph, as shown in the first screenshot at right. However, if series data is missing for any stack in the graph, the highlighting is removed and a "0" appears in the stack, as shown in the second screenshot. By checking
 **Non-Stacked Interactivity**
 , the connecting lines, highlighting, and "0" no longer appear upon hover, as shown in the third screenshot. For more information about DataSet columns, see

Applying DataSet Columns to Your Chart

.
  |

|
|
 Set Bar Width/Height by Value
  |
 In a vertical or horizontal Stacked Bar graph, causes individual bars in a stack to be sized according to their value, which may make it easier to see differences between series. For example, in the screenshot at right, the viewer can quickly see that Team A sold the most widgets in Prince George's county, and Team C sold the least widgets in St. Mary's county.
  |

|
|
 First Bar Series Count
  |
 Lets you specify how many series make up the first bar of any category in Grouped and Stacked Bar graphs. The default setting for this property is
 `1`
 , meaning the first bar is made up of only one series, and the second bar is divided up into all the remaining series. If you change this value, the first bar is divided into the indicated number of series, and the second bar is adjusted accordingly. For example, if a category contained three series, by default the first bar would contain one series and the second would contain the other two. However, if you entered
 `2`
 for
 **First Bar Series Count**
 , the first bar would be divided into two series, and the second bar would contain only one.
  |
 —
  |
|
 Symbol Color
  |
 Allows you to set the color for bins in Histograms. The default is blue.
  |
 —
  |
|
 Histogram Bins
  |
 Lets you change the number of bins that appear in a Histogram. An optimal number of bins is determined automatically by Domo, but you can choose any number between 3 and 20. Changing the number of bins may create "gaps" for ranges with no data. The example at right shows one such gap in the 4.9-5.0 data range. This indicates that there were no items in the DataSet with a value between 4.9 and 5.0.
  |

|

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
 Removes the minimum, maximum, and average lines that normally display on mouse-over in many kinds of Bar and Line graphs.
  |
 —
  |
|
 Calculated Line
  |
 Determines whether a median or average line appears in your Bar chart. If you select
 **None**
 , no line appears.
  |
 —
  |

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
 Show (Data Label)
  |
 Determines whether data labels are shown parallel to the bars or rotated 90 degrees in vertical Bar-type charts and Pareto charts. For Pareto charts, you can also select an
 **On Hover**
 option for this property.


 Chart hovers are separate from data labels and have their own settings. For more information about data labels and hovers, see

Formatting Data Label and Hover Text in Your Chart

.


 The example shows a chart in which data labels are shown parallel to the bars.
  |

|
|
 Show One Label
  |
 Determines whether a single label is shown for an entire stack in a Vertical Stacked Bar or Running Total Stacked Bar graph. This property applies only to data labels that have been set to always appear (by selecting
 `Always`
 for the
 **Show**
 property). By default, this single label represents the topmost data item in a stack, but you can change the represented data item by entering the desired macro in the
 **Text**
 field. For example, to implement a single label that represents the total value of a stack, you would enter
 `%_CATEGORY_TOTAL`
 in the
 **Text**
 field. This is the data label that is shown in the example at right.
  |

|

"Category Scale Properties"
-----------------------------

The properties in the following table are found in the
 **Category Scale**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Fixed Area Width
  |
 Determines a fixed width for the category label area in horizontal Bar, horizontal Symbol, and Category Scatter graphs.
  |
 —
  |
|
 Fixed Width Margin
  |
 Determines the margin between category labels and the graph in horizontal Bar, horizontal Symbol, and Category Scatter graphs. This property does not work unless
 **Fixed Area Width**
 has been set.
  |
 —
  |
|
 Justification (Category Scale)
  |
 Determines the justification for multi-line category item labels in horizontal Bar, horizontal Symbol, and Category Scatter graphs—either
 `Left`
 or
 `Right`
 . This works only when the
 **Fixed Area Width**
 property has been set.
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
 Determines whether a final value is projected for bars in a Grouped Bar with Line graph and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically either by taking the average of the previous points in the graph or by using linear regression. The example at right shows a Grouped Bar with Line graph in which a final value for the bars has been projected using the average of the four previous values. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Projection Value
  |
 Lets you specify the final projected value for the bars in a Grouped Bar with Line graph. This only works if you have selected
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
 Lets you specify the number of points to average to determine the final projected value for the bars in a Grouped Bar with Line graph. This only works if you have selected Average Previous Values as the Project Using property. For more information, see

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
 Determines whether a final value is projected for lines in a Grouped Bar with Line graph and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically either by taking the average of the previous points in the graph or by using linear regression. The example at right shows a Grouped Bar with Line graph in which a final value for the lines has been projected using the average of the four previous values. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Projection Value
  |
 Lets you specify the final projected value for the lines in a Grouped Bar with Line graph. This only works if you have selected
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
 Lets you specify the number of points to average to determine the final projected value for the lines in a Grouped Bar with Line graph. This only works if you have selected
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
 selected. The second example shows the same chart with the
 **Tooltip**
 selected.
  |


 |

"Value Options" and "Change Value Options" Properties
-------------------------------------------------------

For information about these Spark Bar properties, see

Properties for Miscellaneous Chart Types

.

