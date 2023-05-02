

Intro
-------

The most important task in constructing a chart is selecting category (dimension), value (metrics), and series data from columns in a DataSet to power that chart. All chart types except tables, heat map tables, calendars, and Gantt charts require value (or numerical) data, and most require category and series data. For more information about these data types, see

Understanding Chart Data

.


 In the Analyzer, all columns in the DataSet are divided into two groups:
 **Dimensions**
 and
 **Measures**
 . For any given chart type, one or more fields appear. These fields contain the names of regions or elements within the chart. For the chart to be powered up, data columns must be applied to the appropriate fields. To apply a column to your chart, you drag it from its group to the desired field in the chart. For example, a percent of total chart is accompanied by two fields—
 **Bar Name**
 and
 **Bar Value.**
 To power up this chart, you would drag a category (dimension) column into the
 **Bar Name**
 field and a value (measure) column into the
 **Bar Value**
 field.


 The number of required fields differs between chart types. Some chart types have only two, while others may have seven or more. Many chart types also have optional fields. For example, single bar charts do not require a series column, but you can add one if you want (in which case, the chart is no longer a single bar chart, but a multi-bar chart such as a grouped or stacked bar chart). For tables and heat map tables, only one column is required but you can add as many as you want, without regard to data type.


 Many chart types allow you to add additional series beyond what is required for the chart if the columns are aggregated. This produces a "trellis chart," in which additional dimensions are represented as boxes in the chart. You can also do this with date columns using "Tiered Dates"—this allows you to incorporate multiple time periods in a single view.


 A preview of the chart appears when appropriate columns have been dragged into each field. If you change a column in a field, the preview changes accordingly.


 When you power a new Card, Domo builds an initial chart, depending on your data, by automatically selecting a chart type, filling in the required fields, and choosing a date grain (if available). For example, if your DataSet contained a value column, a category column, and a series column, Domo might initially build a preview of a vertical stacked bar chart. You can change these automatic selections if you want.


 When you drop a column name in a field, a panel opens with additional options you can apply to the data in the associated column. The options available for a column depends on the data type of the column and the chart type. For example, a value column in a stacked bar chart opens a pane with options for changing the goal, label, and number format, whereas a category column shows only the label option.


 If you drag a column onto a field that already contains a column, the new column replaces the old one.


 If you apply a column with PDP restrictions to a chart, you see only data permitted by your policy. However, if you were to save the chart, a viewer not restricted by that policy would see all of the data. For more information about PDP, see

Creating and Deleting PDP Policies

.


 For more information about the Analyzer, see

Analyzer Layout

.


 For more information about the specific requirements for each chart type, see

Chart Types

.


 Choosing a category column
----------------------------

Category data is the data being measured in your chart. To apply category data to your chart, you drag a column from the
 **Dimensions**
 group into the desired field.


**Tip:**
 If the column names in the left-hand pane are too long to read, you can expand them by clicking and dragging the border on the right side of the pane.


 For example, in the chart below, the creator wanted to measure the rental prices of five condominium complexes, so she dragged the
 **Condominium Park**
 column into the
 **X Axis**
 field. These items are then represented along the horizontal axis.

In charts where information is recorded over time, the column with the date and/or time data is usually applied as the category.


 You typically apply category columns to a chart by dragging them into the
 **X Axis**
 field. However, in some chart types, the fields into which you typically drag category columns have different names:


 Chart type
  |
 Field where category data is usually applied
  |
| --- | --- |
|
 Most vertical bar charts, all horizontal line charts, all vertical area charts, all vertical lollipop charts, stream, vertical symbol, vertical symbol overlay
  |
**X Axis**
 |
|
 Most horizontal bar charts, all vertical line charts, all horizontal area charts, all horizontal lollipop charts, category scatter, stream funnel
  |
**Y Axis**
 |
|
 Vertical percent of total, horizontal percent of total
  |
**Bar Name**
 |
|
 Pie, nautilus
  |
**Pie Name**
 |
|
 Funnel, folded funnel, funnel bar
  |
**Funnel Section Name**
 |
|
 Donut, nautilus donut
  |
**Donut Slice Name**
 |
|
 Pareto
  |
**Pareto Name**
 |
|
 Radar, histogram
  |
**Category Names**
 |
|
 Vertical bullet, horizontal bullet
  |
**Names**
 |
|
 US map, Australia map, Germany map, Austria map, Brazil map, India map, Malaysia map, Nigeria map
  |
