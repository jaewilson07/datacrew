

Intro
-------

A Running Total Grouped Bar chart is similar to a vertical Grouped Bar chart, except that each successive bar in a series displays the cumulative total (or "running total") of all bars in that series up to that point. Although you can use any kind of categorical data in a Running Total chart, typically, you use date or date-time data. Other chart types in Domo that utilize this same "running total" concept include

Running Total Line charts

, which use lines instead of bars.


 Powering Running Total Grouped Bar Charts
-------------------------------------------

A Running Total Grouped Bar chart requires three data columns or rows from your DataSet—one for categories, one for the series within each category; and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Running Total Grouped Bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Running Total Grouped Bar chart:

Customizing Running Total Grouped Bar Charts
----------------------------------------------

You can customize the appearance of a Running Total Grouped Bar chart in a number of ways. Many customizations are possible by setting
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Running Total Grouped Bar charts include the following.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Running Total > Number of Running Total Series
  |
 Lets you choose the number of aggregated series in most Running Total charts. Series that remain aggregated are determined by your chart series order as it appears in your legend. For example, if you had a Running Total Grouped Bar chart and you indicated that you wanted two running total series, the bars corresponding to the first two bar series in your legend would remain aggregated, and all other bars would show their literal values.


 In the example, only one series has been selected as a running total series. This is the blue series at the bottom of each stack. All other series are shown with their literal values.
  |  |
|
 Value Scale > Title Position
  |
 Determines whether value scale labels in Vertical Bar charts appear to the left of the chart or above it.


**Note:**
 This property is deprecated as of our October 2016 release.


 |
 —
  |


###
 Changing the size of bars in a Running Total Grouped Bar chart

For any Bar chart, you can set the percentage of space taken up by bars in that chart or specify a fixed bar width. For more information, see

Specifying the Size of Bars in Bar Charts

.

