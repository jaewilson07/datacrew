

Intro
-------

A 100% stacked bar with line chart is similar to a

100% stacked bar chart

in that each series bar in a stack represents the percentage of the overall category to which it belongs. The difference is that it also includes one or more trendlines and two y-axes, similar to other kinds of line-bar combination charts. One of these is used to measure the values along the line(s), and the other is used to measure the percentages of the bars in each stack. By default, the first item that appears in your chart legend is represented as the line and all remaining items are represented as stacks of bars. You can change this behavior in the Chart Properties if you want.


 Both vertical and horizontal versions of 100% stacked bar with line charts are available. In vertical 100% stacked bar with line charts, series in categories are "stacked" on top of each other; in horizontal 100% stacked bar charts, the series appear side by side.


 Powering 100% stacked bar with line charts
--------------------------------------------

A 100% stacked bar with line chart requires three data columns or rows from your DataSet—one for categories, one for the series in each category, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your 100% stacked bar with line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Analyzer Overview

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical 100% stacked bar with line chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal 100% stacked bar with line chart:

Customizing 100% stacked bar with line charts
-----------------------------------------------

You can customize the appearance of a 100% stacked bar with line chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties.

Unique properties of 100% stacked bar with line charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Series on Left Scale
  |
 Determines how many series in your chart appear as lines (or symbol series in a stacked bar with symbols chart). By default, the first series that appears in your legend for these chart types becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines in
 **Chart Properties**
 . For example, if your chart had three series, the first series appearing in your legend would appear as a line, and the remaining two series would appear as bars. You could turn the second series into a line by entering

2

in the
 **Series on Left Scale**
 field.
  |
 —
  |
|
 General > Line Style
  |
 Lets you change the line style in your chart. By default, lines in line-bar combination charts appear angular. If you want, you can change the line style to be curved, plain with symbols, curved with symbols, or consist only of symbols.


 The example shows a chart in which the line style has been set to
 **Curved**
 .
  |

|
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


