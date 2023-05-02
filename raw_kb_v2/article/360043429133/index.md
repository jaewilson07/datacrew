

Intro
-------

Gantt charts are used to illustrate project schedules. Each task in a project is represented as a horizontal bar with a start date and end date. Tasks are represented along the vertical axis, and dates are represented along the horizontal axis. You can break tasks down by project, in which case each project is shown in a different color and appears as a legend item. However, projects are optional in Gantt charts.


 There are three types of Gantt charts in Domo—regular Gantt charts, Gantt Percent Complete charts, and Dependency Gantt charts. The difference between these is that Gantt Percent Complete charts show the completion percentage for each task bar. For any series, this percentage is represented by the amount of colored fill in the bar. The fill amount compared to the total length of the bar gives the viewer an idea of the percentage complete for that task. For example, if the fill for a series filled almost the entire bar, a viewer could deduce that the task was nearly complete. The

Dependency Gantt

chart handles changes in dates for you and gives many new display options to communicate project timelines.


 Powering Gantt charts
-----------------------

Standard Gantt charts require three columns or rows of data from your DataSet—one for tasks, one with start dates for each task, and one for end dates for each task. Percent Complete Gantt charts require all of these as well as a fourth column containing percent complete values for each task. If you want, you can also add an additional column containing project category data to a Gantt chart. Adding project category data to a Gantt chart causes the bars for each category to appear in different colors, indicating multiple projects. Also, a legend is added to the chart showing you which project category is which.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Gantt chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows how the data from a typical column-based spreadsheet is converted into a standard Gantt chart:

The following graphic shows how the data from a typical column-based spreadsheet is converted into a Gantt Percent Complete chart:

Customizing Gantt charts
--------------------------

You can customize the appearance of a Gantt chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.


 Unique properties of Gantt charts include the following:


 Property


 |


 Description


 |


 Example (s)


 |
| --- | --- | --- |
|

Time Scale (X) > Show Label

|

Hides or shows time scale labels. Labels are shown by default.

|

|
|

Hover Text Settings > Text

|


 Lets you replace the default hover text with your own custom text. You can insert any of a variety of macros to reference the start date, percent of completion, category, etc. For more information, see

Formatting Data Label and Hover Text in Your Chart

.


 In the example at right, the user replaced the default hover text with the following macro:
 `%_PERCENT_COMPLETE% complete`
 .


 |

|


