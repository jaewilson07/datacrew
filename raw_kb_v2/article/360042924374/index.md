

Data science graphs enable you to perform in-depth statistical analyses on your Domo data.


 The following table lists the types of Data Science graphs available in Domo. You can click a thumbnail image to see a larger image.


 Chart Type
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Scatter Plot graph

|
 A standard Scatter Plot graph has two value scales, one on the vertical axis (or y-axis) and one on the horizontal axis (or x-axis). These values are treated as coordinates; for every x and y value pair, a single point is plotted on the graph. Points can be assigned into specific groups by including series data in the graph.


 You can also create a Scatter Plot Time graph, in which you include timeline data instead of value data on the x-axis. In this case, all points are plotted on their appropriate date/time coordinates. The position of a point for a given date/time coordinate is still determined by its y coordinate value, however.


 The first example shows a standard Scatter Plot graph. The second example shows a Scatter Plot Time graph.


 As of our July 2017 release, the Scatter Plot graph has been updated and no longer aggregates data (which had the effect of lumping all data in a series into a single dot). If you want to use the old version of the graph, you can do so by selecting the Scatter Plot Legacy chart type.


 For more information, see

Scatter Plot Chart

.
  |
 |
|
 Bubble graph (deprecated)

|
**Deprecated**
 Bubble graphs are similar to Scatter Plot graphs in that they have two value scales, and x and y coordinate pairs are plotted on the graph. Bubble graphs are more complex than Scatter Plot graphs in that they include an additional dimension—bubble size. Thus they require an additional DataSet column containing size values for each bubble. In the example at right, the y-axis measures employee salaries and the x-axis measures the average number of employees receiving those salaries. In addition, the size of each bubble represents the total percentage of the payroll for each department.


 You can also create a Bubble Time graph, in which you include timeline data instead of value data on the x-axis. In this case, all bubbles are plotted on their appropriate date/time coordinates. The position of a point for a given date/time coordinate is still determined by its y coordinate value, however.


 The first example shows a standard Bubble graph. The second example shows a Bubble Time chart.


 As of our July 2017 release, you are no longer required to include series data in a Bubble graph, though this option is still available. If you want to use the old version of the graph, you can do so by selecting the Bubble Legacy chart type.


 For more information, see

Bubble Chart

.
  |
 |
|
 XY Line

|
 An XY Line graph uses x and y coordinate pairs instead of date/time data to plot trendlines. Because of this mathematical plotting, there are not evenly spaced intervals between data points as there are in graphs that use date/time data; therefore, these graphs are useful for portraying trendlines with greater accuracy.


 A basic XY line graph requires only two columns of data to draw the line, but you can also include a series column to show multiple lines. You can also add a line for a median value and specify lower and upper range values. Be aware that this chart type does
 *not*
 currently include algorithms to identify your median line and upper and lower ranges. You must identify these elements yourself in the DataSet you use to power the graph. However, you can use tools such as R and Python to help you identify these elements.


 The screenshot shows an XY graph with a single trendline, median line, and upper and lower bounds set.


 For more information, see

XY Line Chart

.
  |  |
|
 Predictive Modeling

|
 A Predictive Modeling graph is essentially a Scatter Plot graph that includes a model fit line. If you want, you can also specify the upper and lower bounds of the model fit line.


 Be aware that this chart type does
 *not*
 currently include algorithms to identify your model fit line and upper and lower bounds. You must identify these elements yourself in the DataSet you use to power the graph. However, you can use tools such as R and Python to help you identify these elements.


 For more information, see

Predictive Modeling Chart

.
  |  |
|
 Forecasting

|
 A Forecasting graph consists of a basic trendline for all data up until the current date/time, along with a forecast line showing predicted changes beyond the current date/time. You can optionally indicate the lower and upper bounds of the forecast line. If you want, you can even include a second forecast line with its own upper and lower bounds.


 Be aware that this chart type does
 *not*
 currently include algorithms to create forecast line(s) and upper and lower bounds. This data must already be present in the DataSet you are using to power the graph. However, you can use tools such as R and Python to create these columns in your data source before bringing them into Domo.


 For more information, see

Forecasting Chart

.
  |  |
|
 Outliers

|
 An Outliers graph is nearly identical to a basic Line graph but allows you to call out any points you deem to be outliers.


 Be aware that this chart type does
 *not*
 currently include algorithms to identify outlier points. You must identify these points yourself in the DataSet you use to power the graph. However, you can use tools such as R and Python to help you identify these outliers.


 For more information, see

Outliers Chart

.
  |

|
|
 Vertical Box Plot graph

|
 Box Plot graphs are commonly used to represent statistics and quality measurements. For any given category, at least five values are required in the DataSet. From these values, Domo derives a
 *high*
 value, a
 *Q3*
 (Quartile 3) value, a
 *median*
 value, a
 *Q2*
 (Quartile 2) value, and a
 *low*
 value. These values are plotted on the graph as a
 *box and whisker plot*
 , with the Q1, median, and Q3 values forming the box and the high and low values forming the "whiskers."


 In a vertical Box Plot graph, values are represented on the vertical axis (or y-axis) and categories are represented on the horizontal axis (or x-axis) so the boxes stretch from top to bottom.


 For more information, see

Box Plot Chart

.
  |

|
|
 Horizontal Box Plot graph

|
 Horizontal Box Plot graphs are the same as vertical Box Plot graphs, except that categories are represented on the vertical axis (or y-axis) and values are represented on the horizontal axis (or x-axis), so the boxes stretch from left to right rather than top to bottom.


 For more information, see

Box Plot Chart

.
  |

|
|

SPC (statistical process control) chart


 |
 SPC (statistical process control) charts, also known as control charts, Shewhart charts, or process-behavior charts, are line charts used to determine if a manufacturing or business process is in a state of control. Domo's SPC charts lets you set up rules from SPC standards by configuring them in the Chart Properties. When values outside the specified rules are encountered, these are flagged in the chart as outliers.


 8 different rules are available. You can implement the rules singly or in combination.


 For more information, see

Building SPC Charts

.
  |  |


