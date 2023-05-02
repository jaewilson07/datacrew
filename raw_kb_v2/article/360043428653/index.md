

Intro
-------

Domo provides many tools for performing in-depth analysis on your business data. This topic discusses most of these tools, including the chart type picker, legend item toggle, chart zoom, and quick sort. A few other analysis tools are discussed in their own topics, including

data projection

.

*Video - Domo Interface - Card Details**

Chart Type Picker
-------------------

You can change the chart type for most charts right in the Details page instead of having to first open the Analyzer. You do this by clicking

then selecting the new chart. In contrast to the chart type picker in Analyzer, which only shows icons for each chart type, the Details view chart type picker shows you actual thumbnail versions of each available chart type
 *with your chart data applied*
 . So, for example, if you opened the Details page for the following Vertical Stacked Bar chart...

...you could then open the chart type picker and selectable thumbnails of your chart, all powered by your chart data, would appear, as follows:

The original chart type for your chart is always shown in the top left corner of the chart type picker with a gray curved arrow. If you want to switch back to that chart type, you can do so quickly by clicking this thumbnail.


 The chart type picker only displays thumbnails for chart types that are compatible with your data. In the previous example, "Scatter Plot" is not suggested as a chart type because Scatter Plots have a different data structure than Vertical Stacked Bars (i.e. two value columns instead of one). If your chart has a chart type not compatible with any other charts (such as a Calendar chart), the

icon is grayed out.


 The chart type picker is
 *not*
 available for Maps.


 For information about chart types, see

Available Chart Types

.

Legend Item Toggle
---------------------

In most chart types with legends (excluding Maps), you can click on a legend item to hide or show the corresponding data in the chart. Referring to the "Amusement Park Profits" example again...

...clicking "Black Hole Blaster" item in the legend causes the data for "Black Hole Blaster" (represented as dark green bars) to be hidden from the chart.

In addition, the square next to the "Black Hole Blaster" legend item turns white to indicate that the item is hidden. You can click it again to show the bars as before.


 You can also toggle legend items in Pie-type charts. Legend toggling works a bit differently for these charts. In this case, when you click a legend item, it disappears from the legend (there is no empty square to indicate that the item is hidden). However, you can then click the

icon next to the chart to reset it to normal.

Chart Zoom
-------------

You can click and drag over a portion of a chart to "zoom in" on that portion. This works on most chart types, excluding pie-type charts, maps, gauges, Radar graphs, and a few others.


 Referring to the same example as previously...

...you could click and drag over the bars from "16" to "19," and the chart would zoom to show you just the data for those bars, as shown here:

You could then click the

icon next to the chart to zoom back out to the normal version.


 You can zoom in on a chart in the Analyzer as well as in the chart preview.

Quick Sort
-------------

For most Bar and Line graphs, you can quickly change the sort method just by clicking an icon, without having to open the Analyzer. This icon appears when you mouse over either the x- or y-axis of the chart. Five versions of this icon appear in a cycle; clicking any version sorts the graph accordingly, and the icon changes to the next version in the cycle.


 The following table lists and describes the sort methods associated with each version of the icon:


 Icon
  |
 Description
  |
| --- | --- |
|  |
 Sorts the data items in the graph using the default sort (i.e. the same way they were sorted when the graph was created).
  |
|  |
 Sorts the data items in the chart in order of ascending values.
  |
|  |
 Sorts the data items in the chart in order of descending values.
  |
|  |
 Sorts the data items in the chart in ascending alphanumeric category order.
  |
|  |
 Sorts the data items in the chart in descending alphanumeric category order.
  |

These sort options are also available for the chart in the Analyzer.

