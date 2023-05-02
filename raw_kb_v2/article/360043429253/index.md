

Intro
-------

A Running Total Line chart is similar to a standard

Line chart

, except that each successive data point in a series line displays the cumulative total (or "running total") of all data points in that line up to that point. Although you can use any kind of categorical data in a Running Total chart, typically, you use date or date-time data. Other chart types in Domo that utilize this same "running total" concept include

Running Total Bar charts

, which include one series bar per category;

Running Total Grouped Bar charts

, in which series bars in a category are shown side by side; and

Running Total Stacked Bar charts

, in which series bars in a category are stacked on top of each other.


 Powering Running Total Line charts
------------------------------------

A Running Total Line chart requires at least two data columns or rows from your DataSet—one for categories and one for values. Series columns or rows are optional. Each series in your DataSet appears as an additional line in your chart. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Running Total Line chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a Running Total Line chart:

Customizing Running Total Line charts
---------------------------------------

You can customize the appearance of a Running Total Line chart in a number of ways. Many customizations are possible by setting
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Running Total Line charts include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Show Right Scale
  |
 Includes a second vertical scale in most kinds of multi-line Line charts, with or without date or time data. This is useful in situations where you want to display lines with vastly different value increments in the same chart. In the example at right, the left scale shows values in increments of $20,000 and the right scale shows values in increments of 2. Because two scales are present, both lines can be interpreted independently on their own scales. If there was only one scale, the $20,000 increments would be used for both lines, so one of the lines would appear flat.
  |

|
|
 General > Lines on Left Scale
  |
 When
 **Show Right Scale**
 is checked, determines how many of the lines in the chart are measured on the left scale. All additional lines are measured on the right scale. If
 **Show Right Scale**
 is not checked, this property does not work.
  |
 —
  |
|
 General > Number of Running Total Series
  |
 Lets you choose the number of aggregated series in most Running Total charts. Series that remain aggregated are determined by your chart series order as it appears in your legend. For example, if you had a Running Total Grouped Bar chart and you indicated that you wanted two running total series, the bars corresponding to the first two bar series in your legend would remain aggregated, and all other bars would show their literal values.


 In the example, only one series has been selected as a running total series. This is the blue series at the bottom of each stack. All other series are shown with their literal values.
  |

|
|
 General > Sync Zero Lines
  |
 Syncs the zero lines in dual-scale charts with negative values so the "0" values match. For Running Total Line charts, this works only when
 **General > Show Right Scale**
 is selected.


 The first example at right shows a dual-scale chart with scales that do not match. The right-side chart is being used to measure sales, which are always going to be positive; hence the scale starts at 0. However, the left-side scale is being used to measure profit, which may dip below 0. In this case the scale starts at -2000. Because the scales do not match, the chart is difficult to interpret.


 The second example shows the same chart with the zero lines synced. Even though the other values do not match, the viewer can easily use the zero line as a reference point to interpret the line and bars simultaneously.
  |


 |
|
 Category Scale > Never Use Time Scale
  |
 Determines which type of timeline is used in supported charts with time data.


 By default, when time data is used in supported charts, such as Line and Bar charts, Domo automatically makes it appear using a

date grain

appropriate for your data. This is shown in the first example at right, in which the timeline takes date data spanning several months and shows it by month.


 If you check this box, however, date data appears as it does in your DataSet. This is shown in the second example at right, in which the time scale uses individual dates, as in the DataSet.


 This option is
 *not*
 available for Step Line charts.
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
 Scale Marker Range > Minimum Value
  |
 Lets you specify the minimum value for a scale marker range in a Line chart. This value makes up the bottommost border of the range in the chart. The example at right shows a typical Line chart in which a scale marker range has been set, with the arrow pointing out the minimum value of the range. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 Scale Marker Range > Maximum Value
  |
 Lets you specify the maximum value for a scale marker range in a Line chart. This value makes up the topmost border of the range in the chart. The example at right shows a typical Line chart in which a scale marker range has been set, with the arrow pointing out the maximum value of the range. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|
|
 Scale Marker Range > Color
  |
 Lets you select the color for the scale marker range in a Line chart. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |
 —
  |
|
 Scale Marker Range > Show Lines
  |
 Determines whether minimum and maximum lines are shown for scale marker ranges in Line charts. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |
 —
  |
|
 Scale Marker Range > Fill Outliers
  |
 Determines whether outlier regions (that is, regions of a line falling outside of a scale marker range) are filled in Line charts in which scale marker ranges have been set. The example at right shows a typical Line chart in which a scale marker range has been set, with arrows pointing out the filled outliers. For more information, see

Adding a Scale Marker Range to Your Chart

.
  |

|


