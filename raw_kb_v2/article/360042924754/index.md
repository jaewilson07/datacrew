

Intro
-------

A multi-line chart is a basic

line chart

with one or more additional lines that represent comparison trends.


 Powering multi-line charts
----------------------------

This type of chart requires three columns or rows from your DataSet—one for categories (generally dates), one for values, and one for series items. You should have at least two different series in your DataSet, each of which is represented in the chart as a line. If you have more than two series, each additional series is implemented as an additional line in the chart. If your DataSet includes any series items with only one occurrence, those items appear as dots in the chart.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your multi-line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a multi-line chart:

Customizing multi-line charts
-------------------------------

You can customize the appearance of a multi-line chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of multi-line charts include the following. You can click a thumbnail image to see a larger image.


**Note:**
 Though
 **Last Value Projection**
 properties appear in the
 **Chart Properties**
 for multi-line charts, they work only when the chart contains only one series.


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
 Includes a second vertical scale in most kinds of multi-line charts, with or without date or time data. This is useful in situations where you want to display lines with vastly different value increments in the same chart. In the example at right, the left scale shows values in increments of $20,000 and the right scale shows values in increments of 2. Because two scales are present, both lines can be interpreted independently on their own scales. If there was only one scale, the $20,000 increments would be used for both lines, so one of the lines would appear flat.
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
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match. For multi-line charts, this only works when
 **General > Show Right Scale**
 is checked.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
  |


 |
|
 General > Show as Running Totals
  |
 Lets you specify whether lines appear with running totals in most kinds of Line charts. In other words, each point in a series line displays the cumulative total of all points in the line up to that point.


 The example screenshots show the same curved line chart without and with running totals. In the first example,
 **Show as Running Totals**
 is off so the chart appears with each data point reflecting only the new data up to that point. In the second example,
 **Show as Running Totals**
 is on so each data point reflects all of the data in the line up to that point.


 This property is available for the following kinds of line charts: multi-line, curved line, symbol line, and curved symbol Line.
  |


 |
|
 Category Scale > Never Use Time Scale
  |
 Determines which type of timeline is used in line and multi-line charts.


 By default, when time data is used in these charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month.


 If you check this box, however, date data appears as it does in your DataSet. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet.
  |


 |
|
 Grid Lines > Remove Min/Max/Avg Lines
  |
 Removes the minimum, maximum, and average lines that normally display on mouse-over in standard bar and line charts.
  |
 —
  |
|
 Outlier FIltering > Show When Points Above
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

Filtering Outliers in a Line chart

.
  |
 —
  |
|
 Outlier FIltering > Show When Points Below
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

Filtering Outliers in a Line chart

.
  |
 —
  |