**State Name**
 |
|
 Japan map
  |
**Prefecture Name**
 |
|
 Canada map, China map, Indonesia map, Panama map, South Korea map, Spain map
  |
**Province Name**
 |
|
 New Zealand map, United Kingdom map
  |
**Division Name**
 |
|
 Chile map, France map, Ghana map, Italy map
  |
**Region Name**
 |
|
 Peru map
  | **Department Name**  |
|
 Portugal map
  | **District Name**  |
|
 Switzerland map
  | **Canton Name**  |
|
 UAE map
  | **Emirate Name**  |
|
 Mexico map
  | **State Code/Name**  |
|
 World map, all continental and regional maps
  |
**Country Code/Name**
 |
|
 Heat map
  |
**Category 1**
*and*
**Category 2**
 (Heat maps require two category columns)
  |
|
 TreeMap
  |
**TreeMap Name**
 |
|
 Radial gauge, filled gauge, face gauge, progress bar gauge
  |
**Gauge Name**
 |
|
 Word cloud
  |
**Word Names**
 |
|
 Gantt, candlestick, high low
  |
**Category**
 (
 *optional*
*in Gantt charts*
 )
  |
|
 Vertical waterfall, Horizontal waterfall
  |
**Summary Group**
*and*
**Item Names**
 (Waterfall charts require two category columns)
  |
|
 Vertical box plot, Horizontal box plot
  | **Category Names**  |
|
 All data science charts, table, heat map table
  |
 None
  |

Choosing a value column
-------------------------

The specific measurements or metrics in your chart constitute value data. To apply value data to your chart, you drag a column from the
 **Measures**
 group into the desired field above the chart.


**Tip:**
 If the column names in the left-hand pane are too long to read, you can expand them by clicking and dragging the border on the right side of the pane.


 For example, in the Monthly Rental Prices chart, the creator wanted to assign the monthly rental prices as the values, so she dragged the "Price per Month" column into the
 **Y**
**Axis**
 field. These items are then represented along the vertical axis.

You usually apply value columns to a chart by dragging them into the
 **Y Axis**
 field. However, in some chart types, the fields into which you typically drag category columns have different names:


 Chart type
  |
 Menu with value data
  |
| --- | --- |
|
 Most horizontal bar charts, all vertical line charts, all horizontal area charts, all horizontal lollipop charts, category scatter, stream funnel
  |
**X Axis**
 |
|
 Most vertical bar charts, all horizontal line charts, all vertical area charts, all vertical lollipop charts, stream, vertical symbol, vertical symbol overlay
  |
**Y Axis**
 |
|
 Vertical percent of total, horizontal percent of total
  |
**Bar Value**
 |
|
 Pie, nautilus
  |
**Pie Value**
 |
|
 Funnel, folded funnel, funnel bar
  |
**Funnel Section Value**
 |
|
 Donut, nautilus donut
  |
**Donut Slice Value**
 |
|
 Pareto
  |
**Pareto Value**
 |
|
 Radar
  |
**Radar Values**
 |
|
 Vertical bullet, horizontal bullet
  |
**Actual Value**
 |
|
 US map, Australia map, Germany map, Austria map, Brazil map, India map, Malaysia map, Nigeria map
  |
**State Value**
 |
|
 Japan map
  |
**Prefecture Value**
 |
|
 Canada map, China map, Indonesia map, Panama map, South Korea map, Spain map
  |
**Province Value**
 |
|
 New Zealand map, United Kingdom map
  |
**Division Value**
 |
|
 Chile map, France map, Ghana map, Italy map
  |
**Region Value**
 |
|
 Peru map
  | **Department Name**  |
|
 Portugal map
  | **District Name**  |
|
 Switzerland map
  | **Canton Name**  |
|
 UAE map
  | **Emirate Name**  |
|
 Mexico map
  | **State Code/Name**  |
|
 World map, all continental and regional maps
  |
**Country Value**
 |
|
 Heat map, vertical and horizontal waterfall
  |
**Value**
 |
|
 TreeMap
  |
**TreeMap Value**
 |
|
 Radial gauge, filled gauge, face gauge, progress bar gauge
  |
**Gauge Value**
 |
|
 All data science chart types
  |
**X Axis**
*and*
**Y Axis**
 (these chart types have two value scales)
  |
|
 Word cloud
  |
**Word Values**
 |
|
 Table, heat map table, Gantt, box plot
  |
 None
  |

