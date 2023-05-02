

Intro
---------

A donut chart is a circle divided into sections, each of which represents a percentage of the overall chart. This chart type is almost identical to a

pie chart

; the only difference is that there is a hole in the center, so the sections appear as arcs rather than wedges.


 Donut charts contain a single subtype: the nautilus donut chart. For more information about this and other pie-type charts, see

Available pie-Type charts

.


 Powering donut charts
-----------------------

A donut chart requires two columns or rows of data from your DataSet—a category column or row containing the names of each section, and a value column or row containing the corresponding values for each section. The numbers in the values column or row do
 *not*
 need to add up to 100%. For information about value, category, and series data, see

Understanding Chart Data

.


 The sections in a donut chart are arranged from highest to lowest value starting at the top and moving clockwise.


 In the Analyzer, you choose the columns containing the data for your donut chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data appears when converted into a donut chart:

Customizing donut charts
--------------------------

You can customize the appearance of a donut chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of donut charts include the following.


 You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Maximum Slices Before 'Other'
  |
 Determines the number of slices in the chart that are represented as unique slices—all remaining slices in the chart are aggregated into an "Other" slice. In the example at right, the user entered "6" as the
 **Maximum Slices Before Other**
 value; therefore, the first five slices appear as unique slices, and the remaining slices are grouped into an "Other" slice.
  |

|
|
 General > Value Format
  |
 Determines whether currency symbols are appended to values.
  |
 —
  |
|
 General > Value Decimal Places
  |
 Determines the number of decimal places in values.
  |
 —
  |
|
 General > Percent Value Decimal Places
  |
 Determines the number of decimal places in values.
  |
 —
  |
|
 General > Unsorted Data
  |
 Determines whether or not the slices in a pie-type chart are arranged automatically from highest to lowest value. By default, you cannot change the sort order by selecting different options in the
 **Sorting**
 menu. However, if you check the
 **Unsorted Data**
 box, you can use the
 **Sorting**
 menu to change the sort order. For more information, see

Sorting the Data in Your Chart

.
  |
 —
  |
|
 Legend > Hide Legend
  |
 When this option is selected, no legend appears next to your pie or donut chart. The example shows a pie chart in which the legend has been hidden.
  |  |
|
 Legend > Display in Legend
  |
 Determines whether values from your DataSet display as literal values or as their corresponding percentages in your pie chart. For example, a value from your DataSet might be "26" but take up 35.9% of the pie. Therefore, if you selected
 **Value Only**
 for this property, the legend item would read "26," and if you selected
 **Percentage**
 , the legend item would read "35.9%." If you selected
 **No Label**
 , only the name of each slice would appear in the legend.
  |  |
|
 Hover Legend > Hide Legend
  |
 When this option is selected, the "hover legend," which normally appears when you mouse over a slice in your pie or donut chart, is hidden from view.
  |
 —
  |
|
 Hover Legend > Title Text
  |
 Lets you customize the summary text that appears above your pie or donut chart's hover legend area (which normally reads "Total").


 The example shows a pie chart in which this text has been customized to read "Sum of Amount."
  |

|
|
 Hover Legend > Title Value
  |
 Lets you specify an aggregation type for the summary value in your pie or donut chart's hover legend. By default all of the data in your chart is totaled, but you can change this to show the average, minimum, or maximum amount in the chart.
  |
 —
  |
|
 Hover Legend > Hide Percent Value
  |
 When this option is selected, the percent of total value that appears when you mouse over a slice in your pie or donut chart does not appear.
  |
 —
  |


