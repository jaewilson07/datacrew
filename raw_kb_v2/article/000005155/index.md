

Intro
-------

The Sankey chart—often called a flow diagram—is a great way to illustrate flows, including flows of energy, materials, and web page paths. In addition to the flow of an item, the Sankey chart captures the relative size of the flow itself by changing the line width from node to node. For more information, see our

Sankey Chart

article.


 Sankey charts consist of nodes, or end points, and colored arrows or lines. See below for a simple Sankey chart.

The original Sankey chart is ideal for physical flows that go to a destination once per flow, like energy and materials. However, it's not ideal for recursive concepts like web traffic, where flows need to circle back to previous nodes and require special treatment to display properly. To meet these needs, Domo has created the circular Sankey chart.


 The following image emphasizes the chart's circular reference:

Powering Circular Sankey Charts
---------------------------------

A circular Sankey chart requires each of the following:

 **A `From` dimension**
 — The source of the flow.
* **A `To` dimension**
 — The destination of the flow.
* **A value**
 — The size of the flow.


 For information about value, category, and series data, see our

Understanding Chart Data

article.

In Analyzer, you can choose the columns containing the data for your circular Sankey chart. For more information about choosing data columns, see our article about

Applying DataSet Columns to Your Chart

.


 The following image shows how data from a typical column-based spreadsheet is converted into a circular Sankey chart:

Customizing Circular Sankey Charts
------------------------------------

You can customize the appearance of a circular Sankey chart in several ways, many of which are possible with the
 **Chart Properties**
 tool. For more information, see our

Chart Properties

article.


 Some unique properties of circular Sankey charts are shown in the following table:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
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
 General > Layout method
  |
 Allows you to select different layouts for your Sankey data. You can see which one works best for your data.
  |

|
|
 General > Hide Circular
  |
 Allows you to hide circular references in the chart.


 When you select this checkbox, the chart handles recursion but doesn't display the loops back.
  |

|
|
 Node Options
  |
 Allows you to set the fill and border colors for nodes.
  |

|
|
 Flow Options
  |
 Allows you to set the fill and border colors for flows.
  |

|


