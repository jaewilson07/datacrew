

Intro
-------

In the Analyzer, you can reorder the data in your chart. You can do this in two different ways:

 By using the quick sort tool. This is available for bar and line charts in both the Details and Analyzer views. It does not provide as many options as the
 **Sorting**
 box (described next) but is quick and easy to use.
* By dragging columns you want to sort by into the
 **Sorting**
 field, which is located on the left side of the chart. This is available for all chart types.

*Note:**
 Sorting may not work as desired if NULL values in your chart are not set to 0. You can change NULL values to 0 using Beast Mode. For more information, see

Beast Mode FAQs: How do I deal with NULL values when adding columns?


 Quick sort
-------------

For most bar and line charts, you can quickly change the sort method just by clicking an icon, without having to open the Analyzer. This icon appears when you mouse over either the x- or y-axis of the chart. Five versions of this icon appear in a cycle; clicking any version sorts the chart accordingly, and the icon changes to the next version in the cycle.


 The following table lists and describes the sort methods associated with each version of the icon:


 Icon
  |
 Description
  |
| --- | --- |
|  |
 Sorts the data items in the chart using the default sort (i.e. the same way they were sorted when the chart was created).
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

Sorting field
---------------

This option is available in the Analyzer for all chart types.


**To add a sort**
**using the Sorting Field,**

. Determine which column(s) you want to sort by. For example, if you wanted your values to go from high to low, you would sort by your values column.
2. Drag the sort column from the
 **Dimensions/Measures**
 area into the
 **Sorting**
 box.


 A panel with sort options for the column appears.
3. Specify whether the column data is to be sorted in an ascending or descending order.
4. (Optional) In the
 **Aggregation**
 menu, choose how you want the data to be aggregated.
5. Click
 **Apply**
 .

You can add additional sorts by clicking repeating the above steps. You can remove a sort by mousing over the sort indicator bar and clicking

.

##
 Sorting in charts and maps

Sorting in charts and maps can be complex, depending on your chart type, the data used to power the chart, and whether you choose to sort by value, category, or series, or have no sort at all. In the event that you are not able to sort your data the way you want using Domo's built-in sort options, you can force a sort order using Beast Mode.

###
 Value-based sorting

When you choose to sort by a value column, categories are sorted in ascending or descending order based on their values.


 In the chart shown in the following example, the categories are in ascending order, from least sales to most sales.

By selecting
 **Descending**
 in the sorting dialog, the order of categories is reversed, from most sales to least sales.

Value sorting is not recommended in charts that contain series data.

###
 Category- and series-based sorting

When you choose to sort by a category column, categories are sorted in ascending or descending order alphanumerically, based on their names. In the chart in the following example, the user has chosen a descending category-based order, so the categories are shown in reverse alphabetical order.

When you choose to sort by a series column, series are sorted alphanumerically in ascending or descending order in their respective categories, and the categories themselves, by default, are sorted alphanumerically in ascending order. You can change the default sort behavior for categories in this case by adding a second sort. For more information, see the next section.


 Many types of bar charts allow you to apply two additional category/series-based sorts using Chart Properties. These sorts are as follows:

 **Sort on Totals**
 . When you select this option for a multi-series bar chart, categories are sorted by the totals of all of their series, regardless of the ranking of the individual series. In the following example, the category with the highest total was "Customer Service," even though several departments had higher values for "Voluntary Resignation":
* **Sort Each Category**
 . When you select this option for a multi-series bar chart, series are sorted in ascending or descending order within each category. In the following example, the series in all categories are sorted from higher to lower value:


#####
 Sorting by date

When you apply a sort to a date column, the dates
 *should*
 sort in correct chronological order as long as they are formatted as dates (not strings) in your data source. If you find your dates are not sorting in chronological order, check your original data source to make sure the dates are being formatted as dates. For example, if you are using Excel, you would right-click in the date column, select
 **Format Cells**
 , and check to make sure a date format is being used.


 There are many ways dates can be displayed. Most often, they are represented as a date such as 'MM-DD-YYYY'. However, they can also be visualized as a string, such as 'January' if you are showing data by month. Because string sorting is alphanumeric, it is important to think about how you want any date type data sorted.

#####
 Example

You're currently showing total sales by month and you want the months sorted in the proper date order. Sorting months, ascending, by a column that actually contains the month name values, will output a chart where April is first.

Because we want January first, we will instead change our sort to the date type column we are using in the card. The card continues to stay at a month grain but the logic used to sort the data is done by a date rather than alphanumerically.

In the event that you only have month data and not a full date, you can force a sort order using Beast Mode.

####
 Multiple sorts

You can add multiple sorts to a chart or map. This is useful when you have both category and series data and you want to specify a non-default sort method for both.


 In the following example, both the category and series data are sorted alphabetically in descending order. This effect is only possible using a second sort; otherwise the column you didn't specify would default to using ascending alphanumerical order.

When doing a multiple sort, you should only sort on values present in the card (x-axis, y-axis, and series). If you are sorting based on the x- or y-axis and series, the series should come first.

###
 Sorting in pie charts

In pie charts, slices are automatically arranged from highest to lowest value. By default you
 *cannot*
 use the
 **Sorting**
 box to change the order in which slices appear. However, if you check the
 **Unsorted Data**
 box in
 **Chart Properties**
 , you can use the
 **Sorting**
 box to change the sort order.


**To enable sorting in pie charts,**

. Open the Analyzer for the pie chart you want to enable sorting in.
2. In
 **Chart Properties**
 , mouse over
 **General**
 .
3. Check
 **Unsorted Data**
 .

You can now use the
 **Sorting**
 box to sort the chart slices the way you want them.


 For more information about pie charts, see

Applying and Resetting Chart Properties

.

###
 Sorting in funnel charts

You can sort the sections in a standard funnel chart using the options in the
 **Sorting**
 box just as you can for other chart types. However, you
 *cannot*
 change the default sorting in funnel bars and folded funnel charts. For more information about these chart types, see

Funnel chart

.


 Applying a custom sort
------------------------

You can apply a custom sort to your data using Beast Mode. For more information, see

Sample Beast Mode Calculations

.


**Video - Applying a Custom Sort**

