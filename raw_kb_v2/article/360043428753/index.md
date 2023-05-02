

Intro
-------

The
 *Summary Number*
 for a chart is the single value that represents the data in that chart. The Summary Number appears at the top of a KPI Card. For example, the Summary Number shows the maximum value in the following chart.

The properties you can change for a chart Summary Number include the following:

 The DataSet column from which the Summary Number is derived.
* The type of aggregation applied to the Summary Number.
* The date field and sorting options when selecting
 **Use Current**
 to use the most current chart value as the Summary Number.
* The label used to describe the Summary Number.
* The format for the Summary Number.

You can also turn off the Summary Number for the chart.

*Video - Configuring a Summary Number**

Setting Summary Number properties
-----------------------------------

In the
 **Summary Number**
 dialog you can set various properties for your chart's Summary Number. Many of these properties are only available by clicking
 **Show Formatting Options**
 .

For more information about the Analyzer layout, see

Analyzer Layout

.


**To open the Summary Number dialog,**

. In Analyzer, click the dropdown arrow next to the Summary Number.
2. (Conditional) If
 **No Summary Number**
 is selected, unselect the option.

*To set Summary number properties,**

. Do one of the following:

* Turn off the Summary Number for this chart by clicking
	 **No Summary Number**
	 .
	* If using a current value, click
	 **Use Current Value**
	 .
	* If using all values, click
	 **Use All Values**
	 .
2. (Conditional) If you are satisfied with your Summary Number settings, click
 **Save**
 . If you want to make changes to the default settings, click
 **Show More Options**
 , then continue with the following steps.
3. Enter the label you want to appear in the chart with the Summary Number.
4. In the top
 **Field & Function**
 menu, select the DataSet column you want to use for the Summary Number. Typically, this column is a value column, unless you want the Summary Number to show a count of categories in the chart.
5. In the bottom
 **Field & Function**
 menu, select the aggregation option to apply to the DataSet column for the Summary Number.
6. (Conditional) If
 **Use Current**
 is selected, in the
 **Date Field**
 menu select the desired date column to be used for grouping the data by a certain dimension (day, month, year, date, etc.).
7. (Conditional) If
 **Use Current**
 is selected, select the desired sort option to order by the last or first group values to obtain a "current" value for the data, which is emphasized in the chart.
8. Select the number format you want to use for the Summary Number in this chart.

Summary Number properties
---------------------------


|
 Option
  |
 Description
  |
| --- | --- |
|
 Use Current Value
  |
 This option is only available when your DataSet contains at least one date column. When this option is selected, by default all of the following apply:
 * The Summary Number is the value for the most recent date in the chart.
* If the chart contains multiple series per date (such as in a Vertical Stacked Bar chart), those series are summed to yield a total value for the date. In the following example, the values in the "2012-05-30" category, when summed, equal 216,000, so this is the current value of the chart.
* If the DataSet contains more than one date column, the first column alphabetically is used for the Summary Number.
* The number format is set to "1M." You can change all of this default functionality by clicking
 **Show More Options**
 and selecting the desired options.
 |
|
 Use All Values
  |
 When this option is selected, by default all of the following apply:
 * The Summary Number is the combined values for the entire chart.
* The number format is set to "1M." You can change all of this default functionality by clicking
 **Show More Options**
 and selecting the desired options.
 |
|
 No Summary Number
  |
 When this option is selected, no Summary Number is shown in the chart.
  |
|
 Label
  |
 Lets you customize the label that appears with the Summary Number in the chart. By default, the label reflects the summary type (such as "Sum," "Average," etc.), but you can customize this label to help the user understand the main focus of this chart. When
 **Use Current Value**
 is selected, the
 **Label**
 option only applies to linear (date-time) data.
  |
|
 Field & Function
  | * The summary data column menu (that is, the top menu in this section) lets you select the data column from which the Summary Number for this chart is derived. Typically, this column is a value column, unless you want the Summary Number to show a specific count of categories in the chart.
* The aggregation menu (that is, the bottom menu in this section) lets you select the aggregation type to apply to the Summary Number in the chart. The aggregation does
 *not*
 affect the actual chart. For information about changing the aggregation for the chart, see

Aggregating your data

.


 Aggregation type
  |
 Description
  |
| --- | --- |
|
 Sum
  |
 The Summary Number is the sum of all of the values in the selected DataSet column.
  |
|
 Minimum
  |
 The Summary Number is the lowest value in the selected DataSet column.
  |
|
 Maximum
  |
 The Summary Number is the highest value in the selected DataSet column.
  |
|
 Average
  |
 The Summary Number is the average of all values in the selected DataSet column.
  |
|
 Count
  |
 The Summary Number is the number of items in the selected DataSet column. If you select a non-value column in the top "Definition" menu, this is the only available summary type.
  |


 You can also add aggregation types to this list by creating calculations in Beast Mode and selecting the
 **Apply to Summary Number**
 option. For this option to appear when you validate a calculation, the calculation must be an aggregating calculation—that is, it must aggregate rows of data in your DataSet. For more information about applying a Summary Number using a calculation in Beast Mode, see

