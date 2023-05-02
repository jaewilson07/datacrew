

Intro
-------

These tools include the following:


 New Chart Type Picker
-----------------------

You can now change the chart type for most charts right in the Details page instead of having to first open the Card Builder. You do this by clicking

then selecting the new chart. In contrast to the chart type picker in Card Builder, which only shows icons for each chart type, the Details view chart type picker shows you actual thumbnail versions of each available chart type
 *with your chart data applied*
 . So, for example, if you opened the Details page for the following Vertical Stacked Bar chart...

...you could then open the chart type picker and selectable thumbnails of your chart, all powered by your chart data, would appear, as follows:

The original chart type for your chart is always shown in the top left corner of the chart type picker with a gray curved arrow. If you want to switch back to that chart type, you can do so quickly by clicking this thumbnail.


 The chart type picker only displays thumbnails for chart types that are compatible with your data. In the previous example, "Scatter Plot" is not suggested as a chart type because Scatter Plots have a different data structure than Vertical Stacked Bars (i.e. two value columns instead of one). If your chart has a chart type not compatible with any other charts (such as a Calendar chart), the

icon is grayed out.


 The new chart type picker is
 *not*
 available for Maps.


 Legend Item Toggle
--------------------

In most chart types with legends (excluding Maps), you can now click on a legend item to hide or show the corresponding data in the chart. Referring to the "Amusement Park Profits" example again...

...clicking "Black Hole Blaster" item in the legend causes the data for "Black Hole Blaster" (represented as dark green bars) to be hidden from the chart.

In addition, the square next to the "Black Hole Blaster" legend item turns white to indicate that the item is hidden. You can click it again to show the bars as before.


 You can also toggle legend items in Pie-type charts. Legend toggling works a bit differently for these charts. In this case, when you click a legend item, it disappears from the legend (there is no empty square to indicate that the item is hidden). However, you can then click the

icon next to the chart to reset it to normal.


**Note:**
 Be aware that if you hide data in a chart by toggling a legend item, it is still hidden when other users go into the Details view; however, they can show it again by clicking that legend item. If you want to hide data from users, you should use

PDP

instead.


 Chart Zoom
------------

You can click and drag over a portion of a chart to "zoom in" on that portion. This works on most chart types, excluding pie-type charts, maps, gauges, Radar graphs, and a few others.


 Referring to the same example as previously...

...you could click and drag over the bars from "16" to "19," and the chart would zoom to show you just the data for those bars, as shown here:

You could then click the

icon next to the chart to zoom back out to the normal version.


 You can zoom in on a chart in the Card Builder as well as in the Details view.


 Quick Sort
------------

For most Bar and Line graphs, you can now quickly change the sort method just by clicking an icon, without having to open the Card Builder. This icon appears when you mouse over either the x- or y-axis of the chart. Five versions of this icon appear in a cycle; clicking any version sorts the graph accordingly, and the icon changes to the next version in the cycle.


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

These sort options are also available for the chart in the Card Builder.


 For more information about sorting, see

Sorting the Data in Your Chart

.


 Chart Save As
---------------

When you make changes to a chart in the Details view (whether by using any of the above features or filtering using the Analyzer tool), you can now save a copy of the edited chart to your Domo. You do this by clicking the

icon in the Details toolbar then selecting
 **Save As**
 . You can then give the new version of the card a new name, enter a description to help viewers understand what has been changed in the card, and select the page in Domo where the new card will reside. Duplicated cards retain all Analyzer, Chart Properties, and date grain selections.


 "Save As" versions of cards are entirely independent from the original versions. So if you make changes to a "Save As" copy of a card, the original is not affected.


 You can also create a "Save As" version of a card in the card view. For more information, see

Duplicating Cards

.


**To create a "Save As" version of a card in the Details view,**

. Select

*> Save As**
 .
2. (Optional) Change the title of the card if desired. (All duplicated cards incorporate the "Copy of" text in the name by default).
3. (Optional) Enter a description of the new card.


 This is highly recommended, as it will help your viewers figure out what has changed.
4. Select the page where the new version of the card should live.
5. (Optional) Uncheck the box at the bottom of the screen if you do not want to be taken to the Details page for the new card after saving; otherwise leave the box checked.
6. Click
 **Save**
 .

Data Forecasting
------------------

A new chart property for Bar and Line charts allows you to forecast the value of the remainder of the current period in your chart. It does this by taking the current value for the period and comparing it to the previous period. For example, in the following chart, the current month, October, is not yet over, so the user applies the
 **Forecast**
 property. The light blue represents the forecasted value for the entire month of October.

*To forecast the data for the remainder of the current period,**

. Open the Card Builder for the line or bar chart you want a forecast for.
2. In
 **Chart Properties**
 , click
 **Last Value Projection**
 .
3. In the
 **Project Using**
 menu, select
 **Forecast Value**
 .


