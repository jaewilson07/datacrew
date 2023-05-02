

Intro
-------

A 100% stacked bar chart is similar to a

stacked bar chart

in that categories are represented as bars and series as components of those bars. However, in a 100% stacked bar chart, each series bar represents the percentage of the overall category to which it belongs. For example, if a category was composed of three series, one with a value of 100, one of 200, and one of 300, the first series would make up 16.6% of the category (because 100 is equal to 16.6% of 600, the total value of all three series), the second would make up 33%, and the third 50%. In a way, then, a 100% stacked bar chart is also similar to a

pie chart

, in which each bar corresponds to a pie.


 As with standard bar charts, both vertical and horizontal versions of 100% stacked bar charts are available. In vertical 100% stacked bar charts, series in categories are "stacked" on top of each other; in horizontal 100% stacked bar charts, the series appear side by side.


 By default the values on the y-axis appear with percent symbols. You can change this behavior in the
 **Chart Properties**
 if you want. For more information, see

Formatting Values in Your Chart

.


 Powering 100% stacked bar charts
----------------------------------

A 100% stacked bar chart requires three data columns or rows from your DataSet—one for categories, one for the series in each category, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your 100% stacked bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical 100% stacked bar chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal 100% stacked bar chart:

Customizing 100% stacked bar charts
-------------------------------------

You can customize the appearance of a 100% stacked bar chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of 100% stacked bar charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Sort Each Category
  |
 Allows you to sort the items in each individual category in most kinds of multi-series bar and lollipop charts. You can choose an ascending or descending sort. If you select
 **Default**
 , the default sort is applied. This option does not work when the
 **Value Scale > Log Scale**
 box is checked.


 In the example at right, bars within all categories are sorted in descending order.
  |

|
|
 General > Sort on Totals
  |
 Allows you to sort categories in many kinds of bar and lollipop charts by their total values, in either ascending or descending order. If you select
 **Default**
 , the default sort is applied. This option does not work when the chart has automatic time scaling applied. (You can turn off automatic time scaling by checking the box for
 **Category Scale > Never Use Time Scale**
 .


 In the example at right, the categories are sorted by their totals in ascending order.
  |

|
|
 Bar Settings > Non-Stacked Interactivity
  |
 Turns off the default stacked bar chart interactivity.


 When you hover over any series in a stacked bar or 100% stacked bar chart, all of the corresponding series are highlighted and connected across the chart, as shown in the first screenshot at right. However, if series data is missing for any stack in the chart, the highlighting is removed and a "0" appears in the stack, as shown in the second screenshot. By checking
 **Non-Stacked Interactivity**
 , the connecting lines, highlighting, and "0" no longer appear upon hover, as shown in the third screenshot.


 For more information about DataSet columns, see

Applying DataSet Columns to Your Chart

.
  |

|


