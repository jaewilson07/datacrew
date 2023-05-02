

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. A Radial gauge is similar in appearance to a speedometer in a car, with a "needle" that moves to indicate the proximity of the current value to the goal. Radial gauges can include up to six ranges. Other gauge types in Domo include

Single Value gauges

,

Filled gauges

,

Progress Bar gauges

,

Face gauges

, and

Comparative Fill gauges

.

*Video - Building a Radial Gauge Chart**

Powering Radial gauges
------------------------

A Radial gauge requires only two columns or rows of data from your DataSet—one contains categories, and the other contains the values. This creates a "bare-bones" Radial gauge without ranges. You can specify up to six different ranges in a Radial gauge in
 **Chart Properties**
 . For more information, see

Understanding Chart Data

.


 The maximum value of a Radial gauge is automatically determined based on the current value. For example, if your current value was 80, the maximum value would be set to 100. If the current value was 155, the maximum value would be set to 200. However, you can set custom minimum and maximum values by specifying ranges. The minimum value of your first range is the minimum value of the gauge, and the maximum value of your last range is the maximum value of the gauge.


 By default, all of the values in your values column are summed to produce the final value for the chart, even when you select
 **No Aggregation**
 in the value aggregation menu. This is because the
 **General > Value**
 chart property for this chart type is set to
 **Sum**
 by default. This property performs a second aggregation on the chart value
 *in addition*
 to the one selected in the value aggregation menu.

*Note:**
 Because having two aggregations in a chart is usually undesirable, select
 **No Aggregation**
 in the value aggregation menu, then select your desired aggregation in the
 **General > Value**
 menu in
 **Chart Properties**
 .

In the Analyzer, you choose the columns containing the data for your Radial gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Radial gauge:

Customizing Radial gauges
---------------------------

You can customize the appearance of a Radial gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Properties for Gauges

.


 Property
  |
 Description
  |
| --- | --- |
|
 General > Value
  |
 Determines how the values in your values column are to be aggregated. Options include the usual aggregations such as
 **Sum**
 ,
 **Average**
 , etc., as well as
 **First Row**
 and
 **Last Row**
 , which take the value in the first or last row as the gauge value. The default option is
 **Sum**
 . The aggregation you select here is added to the aggregation you select in the value aggregation menu (so, for example, if you selected
 **Average**
 in the value aggregation menu and
 **Sum**
 in
 **Chart Properties**
 , your gauge value would be the summed averages for each category).


 Because having two aggregations in a chart is usually undesirable, select
 **No Aggregation**
 in the value aggregation menu, then select your desired aggregation in the
 **General > Value**
 menu in
 **Chart Properties**
 .
  |
|
 General > Style
  |
 Lets you set the style for the gauge. The default is
 **Legacy**
 .
  |
|
 General > Value Indicator
  |
 Lets you specify the type of indicator used to show the position of the value.
  |
|
 General > Value Indicator Color
  |
 Lets you select a color for the value indicator.
  |
|
 General > Ring Width Percent
  |
 Lets you specify the width of the ring used to display the range values. Valid values are between 5 and 50.
  |
|
 General > Major Tick Width Percent
  |
 Lets you set the percentage width for the major ticks. Valid values are between 5 and 50.
  |
|
 General > Tick Color
  |
 Lets you select a color for the ticks on the gauge.
  |
|
 General > Tick Alignment
  |
 Lets you set the alignment for the ticks within the ring of the gauge.
  |
|
 General > Major Segments
  |
 Lets you specify the number of segments the gauge will be divided into. Setting this to 0 will turn off major ticks.
  |
|
 General > Minor Segments
  |
 Lets you specify the number of segments the gauge will be divided into, between major ticks. Setting this to 0 will turn off minor ticks.
  |
|
 General > Major Tick Width
  |
 Lets you set the width for the major ticks.
  |
|
 General > Minor Tick Width
  |
 Lets you set the width for the minor ticks.
  |
|
 General > No Data Handling
  |
 Lets you set how the chart will display if it receives no data. The default is to display a message.
  |
|
 General > No Data Message
  |
 Lets you set the message to be displayed if there is no data. This may occur if the data has been filtered out on the Dashboard.
  |
|
 Range 1-6 > Minimum Value
  |
 Lets you specify the minimum value for the selected range.
  |
|
 Range 1-6 > Maximum Value
  |
 Lets you specify the maximum value for the selected range.
  |
|
 Range 1-6 > Color
  |
 Lets you select a color for the selected range.
  |


