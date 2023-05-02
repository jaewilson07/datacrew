

Intro
-------

An XY Line chart uses x and y coordinate pairs instead of date/time data to plot trendlines. Because of this mathematical plotting, there are not evenly spaced intervals between data points as there are in graphs that use date/time data; therefore, these graphs are useful for portraying trendlines with greater accuracy.


 A basic XY Line chart includes only one line, but you can also include a series column to show multiple lines. You can also add a line for a median value and specify lower and upper range values. Be aware that this chart type does
 *not*
 currently include algorithms to identify your median line and upper and lower ranges. You must identify these elements yourself in the DataSet you use to power the graph. However, you can use tools such as R and Python to help you identify these elements.


 Powering XY Line Charts
-------------------------

XY Line charts require only two columns or rows of data from your DataSet to create a trendline, but if you want to include optional elements such as multiple lines, a median line, etc., more columns are required. The following list describes all of the columns you can apply in an XY Line chart:

 A column with X coordinate values for the trendline(s) (required).
* A column with Y coordinate values for the trendline(s) (required).
* A column with series data, used to add multiple trendlines (optional).
* A column with Y coordinate values for the median line (optional).
* A column with Y coordinate values for the upper range (optional).
* A column with Y coordinate values for the lower range (optional).

For an example of how to set up your data, see the graphic below.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your XY graph. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into an XY Line graph. Note that the spreadsheet in this example includes only a small subset of the data used to power the graph.

Customizing XY Line graphs
----------------------------

You can customize the appearance of an Outliers graph by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.

