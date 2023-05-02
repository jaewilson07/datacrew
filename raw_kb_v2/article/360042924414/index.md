

Intro
-------

Gauges are simple charts that indicate progress towards meeting a target. Comparative fill gauges are similar to

filled gauges

but more complex. Whereas a filled gauge shows you only the current value, a comparative fill gauge also shows the previous value. This allows viewers to see the degree of change since the gauge was last updated. In addition, the percentage and direction of change appears in the center of the chart. You can also specify an optional target value in a comparative fill gauge.


 Comparative fill gauges come in two types: basic and advanced. These are the same except that the advanced type includes additional parameters not available in the basic version. For example, you can create ranges and specify median values. These elements are displayed on a second circle in the gauge for a cleaner look.


 Other gauge types in Domo include

single value gauges

,

radial gauges

,

face gauges

, and

progress bar gauges

.


 Powering comparative fill gauges
----------------------------------

A basic comparative fill gauge requires four columns or rows of data from your DataSet. These columns or rows are as follows:

 One contains the minimum or lowest value that appears on the gauge.
* One contains the maximum or highest value that appears on the gauge.
* One contains the current value for the gauge.
* One contains the previous value for the gauge.

An advanced comparative fill gauge requires all of the above columns, along with the following:

 A column with a lower range value.
* A column with an upper range value.
* A column with a median value.

With both basic and advanced comparative fill gauges, you can also include an optional target value column.


 The following screenshot points out all of these elements in an advanced comparative fill gauge, along with the percentage and direction of change (which is calculated automatically based on your previous and current values):

If multiple rows are present in your DataSet, only the
 *first*
 row is used. No aggregations occur.


 In the Analyzer, you choose the columns containing the data for your comparative fill gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 Customizing comparative fill gauges
-------------------------------------

You can customize the appearance of a comparative fill gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Properties for Gauges

.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Color Direction
  |
 Determines whether green fill indicates positive (default) or negative change in the gauge. When positive change is denoted by green, negative change is denoted by red. Alternatively, if you specify that negative change is denoted by green, then positive change is denoted by red.


 In the example at right, the user has selected
 **Negative is Green**
 for this property. Thus, because the percent change is positive, the color fill is red.
  |  |


