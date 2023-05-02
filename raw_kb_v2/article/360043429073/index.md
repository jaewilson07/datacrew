

Intro
-------

A flex table displays different rows for each series of a chart, with all series depicted as individual

spark bar

charts. For each individual series, information about that series is provided in the other columns in the table. By default, this information includes the name of the series, an indicator showing whether the percent change for the series is positive or negative, and the degree of change. However, in the Chart Properties for the table, you can change columns to reflect any of a variety of other aspects of the series, such as the minimum or maximum value in the chart, the second-to-last value, a change value (as opposed to a percentage), etc. You can also add additional columns to the table (up to 10) with this information.


 As a visual example, let's look at how a standard chart might appear when represented instead as a flex table. In the following Stacked Bar chart, "Finance: AR Aging," information is provided for May 2013 to April 2015. Three series are shown, "AR <30," "AR 30-60," and "AR 60+."

This chart is helpful for showing overall trends in the data but not so much for revealing details about the individual AR buckets. For example, if a user was interested only in "AR 60+," he would probably not find this chart useful at all, as that series is sandwiched between the other two series and is nearly impossible to analyze.


 If the data in the preceding chart were instead portrayed using a flex table with the default "Line" type, it would appear as follows:

Now all three series are shown separately, making it significantly easier to compare trends over the given time period. In addition, red and green indicators show whether change for a series is positive or negative, and the last column shows the percentages of change. With this table, the user interested in "AR 60+" can see at a glance how this bucket is doing. If he wanted, he could even add additional columns to show more data, such as minimum and maximum values, last and penultimate values, etc.


 For information about standard and heat map tables, see

Table Chart

.

##
 Alternate use cases

Flex tables are usually used to show trend data, as explained in the preceding example. However, many other use cases are possible. For example, you could create a table that uses bars to show the difference between values for the previous and current years, like in the below screenshot:

Powering flex tables
----------------------

Flex tables require at least three columns or rows of data from your DataSet.

 One of these contains the data being measured (category data), which will typically be dates. This column is dropped onto the
 **X Axis**
 field. Because the flex table divides up all series into separate rows, you do not actually see the x-axis with category labels. However, you can see the labels by hovering over the bars or the individual points in the line.
* Another column contains the value data for the table; this column is dropped onto the
 **Y Axis**
 field.
* A third column contains series data; this column is dropped onto the
 **Region**
 field. You can add as many additional series columns to your chart as you want. Each series you add to the chart is represented as an individual row with its line or bar chart.

For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your flex table. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 The following graphic shows how the data from a typical column-based spreadsheet is converted into a flex table:

Customizing flex tables
-------------------------

You can customize the appearance of a flex table in a number of ways. Notably, in the Chart Properties, you can change the aspect of each series that appears in each column as well as add new columns. By default, flex tables include columns for series names, charts, change indicators (positive or negative), and the percent of change, as shown in the preceding screenshot. Other available aspects you can change include minimum value, maximum value, penultimate (second-to-last) value, change value, etc.


 Many other Chart Properties are available as well. For information about all chart properties, see

Applying and Resetting Chart Properties

. Unique properties of flex tables include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Fixed Row Height
  |
 Sets the height for all rows in the table. A minimum value of 28 is required, but there are no restrictions on the maximum value.
  |
 —
  |
|
 General > Column 1-Column 10
  |
 Lets you choose the aspect of the series that is portrayed in a given column. Four columns are included in a table by default, but you can add additional columns by choosing options for columns 5 through 10. For example, if you selected
 **Penultimate Value**
 for
 **Column 5**
 , a fifth column would be added to the table, portraying the penultimate value in the data for each series.


 The screenshot shows a flex table in which nearly all aspects are shown (except for
 **Penultimate Value**
 ).


 The options in this menu are as follows:


|  |  |
| --- | --- |
|
 Default
  |
 The default aspect of the series represented in each column. For column 1, this is the name of the series; for column 2, the chart; for column 3, a positive or negative indicator, and for column 4, the percent of change. All remaining columns default to
 **Empty**
 .
  |
|
 Empty
  |
 If you choose this option, this column does not appear in the table. This is the default setting for columns 5-10.
  |
|
 Name
  |
 The name of the series. This is the default setting for column 1.
  |
|
 Graph
  |
 The line or bar chart for this series. This is the default setting for column 2. You can change the chart type under
 **Graph Settings > Type**
 .
  |
|
 Change Indicator
  |
 An icon that shows whether overall change for the series is positive (green) or negative (red). This is the default setting for column 3.
  |
|
 Change Percent
  |
 The percent of overall change for the series. This is the default setting for column 4.
  |
|
 Change Value
  |
 The specific amount of change for the series.
  |
|
 First Value
  |
 The first data value in the series.
  |
|
 Penultimate Value
  |
 The second-to-last data value in the series.
  |
|
 Last Value
  |
 The last data value in the series.
  |
|
 Minimum Value
  |
 The minimum (lowest) data value in the series.
  |
|
 Maximum Value
  |
 The maximum (highest) data value in the series.
  |
|
 Average Value
  |
 The average data value in the series.
  |
|
 Total Value
  |
 The sum of all the data values in the series.
  |


 |

|
|
 General > Column 1-10 Title
  |
 The name of a column, as it appears in the topmost row of the table.
  |
 —
  |
|
 General > Column 1-10 Width
  |
 Lets you set the width of a column as a percentage of the entire table (1-100).
  |
 —
  |
|
 Header Row > Header Row Height
  |
 Lets you set the height for the header row in the table (i.e. the row containing the column names). A minimum value of 28 is required, but no there are no restrictions on the maximum value.
  |
 —
  |
|
 Graph Settings > Type
  |
 Lets you choose the chart type in the column containing your series charts. Note that these will all be the same chart type for each series; you cannot include more than one type of chart in the same flex table.


 The following chart types are available:


|  |  |
| --- | --- |
|
 Line
  |
 Creates a

spark line

chart for each series. This is the default option. The first screenshot at right shows an example of this chart type.
  |
|
 Bar
  |
 Creates a vertical

spark bar

chart for each series. The second screenshot at right shows an example of this chart type.
  |
|
 Horizontal Bar
  |
 Creates a horizontal spark bar chart for each series. The third screenshot at right shows an example of this chart type.
  |
|
 Horizontal Single Bar
  |
 Creates a horizontal bar chart in which all bars for each series are aggregated to yield a single bar. The fourth screenshot at right shows an example of this chart type.
  |


 |


 |
|
 Graph Settings > Bar Width Percentage
  |
 Lets you specify the width of the bars as a percentage of the cell space. Not available when you select
 **Line**
 as your chart type.


 The screenshot shows an example of a horizontal bar chart in which this setting has been set to

25

. (In contrast, the preceding example is set to the default value of

50

.)
  |

|
|
 Regression Line > Show Linear Regression Line
  |
 Adds a linear regression line to all series charts in the table. Not available when you select
 **Horizontal Bar**
 or
 **Horizontal Single Bar**
 as your chart type.


 The first screenshot at right shows an example of this when used with a Line chart. The second example shows the same thing with a Bar chart.
  |


 |
|
 Regression Line > Include Last Data Point
  |
 Lets you determine whether the last data point in a series is used to calculate the regression line.
  |
 —
  |
|
 Regression Line > Line Style
  |
 Lets you determine whether regression lines appear dashed (default) or solid.
  |
 —
  |
|
 Regression Line > Line Color
  |
 Lets you determine the color for regression lines.
  |
 —
  |


