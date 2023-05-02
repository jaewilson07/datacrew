

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. Waffle charts provide a new, simple and intuitive way to visualize data as it includes many customizable settings to tell a more informative story. Other gauge types in Domo include

single value gauges

,

radial gauges

,

face gauges

, and

comparative fill gauges

.


 Powering Waffle Gauges
------------------------

A Waffle Gauge requires only one column or row of data from your DataSet—the Gauge Value that contains current values. The other option is an Optional Max Value that you intend for your data to achieve. For information about value, category, and series data, see

Understanding Chart Data

.


 If multiple rows are present in your DataSet, the values in all of the rows are aggregated. Be aware that this aggregates the values for the target value column as well. For example, if your spreadsheet included two rows for "Team A" that both had a target value of 100, these would be aggregated in your chart to yield a new target value of 200. Selecting
 **No Aggregation**
 for either the current value or maximum does
 *not*
 currently work.


 Unless you add a column to the Optional Max Value, the maximum value of a Waffle Gauge is automatically determined based on the current value. For example, if your current value was 80, the maximum value would be set to 100. If the current value was 155, the maximum value would be set to 200.


 In the Analyzer, you choose the columns containing the data for your Waffle Gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Analyzer Overview

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Waffle Gauge:

Customizing Waffle Gauges
---------------------------

You can customize the appearance of a Waffle Gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Options for Gauges

.

 **Property**  | **Description**  |
|
 General > Maximum Value
  |
 The maximum value used to calculate a percentage value can either be set manually or from the data. If set here it will override the max value set in the data.
  |
|
 General > Wide Layout
  |
 When selected, the chart will be displayed short and wide instead of a square.
  |
|
 General > Fill From
  |
 Specifies the direction that cells in the chart will be filled from. The options are from the
 **Bottom**
 or the
 **Left**
 . The default is Bottom.
  |
|
 General > Cell Spacing
  |
 Specifies the space between the cells. The options are
 **Thin**
 ,
 **Medium**
 , or
 **Thick**
 . The default is Thin.
  |
|
 General > Fill Color
  |
 Set the color for the part of the gauge that will be filled by the value specified.
  |
|
 General > Fill Border Color
  |
 Sets a border color for the portion of the gauge filled by the value specified.
  |
|
 General > Fill Symbol
  |
 Sets a symbol for each cell filled by the value specified.
  |
|
 General > Base Color
  |
 The color for cells that are not filled by the value specified.
  |
|
 General > Base Border Color
  |
 The border color for the cells that are not filled by the value specified.
  |
|
 General > Base Symbol
  |
 The symbol to be used for cells not filled by the value specified.
  |
|
 Label > Label Text
  |
 This property will set the text for an optional label. When this property is set, it will override any label set from the data.
  |
|
 Label > Label Position
  |
 Sets the position for the label if present. The options are
 **Above**
 or
 **Below**
 . The default is Above.
  |
|
 Percentage Value > Display
  |
 When selected, the percentage value will be displayed.
  |
|
 Percentage Value > Size
  |
 Sets the size for the percentage value displayed. The options are
 **Smallest**
 ,
 **Smaller**
 ,
 **Larger**
 , or
 **Largest**
 .
  |
|
 Percentage Value > Position
  |
 Sets the position used to display the percentage value. The options are
 **Center**
 ,
 **Above**
 ,
 **Below**
 ,
 **Inside Top**
 , or
 **Inside Bottom**
 . The default is Center.
  |
|
 Percentage Value > Use Fill Color
  |
 When set, the percentage value will be displayed in the fill color.
  |
|
 Percentage Value > Color
  |
 If not set to "Use Fill Color" this option will set the font color.
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


