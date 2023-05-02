

Intro
-------

A gauge is a simple chart that indicates progress towards meeting a target. A Single Value gauge displays the first value in your DataSet as a numeral. No other graphics or images are used, and there are no ranges. This chart type is useful when you want to see a single value quickly without having to interpret bars, lines, etc. Other gauge types in Domo include

Filled gauges

,

Progress Bar gauges

,

Radial gauges

,

Face gauges

, and

Comparative Fill gauges

.


 Powering Single Value gauges
------------------------------

A Single Value gauge requires only two columns or rows of data from your DataSet—one contains categories, and the other contains the values. For information about value, category, and series data, see

Understanding Chart Data

.


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

For more information about aggregating data, see

Aggregating your data

.


 For more information about
 **Chart Properties**
 , see

Chart Properties

.


 In the Analyzer, you choose the columns containing the data for your Single Value gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Single Value gauge:

Customizing Single Value gauges
---------------------------------

You can customize the appearance of a Single Value gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Properties for Gauges

.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
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
 —
  |
|
 General > Value Format
  |
 Determines the general number format for a Single Value gauge. Options include
 **Number**
 (which includes no special formatting),
 **Currency**
 (in which a currency symbol is affixed), and
 **Percentage**
 (in which a percent symbol is affixed).
  |
 —
  |
|
 General > Divide Value By
  |
 Refers to the number that the gauge value is to be divided by, if any. This option is useful when the value is very large and you want to abbreviate it by dividing by a common number. For example, if the gauge value represented millions of dollars, you could choose to divide by millions—the gauge value would then be reduced to more comprehendible single digits. When you choose to divide by
 **Percentage**
 , the gauge value is multiplied by 100.
  |
 —
  |
|
 General > Decimal Places
  |
 Determines the number of decimal places used in the gauge value. You can choose from
 **Default**
 ,
 **None**
 , and options for numbers of decimal places (from ".0" to ".00000"). By default, Domo automatically determines the optimal number of decimal places for the gauge value. When you select
 **None**
 , the value is rounded to the nearest whole number.
  |
 —
  |
|
 General > Negative Numbers
  |
 Determines the format for negative numbers.


 If you select
 **-100**
 , negative values have a minus symbol affixed. If you select
 **(100)**
 , negative values are enclosed in parentheses.
  |
 —

|
|
 Header/Footer > Header
  |
 Specifies text to appear before the value.
  |

|
|
 Header/Footer > Footer
  |
 Specifies text to appear after the value.
  |

|


