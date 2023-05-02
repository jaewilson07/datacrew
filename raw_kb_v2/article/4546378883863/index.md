

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. A Multi Radial Progress Gauge is similar to a thermometer that "fills in" to show how close the current value is to the goal. This gauge type does not include ranges. A Multi Radial Progress Gauge is similar to a

progress bar gauge

except that it is circular and shows an exact value rather than a percentage. Other gauge types in Domo include

single value gauges

,

radial gauges

,

face gauges

, and

comparative fill gauges

.


 Powering Multi Radial Progress Gauges
---------------------------------------

A Multi Radial Progress Gauge requires two columns from your DataSet—Item Names that contains the items that will be shown on the chart and the Gauge Value that contains current values. You can also add a third column as the Optional Max Value that you intend for your data to achieve. For information about value, category, and series data, see

Understanding Chart Data

.


 If multiple rows are present in your DataSet, the values in all of the rows are aggregated. Be aware that this aggregates the values for the target value column as well. For example, if your spreadsheet included two rows for "Team A" that both had a target value of 100, these would be aggregated in your chart to yield a new target value of 200. Selecting
 **No Aggregation**
 for either the current value or maximum does
 *not*
 currently work.


 Unless you add a column to the Optional Max Value, the maximum value of a Multi Radial Progress Gauge is automatically determined based on the current value. For example, if your current value was 80, the maximum value would be set to 100. If the current value was 155, the maximum value would be set to 200.


 In the Analyzer, you choose the columns containing the data for your Multi Radial Progress Gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Analyzer Overview

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Multi Radial Progress Gauge:

Customizing Multi Radial Progress Gauges
------------------------------------------

You can customize the appearance of a Multi Radial Progress Gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Options for Gauges

.

 **Property**  | **Description**  |
|
 General > Percent of Total
  |
 When selected, all values will be displayed as a percentage of the total of all values.
  |
|
 General > Target Value
  |
 When set, all rings will show as a percentage of the target value, even if "Percent of Total" is selected.
  |
|
 General > Rounded Ends
  |
 When set, the ends of the progress chart will be rounded.
  |
|
 General > Gaps Between Items
  |
 When selected, there will be a gap between the progress rings.
  |
|
 General > Gap Percent
  |
 Sets the size of the gap between items as a percentage of the ring width.
  |
|
 General > Allow Over 100%
  |
 When set, the gauge will not limit values to being 100% or less.
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
 General > Inner Diameter Percent
  |
 Sets the diameter of the center empty space as a percentage of the overall width. (Between 20-80.) The default is 30.
  |
|
 Data Label Settings > Text
  |
 The text used for the data labels.
  |
|
 Data Label Settings > Text Color
  |
 Sets the color for the data label text. The default color will be the color of the rings.
  |
|
 Hover Text Settings > Hover Text
  |
 The text to be displayed when you hover on the chart.
  |
|
 Hover Text Settings > Center Value Text Color
  |
 Sets the color for the text displaying the percentage value in the center of the gauge on hover.
  |
|
 Full Size Settings
  |
 Lets you specify the width and height to use when "full" size is selected on a page of cards. For reference, a medium card is 1x1 and a large card is 2x2.
  |


