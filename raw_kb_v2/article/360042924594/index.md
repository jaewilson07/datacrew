

Intro
-------

A grouped and stacked bar with line chart is a combination of a

grouped and stacked bar chart

.


 Like in a grouped bar with line chart...

 Both lines and bars are used—the first series that appears in your legend becomes the line, and all additional series become bars.
* Two y-axes are included, one on each side of the chart. One of these is used to measure the values along the line(s), and the other is used to measure the values of the bars. Formatting applied to lines is applied to
 *all*
 lines in the chart (i.e. you cannot apply separate formatting to individual lines), and formatting applied to bars is applied to all bars.
* You can change the number of lines in the chart in
 **Chart Properties**
 .

Like in a grouped and stacked bar chart...

 Categories consist of two bars shown side-by-side.
* When categories contain more than two series, one of these two bars appears as a typical bar, but the other is divided into series segments.
* You can change the number of divided segments in the bars in
 **Chart Properties**
 .

Powering grouped and stacked bar with line charts
---------------------------------------------------

Grouped and stacked bar with line charts require at least three columns or rows of data from your DataSet—one or more for series, one for categories, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your grouped and stacked bar with line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how data from a typical column-based spreadsheet is converted into a grouped and stacked bar with line chart:

Customizing grouped and stacked bar with line charts
------------------------------------------------------

You can customize the appearance of a grouped and stacked bar with line chart by editing its
 **Chart Properties**
 and by changing the sorting, scale syncing, and number formatting.

##
 Chart properties

Unique properties of grouped and stacked bar with line charts include the following. You can click a thumbnail image to see a larger image.


 For information about all chart properties, see

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
 General > Series on Left Scale
  |
 Determines how many series in your chart appear as lines. By default, the first series that appears in your legend becomes a line, and all remaining series become bars. However, you can convert series from bars to lines by entering the desired number of lines in
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
 Lets you change the line style in your chart. By default, lines in line-bar combination charts appear angular. If you want, you can change the line style to be curved.


 The example shows a chart in which the line style has been set to
 **Curved**
 .
  |

|
|
 General > Sync Value Scales
  |
 Determines whether value scales in dual-scale charts are synced. For more information, see

Syncing Value Scales in a Dual-Scale chart

.


 The example shows a chart with synced value scales.
  |

|
|
 General > Hide Second Scale
  |
 Hides the second value scale in dual-scale charts in which you have synced the scales using the
 **Sync Value Scales**
 option. For more information, see

Syncing Value Scales in a Dual-Scale chart

.
  |
 —
  |
|
 General > Sync Zero Lines
  |
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
  |


 |
|
 Bar Settings > First Bar Series Count
  |
 Lets you specify how many series make up the first bar of any category. The default setting for this property is

1

, meaning the first bar is made up of only one series, and the second bar is divided up into all the remaining series. If you change this value, the first bar is divided into the indicated number of series, and the second bar is adjusted accordingly. For example, if a category contained three series, by default the first bar would contain one series and the second would contain the other two. However, if you entered

2

for
 **First Bar Series Count**
 , the first bar would be divided into two series, and the second bar would contain only one.
  |
 —

|


###
 Sorting

You can manipulate which series becomes lines and bars in a grouped and stacked bar with line chart by changing the series order in your legend. By default, the sort method is set to
 **No Sorting**
 , which arranges your series in alphabetical order. For most charts with both lines and bars, this is
 *not*
 the optimal sort method. For the best results, do the following:

 Ensure that the series that should correspond to the line appears first in your DataSet, and
* choose an item-based sorting method, either ascending or descending.

Because item-based sorting sorts the items in the DataSet alphabetically by category, with the series items in each category appearing in the same order that they appear in the spreadsheet, the first series in your DataSet becomes the line. For more information about sorting, see

Sorting the Data in Your Chart

.

##
 Syncing value scales

By default, the two value scales in a grouped and stacked bar with line chart are matched to the data they measure, not to each other. For example, the values for your line might range from 0 to 100, and the values for your bars might range from 2 to 12. You can sync the scales by checking
 **Sync Value Scales**
 in
 **Chart Properties**
 . For more information, see

Syncing Value Scales in a Dual-Scale chart

.

##
 Changing scale formatting

It is possible to have separate number formatting for both vertical axes in a grouped and stacked bar with line chart. For example, you could have percent symbols affixed to the values in one axis and currency symbols affixed to the values in the other. You can do this in the
 **Format**
 menus or the
 **Chart Properties**
 . Domo recommends that you use
 **Chart Properties**
 to make formatting changes, not the
 **Format**
 menus, because the options in the
 **Format**
 menus are overridden by formatting changes in
 **Chart Properties**
 . For more information about
 **Format**
 menus, see

Formatting Values in Your Chart

. For more information about formatting numbers from the
 **Chart Properties**
 , see

Chart Properties

.

