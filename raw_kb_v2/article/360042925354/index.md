

Intro
-------

Refer to this topic to find information about chart properties available for Gauges, such as those for configuring ranges, target values, fill colors, value formats, and so on.


 For step-by-step instructions on applying these properties to gauges, see

Setting Options for Gauges

.


 "General" Properties
----------------------

The properties in the following table are found in the
 **General**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Fill Color
  |
 Determines the fill color for a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —

|
|
 Minimum Value
  |
 Determines the minimum value for a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —


 |
|
 Maximum Value
  |
 Determines the maximum value for a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —

|
|
 Target Value
  |
 Determines the target value for a Filled gauge. When a value has been entered in this field, that value appears in the gauge, and a line appears at the corresponding point in the gauge to indicate the target. This property sets a non-changing, static target value in the gauge. If you want dynamic target values in your gauge (that is, you want your target to change according to changes in your DataSet), you should add them by applying the optional third column to the gauge rather than using
 **Chart Properties**
 . For more information about gauge properties, see

Filled Gauge

.
  |
 —
  |
|
 Target Label
  |
 Determines the text that accompanies the target value in a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —
  |
|
 Value Label
  |
 Determines the text that accompanies the current value in a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —
  |
|
 Maximum Label
  |
 Determines the text that accompanies the maximum value in a Filled gauge. For more information, see

Setting Properties for Gauges

.
  |
 —
  |
|
 Value
  |
 Determines how the values in your values column are to be aggregated for Single Value, Filled, and Radial gauges. Options include the usual aggregations such as
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
 , your gauge value would be the summed averages for each category). Because having two aggregations in a chart is usually undesirable, select
 **No Aggregation**
 in the value aggregation menu, then in
 **Chart Properties**
 select your desired aggregation in the
 **General > Value**
 menu.
  |
 —
  |
|
 Color Source
  |
 Determines how the color of a Filled gauge is determined. Options include
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
 —
  |
|
 Fill Color
  |
 Determines the fill color for a Filled gauge. Any color you select for this property overrides the
 **Green Above Target**
 and
 **Green Below Target**
 settings in the
 **Color Source**
 properties; therefore, if you plan to use either of these settings, you should set
 **Fill Color**
 to
 **Default**
 so the settings are not overridden.
  |
 —
  |
|
 Value Format
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
 Divide Value By
  |
 Refers to the number that the value in a Single Value gauge is to be divided by, if any. This option is useful when the value is very large and you want to abbreviate it by dividing by a common number. For example, if the gauge value represented millions of dollars, you could choose to divide by millions—the gauge value would then be reduced to more comprehendible single digits. When you choose to divide by
 **Percentage**
 , the gauge value is multiplied by 100.
  |
 —
  |
|
 Decimal Places
  |
 Determines the number of decimal places used in the value in a Single Value gauge. You can choose from
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
 Negative Numbers
  |
 Determines the format for negative numbers in a Single Value gauge. If you select
 **-100**
 , negative values have a minus symbol affixed. If you select
 **(100)**
 , negative values are enclosed in parentheses.
  |
 —
  |
|
 Color Direction
  |
 Determines whether green fill in a Comparative Fill Gauge indicates positive (default) or negative change in the gauge.


 When positive change is denoted by green, negative change is denoted by red. Alternatively, if you specify that negative change is denoted by green, then positive change is denoted by red.


 In the example at right, the user has selected
 **Negative is Green**
 for this property. Thus, because the percent change is positive, the color fill is red.
  |

|

"Range 1-6" Properties
------------------------

The properties in the following table are found in the
 **Range 1**
 to
 **Range 6**
 categories in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Minimum Value
  |
 Lets you specify the minimum value for the selected range in a Radial gauge.
  |
 —
  |
|
 Maximum Value
  |
 Lets you specify the maximum value for the selected range in a Radial gauge.
  |
 —
  |
|
 Color
  |
 Lets you select the color for the selected range in a Radial gauge. In the example, the
 **Minimum Value**
 for
 **Range 3**
 has been set to "67," the
 **Maximum Value**
 has been set to "100," and the
 **Color**
 has been set to green.
  |

|

"Green Range/Yellow Range/Red Range" Properties
-------------------------------------------------

The properties in the following table are found in the
 **Green Range**
 ,
 **Yellow Range**
 , and
 **Red Range**
 categories in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Minimum Value
  |
 Lets you specify the minimum value for the selected color range in a Face gauge.
  |
 —
  |
|
 Maximum Value
  |
 Lets you specify the maximum value for the selected color range in a Face gauge.
  |
 —
  |

Number Format Properties
--------------------------


|
 Property
  |
 Description
  |
| --- | --- |
|
 Currency Symbol
  |
 The symbol or group of symbols used to denote currency in values in your chart. The default currency symbol is "$."


**Note**
**:**
 If you use a close parenthesis as part of your currency symbol, you
 *must*
 pair it with an open parenthesis.


 |
|
 Currency Symbol Position
  |
 Determines whether currency symbols appear before or after their values.
  |
|
 Decimal Separator
  |
 Determines the symbol for separate decimal values. The default decimal separator is a period.
  |
|
 Thousands Separator
  |
 Determines the symbol used to separate thousands in large numbers. The default thousands separator is a comma.
  |

"Header/Footer" Properties
----------------------------

The properties in the following table are found in the
 **Header/Footer**
 categories in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Header/Footer > Header
  |
 Specifies text to appear before the value in a Single Value gauge.
  |

|
|
 Header/Footer > Footer
  |
 Specifies text to appear after the value in a Single Value gauge.
  |

|


