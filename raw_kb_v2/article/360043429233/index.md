

Intro
-------

A basic line chart uses a single trendline to display data, usually for a series of dates or times. Most line charts display lines horizontally—that is, you scroll left or right to follow the lines. In these horizontal charts, category data appears on the horizontal axis (x-axis) and value data appears on the vertical axis (y-axis). Domo also includes several vertical line charts, in which you scroll up or down to follow the lines. In vertical line charts, category data appears on the y-axis and value data appears on the x-axis.


 Powering line charts
----------------------

Line charts require only two columns or rows of data from your DataSet—one for categories (generally dates or times) and one for values. However, you can add series columns to a basic line chart if you want. Adding series data to a line chart may turn it into a

multi-line chart

or may simply show the two lines side by side, depending on the data.


 For information about value, category, and series data, see

Understanding Chart Data

.


 There are several different sub-types of basic line charts. These are built in the same way as regular line charts but have different features.

 Horizontal symbol line
* Horizontal step line
* Horizontal curved line
* Horizontal curved symbol line
* Running total line (discussed in more detail

here

)
* Vertical symbol line
* Vertical curved line
* Vertical step line
* Vertical symbol line
* Vertical curved symbol line

*Note:**
 Symbols are auto-selected based on the series. You cannot assign a specific symbol to a given series.


 All of these line chart types become

multi-line charts

if series data is present.


 For information about and screenshots of these chart sub-types, see

Available Chart Types

.


 In the Analyzer, you choose the columns containing the data for your line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a basic horizontal line chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical line chart:

Customizing line charts
-------------------------

You can customize the appearance of a line chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of line charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Show Right Scale
  |
 Includes a second vertical scale in most kinds of multi-line line charts, with or without date or time data. This is useful in situations where you want to display lines with vastly different value increments in the same chart. In the example at right, the left scale shows values in increments of $20,000 and the right scale shows values in increments of 2. Because two scales are present, both lines can be interpreted independently on their own scales. If there was only one scale, the $20,000 increments would be used for both lines, so one of the lines would appear flat.


 This property (and
 **General >**
**lines on Left Scale**
 ) can only be used in line charts with more than one line. All line chart subtypes are compatible except for step line charts.
  |

|
|
 General > Lines on Left Scale
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
 General > Sync Zero Lines
  |
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match. For line charts, this works only when
 **General > Show Right Scale**
 is checked.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
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


 This option is
 *not*
 available for step line charts.
  |


 |
|
 Grid lines > Remove Min/Max/Avg lines
  |
 Removes the minimum, maximum, and average lines that normally display on mouse-over in standard bar and line charts.
  |
 —
  |
|
 Last Value Projection > Project Using
  |
 Determines whether a final value is projected in bar and line charts and, if so, how this value is determined. You can enter a specific value for a projection or set Domo to project a value automatically by...
 * taking the current value for the period and comparing it to the previous period (forecasting),
* taking the average of the previous points in the chart, or
* using a linear regression.


 The example at right shows a line chart in which a final value has been projected using a linear regression. For more information, see

Projecting the Last Value in Your Chart

.
  |

|
|
 Last Value Projection > Projection Value
  |
 Lets you specify the final projected value in a bar or line chart. This only works if you have selected
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
 Last Value Projection > Previous Values to Average
  |
 Lets you specify the number of points to average to determine the final projected value in a bar or line chart. This only works if you have selected
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
 Scale Marker Range > Minimum Value
  |
 Lets you specify the minimum value for a scale marker range in a line chart. This value makes up the bottommost border of the range in the chart. The example at right shows a typical line chart in which a scale marker range has been set, with the arrow pointing out the minimum value of the range. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 Scale Marker Range > Maximum Value
  |
 Lets you specify the maximum value for a scale marker range in a line chart. This value makes up the topmost border of the range in the chart. The example at right shows a typical line chart in which a scale marker range has been set, with the arrow pointing out the maximum value of the range. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 Scale Marker Range > Color
  |
 Lets you select the color for the scale marker range in a line chart. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |
 —

|
|
 Scale Marker Range > Show lines
  |
 Determines whether minimum and maximum lines are shown for scale marker ranges in line charts. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |
 —

|
|
 Scale Marker Range > Fill Outliers
  |
 Determines whether outlier regions (that is, regions of a line falling outside of a scale marker range) are filled in line charts in which scale marker ranges have been set. The example at right shows a typical line chart in which a scale marker range has been set, with arrows pointing out the filled outliers. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 General > Show as Running Totals
  |
 Lets you specify whether lines appear with running totals in several kinds of horizontal line charts. In other words, each point in a series line displays the cumulative total of all points in the line up to that point.


 The example screenshots show the same curved line chart without and with running totals. In the first example,
 **Show as Running Totals**
 is off so the chart appears with each data point reflecting only the new data up to that point. In the second example,
 **Show as Running Totals**
 is on so each data point reflects all of the data in the line up to that point.


 This property is available for the following kinds of line charts: curved line, step line, symbol line, and curved symbol line. Several types of charts have built-in running total functionality, so there is no need to set a chart property. These include the following:

running total bar charts

,

running total grouped bar charts

,

running total stacked bar charts

, and

running total line charts

.
  |


 |
|
 Regression line > Show Linear Regression Line
  |
 Allows you to add a regression line to your line chart. Regression lines are available for most line chart subtypes but is not available for multi-line charts.


 In the example at right, the dashed orange line represents the regression line.
  |

|
|
 Regression line > Include Last Data Point
  |
 Determines whether the last data point in your line chart is included in the calculation for the regression line. If your chart shows a timeline that is not complete (for example, November appears as the last month in the timeline but has not yet ended), you should check this box.
  |
 —
  |
|
 Regression line > Line Style
  |
 Lets you specify whether your regression line is solid or dashed (default).
  |
 —
  |
|
 Regression line > Line Color
  |
 Lets you select the color for the regression line.
  |
 —
  |
|
 Outlier Filtering > Show When Points Above
  |
 Filters your line chart to show only those lines with any values above the value you specify. Note that
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
 Outlier Filtering > Show When Points Below
  |
 Filters your line chart to show only those lines with any values below the value you specify. Note that
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


**Note:**
 You can now create Line charts that apply Color Rules to each point on the line individually. You can set it to change the color when it is above, below, or between certain thresholds. The Line chart must have Symbols enabled in order for the colors to show.


**Video - How to Add Regression Lines**


