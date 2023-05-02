

Intro
-------

Dependency Gantt charts are used to illustrate project schedules. Each task in a project is represented as a horizontal bar with a start date and end date. Tasks are represented along the vertical axis, and dates are represented along the horizontal axis. You can break tasks down by project, in which case each project is shown in a different color and appears as a legend item. However, projects are optional in Gantt charts. The Dependency Gantt chart handles changes in dates for you and gives many new display options to communicate project timelines.


 Powering Dependency Gantt charts
----------------------------------

Dependency Gantt charts require three columns or rows of data from your DataSet—one for tasks, one with start dates for each task, and one for end dates for each task. If you want, you can also add an additional column containing project category data to a Gantt chart. Adding project category data to a Gantt chart causes the bars for each category to appear in different colors, indicating multiple projects. Also, a legend is added to the chart showing you which project category is which.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Gantt chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows how the data looks when displayed in the Card Details view of the chart:

The following graphic shows how the data looks inside of the Analyzer view of the chart:

Customizing Dependency Gantt charts
-------------------------------------

You can customize the appearance of a Dependency Gantt chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

.


 Unique properties of Dependency Gantt charts include the following:


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
  |  |