Choosing a series column or row
---------------------------------

A data series is a component in a category. Most chart types require series data. For example, in a vertical grouped bar chart, each "set" of bars is a category, and each bar in a set is a series. Series in a chart are often represented in a legend. Typically, to apply a series you drag textual (non-date-time) columns from the
 **Dimensions**
 grouping into the
 **Series**
 field. However, you can set date-time and value columns as series if you want. This is discussed in more detail in the next section.


 In the Monthly Rental Prices chart, the prices for the condominium parks are broken down by unit type, so the user dragged the "Unit Type
 **"**
 column into the
 **Series**
 field.

Vertical bar charts, horizontal bar charts, and line charts do not require series data, but for each of these chart types you can add a series if you want. You do this by simply dragging and dropping a column into the Series field.


 For example, the following simple vertical bar chart lacks a series:

After adding a series that breaks down the categories into "Product" and "Service," the following displays:

Likewise, this basic line chart has no series:

After adding the same series as before, two separate line charts appear in one chart, each one for a different type, as follows:

Adding value and date columns as series
-----------------------------------------

You can also apply a column containing value or date data as a series. However, to add multiple series that contain value or date data, these columns must be aggregated (applying a count to the column). This functionality makes it possible to have multiple values or date columns represented as series in your chart.


 For example, to add an additional column in your series field,

. Drag and drop a column in the
 **Series**
 field
2. Click the
 **Aggregation**
 drop-down and select the appropriate aggregation
3. Another Series field becomes available

Adding additional categories as series ("trellis chart")
----------------------------------------------------------

In most kinds of charts that include series data, you can add up to two additional dimensions besides the required series. The additional dimensions are represented using boxes overlaid on top of each grouping (sometimes referred to as a "trellis chart"). The following screenshot shows an example of this, in which an additional dimension has been added to show the lead source.

To add an additional dimension, you must first turn on the Trellis feature by navigating to the chart properties and clicking
 **Trellis/Tiered Date Settings**
 . Then, select
 **Trellis Categories**
 from the
 **Show As**
 drop-down (If this chart property isn't available, then the trellis functionality is not available on that chart type.) Drag the desired category from the
 **Dimensions**
 grouping into the
 **Category 2**
 field above the chart preview area. When you do this, another field,
 **Category 3**
 , appears. If you want a second additional dimension in the chart, you can include it by dragging another category into this field.


 Note that the above functionality is recommended only for
 *string*
 columns. When you add date columns as additional categories in this way, your dates may appear out of order. If you want to show multiple levels of dates in a chart, it is recommended that you use "Tiered Dates," which are described in the next section.


 Adding additional date categories
-----------------------------------

Tiered Dates provide for greater ease of understanding by presenting multiple time periods in a single view. For example, you can show weekly data that is also grouped by month and by quarter—all on the same chart. This provides a view similar to that of the "trellis chart" as described above. For any chart, you can choose up to 3 date tiers.

The process for adding Tiered Dates is different from that of adding a trellis chart, as you must do so using the Chart Properties rather than dragging columns into fields over the chart. To add Tiered Dates, navigate to the Chart Properties, click
 **Trellis/Tiered Date Settings**
 , and choose
 **Tiered Dates**
 in the
 **Show As**
 drop-down. Then, select the desired number of tiers in the
 **Tiered Date Levels**
 drop-down.


 Aggregating your data
-----------------------

When you drop a column in a value or series field, a menu appears with options you can select to aggregate your data.


 Option
  |
 Description
  |
| --- | --- |
|
 No Aggregation
  |
 The chart shows the final value for each category in the DataSet.
  |
|
 Sum
  |
 The chart shows the sum of all values for each category in the DataSet.
  |
|
 Minimum
  |
 The chart shows the smallest value for each category in the DataSet.
  |
|
 Maximum
  |
 The chart shows the largest value for each category in the DataSet.
  |
|
 Average
  |
 The chart shows the average value for each category in the DataSet.
  |
|
 Count
  |
 The chart shows the number of values for each category in the DataSet.
  |

For value columns, all options are available. For series columns, typically only
 **No Aggregation**
 and
 **Count**
 are available. However, if you add a value or date column as a series, then all the options are available.


 For information about changing the aggregation type for your summary number, see

Configuring Your Chart Summary Number

.


 For information about building each specific chart type by plugging in data, see

Building Each Chart Type

.

*Video - Aggregating Columns in Analyzer**


