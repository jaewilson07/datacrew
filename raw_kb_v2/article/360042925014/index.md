

Intro
-------

A Sunburst chart is ideal for showing hierarchical relationships for DataSet columns. Each hierarchical level is represented as a ring. The innermost ring represents the top level of the hierarchy, and each progressive ring outward from the center represents a level down from the top level, with smaller segments representing a portion of their parent in the hierarchy. The relative size of any segment represents the value of that segment. You can include up to 5 rings in any Sunburst chart.


 In the following example, which shows the hierarchy of an organization's top customers, the innermost ring displays the three customer regions—Americas, APAC, and Emea. Each of these is divided into its constituent classes (A, B, or C) in the second ring. Finally, the third ring shows the customers for each region and class combination.

Powering Sunburst Charts
--------------------------

This type of chart requires at least three columns or rows of data from your DataSet—a value column to determine the size of each segment in the chart, and at least two category columns to be represented as rings. You can apply up to five category columns for a total of five rings. Rings appear in your chart in the order that they are applied in the Analyzer. So if you were to drag the "Region" column into the
 **Category 1**
 field, that category would be represented as the innermost ring; dragging "Customer" into the
 **Category 2**
 field would cause it to be represented as the second ring; and so on. For information about value and category data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Sunburst chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Sunburst chart:

Customizing Sunburst Charts
-----------------------------

You can customize the appearance of a Sunburst chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Sunburst charts include the following:


 Property
  |
 Description
  |
| --- | --- |
|
 General > Value Format
  |
 Determines whether currency symbols are appended to values.
  |
|
 General > Value Decimal Places
  |
 Determines the number of decimal places in values.
  |
|
 General > Percent Value Decimal Places
  |
 Determines the number of decimal places in percent values.
  |