Applying a calculation to a Summary Number

.
  |
|
 Date column menu
  |
 This menu is available when
 **Use Current Value**
 is selected. In this menu you can select a date column by which to aggregate the summary data column based on a grouping by a certain dimension (day, month, year, date, etc.). If the DataSet contains more than one date column, by default the first column alphabetically is used for the Summary Number.
  |
|
 Sort options
  |
 This section is available when
 **Use Current Value**
 is selected. Here you can choose to order either by the last or first category values to show as the "current" Summary Number.


**Note:**
 The Summary Number may be affected when the date grain changes.
  |
|
 Format menu
  |
 Lets you select format of the Summary Number for the chart, base on preset items. You can choose to have thousands separators, decimals, dollar signs, percents, various combinations of the above, or no formatting at all.
  |

Summary Number best practices
-------------------------------

When setting Summary Numbers, the most important guideline is making sure your labels are clear and specific. If a label is vague, the chart will be harder for viewers to interpret. For example, if you had a Scatter Plot graph and you simply set the Summary Number label to "Average," viewers would not know which of the two value columns in the graph you were referring to. A better label would be something like "Average # of Employees," "Average Salary," etc. The use of clear, specific labels is especially important when you set the size of your KPI Cards to small. In small Cards, the Summary Number is the only chart element that displays—users cannot see the actual charts. If users cannot grasp the meaning of the chart from the Summary Number in this case, then the KPI Card has failed. For more information about sizing Cards, see

Changing the Size of Cards in a Page

.


 Also, remember that certain aggregations are more appropriate for some chart types than others. If you use the wrong type of aggregation with a particular chart type, it could be detrimental to a user's comprehension of the chart. For example, the "Current" aggregation is most appropriate for chart types with a trendline. Using this aggregation with other chart types may not make much sense.


 Also, there are a number of chart types in which Summary Numbers actually detract from the effectiveness of the chart—in these, it is recommended that Summary Numbers be turned off.


 For more information on creating effective Summary Numbers, see

Effective Summary Numbers

.


 The following list provides general recommendations as to the most appropriate Summary Number aggregations for each chart type:


 Chart Type
  |
 Recommended Summary Number Aggregation
  |
| --- | --- |
|
 Single Bar
  |
 Sum, Avg, Min, or Max. Current may be used if the chart includes date or date-time data; however, in this case it is usually recommended that a Line chart be used instead.
  |
|
 Grouped Bar, Stacked Bar, Nested Bar, 100% Stacked Bar
  |
 Sum of all bars in the chart (in which case, you must be specific in the label as to what "Sum" refers to), or turn off Summary Number.
  |
|
 Grouped Bar with Line, Stacked Bar with Line, Grouped Bar with Symbol, Stacked Bar with Symbol
  |
 Sum of all bars and lines in the chart (in which case, you must be specific in the label as to what "Sum" refers to), or turn off Summary Number. In some cases using the current value may also work.
  |
|
 Percent of Total
  |
 Sum of all values, or turn off Summary Number.
  |
|
 Waterfall
  |
 Current value, or turn off Summary Number.
  |
|
 Grouped and Stacked, Grouped and Stacked with Line
  |
 Sum of all values.
  |
|
 Running Total Bar, Running Total Grouped Bar, Running Total Stacked Bar, Running Total Line, Pareto
  |
 Sum of all values or current value.
  |
|
 Single Line, Single Curved Line, Single Step Line, Single Symbol Line, Single Curved Symbol Line
  |
 Current value, Avg, Min, or Max.
  |
|
 Pie, Donut, Tree Map, Funnel, Folded Funnel, Funnel Bars, Maps
  |
 Sum, Avg, Min, or Max.
  |
|
 Bubble, Scatter Plot, Category Scatter
  |
 Sum, Avg, Min, Max, or Count. In Bubble and Scatter Plot charts, you have a choice of several value columns you can calculate the Summary Number from. The value column you choose depends on what you want to show your audience.
  |
|
 Heat Map
  |
 Avg, Min, or Max.
  |
|
 High Low, Candlestick
  |
 Avg, Min, or Max. In these chart types, you have a choice of several value columns you can calculate the Summary Number from. The value column you choose depends on what you want to show your audience. For instance, if you wanted to show the highest all-time value, you would choose "Max" for the column that contains your "High" values. If you wanted to show an average, you could pick any column—however, in your label you would need to specify which column you were showing an average of (for example, "Average Opening Price for January").
  |
|
 Multi-Line (including any Line graph with more than one line), Stacked Area, Radar, Calendar, Gantt, Gantt Percent Complete, Gauges
  |
 Turn off Summary Number.
  |
|
 Bullet
  |
 Summary numbers not available.
  |

Expanding Summary Number functionality using Beast Mode
---------------------------------------------------------

You can use Beast Mode to expand the functionality of Summary Numbers, whether it be by customizing Summary Numbers, adding multiple Summary Numbers, etc. You can visit the following links for instructions and code samples:

 Changing the font size for a Summary Number
* Creating a custom Summary Number
* Creating multiple Summary Numbers
* Filtering data so the Summary Number matches the value displayed in the Card


