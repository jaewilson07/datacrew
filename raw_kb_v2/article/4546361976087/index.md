

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. A Radial Progress Gauge is similar to a thermometer that "fills in" to show how close the current value is to the goal. A Radial Progress Gauge is similar to a

progress bar gauge

except that it is circular. Other gauge types in Domo include

single value gauges

,

radial gauges

,

face gauges

, and

comparative fill gauges

.


 Powering Radial Progress Gauges
---------------------------------

A Radial Progress Gauge requires three columns from your DataSet—the Gauge Value that contains current values, the Target Value contains the target values if you want the gauge to contain dynamic target values, (if you do not expect the target value of the gauge to change, you can specify the target in
 **Chart Properties**
 ,) and the Group By containing categories that allows you to select how the data is aggregated, For information about value, category, and series data, see

Understanding Chart Data

.


 If multiple rows are present in your DataSet, the values in all of the rows are aggregated. Be aware that this aggregates the values for the target value column as well. For example, if your spreadsheet included two rows for "Team A" that both had a target value of 100, these would be aggregated in your chart to yield a new target value of 200. Selecting
 **No Aggregation**
 for either the current value or maximum does
 *not*
 currently work.


 The maximum value of a Radial Progress Gauge is automatically determined based on the current value. For example, if your current value was 80, the maximum value would be set to 100. If the current value was 155, the maximum value would be set to 200.


 In the Analyzer, you choose the columns containing the data for your Radial Progress Gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Analyzer Overview

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Radial Progress Gauge:

Customizing Radial Progress Gauges
------------------------------------

You can customize the appearance of a Radial Progress Gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Options for Gauges

.

 **Property**  | **Description**  |
|
 General > Fill Color
  |
 Set the color for the part of the gauge that will be filled by the value specified.
  |
|
 General > Background Ring Style
  |
 Sets the style for the background ring of the chart. The options are
 **None**
 ,
 **Thin Center**
 ,
 **Outside**
 , or
 **Full**
 . The default is None.
  |
|
 General > Background Ring Color
  |
 Sets the color for the background ring if being displayed.
  |
|
 General > Rounded Ends
  |
 When set, the ends of the progress chart will be rounded.
  |
|
 General > Maximum Value
  |
 The maximum value used to calculate a percentage value can either be set manually or from the data. If set here it will override the max value set in the data.
  |
|
 General > Label Text
  |
 This property will set the text for an optional label. When this property is set, it will override any label set from the data.
  |
|
 General > Label Position
  |
 Sets the position for the label if present. The options are
 **Above**
 or
 **Below**
 . The default is Above.
  |
|
 General > Value Color
  |
 Sets the color for the percentage value displayed. By default, if nothing is selected, it will use the color from the chart.
  |
|
 General > No Data Message
  |
 The message to be displayed if there is no data. This may occur if the data has been filtered out on the page.
  |
|
 Hover Text Settings > Hover Text
  |
 The text to be displayed when you hover on the chart.
  |
|
 Color Range 1-4 > Minimum % Value
  |
 Sets the minimum percentage value for the optional color range.
  |
|
 Color Range 1-4 > Maximum % Value
  |
 Sets the maximum percentage value for the optional color range.
  |
|
 Color Range 1-4 > Color
  |
 Sets the color for the gauge when the percentage value is between the minimum and maximum values.
  |
|
 Full Size Settings
  |
 Lets you specify the width and height to use when "full" size is selected on a page of cards. For reference, a medium card is 1x1 and a large card is 2x2.
  |


