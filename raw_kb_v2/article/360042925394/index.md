

Intro
-------

Find out about chart properties available for charts in the "Other" and "Filter" categories in Chart Picker, such as Radar charts, Gantt charts, stock-type charts, slicer Cards, etc.


 "General" properties
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
 View
  |
 Determines whether a calendar displays data for an entire year, for a month, or for a single day. Examples of each of these views are shown at right. If you select
 **Auto**
 (which is the default), the calendar determines the view based on the breadth of data in the DataSet. For example, if your DataSet contains data for more than one month, the year view displays automatically so all represented months can be shown.
  |

|
|
 Dates From
  |
 Determines whether the dates that appear in a calendar are to be determined automatically based on your DataSet (which is the default) or you plan to specify them manually using the
 **Year**
 ,
 **Selected Year**
 ,
 **Month**
 , and
 **Day**
 properties. For example, if the series of dates in your DataSet started with "01-06-2014" and you chose the "Day" view, then by default Domo would show the data for "01-06-2014" because it was the first value in the DataSet. If you wanted to show a different date, you could do so by selecting
 **User Specified**
 here and then specifying the date using the
 **Year**
 ,
 **Selected Year**
 ,
 **Month**
 , and
 **Day**
 properties.
  |
 —
  |
|
 Year
  |
 For a calendar, determines the year to be used when
 **User Specified**
 is selected for the
 **Dates From**
 property. Options include
 **Current**
 (which is the default),
 **Previous**
 ,
 **Next**
 , and
 **Specified**
 . If you select
 **Specified**
 , you enter the specified year in the
 **Selected Year**
 field. This option is useful if your DataSet contains data for more than one year.
  |
 —
  |
|
 Selected Year
  |
 For a calendar, lets you specify the year for your data when you have selected
 **Dates From > User Specified**
 and
 **Year > Specified**
 . This option is useful if your DataSet contains data for more than one year.
  |
 —
  |
|
 Month
  |
 For a calendar, lets you specify the month for your data when you have selected
 **Dates From > User Specified**
 .
 **Current**
 is the default.
  |
 —
  |
|
 Day
  |
 For a calendar, lets you specify the day of the month for your data when you have selected
 **Dates From > User Specified**
 .
 **Current**
 is the default.
  |
 —
  |
|
 First Day of Week
  |
 For a calendar, lets you specify the first day of the week. The default is
 **Sunday**
 .
  |
 —
  |
|
 Background Fill
  |
 Specifies the background fill color for a spark line or spark bar chart. If
 ****Default****
 is selected, no background color is used.
  |

|
|
 Single Column
  |
 Determines whether the filters in your slicer Card are displayed in a single column. By default the filters are left-aligned unless you choose to center them using the
 **Center Horizontally**
 option. They are also fitted to their individual "bubbles" unless you choose the
 **Equal Width Items**
 option.


 The screenshot at right shows a slicer Card in which this option is being used.
  |

|
|
 Center Horizontally
  |
 Determines whether the filters in your slicer Card are centered horizontally on the Card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a slicer Card in which this option has been set.
  |

|
|
 Equal Width Items
  |
 Determines whether the "bubbles" for filters in your slicer Card are the same width; otherwise they are fitted to the width of the filters. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a slicer Card in which this option has been set.
  |

|
|
 Fill Width
  |
 Determines whether the "bubbles" for filters in your slicer Card fill the entire width of the Card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a slicer Card in which this option has been set.
  |

|
|
 Center Text
  |
 Centers the text within each "bubble" in your slicer Card. This option is available only when you check the box for
 **Single Column**
 .


 The screenshot at right shows a slicer Card in which this option has been set (along with
 **Fill Width**
 ).
  |

