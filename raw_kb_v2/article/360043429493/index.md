

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. A Progress Bar gauge is similar to a thermometer that "fills in" to show how close the current value is to the goal. This gauge type does not include ranges. This gauge type is similar to a

Filled gauge

, which also "fills in" to show the proximity of the current value to the target—the difference is that a Progress Bar gauge shows the value as a percentage, whereas a Filled gauge shows the actual value.


 Other gauge types in Domo include

Comparative Fill gauges

.


 Powering Progress Bar gauges
------------------------------

A Progress Bar gauge requires three columns or rows of data from your DataSet—one contains the current value of the gauge, one contains the maximum value, and the other contains the label that appears above the gauge. If multiple rows are present, only the data from the first row is used; all the others are ignored. If the first category contains more than one series, the series are aggregated to yield a single value for the gauge. Be aware that this aggregates the values for the maximum value column as well. For example, if your spreadsheet included two rows for "Team A" that both had a maximum value of 100, these would be aggregated in your chart to yield a new maximum value of 200. Selecting
 **No Aggregation**
 for either the current value or maximum does
 *not*
 currently work.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Progress Bar gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualize Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Progress Bar gauge:

Customizing progress bar gauges
---------------------------------

You can customize the appearance of a heat map by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of heat maps include the following.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Fill Color
  |
 Set the color for the part of the gauge that will be filled by the value specified.
  |
 —
  |
|
 General > Hide Label
  |
 When set, the items will be laid out in a single column.
  |
 —
  |
|
 General > Label
  |
 The text displayed above the progress bar. The default is %\_SERIES\_NAME.

*Note:**
 A column must be entered into the "series" pill inside of Analyzer in order for this label to show up on the chart.

|
 —
  |
|
 General > Allow Over 100%
  |
 When set, the gauge will not limit values to being 100% or less.
  |  |
|
 General > Show Indicator
  |
 When set, an indicator will be displayed to show the position of 100% on the chart.
  |  |
|
 General > No Data Message
  |
 The message to be displayed if there is no data. This may occur if the data has been filtered out on the page.
  |
 —
  |
|
 Color Range 1 > Minimum % Value
  |
 Sets the minimum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 1 > Maximum % Value
  |
 Sets the maximum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 1 > Color
  |
 Sets the color for the gauge when the percentage value is between the minimum and maximum values.
  |  |
|
 Color Range 2 > Minimum % Value
  |
 Sets the minimum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 2 > Maximum % Value
  |
 Sets the maximum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 2 > Color
  |
 Sets the color for the gauge when the percentage value is between the minimum and maximum values.
  |  |
|
 Color Range 3 > Minimum % Value
  |
 Sets the minimum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 3 > Maximum % Value
  |
 Sets the maximum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 3 > Color
  |
 Sets the color for the gauge when the percentage value is between the minimum and maximum values.
  |  |
|
 Color Range 4 >  Minimum % Value
  |
 Sets the minimum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 4 > Maximum % Value
  |
 Sets the maximum percentage value for the optional color range.
  |
 —
  |
|
 Color Range 4 > Color
  |
 Sets the color for the gauge when the percentage value is between the minimum and maximum values.
  |  |


