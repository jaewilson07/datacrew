

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. A filled gauge is similar to a thermometer that "fills in" to show how close the current value is to the goal. This gauge type does not include ranges. A filled gauge is similar to a

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


 Powering filled gauges
------------------------

A filled gauge requires only one column or row of data from your DataSet—the Gauge Value that contains current values. the other options are a Target Value contains the target values if you want the gauge to contain dynamic target values. (If you do not expect the target value of the gauge to change, you can specify the target in
 **Chart Properties**
 .) You can also add a third column in the Optional Group By containing categories that allows you to select how the data is aggregated, For information about value, category, and series data, see

Understanding Chart Data

.


 If multiple rows are present in your DataSet, the values in all of the rows are aggregated. Be aware that this aggregates the values for the target value column as well. For example, if your spreadsheet included two rows for "Team A" that both had a target value of 100, these would be aggregated in your chart to yield a new target value of 200. Selecting
 **No Aggregation**
 for either the current value or maximum does
 *not*
 currently work.


 The maximum value of a filled gauge is automatically determined based on the current value. For example, if your current value was 80, the maximum value would be set to 100. If the current value was 155, the maximum value would be set to 200.


 In the Analyzer, you choose the columns containing the data for your filled gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Analyzer Overview

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a filled gauge:

Customizing filled gauges
---------------------------

You can customize the appearance of a filled gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Options for Gauges

.


 Property
  |
 Description
  |
| --- | --- |
|
 General > Value
  |
 Determines how the values in your values column are to be aggregated for a filled gauge. Options include the usual aggregations such as
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
 General > Color Source
  |
 Determines how the color of a filled gauge is determined. Options include
 **Fill Color**
 (the default option), which uses the color you specify for the
 **Fill Color**
 property;
 **Green Above Target**
 , which causes the gauge to appear green if the current value is higher than the target value and red if it is below; and
 **Green Below Target**
 , which causes the gauge to appear red if the current value is higher than the target value and green if it is below. For the
 **Green Above Target**
 and
 **Green Below Target**
 options to work,
 **Fill Color**
*must*
 be set to
 **Default**
 ; otherwise the color you select for
 **Fill Color**
 overrides this property.
  |
|
 General > Fill Color
  |
 Determines the fill color for a filled gauge. Any color you select for this property overrides the
 **Green Above Target**
 and
 **Green Below Target**
 settings in the
 **Color Source**
 properties; therefore, if you plan to use either of these properties, you should set
 **Fill Color**
 to
 **Default**
 .
  |
|
 General > Minimum Value
  |
 Determines the minimum value for a filled gauge.
  |
|
 General > Maximum Value
  |
 Determines the maximum value for a filled gauge.
  |
|
 General > Target Value
  |
 Determines the target value for a filled gauge. When a value has been entered in this field, that value appears in the gauge, and a line appears at the corresponding point in the gauge to indicate the target. If you want dynamic target values in your gauge (that is, you want your target to change according to changes in your DataSet), you should add them by applying the optional third column to the gauge rather than using
 **Chart Properties**
 .
  |
|
 General > Target Label
  |
 Determines the text that accompanies the target value in a filled gauge.
  |
|
 General > Value Label
  |
 Determines the text that accompanies the current value in a filled gauge.
  |
|
 General > Maximum Label
  |
 Determines the text that accompanies the maximum value in a filled gauge.
  |


