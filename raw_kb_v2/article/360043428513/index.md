

Intro
-------


**Important:**
 The Bubble chart type has been deprecated, it is now part of the

Scatter Plot Chart

.

Similar to

scatter plot charts

, bubble charts have two value scales, and x and y coordinate pairs are plotted on the chart. bubble charts are more complex than scatter plot charts in that they include an additional dimension—bubble size. The size of any bubble on the chart is relative to the size of the other bubbles in the chart. For example, if your chart contained two series, one with a size value of 25 and the other with a size value of 50, the bubble with a value of 50 would appear twice the size of the smaller bubble in the chart.


 You can also apply timeline data instead of value data to the x-axis. In this case, all bubbles are plotted on their appropriate date/time lines. The position of a bubble on a given line is still determined by its y coordinate value, however.


 Powering bubble charts
------------------------

A bubble chart requires three columns or rows of data from your DataSet:

 A column or row containing values to be measured on the y-axis.
* A column or row containing values or date-time data to be measured on the x-axis
* A column or row containing size values for each bubble.

You can also add an optional series column if you want. If you do not include a series column, no legend appears. Prior to our August 2017 release, series data was required, but this is no longer the case. You can still use the old version of the chart by selecting the bubble (Legacy) chart type.


**Note**
 : When you drill down into a bubble chart, you can drill into the series data only,
 *not*
 the x- or y-axis data. For more information about drilling into data, see

Drilling into Data


 .

For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you can choose the columns containing the data for your bubble chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following chartic shows how the data from a typical column-based spreadsheet is converted into a standard x-y coordinate bubble chart:

The following chartic shows how the data from a typical column-based spreadsheet is converted into a bubble chart with date-time data:

Customizing bubble charts
---------------------------

You can customize the appearance of a bubble chart by editing its chart properties. For information about all chart properties, see

Chart Properties

. Unique properties of bubble charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Grid Lines > Hide All Grids
  |
 Turns off grid lines. This is useful when you want to create a "quadrant chart" (that is, a chart divided into four sections using two coordinate lines).
  |
 —
  |
|
 Grid Lines > Y Zero Line Color
  |
 Determines the color of the horizontal "zero line" in bubble and scatter plot charts. This attribute does not work if the zero line is also the baseline in the chart (that is, the chart must contain negative values). In the example, the color has been set to red.
  |

|
|
 Grid Lines > Y Zero Line Width
  |
 Determines the width of the horizontal "zero line" in bubble and scatter plot charts. This attribute does not work if the zero line is also the baseline in the chart (that is, the chart must contain negative values). In the example, this property has been set to

5

.
  |

|
|
 Grid Lines > X Zero Line Color
  |
 Determines the color for the vertical "zero line" in bubble and scatter plot charts. This attribute does not work if the vertical zero line is the leftmost line in the chart (that is, the chart must contain negative values). In the example, the color has been set to red.
  |

|
|
 Grid Lines > X Zero Line Width
  |
 Determines the width of the vertical "zero line" in bubble and scatter plot charts. This attribute does not work if the zero line is the leftmost line in the chart (that is, the chart must contain negative values). In the example, this property has been set to

5

.
  |

|
|
 Quadrant Lines > X Scale Value
  |
 Allows you to set the value for the vertical quadrant line when creating a "quadrant chart." If you do not specify a value for this property, no vertical quadrant line appears.


 The example shows a bubble chart in which both the X and Y scale quadrant lines have been set to the midpoint value of 50. This dissects the chart into four quadrants of equal area.
  |

|
|
 Quadrant Lines > Y Scale Value
  |
 Allows you to set the value for the horizontal quadrant line when creating a "quadrant chart." If you do not specify a value for this property, no horizontal quadrant line appears.
  |
 —
  |
|
 Regression Lines > Show Linear Regression Lines
  |
 Allows you to add a regression line for each series in a scatter plot or bubble chart.
  |

|


