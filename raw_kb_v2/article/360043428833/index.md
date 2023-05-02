

Intro
-------

The Data Table in Analyzer allows you to see and manipulate the data in all columns you have applied to your chart, along with any other unused columns you want to show. Changes you make to the data in the Data Table are reflected in your chart preview. Likewise, when you make changes to the chart using other tools such as filters and sorting, the data in the table is updated.

*Video - Using the Analyzer Data Table**

Showing/hiding the Data Table
-------------------------------

You can show the Data Table by clicking
 **Data Table**
 in the toolbar at the top of the Analyzer window. (If the Toolbar does not appear, click

.)

The Data Table then appears at the bottom of the Analyzer window, under the chart preview. You can expand it to show more rows by clicking and dragging upward on the border separating the chart preview and Data Table, or collapse it by clicking and dragging downward on that border. If you want to see just the Data Table without the chart preview and other options, you can make it full-screen by clicking

.


 You can hide the Data Table by clicking
 **Data Table**
 again in the toolbar (when it is highlighted in blue).


 Parts of the Data Table
-------------------------

The following screenshot points out the most important parts of the Analyzer Data Table:

You can use the following table to learn more about these components:


 Component
  |
 Description
  |
| --- | --- |
|
 Data type icon
  |
 Indicates the data type for this column. Icons include

for string columns,

for numeric columns, and

for date-time columns. For more information about data types, see

Understanding Chart Data

.
  |
|
 Sort icon
  |
 Lets you sort the values in a given column in ascending or descending order. Sorting is done alphabetically in string columns, numerically in numeric columns, and by date in date columns. Changes you make to sorting in the Data Table are reflected in the
 **Sorting**
 field and vice-versa. For more information about sorting, see

Sorting the Data in Your Chart

.
  |
|
 Filter/aggregation icon
  |
 Lets you access filter and aggregation options for a given column. Filters apply to all rows in a column, while aggregations affect the total row only.


 Changes you make to filters are reflected in the
 **Filters**
 field and vice-versa. For more information about filters, see

Adding Filters to Your Chart

.


 Changes you make to aggregations are reflected in the column dropdowns above the chart preview. For more information about aggregating data, see

Aggregating your data

.
  |
|
 Show Columns option
  |
 Lets you add or remove columns to/from the Data Table. Columns you add in this way are shown in gray and appear in the Data Table only; you do not see them in the fields area above the chart preview. However, filtering or sorting on one of these columns may still change the data in a chart. For example, a certain chart may not show dates on a date range, but if you were to add a date column to the Data Table then filter the dates, the chart preview would update to reflect the date range you specified.


 Columns you have already added to the chart by dragging column names into the fields above the chart preview are grayed out and cannot be removed in this view (though you can still remove them by mousing over the column names in the fields and clicking "x").


 In the
 **Search Columns**
 dialog you can search for columns to add or remove by typing the column name in the
 **Search Columns**
 field.
  |
|
 Gear menu
  |
 Provides two viewing options for the data in the Data Table:
 * **Show Totals**
 . Shows or hides the "TOTAL" row in the second row of the chart. For more information, see "Total Row" above.
* **Show Chart Data/Show Raw Data**
 . Lets you toggle between chart data and raw data in the Data Table. "Raw data" is the unaggregated data used to power your chart, while "chart data" shows the data with any aggregations that have been applied.
 |
|
 Used columns
  |
 Columns that have been applied to your chart (by dragging and dropping them into the fields above the chart preview). Used string and date columns appear in blue, while used numeric columns appear in green. You cannot remove these columns from the Data Table directly, though you can remove them by mousing over the column names in the fields over the chart preview and clicking "x."
  |
|
 Unused columns
  |
 Columns that have not been applied to your chart but that you have shown by clicking on the
 **Show columns**
 link then checking the boxes for the columns you want to show. You do not see these columns in the fields area above the chart preview. However, filtering or sorting on one of these columns may still change the data in a chart. For example, a certain chart may not show dates on a date range, but if you were to add a date column to the Data Table then filter the dates, the chart preview would update to reflect the date range you specified.
  |
|
 Full-screen icon
  |
 Opens the Data Table in full-screen mode. When you are in full-screen mode, you can revert to the default mode by clicking

.
  |


