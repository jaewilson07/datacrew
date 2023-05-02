

Intro
-------

A Marimekko chart is similar to a

pie chart

. It is different in that it represents values through column width as well as height, making it easier to see differences in the values of different items.


 As with other kinds of bar charts, both vertical and horizontal versions of Marimekko charts are available. In vertical Marimekko charts, series in categories are "stacked" on top of each other; in horizontal Marimekko charts, the series appear side by side.


 By default the values on the y-axis appear with percent symbols. You can change this behavior in the
 **Chart Properties**
 if you want. For more information, see

Formatting Values in Your Chart

.


 Use Cases
-----------

Marimekko charts are often used for showing market share snapshots, such as in the following example:

Limitations
-------------

Note that Marimekko charts may be hard to read, especially when there are many segments. Also, because segments do not have a common baseline, it can be difficult for viewers to make accurate comparisons between segments. Therefore, Marimekko charts are usually better for providing a more general overview of the data.


 Powering Marimekko charts
---------------------------

A Marimekko chart requires three data columns or rows from your DataSet—one for categories, one for the series in each category, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Marimekko chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical Marimekko chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal Marimekko chart:

Customizing Marimekko charts
------------------------------

You can customize the appearance of a Marimekko chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Marimekko charts include the following:


 Property
  |
 Description
  |
| --- | --- |
|
 General > Sort on Totals
  |
 Allows you to sort categories in many kinds of bar and lollipop charts by their total values, in either ascending or descending order. If you select
 ****Default****
 , the default sort is applied. This option does not work when the chart has automatic time scaling applied. (You can turn off automatic time scaling by checking the box for
 ****Category Scale > Never Use Time Scale****
 .
  |


