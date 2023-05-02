

Intro
-------

In a vertical Stacked Bar chart, categories are represented as bars, as in a basic vertical

Bar Chart

, but the bars are composed of series that are "stacked" on top of each other, with each series representing its value. Therefore, the height of the entire stack represents the total of all series in that category. A horizontal Stacked Bar is almost the same as a vertical Stacked Bar, but the series appear side by side, rather than stacked.


 Powering Stacked Bar charts
-----------------------------

A Stacked Bar chart requires three data columns or rows from your DataSet—one for categories, one for the series in each category, and one for values. You can add additional series to a chart as long as all of the series are aggregated. For more information about adding additional series, see

Adding value and date columns as series

.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Stacked Bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical Stacked Bar chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal Stacked Bar chart:

Customizing Stacked Bar charts
--------------------------------

You can customize the appearance of a Stacked Bar chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Stacked Bar charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Sort Each Category
  |
 Allows you to sort the items in each individual category in most kinds of multi-series Bar and Lollipop charts. You can choose an ascending or descending sort. If you select
 **Default**
 , the default sort is applied. This option does not work when the
 **Value Scale > Log Scale**
 box is checked.


 In the example at right, bars within all categories are sorted in descending order.
  |

|
|
 General > Sort on Totals
  |
 Allows you to sort categories in many kinds of Bar and Lollipop charts by their total values, in either ascending or descending order. If you select
 **Default**
 , the default sort is applied. This option does not work when the chart has automatic time scaling applied. (You can turn off automatic time scaling by checking the box for
 **Category Scale > Never Use Time Scale**
 .


 In the example at right, the categories are sorted by their totals in ascending order.
  |

|
|
 General > Maximum Bars
  |
 Allows you to specify the number of bars that appear in your Bar chart. Data for all remaining bars is lumped into a single "Other" bar (unless you hide this bar using the
 **Hide 'Other' Bar**
 toggle.


 The example at right shows a Bar chart in which the maximum number of bars has been set to 7.
  |

|
|
 General > Hide 'Other' Bars
  |
 Hides or shows the "Other" bar that appears when you set a maximum number of bars using the
 **Maximum Bars**
 option.
  |
 —
  |
|
 Category Scale > Never Use Time Scale
  |
 Determines which type of timeline is used in supported charts with time data.


 By default, when time data is used in supported charts, such as Line and Bar charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month.


 If you check this box, however, date data appears as it does in your DataSet. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet.


 This option is available for vertical Stacked Bar charts only.
  |


 |
|
 Bar Settings > Non-Stacked Interactivity
  |
 Turns off the default Stacked Bar chart interactivity.


 When you hover over any series in a Stacked Bar or 100% Stacked Bar chart, all of the corresponding series are highlighted and connected across the chart, as shown in the first screenshot at right. However, if series data is missing for any stack in the chart, the highlighting is removed and a "0" appears in the stack, as shown in the second screenshot. By checking
 **Non-Stacked Interactivity**
 , the connecting lines, highlighting, and "0" no longer appear upon hover, as shown in the third screenshot.


 For more information about DataSet columns, see

Applying DataSet Columns to Your Chart

.
  |

|
|
 Bar Settings > Set Bar Width/Height by Value
  |
 Causes individual bars in a stack to be sized according to their value, which may make it easier to see differences between series. For example, in the screenshot at right, the viewer can quickly see that Team A sold the most widgets in Prince George's county, and Team C sold the least widgets in St. Mary's county.
  |

|
|
 Data Label Settings > Show Total Label
  |
 Determines whether a single label is shown for an entire stack in a Vertical or Horizontal Stacked Bar chart.
  |  |
|
 Data Label Settings > Show One Label (Vertical Stacked Bar only)
  |
 Determines whether a single label is shown for an entire stack in a Vertical Stacked Bar chart. This property applies only to data labels that have been set to always appear (by selecting
 `Always`
 for the
 **Show**
 property).


**Note:**
 This property is deprecated as of our October 2016 release.


 |

|
|
 Value Scale > Title Position
  |
 Determines whether value scale labels in Vertical Bar charts appear to the left of the chart or above it.


**Note:**
 This property is deprecated as of our October 2016 release.


 |
 —
  |

Building a Floating Bar chart
-------------------------------

A "floating bar" chart is a chart in which the bars seem to float above the baseline. This kind of chart is useful when you want to show high and low values for individual series. For instance, you could use a Floating Bar chart to show high and low temperatures over a certain period of time, as shown below:

To make a Floating Bar chart, you create a Stacked Bar chart with two series in each stack, as explained previously. You then set the bottom series to be transparent. This hides the series, making it appear at the other series is floating above the baseline.


**To create a Floating Bar chart,**

. Create a Stacked Bar chart with two series in each stack.
2. In the
 **Edit**
 view, click
 **Chart Properties**
 .
3. Click
 **Colors**
 .
4. In the dropdown menu for
 **Series 1**
 , select
 **Transparent**
 .
5. Click
 **Apply**
 .


