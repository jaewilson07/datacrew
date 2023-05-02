

Intro
-------

Refer to this topic to find information about chart properties available for Pie-type charts, such as those for configuring value formatting, sorting, Funnel options, and so on.


 "General" Properties
----------------------

The properties in the following table are found in the
 **General**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Maximum Slices Before Other
  |
 Determines the number of slices in a Pie or Donut chart that are represented as unique slices—all remaining slices in the chart are aggregated into an "Other" slice.


 In the first example at right, the user entered "6" as the
 **Maximum Slices Before Other**
 value; therefore, the first six slices appear as unique slices, and the remaining slices are grouped into an "Other" slice. In the second example, the user mouses over the "Other" slice, and the legend updates to show the items that have been grouped into that slice. In addition, the total and percentage for the combined "Other" items appears next to the pie.
  |


 |
|
 Maximum Items Before Other
  |
 Determines the number of squares in a Tree Map that are represented as unique squares—all remaining squares in the chart are aggregated into an "Other" square. In the example at right, the user entered "8" as the
 **Maximum Items Before Other**
 value; therefore, the first eight squares appear as unique squares, and the remaining squares are grouped into an "Other" square.
  |

|
|
 Value Format
  |
 Determines whether currency symbols are appended to values in Pie and Donut charts.
  |
 —
  |
|
 Value Decimal Places
  |
 Determines the number of decimal places in values in Pie and Donut charts.
  |
 —
  |
|
 Percent Value Decimal Places
  |
 Determines the number of decimal places in percent values in Pie and Donut charts and Tree Maps.
  |
 —
  |
|
 Display in Legend
  |
 In Pie and Donut charts, allows you to choose whether the legend values are represented as values (as in your DataSet) or as percentages.


 |
 —
  |
|
 Hide Pie Labels
  |
 Determines whether labels appear for pie slices in the Details view for a Pie chart.
  |
 —

|
|
 Unsorted Data
  |
 Determines whether or not the slices in a Pie chart are automatically sorted from highest to lowest value. By default, in a Pie chart, slices are arranged from highest value to lowest value. In this situation, you
 *cannot*
 change the sort order by selecting different options in the
 **Sorting**
 menu. However, if you check the
 **Unsorted Data**
 box, you can use
 **Sorting**
 to change the sort order. For more information, see

Sorting the Data in Your Chart

.
  |
 —

|
|
 Legend Percentage
  |
 Lets you specify how legend percentages in Funnel graphs are derived. When
 **Percent of Total**
 is selected, the percentage for each funnel slice is derived from the chart total, much like a Pie chart. When
 **Percent of Previous**
 (default) is selected, the percentage for each slice is derived from the value of the slice above it. The
 **Percent of Previous**
 option is appropriate for conversion funnel charts in which you want to show the percent of change between successive layers.


 The two example screenshots at right compare these two types of Funnel charts. The first screenshot shows a chart in which
 **Percent of Total**
 is used. The percentage shown for each layer is derived from the total chart value. The second screenshot shows a chart in which
 **Percent of Previous**
 is used. The percentage shown for each layer is derived from the value of the previous layer.
  |


 |

"Legend" Properties
---------------------

The properties in the following table are found in the
 **Legend**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hide Legend
  |
 When this option is selected, no legend appears next to your Pie or Donut graph. The example shows a Pie graph in which the legend has been hidden.
  |

|
|
 Display in Legend
  |
 Determines whether values from your DataSet display as literal values or as their corresponding percentages in your Pie graph. For example, a value from your DataSet might be "26" but take up 35.9% of the pie. Therefore, if you selected
 **Value Only**
 for this property, the legend item would read "26," and if you selected
 **Percentage**
 , the legend item would read "35.9%." If you selected
 **No Label**
 , only the name of each slice would appear in the legend.
  |
 —
  |

"Hover Legend" Properties
---------------------------

The properties in the following table are found in the
 **Hover Legend**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hide Legend
  |
 When this option is selected, the "hover legend," which normally appears when you mouse over a slice in your Pie or Donut graph, is hidden from view.
  |
 —
  |
|
 Title Text
  |
 Lets you customize the summary text that appears above your Pie or Donut graph's hover legend area (which normally reads "Total").The example shows a Pie graph in which this text has been customized to read "Sum of Amount."
  |

|
|
 Title Value
  |
 Lets you specify an aggregation type for the summary value in your Pie or Donut graph's hover legend. By default all of the data in your graph is totaled, but you can change this to show the average, minimum, or maximum amount in the graph.
  |
 —
  |
|
 Hide Percent Value
  |
 When this option is selected, the percent of total value that appears when you mouse over a slice in your Pie or Donut chart does not appear.
  |
 —
  |

"Data Label Settings" Properties
----------------------------------

The properties in the following table are found in the
 **Data**
**Label Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Hide Labels
  |
 Hides the labels that normally appear on the slices in your Pie graph.The example shows a Pie graph in which labels have been hidden.
  |

|
|
 Text
  |
 Specifies text to replace the default text in labels in Pie graphs. The example at right shows a Pie graph in which the user has implemented a macro to show the value for each state. For more information about creating data label text, including a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |

|
|
 Font Size
  |
 Lets you increase or decrease the font size for the labels in your Pie graph. If you choose the default setting ("Auto"), an optimal font size for your labels is determined based on the amount of space in each slice.
  |
 —
  |

"Label Settings" Properties (Tree Maps)
-----------------------------------------

The properties in the following table are found in the
 **Label Settings**
 category in Chart Properties.


 Option
  |
 Description
  |
 Examples
  |
| --- | --- | --- |
|
 Position
  |
 Determines the position of labels in Tree Maps.
  |
 —
  |
|
 Text
  |
 Specifies text to replace the default text in Tree Maps. The example at right shows a Tree Map in which the user has implemented a macro to show the value for each state. For more information about creating data label text, including a list of available macros, see

Formatting Data Label and Hover Text in Your Chart

.
  |

|


