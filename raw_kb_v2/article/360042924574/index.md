

Intro
-------

A grouped and stacked bar chart combines the features of a

stacked bar chart

. Categories in grouped and stacked bar charts always consist of two bars shown side-by-side, as in a grouped bar chart. When categories contain more than two series, one of these two bars appears as a typical bar, but the other is divided into series segments, as in a stacked bar chart. This may be useful in situations when you want to compare a primary series (such as a series representing sales data for your company headquarters) against several secondary series (such as those series representing sales data for branch offices).


 Grouped and stacked bar charts have both vertical and horizontal subtypes. Another related chart, the grouped and stacked bar with line chart, combines the features of a vertical grouped and stacked bar chart and a

Grouped and Stacked Bar with Line Chart

.


 By default, the first bar in any category grouping in a grouped and stacked bar chart appears as a normal, undivided bar, and the second bar in the category grouping is divided into series segments. However, you can change this default behavior in
 **Chart Properties**
 by entering the number of series you want to appear in the first bar.


 Powering grouped and stacked bar charts
-----------------------------------------

A grouped and stacked bar chart requires three data columns or rows from your DataSet—one for categories, one for the series in each category, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your grouped and stacked bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical grouped and stacked bar chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal grouped and stacked bar chart:

Customizing grouped and stacked bar charts
--------------------------------------------

You can customize the appearance of a grouped and stacked bar chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of grouped and stacked bar charts include the following:


 Property
  |
 Description
  |
| --- | --- |
|
 Bar Settings > First Bar Series Count
  |
 Lets you specify how many series make up the first bar of any category. The default setting for this property is

1

, meaning the first bar is made up of only one series, and the second bar is divided up into all the remaining series. If you change this value, the first bar is divided into the indicated number of series, and the second bar is adjusted accordingly. For example, if a category contained three series, by default the first bar would contain one series and the second would contain the other two. However, if you entered

2

for
 **First bar Series Count**
 , the first bar would be divided into two series, and the second bar would contain only one.
  |


