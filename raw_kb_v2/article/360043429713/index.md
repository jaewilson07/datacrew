

Intro
-------

In many kinds of line and bar charts, you may find it useful to show how the data might be expected to change in the near future. Domo provides the ability to create such "data projections." Data projections give viewers an idea of how the data might change between the current value of a chart and upcoming future values.


 Data projections come in two types—Last Value Projections and Multi-Period Projections. Last Value Projections project only the last value in your chart, but you can use several different kinds of calculations to make the projection, including linear regression, averaging the previous values, etc. Multi-Period Projections let you project as many future periods as you want, either by using included controls to add and remove periods or by manually entering the desired number in Chart Properties. However, all multi-period projections are based on linear regression (though a number of different options are available for configuring your linear regression).


 Last Value Projections
------------------------

Last Value Projections let you project one future value onto your chart. These are available for the following chart types:

 Vertical single bar
* Vertical grouped bar
* Vertical stacked bar
* Line bar
* Multi-line bar
* Line with grouped bar
* Line
* Multi-line
* Curved line
* Symbol line
* Curved symbol line

In line charts, dotted lines are used to show how far data values are expected to fall or drop when a Last Value Projection is applied. In the following example, the data value is expected to rise to about $27,000, based on a linear regression:

You could also set projections in a chart with multiple lines, like in the following example:

Likewise, a dotted line is used in a bar chart to show the expected change. A region of different color above the current value indicates an expected increase in the data; a dotted line below the current value indicates an expected drop. In the following example, the user created a projection based on the average of the three values prior to the last value:

You could also set projections in a chart with grouped or stacked bars, like in the following example:

For a grouped bar with line chart, you can choose to apply a projection to either the last bar or last line that appears in the chart (or both).

*Video - Using Last Value Projections**


###
 Types of Last Value Projections

There are four possible types of Last Value Projections in Domo. These are as follows:


 Projection Type
  |
 Description
  |
| --- | --- |
|
 Forecast Value
  |
 Domo forecasts the value of the remainder of the current period in your chart. It does this by taking the current value for the period and comparing it to the previous period. For example, in the following chart, the current month, October, is not yet over, so the user applies the
 **Forecast**
 property. The light blue represents the forecasted value for the entire month of October.

|
|
 Specified Value
  |
 You specify the projected value yourself. When you select this option, you must enter the desired value in the
 **Projection Value**
 field.
  |
|
 Average Previous Values
  |
 Domo calculates the projection based on the average of a specified number of values prior to the current value. You specify the number of values in the
 **Previous Values to Average**
 field.
  |
|
 Linear Regression
  |
 Domo calculates the projection based on a linear regression of your data.
  |


###
 Creating a Last Value Projection

You can add a Last Value Projection to your chart in the
 **Chart Properties**
 .


**To add a projection to your chart,**

. Open the Analyzer for the chart you want to edit.
2. In
 **Chart Properties**
 , click
 **Last Value Projection**
 (for a bar or line chart) or
 **Last Bar Value Projection**
 or
 **Last Line Value Projection**
 (for a grouped bar with line chart).
3. Select the projection type in the
 **Project Using**
 menu.
4. (Conditional) If you select
 **Specified Value**
 , enter the desired value in the
 **Projection Value**
 field.
5. (Conditional) If you select
 **Average Previous Values**
 , enter the number of previous values for which you want to take the average.


###
 Use Cases

The following projection use cases were introduced in the Domopalooza 2017 Tips and Tricks session. For more tips and tricks, see

Tips and Tricks: Quick Lessons from Power Users

.

 If your data is showing steady growth, you may want to use
 **Linear Regression**
 to best predict your end of period performance.
* If your data has a strong end-of-period trend, use
 **Forecast Value**
 will likely give you the projection you want.
* If your data has a lot of variability in it, you may need to experiment with
 **Forecast Value**
 ,
 **Average Previous Values**
 ,
 **Linear Regressions**
 , or a manual entry.