|
|
 Single Row
  |
 Determines whether the filters in your slicer Card are displayed in a row instead of a column. By default the filters appear at the top of the Card unless you choose to center them using the
 **Center Vertically**
 option.


 The screenshot at right shows a slicer Card in which this option is being used (with a pagination control to view filters that don't fit in the Card).
  |

|
|
 Center Vertically
  |
 Determines whether the filters in your slicer Card are centered vertically on the Card. This option is available only when you check the box for
 **Single Row**
 .


 The screenshot at right shows a slicer Card in which this option has been set.
  |

|
|
 Selected Color
  |
 Determines the color of the filter bubbles in your slicer Card when someone mouses over them.
  |
 —
  |
|
 Vertical Alignment
  |
 Determines the vertical alignment of a Sankey chart. The default is
 ****Top****
 .


 The examples at right show, in order, a Sankey chart with top alignment, middle alignment, and bottom alignment.
  |

|
|
 Outline Sort
  |
 Applies outline (hierarchical) sorting in your Sankey chart if this has been enabled in your DataSet.
  |
 —
  |

"Category Scale" properties
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
 Wrap Width
  |
 Allows you to specify the number of pixels at which category labels will wrap in radar charts.
  |
 —
  |
|
 Fixed Area Width
  |
 Determines a fixed width for the category label area in horizontal bar, horizontal symbol, and category scatter charts.
  |
 —
  |
|
 Fixed Width Margin
  |
 Determines the margin between category labels and the chart in horizontal bar, horizontal symbol, and category scatter charts. This property does not work unless
 **Fixed Area Width**
 has been set.
  |
 —
  |
|
 Justification (Category Scale)
  |
 Determines the justification for multi-line category item labels in horizontal bar, horizontal symbol, and category scatter charts—either
 **Left**
 or
 **Right**
 . This works only when the
 **Fixed Area Width**
 property has been set.
  |
 —
  |

"Radar Settings" properties
-----------------------------

The properties in the following table are found in the
 **Radar Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Series Transparency
  |
 Determines the transparency for the fill areas in a radar chart. You can specify any value between 0 and 100, where 0 means the fill areas are completely opaque and 100 means they have no fill at all. In the example, the transparency has been set to 20.
  |

|

"Theme" properties
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
 Allows you to change the color theme for calendars. For more information about setting colors, see

Setting Color Rules for a Chart

.
  |
 —
  |

"Time Scale (X)" properties
-----------------------------

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
 Show Label
  |
 Hides or shows time scale labels in Gantt charts. Labels are shown by default.


 The example shows a Gantt percent complete chart in which time scales have been removed.
  |

|

"Value Options" properties
----------------------------

The properties in the following table are found in the
 **Theme**
 category in Chart Properties.


 Option
  |
 Description
  |
| --- | --- |
|
 Hide
  |
 Hides the summary value in a spark Line or spark Bar chart. (This is the
 **first**
 number that appears in the chart's built-in gauge.)
  |
|
 Value
  |
 Indicates how a spark line or spark bar chart's summary value is derived. You can choose from any of the following options for this property:


|  |  |
| --- | --- |
|
 First Value
  |
 The summary value is the first value on your line. This is the default option.
  |
|
 Last Value
  |
 The summary value is the last value on your line.
  |
|
 Sum
  |
 The summary value is the sum of all values on the line.
  |
|
 Average
  |
 The summary value is the average of all values on the line.
  |
|
 Minimum
  |
 The summary value is the minimum value on the line.
  |
|
 Maximum
  |
 The summary value is the maximum value on the line.
  |
|
 Count
  |
 The summary value is a count of the number of values on the line.
  |

|
|
 Size
  |
 Specifies the size of the summary value in a spark line or spark bar chart. You can choose from
 ****Medium****
 (default) or
 ****Small****
 .
  |
|
 Value Format
  |
 Determines the general number format for your spark line/spark bar chart's summary value. Options include
 ********Number********
 (which includes no special formatting),
 ********Currency********
 (in which a currency symbol is affixed), and
 ********Percentage********
 (in which a percent symbol is affixed).
  |
|
 Divide Value By
  |
 Refers to the number that the gauge value in a spark line or spark bar is to be divided by, if any. This option is useful when the value is very large and you want to abbreviate it by dividing by a common number. For example, if the gauge value represented millions of dollars, you could choose to divide by millions—the gauge value would then be reduced to more comprehendible single digits. When you choose to divide by
 ********Percentage********
 , the gauge value is multiplied by 100.
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in the summary value in a spark line or spark bar chart. You can choose from
 ********Default********
 ,
 ********None********
 , and options for numbers of decimal places (from ".0" to ".00000"). By default, Domo automatically determines the optimal number of decimal places for the gauge value. When you select
 ********None********
 , the value is rounded to the nearest whole number.
  |
|
 Negative Numbers
  |
 Determines the format for negative numbers in a spark line or spark bar chart.


 If you select
 ********-100********
 , negative values have a minus symbol affixed. If you select
 ********(100)********
 , negative values are enclosed in parentheses.
  |

"Change Value Options" properties
-----------------------------------

The properties in the following table are found in the
 **Change Value Options**
 category in Chart Properties.


 Option
  |
 Description
  |
 |
| --- | --- | --- |
|
 Hide
  |
 Hides the change value in a spark line or spark bar chart. (This is the
 *second*
 number that appears in the chart's built-in gauge. For example, in the screenshot of the chart at the top of this article, the value is -74.35%.)
  |
 —
  |
|
 Value
  |
 Specifies whether the change value in a spark line or spark bar chart is a percent change (default) or a difference in values.
  |
 —
  |
|
 Data
  |
 Specifies whether the change value in a spark line or spark bar chart is derived from the first and last values in the chart (default) or the last two values in the chart.
  |
 —
  |
|
 Size
  |
 Specifies the size of the change value in a spark line or spark bar chart. You can choose from
 **Medium**
 (default) or
 **Small**
 .
  |
 —
  |
|
 Direction Indicator
  |
 Specifies whether the symbol used to represent change in the change value in a spark line or spark bar chart is an arrow (default), a curved arrow, or a triangle. Examples of all three of these are shown at right.
  |

|
|
 Reverse Color Direction
  |
 By default, if your change value in a spark line or spark bar chart is positive, the value appears green; if it is negative, the value appears red. By setting the
 **Reverse Color Direction**
 property, you can switch this default behavior. This is useful for gauges in which low values are ideal (such as a gauge that keeps track of workplace accidents).
  |
 —
  |
|
 Value Format
  |
 Determines the general number format for your spark line or spark bar chart's change value. Options include
 ****Number****
 (which includes no special formatting),
 ****Currency****
 (in which a currency symbol is affixed), and
 ****Percentage****
 (in which a percent symbol is affixed).


**Note:**
 The
 **Number**
 and
 **Currency**
 options will
 *not*
 work unless you set
 **Change Value Options > Value**
 to
 **Value Change**
 .


 |
 —
  |
|
 Hover Format
  |
 Determines the number format for your spark line or spark bar chart's hovers (i.e. the text that appears when you mouse over a data point in the chart). Options include
 ****Number****
 (which includes no special formatting),
 ****Currency****
 (in which a currency symbol is affixed), and
 ****Percentage****
 (in which a percent symbol is affixed).


 For more information about hovers, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Hover Decimal Places
  |
 Determines the number of decimal places that appear in values in your spark line or spark bar chart's hovers (i.e. the text that appears when you mouse over a data point in the chart).


 For more information about hovers, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Positive Color
  |
 Specifies the color used in a spark line or spark bar chart when the degree of change in your chart is positive.
  |
 —
  |
|
 Negative Color
  |
 Specifies the color used in a spark line or spark bar chart when the degree of change in your chart is negative.
  |
 —
  |

"Line Options" properties
---------------------------

The properties in the following table are found in the
 **Line Options**
 category in Chart Properties.


 Option
  |
 Description
  |
 |
| --- | --- | --- |
|
 Style
  |
 Determines whether the line in your spark line chart is angular (
 **Plain**
 ) or curved.
 **Plain**
 is the default.
  |
 —
  |
|
 Thickness
  |
 Determines whether the line in your spark line chart is thin (default), medium, or thick. The example at right shows a spark line chart in which
 **Thick**
 has been selected.
  |

|
|
 Hide Area Fill
  |
 Hides the area fill in your spark line chart. The example at right shows a chart in which this has been done.
  |

|

"Node Options" properties
---------------------------

The properties in the following table are found in the
 **Node Options**
 category in Chart Properties.


 Option
  |
 Description
  |
 |
| --- | --- | --- |
|
 Fill Color
  |
 Determines the color of the nodes in a Sankey chart (i.e. the vertical lines separating each item on both the left and right sides). By default these are the same color as the output lines. If you choose a color here, all nodes will be the same color.


 In the example at right, all nodes are colored dark red.
  |  |
|
 Border Color
  |
 Determines the border color for the nodes in a Sankey chart (i.e. the vertical lines separating each item on both the left and right sides). By default, no borders are shown.


 In the example at right, all nodes have dark blue borders.
  |  |
|
 Percent Space Between Nodes
  |
 Determines the amount of space between nodes in a Sankey chart. You can enter any value between 0 (meaning no white space appears between nodes) and 80. The default is about 15.


 The first example at right shows a Sankey chart with a percent space of 0. The second example shows the same chart with a percent space of 60.
  |

|
|
 Hover Text
  |
 Lets you specify the hover text that appears when you mouse over a node in a Sankey chart. (By default, the hover text shows you the name and total value for the item.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |

"Flow Options" properties
---------------------------

The properties in the following table are found in the
 **Flow Options**
 category in Chart Properties.


 Option
  |
 Description
  |
 |
| --- | --- | --- |
|
 Fill Color
  |
 Determines the color of the connector lines in a Sankey chart. By default these are all different colors to aid visibility. If you choose a color here, all connector lines will be the same color (however, shading will be added in spots where lines cross other lines so visibility is improved).


 In the example at right, all connector lines are colored purple.
  |  |
|
 Show Borders
  |
 When checked, all connector lines in a Sankey chart will have borders (as shown in the example at right).
  |  |
|
 Node Margin
  |
 Determines the amount of space between the nodes and their connector lines in a Sankey chart. You can enter any value between 0 (the default—no space separates the nodes and lines) and 20.


 In the example, a margin space of 10 has been set.
  |  |
|
 Hover Text
  |
 Lets you specify the hover text that appears when you mouse over a connector line in a Sankey chart. (By default, the hover text shows the "From" and "To" items followed by the value of the pairing.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |

"Entry Indicator" and "Exit Indicator" properties
---------------------------------------------------

The properties in the following table are found in the
 **Entry Indicator**
 and
 **Exit Indicator**
 categories in Chart Properties.


 Option
  |
 Description
  |
 |
| --- | --- | --- |
|
 Show
  |
 Lets you turn on entry/exit indicators for your Sankey chart. Entry indicators appear for nodes in which the value exiting the node is greater than the value entering the node. Exit indicators appear for nodes in which the value entering the node is greater than the value exiting the node. If you mouse over a node, hover text appears showing you the difference in values.


 The screenshot shows an example of a Sankey chart with two entry indicators, for Portugal and Spain.
  |  |
|
 Color
  |
 Lets you change the color of entry/exit indicators in your Sankey chart.


 In the screenshot, the color of the entry indicators has been changed to dark red.
  |  |
|
 Hover Text
  |
 Lets you specify the hover text that appears when you mouse over an entry/exit indicator in a Sankey chart. (By default, the hover text shows the difference in values between the input and output nodes.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |


