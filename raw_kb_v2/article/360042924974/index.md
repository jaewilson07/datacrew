

Intro
-------

A Running Total Bar chart is similar to a standard vertical Bar chart, except that each successive bar displays the cumulative total (or "running total") of all bars up to that point. Although you can use any kind of categorical data in a Running Total chart, typically, you use date or date-time data. Other chart types in Domo that utilize this same "running total" concept include

Running Total Line charts

, which use lines instead of bars.


 Powering Running Total Bar Charts
-----------------------------------

A Running Total Bar chart requires only two data columns or rows from your DataSet—one for categories and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Running Total Bar chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Running Total Bar chart:

Customizing Running Total Bar Charts
--------------------------------------

You can customize the appearance of a Running Total Bar chart in a number of ways. Many customizations are possible by setting
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Running Total Bar charts include the following.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Category Scale > Never Use Time Scale
  |
 Determines which type of timeline is used in supported charts with time data.


 By default, when time data is used in supported charts, such as Line and Bar charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month.


 If you check this box, however, date data appears as it does in your DataSet. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet.


 This option is available for Vertical Bar charts only.
  |


 |
|
 Grid Lines > Remove Min/Max/Avg Lines
  |
 Removes the minimum, maximum, and average lines that normally display on mouse-over in standard Bar and Line charts.
  |
 —
  |
|
 Grid Lines > Calculated Line
  |
 Determines whether a median or average line appears in your chart. If you select
 **None**
 , no line appears.
  |
 —
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


###
 Changing the size of bars in a Running Total Bar chart

For any Bar chart, you can set the percentage of space taken up by bars in that chart or specify a fixed bar width. For more information, see

Specifying the Size of Bars in Bar Charts

.

