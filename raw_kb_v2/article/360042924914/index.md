

Intro
-------

Radar charts are essentially

Line charts

that use a radial grid to display data items. Scale value grid lines in a radar chart circle around a central point, which represents zero. Higher data values are farther from the center point.


 Grids for radar charts are equilateral polygons, with each category plotted at a vertex of the polygon. Thus, when three categories are used in a radar chart, the grid is triangular; when eight categories are used, the grid is octagonal.


 The area inside of the polygon for each series is colored translucently. This coloring makes it possible to see the "size" of a data series while still being able to see the other data series in the chart.


 Use cases
-----------

Radar charts are a useful way to display multivariate observations with an arbitrary number of variables. They are primarily suited for strikingly showing
 *outliers*
 and
 *commonality*
 , or when one chart is greater in every variable than another. They are usually used for ordinal measurements in which each variable corresponds to "better" in some respect, and all variables are on the same scale.


 Radar charts are most appropriate for answering the following questions:

 Which observations are most similar, i.e., are there clusters of observations?
* Are there outliers?

Example applications might include business scenarios like the following:

 In the HR sphere, you might use a radar chart to compare the strengths of different job applicants.
* As a restaurant franchise owner, you could use a radar chart to compare aspects of different franchise locations:


###
 Limitations

Radar charts may be difficult to interpret, especially as more and more series are added. If you need to show more than 3 series, you may want to consider a different chart type. Further, it is hard to visually compare lengths of different spokes, because radial distances are hard to judge.


 An easier-to-read alternative to radar charts is the

line chart

. This chart type is especially helpful for showing time series.


 Powering radar charts
-----------------------

Radar charts require three columns or rows of data from your DataSet—one for categories (generally dates), one for values, and one for series data. At least three categories must be present in a radar chart. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your radar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a radar chart:

Customizing radar charts
--------------------------

You can customize the appearance of a radar chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of radar charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Series Transparency
  |
 Determines the transparency for the fill areas in a radar chart. You can specify any value between

0

and

100

, where

0

means the fill areas are completely opaque and

100

means they have no fill at all. In the example, the transparency has been set to

20

.
  |

|
|
 Category Scale > Wrap Width
  |
 Allows you to specify the number of pixels at which category labels will wrap in radar charts.
  |
 —
  |


