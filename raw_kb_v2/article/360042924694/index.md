

Intro
-------

A scatter plot chart has two value scales, one on the vertical axis (or y-axis) and one on the horizontal axis (or x-axis). These values are treated as coordinates; for every x and y value pair, a single point is plotted on the chart. This type of chart is similar to both

category scatter charts

and

bubble charts

. It is different from category scatter charts in that it includes two value scales rather than one value scale and one category scale, and it is different from bubble charts in that it requires only three columns instead of four.


 You can also build a scatter plot time chart, in which you include timeline data instead of value data on the x-axis. In this case, all points are plotted on their appropriate date/time coordinates. The position of a point for a given date/time coordinate is still determined by its y coordinate value, however.


**Video - Building a Scatter Plot Chart**

Powering scatter plot charts
------------------------------

A scatter plot chart requires two columns of data in your DataSet—either two columns for value data or one with value data and one with date-time data. You can also optionally add a series column.

*Note:**
 Normally Domo limits scatter plot charts


 to 25,000 rows of data (meaning if you aggregate one column down, you will get a maximum of 25,000 rows to render). However, if you add a series, this limit drops to 10,000.

For information about value, category, and series data, see

Understanding Chart Data

.

*Note:**
 As of our July 2017 release, the scatter plot chart has been updated and no longer aggregates data (which had the effect of lumping all data in a series into a single dot). If you want to use the old version of the chart, you can do so by selecting the scatter plot Legacy chart type.

In the Analyzer, you choose the columns containing the data for your scatter plot chart. For more information, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following chartic shows you how the data from the value columns in a typical column-based spreadsheet is converted into a scatter plot chart:

The following graphic shows you how the data from the date-time and value columns in a typical column-based spreadsheet is converted into a scatter plot time chart:

Customizing scatter plot charts
---------------------------------

You can customize the appearance of a scatter plot chart by editing its Chart Properties. For information about all chart properties, see

Chart Properties

. Unique properties of scatter plot charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
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
 Determines the color for the vertical "zero line" in bubble and scatter plot charts. This attribute does not work if the vertical zero line is the leftmost line in the chart (that is, the chart must contain negative values). In the example, the color has been set to blue.
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
 Regression Lines > Show Linear Regression Lines
  |
 Allows you to add a regression line for each series in a scatter plot or bubble chart.
  |

|


