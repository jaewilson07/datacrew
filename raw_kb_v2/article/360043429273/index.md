

Intro
-------

Sankey charts are a type of flow diagram in which the thickness of the connecting lines between elements is proportional to the flow rate. They are usually used in scientific applications, especially physics, in which they often show energy inputs, useful output, and wasted output. However, they are often used in business as well, especially in showing cost breakdowns, inventory flows, web traffic, and more.


 In a Sankey chart, items are connected to other items using colored lines or arrows. Each pairing has a value. The thickness of any connecting line is determined by the value of the pairing in comparison to other values found in the dataset. For example, if point A was connected to point B and had a value of 10,000, and this value was among the greater values in the dataset, the line would appear thick. On the other hand, if the value of 10,000 was among the smaller values in the dataset, it would appear thin.


 The following screenshot shows an example of a publicly available Sankey chart. This chart shows both production and imports of various fuel sources and their total final consumption for the country of Iceland. Note that the line for the production of geothermal energy is far larger than the others (indicated by the thick brown connector line).

This screenshot was taken from the World Balance website at

iea.org

(International Energy Agency), which shows energy production and consumption for most nations in the world. To visit this site, see

World Balance (2017)

.


 For another interesting real-world example of a Sankey chart, see

"What are you going to do with that degree?"

This chart shows how college majors tie to professions, based on data from the American Community survey. It was created by Ben Schmidt, a professor of history at Northeastern University.


 Powering Sankey charts
------------------------

A Sankey chart requires three data columns or rows from your DataSet—one for the "From" column, one for the "To" column, and one for the values corresponding to each pairing. The items in the "From" column appear on the left side of the chart, and the items in the "To" column appear on the right side. For information about the different kinds of data in a chart, see

Understanding Chart Data

.


 At minimum, a Sankey chart contains two groupings—an "input" grouping on the left and an "output" grouping on the right. In this simple version of the chart, input items connect to one or more output items, but the output items themselves do not connect to other output items. So item A might connect to items B, C, and D, but B, C, and D would not have their own connections. This is exemplified in the following simple DataSet showing the flow of money between different nations. Note that all countries in the "From" column are paired with another country in the "To" category, but the "To" countries do not have their own connections; they are "dead ends" in the data.

When this DataSet is visualized, the resulting chart looks something like the following, with direct connections between the input and output countries; no intermediary countries appear in the flow.

You can also have a more complex chart, with multiple output groupings. You can do this by structuring your data so that output items that should have their own connections are shown in both the "From" and "To" columns. In the following example DataSet, all intermediary countries (i.e. those that receive money as well as send it to others) appear in both the "To"
 *and*
 "From" columns. For example, Portugal receives payment from Brazil, and Angola, China, and Japan receive payment from Portugal. Therefore, Portugal is represented in both the "To" and "From" columns.

When this DataSet is visualized, the resulting chart looks something like the following, with an intermediary group both receiving input and sending output:


**Notes:**


* When structuring your data for a Sankey chart, make sure you do not make bidirectional connections between items. For example, if you had "Brazil" in your "From" column and "Portugal" in the corresponding "To" column, you could not also have "Portugal" in the "From" column and "Brazil" in the corresponding "To" column. Otherwise, you will get a "Circular reference detected" error and the chart preview will not load.
* If your "From" and "To" columns contain duplicate items, make sure the names are spelled the same, including any punctuation and spaces. Otherwise, the items will be considered distinct from each other and they will not be considered both input and output items.

In the Analyzer, you choose the columns containing the data for your Sankey chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Sankey chart.

Customizing Sankey charts
---------------------------

You can customize the appearance of a Sankey chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Sankey charts include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Vertical Alignment
  |
 Determines the vertical alignment of the chart. The default is
 **Top**
 .


 The examples at right show, in order, a Sankey chart with top alignment, middle alignment, and bottom alignment.
  |

|
|
 General > Outline Sort
  |
 Applies outline (hierarchical) sorting in your Sankey chart if this has been enabled in your DataSet.
  |
 —
  |
|
 Node Options > Fill Color
  |
 Determines the color of the nodes in the chart (i.e. the vertical lines separating each item on both the left and right sides). By default these are the same color as the output lines. If you choose a color here, all nodes will be the same color.


 In the example at right, all nodes are colored dark red.
  |

