

Intro
-------

A Pie chart is a circle divided into cone-shaped "wedges," each of which represents a percentage of the overall chart.


 The sections in a Pie chart are automatically arranged from highest to lowest value starting at the top and moving clockwise. By default, selecting other sort options does
 *not*
 work in a Pie chart. However, if you check the box for
 **Unsorted Data**
 in
 **Chart Properties**
 , you can use the
 **Sorting**
 options to change how your data is sorted.


 Pie charts include two sub-types, which are built in the same way and have the same Chart Properties. These sub-types include the following:

 Nautilus
* Nightingale Rose

For descriptions and screenshots of these charts, see

Available Pie-Type Charts

.


 Powering Pie charts
---------------------

This type of chart requires two columns or rows of data from your DataSet—a category column or row containing the names of each wedge, and a value column or row containing the corresponding values for each wedge. The numbers in the values column or row do
 *not*
 need to add up to 100%. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Pie chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a Pie chart:

Customizing Pie charts
------------------------

You can customize the appearance of a Pie chart by editing its

*Chart Properties**

. For information about all chart properties, see

Chart Properties

. The unique properties of Pie charts and Pie chart sub-types include the following:


**Note:**
 If you use a

COUNT(DISTINCT)

or

SUM(DISTINCT)

Beast Mode calculation in your pie value column, the "TOTAL" value for the pie will show the sum of those counts individually. However, if you use that same calculation within your summary number, the total value is derived from the distinct values in the DataSet as a whole. These two values may then appear to be different in your chart. This is because the grouping of the Pie chart counts the distinct values for that grouping, not for the DataSet as a whole. For more information about Beast Mode, see

Configuring Your Chart Summary Number

.


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
 Determines the number of decimal places in percent values.
  |
 —
  |
|
 General > Hide Pie Labels
  |
 Determines whether labels appear for pie slices in the Details view for a Pie chart.
  |
 —
  |
|
 General > Unsorted Data
  |
 Determines whether or not the slices in a Pie chart are arranged automatically from highest to lowest value. By default, you cannot change the sort order by selecting different options in the
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
 When this option is selected, no legend appears next to your Pie or Donut chart. The example shows a Pie chart in which the legend has been hidden.
  |

|
|
 Legend > Display in Legend
  |
 Determines whether values from your DataSet display as literal values or as their corresponding percentages in your Pie chart. For example, a value from your DataSet might be "26" but take up 35.9% of the pie. Therefore, if you selected
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
 When this option is selected, the "hover legend," which normally appears when you mouse over a slice in your Pie or Donut chart, is hidden from view.
  |
 —
  |
|
 Hover Legend > Title Text
  |
 Lets you customize the summary text that appears above your Pie or Donut chart's hover legend area (which normally reads "Total").


 The example shows a Pie chart in which this text has been customized to read "Sum of Amount."
  |

|
|
 Hover Legend > Title Value
  |
 Lets you specify an aggregation type for the summary value in your Pie or Donut chart's hover legend. By default all of the data in your chart is totaled, but you can change this to show the average, minimum, or maximum amount in the chart.
  |
 —
  |
|
 Hover Legend > Hide Percent Value
  |
 When this option is selected, the percent of total value that appears when you mouse over a slice in your Pie or Donut chart does not appear.
  |
 —
  |
|
 Data Label Settings > Hide Labels
  |
 Hides the labels that normally appear on the slices in your Pie chart.


 The example shows a Pie chart in which labels have been hidden.
  |

|
|
 Data Label Settings > Text
  |
 Specifies text to replace the default text in labels in Pie charts. The example at right shows a Pie chart in which the user has implemented a macro to show the value for each state. For more information about creating data label text, including a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |

|
|
 Data Label Settings > Font Size
  |
 Lets you increase or decrease the font size for the labels in your Pie chart. If you choose the default setting ("Auto"), an optimal font size for your labels is determined based on the amount of space in each slice.
  |
 —
  |


