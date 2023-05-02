

Intro
-------

A Stream chart is a cross between a horizontal

Stacked Area chart

and a

Funnel chart

. Series data is optional in Stream chart. Series in a Stream chart, if included, are centered. They do not share the same baseline and do not overlap. These charts also do not show value data except upon mouse-over. Therefore they are most effective for showing relative differences between stages rather than representing exact amounts.


 This chart type is exactly the same as a

Stream Funnel chart

(classified in the Chart Picker as a Pie/Funnel chart rather than an Area chart) but is shown horizontally rather than vertically.


 The following example shows a Stream chart without series data:

Whereas the next example shows the same chart with series data applied:

Powering Stream Charts
------------------------

Stream charts require two columns or rows of data from your DataSet—a category column or row containing the names of each stage, and a value column or row containing the corresponding values for each stage. You can also add a column containing series data if you want. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Stream chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category, value, and series columns in a typical column-based spreadsheet is converted into a Stream chart:

Customizing Stream Charts
---------------------------

You can customize the appearance of a Funnel chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Style
  |
 Determines the style for a Stream chart, either
 **Curved**
 (default) or
 **Flat**
 . The example shows a Stream chart that uses the "Flat" style.
  |  |


