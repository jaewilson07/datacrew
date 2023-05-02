

Intro
---------

In a vertical bar chart, the most common type of bar chart, the categories are represented along the horizontal axis, or x-axis, and the values are represented along the vertical axis, or y-axis. A horizontal bar chart has the same overall concept, but the categories are represented along the vertical axis and the values are represented along the horizontal axis.


 Powering bar charts
---------------------

Both vertical and horizontal bar charts require only two columns or rows of data from your DataSet—one for categories and one for values. However, you can add series columns to a vertical or horizontal bar chart if you want. Adding series data to a bar chart turns it into a different chart type, usually either a

grouped bar chart

, depending on the data.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows how the data from a typical column-based spreadsheet is converted into a vertical bar chart:

The following graphic shows how the data from a typical column-based spreadsheet is converted into a horizontal bar chart:

Customizing bar charts
------------------------

You can customize the appearance of a bar chart in a number of ways. Many customizations are possible by setting
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of bar charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Sort Each Category
  |
 Allows you to sort the items in each individual category in most kinds of multi-series bar and lollipop charts. You can choose an ascending or descending sort. If you select
 **Default**
 , the default sort is applied. This option does not work when the
 **Value Scale > Log Scale**
 box is checked.


 In the example at right, bars within all categories are sorted in descending order.
  |

|
|
 General > Sort on Totals
  |
 Allows you to sort categories in many kinds of bar and lollipop charts by their total values, in either ascending or descending order. If you select
 **Default**
 , the default sort is applied. This option does not work when the chart has automatic time scaling applied. (You can turn off automatic time scaling by checking the box for
 **Category Scale > Never Use Time Scale**
 .


 In the example at right, the categories are sorted by their totals in ascending order.
  |

|
|
 General > Maximum Bars
  |
 Allows you to specify the number of bars that appear in your bar chart. Data for all remaining bars is lumped into a single "Other" bar (unless you hide this bar using the
 **Hide 'Other' Bar**
 toggle.


 The example at right shows a bar chart in which the maximum number of bars has been set to 7.
  |

|
|
 General > Hide 'Other' Bars
  |
 Hides or shows the "Other" bar that appears when you set a maximum number of bars using the
 **Maximum Bars**
 option.
  |
 —
  |
|
 Category Scale (Y) > Position (horizontal bar only)
  |
 Allows you to set the orientation of the bars in the chart to the
 **Right**
 . The
 **Default**
 setting is set to the
 **Left**
 .
  |

|
|
 Category Scale > Never Use Time Scale
  |
 Determines which type of timeline is used in supported charts with time data.


 By default, when time data is used in supported charts, such as line and bar charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month.


 If you check this box, however, date data appears as it does in your DataSet. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet.


 This option is available for vertical bar charts only.
  |


 |
|
 Last Value Projection > Project Using (vertical bar only)
  |
 Determines whether a final value is projected in bar and line charts and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically by...
 * taking the current value for the period and comparing it to the previous period (forecasting),
* taking the average of the previous points in the chart, or
* using a linear regression.


 The example graphic shows a bar chart in which a final value has been projected using a linear regression. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Last Value Projection > Projection Value (vertical bar only)
  |
 Lets you specify the final projected value in a bar or line chart. This option only works if you have selected
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
 Last Value Projection > Previous Values to Average (vertical bar only)
  |
 Lets you specify the number of points to average to determine the final projected value in a bar or line chart. This option only works if you have selected
 **Average Previous Values**
 as the
 **Project Using**
 property. For more information, see

Projecting the Last Value in Your Chart

.
  |
 —
  |
|
 Grid Lines > Remove Min/Max/Avg Lines
  |
 Removes the minimum, maximum, and average lines that normally display on mouse-over in standard bar and line charts.
  |
 —
  |
|
 Grid Lines > Calculated Line
  |
 Determines whether a median or average line appears in your chart. If you select
 **None**
 , no line appears.
  |
 —
  |
|
 Value Scale > Title Position
  |
 Determines whether value scale labels in vertical bar charts appear to the left of the chart or above it.
  |
 —
  |
|
 Regression Line > Show Linear Regression Line
  |
 Allows you to add a regression line to your vertical bar chart. In the example at right, the dashed orange line represents the regression line.
  |

|
|
 Regression Line > Include Last Data Point
  |
 Determines whether the last data point in your bar chart is included in the calculation for the regression line. If your chart shows a timeline that is not complete (for example, November appears as the last month in the timeline but has not yet ended), you should check this box.
  |
 —

|
|
 Regression Line > Line Style
  |
 Lets you specify whether your regression line is solid or dashed (default).
  |
 —

|
|
 Regression Line > Line Color
  |
 Lets you select the color for the regression line.
  |
 —

|


**Video - Adding Regression Lines**

##
 Changing the size of bars in a bar chart

For any bar chart, you can set the percentage of space taken up by bars in that chart or specify a fixed bar width. For more information, see

Specifying the Size of bars in bar charts

.