|
|
 Node Options > Border Color
  |
 Determines the border color for the nodes in the chart (i.e. the vertical lines separating each item on both the left and right sides). By default, no borders are shown.


 In the example at right, all nodes have dark blue borders.
  |

|
|
 Node Options > Percent Space Between Nodes
  |
 Determines the amount of space between nodes. You can enter any value between 0 (meaning no white space appears between nodes) and 80. The default is about 15.


 The first example at right shows a Sankey chart with a percent space of 0. The second example shows the same chart with a percent space of 60.
  |


 |
|
 Node Options > Hover Text
  |
 Lets you specify the hover text that appears when you mouse over a node. (By default, the hover text shows you the name and total value for the item.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Flow Options > Fill Color
  |
 Determines the color of the connector lines in the chart. By default these are all different colors to aid visibility. If you choose a color here, all connector lines will be the same color (however, shading will be added in spots where lines cross other lines so visibility is improved).


 In the example at right, all connector lines are colored purple.
  |

|
|
 Flow Options > Show Borders
  |
 When checked, all connector lines will have borders (as shown in the example at right).
  |

|
|
 Flow Options > Node Margin
  |
 Determines the amount of space between the nodes and their connector lines. You can enter any value between 0 (the default—no space separates the nodes and lines) and 20.


 In the example, a margin space of 10 has been set.
  |

|
|
 Flow Options > Hover Text
  |
 Lets you specify the hover text that appears when you mouse over a connector line. (By default, the hover text shows the "From" and "To" items followed by the value of the pairing.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Data Label Settings > Hide
  |
 Hides/shows the item names in the chart.
  |
 —
  |
|
 Data Label Settings > Text
  |
 Lets you customize the data label text in the chart (which simply shows the item names by default). A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Data Label Settings > Position
  |
 Lets you set the position of data labels in your Sankey chart. The following positions are available:
 * **On Flows**
 (default). The data label text is centered on the connector lines. This is shown in the first example at right.
* **Centered**
 . The data label text is centered over the nodes. This is shown in the second example at right.
* **Outside**
 . Data labels on the left and right side of the chart appear in the white space outside of the chart; labels within the chart appear centered over the nodes. This is shown in the third example at right.
* **Inside Nodes**
 . The data label text is centered within the nodes. This is shown in the fourth example at right.
 |


 |
|
 Data Label Settings > Font Size
  |
 Sets the font size for data labels in the Sankey chart. The default size is
 **Medium**
 .
  |
 —
  |
|
 Data Label Settings > Text Color
  |
 Determines the text color for data labels. The default is
 **Black**
 . If you select
 **Complementary**
 (shown in the example at right), colors are determined automatically based on the node color.
  |

|
|
 Data Label Settings > Allow Overlap
  |
 When set, if data labels overlap with each other, this is shown in the chart (otherwise they do not display).
  |
 —
  |
|
 Entry Indicator > Show
  |
 Lets you turn on entry indicators for your Sankey chart. These indicators appear for nodes in which the value exiting the node is greater than the value entering the node. If you mouse over a node, hover text appears showing you the difference in values.


 The screenshot shows an example of a Sankey chart with two entry indicators, for Portugal and Spain.
  |

|
|
 Entry Indicator > Color
  |
 Lets you change the color of entry indicators in your Sankey chart.


 In the screenshot, the color of the indicators has been changed to dark red.
  |

|
|
 Entry Indicator > Hover Text
  |
 Lets you specify the hover text that appears when you mouse over an entry indicator. (By default, the hover text shows the difference in values between the input and output nodes.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |
|
 Exit Indicator > Show
  |
 Lets you turn on exit indicators for your Sankey chart. These indicators appear for nodes in which the value entering the node is greater than the value exiting the node. If you mouse over a node, hover text appears showing you the difference in values.


 The screenshot shows an example of a Sankey chart with an exit indicator for England.
  |

|
|
 Exit Indicator > Color
  |
 Lets you change the color of exit indicators in your Sankey chart.


 In the screenshot, the color of the indicators has been changed to blue.
  |

|
|
 Exit Indicator > Hover Text
  |
 Lets you specify the hover text that appears when you mouse over an exit indicator. (By default, the hover text shows the difference in values between the input and output nodes.) A variety of replacement macros is available for dynamic text. For more information, see

Formatting Data Label and Hover Text in Your Chart

.
  |
 —
  |