Multi-Period Projections
--------------------------

Multi-Period Projections allow you to add unlimited projections to your chart. These are available for the following chart types:

 Vertical single bar
* Vertical grouped bar
* Vertical stacked bar
* Vertical running total bar
* Vertical running total grouped bar
* Vertical running total stacked bar
* Line
* Multi-line
* Curved line
* Symbol line
* Curved symbol line
* Running total line

Chart types in which Multi-Period Projections are available include "+" and "-" controls for adding and removing projections. These appear at the bottom right of the chart, like in the following example:

Clicking the "+" button adds a new projected data point to the chart (using the selected
 **Project Using**
 option in
 **Chart Properties > Multi-Period Projection**
 ), and clicking the "-" button removes a projection. You can add as many projections to a chart as you want. In the following example, the user added three projections to his chart. The first projection is "added" to the last data point of March 23rd, and the second and third follow the same date pattern already established in the data, becoming new projected data points, March 24th and 25th.

These controls are available in the Details view, meaning anyone with access to the card can add or remove periods (unless you choose to restrict this option by removing the controls, which you can do in Chart Properties).


 You can also enter a number of projected periods manually in
 **Chart Properties > Multi-Period Projection > Projection Period Count**
 .

##
 Understanding Properties for Multi-Period Projection

A number of chart properties are available for tuning your multi-period projections.


 Projection Type
  |
 Description
  |
| --- | --- |
|
 Remove Controls
  |
 When this box is checked, the "+" and "-" controls for adding projections are removed from your chart.
  |
|
 Projection Period Count
  |
 Lets you manually enter a set number of projection periods to your chart.
  |
|
 Project Using
  |
 Determines how your projection periods are calculated. The following options are available:


|  |  |
| --- | --- |
|
 Linear Regression
  |
 Domo calculates the projection based on a linear regression of your data. This is the default option.
  |
|
 Linear Regression by Period
  |
 Projections are calculated by looking at all similar data points in your data and determining the linear regression for each individual point. For example, if your data was broken down by week and you chose this option, a separate linear regression would be calculated for all Mondays, all Tuesdays, and so on. At least 2 instances of each data point are required for this to work (e.g. your timeline must have 2 Mondays, 2 Tuesdays, etc.); otherwise the
 **Linear Regression Recent Periods**
 option will be used as a fallback.
  |
|
 Linear Regression Recent Periods
  |
 Projections are calculated by taking the linear regressions for the data points in the most recent period and applying them to the same points in the next period. If you do not have sufficient data for this to work, the default linear regression option will be used as a fallback.
  |
|
 Linear Regression Recent Weighted
  |
 Projections put more weight on recent periods. Use this option if recent periods are more valuable in your data than earlier periods.
  |

|
|
 Repeating Pattern
  |
 Lets you specify the number for the repeating sequence of data points used in your timeline. For example, a weekly timeline would have a pattern of

7

(for 7 days); a quarterly timeline would have a pattern of

3

(for 3 months); and so on. If you do not specify a value, Domo will make its best guess as to your pattern.
  |


###
 Creating a Multi-Period Projection

You can add a Multi-Period Projection to your chart in the
 **Chart Properties**
 . (You can also add projections in the Details view or Analyzer using the controls, as described previously, though this does not give you any configuration options.)


**To add a Multi-Period Projection to your chart,**

. Open the Analyzer for the chart you want to edit.
2. In
 **Chart Properties**
 , click
 **Multi-Period Projection**
 .
3. Enter the number of periods you want to project in the
 **Projection Period Count**
 field.
4. Select the projection type in the
 **Project Using**
 menu.
5. (Optional) To indicate the pattern you want Domo to look at when calculating your future periods, enter the number of data points in the pattern in the
 **Repeating Pattern**
 field. For example, if you wanted Domo to determine future periods based on a repeating 10-day period, you would enter

10

here.


