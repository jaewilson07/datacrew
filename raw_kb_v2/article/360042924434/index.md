

Intro
-------

A comparative gauge is a simplified version of a

comparative fill gauge

. Like a comparative fill gauge, a comparative gauge shows the degree of change between a previous value and a current value. It is different in that it lacks graphical elements, consisting solely of a percentage value, and does not require a minimum, maximum, or target value.


 The degree of change may be shown as a percentage or as a straight value. Alternatively, you may choose to show only the current value. You can change this setting in
 **Chart Properties**
 .


 Other gauge types in Domo include

single value gauges

,

radial gauges

,

face gauges

,

progress bar gauges

, and

filled gauges

.


 Powering comparative gauges
-----------------------------

A comparative gauge requires only two columns or rows of data from your DataSet. One of these contains the current value for the gauge, and the other contains the previous value.


 If multiple rows are present in your DataSet, only the
 *first*
 row is used. No aggregations occur.


 In the Analyzer, you choose the columns containing the data for your comparative Fill gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the previous and current value columns in a typical column-based spreadsheet is converted into a comparative gauge:

Customizing comparative gauges
--------------------------------

You can customize the appearance of a comparative gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Properties for Gauges

.


 Property
  |
 Description
  |
| --- | --- |
|
 General > Color Direction
  |
 Determines whether green fill indicates positive (default) or negative change in the gauge. When positive change is denoted by green, negative change is denoted by red. Alternatively, if you specify that negative change is denoted by green, then positive change is denoted by red.
  |
|
 General > Value Displayed
  |
 Determines whether the displayed value is the percent of change between the previous and current value (default), the actual change in value, or the current value.


 For example, if the previous value in your DataSet was 30 and the current value was 55, if you selected
 **Percentage Change**
 the gauge would display "83.3%," which is the percentage of change between 30 and 55. If you selected
 **Value Change**
 , the gauge would display "25," which is the actual difference between the two values.


 If you select
 **Value Change**
 or
 **Current Value**
 for this property, you should ensure that
 **Value Format**
 is set to
 **Number**
 ; otherwise your gauge value displays with an unnecessary percent symbol. Likewise, if you select
 **Percentage Change**
 , you should ensure that
 **Value Format**
 is set to
 **Percentage**
 .
  |
|
 General > Value Format
  |
 Determines whether the gauge value displays with a percent symbol, with a currency symbol, or as a straight value.
  |
|
 General > Show Label
  |
 Determines whether the word "Current" appears above the gauge value.
  |
|
 General > Override Color
  |
 Allows you to select a color for the gauge. If you choose a color for this property, it overrides any selections you have made for the
 **Color Direction**
 property, that is, the standard "green is up, red is down" rules do not apply.
  |


