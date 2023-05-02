

Intro
-------

A Stream Funnel chart is cross between a

Funnel chart

and a

Stacked Area chart

. Unlike other pie-type charts in Domo, Stream Funnel charts allow you to include series data (though this is not required). Legends are not shown in a Stream Funnel chart unless series data is included. Stream Funnel charts also do not show value data except upon mouse-over. Therefore they are most effective for showing relative differences between stages rather than representing exact amounts.


 This chart type is exactly the same as a

Stream chart

(classified in the Chart Picker as an Area chart rather than a pie-type chart) but is shown vertically rather than horizontally.


 The following example shows a Stream Funnel without series data:

Whereas the next example shows the same chart with series data applied:

Also unlike other types of Funnel charts, drill path is available in Stream Funnel charts. For more information about drilling, see

Adding Drill Path to Your Chart

.


 Powering Stream Funnel Charts
-------------------------------

Stream Funnel charts require two columns or rows of data from your DataSet—a category column or row containing the names of each stage, and a value column or row containing the corresponding values for each stage. You can also add a column containing series data if you want. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Stream Funnel chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category, value, and series columns in a typical column-based spreadsheet is converted into a Stream Funnel chart:

Customizing Stream Funnel Charts
----------------------------------

You can customize the appearance of a Stream Funnel chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.

