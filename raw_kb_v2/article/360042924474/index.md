

Intro
-------

Date Selector Cards display a calendar-style range of dates. When you add them to a Card Page in Domo, users visiting that Page can select a range of dates from the calendar as a filter. Alternatively, they can choose from a number of preset date filters such as "Last year," "Last 2 months," etc. The date filter you choose is applied to all other Cards on the Page. For example, if you selected all dates from April 1st to July 31st on the calendar, all other Cards in the Page would be filtered to show just the data for these dates. All Date Selector Cards have a 25,000 row limit.

For information about other Filter Card types, see the following:

 Slicer, Checkbox, and Radio Button Cards
* Range Selector Card

*Video - Filter Chart Types**


 Powering Date Selector Cards
------------------------------

This type of graph requires two columns or rows of data from your DataSet. One of these contains a date column. You drop this column into the "Date" field in Analyzer.

The other field is called "Group By." Though this field is required to power up the Card, in general it doesn't matter what column you drop here. If you need to aggregate the data, you can use this column to do so. For example, if the date column is duplicated in your DataSet, you can make the dates unique by aggregating.


 For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 Customizing Date Selector Cards
---------------------------------

You can customize the appearance of a Date Selector Card by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Date Selector Cards include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Selected Color
  |
 Lets you change the highlight color used when you select a range of calendar dates in the Card.
  |

|
|
 General > Highlight Today
  |
 When checked, a box appears around today's date in the calendar. In the example at right, the date of "July 25" is highlighted.
  |

|
|
 General > View
  |
 Determines the calendar view that is used. The following options are available:
 * **Auto**
 (Default). The view is determined automatically based on your data. For example, if you had at least a year's worth of data in your date column, a yearly view would be used.
* **Last Year Rolling**
 . The calendar shows dates from a year ago up until the current month. This is the option shown in the example at right.
* **Next Year Rolling**
 . The calendar shows dates from the current month up until a year from now.
* **Year**
 . The current year is shown.
* **Month**
 . The current month is shown.
 |

|
|
 General > Dates From
  |
 Specifies whether the dates that appear in the calendar are based on the current date, are automatically determined based on your data, or are user-specified (in which case, you will enter the date parameters in the
 **Year**
 ,
 **Selected Year**
 , and
 **Month**
 fields.
  |
 —
  |
|
 General > Year
  |
 Determines whether the year shown in the calendar is the current year, the previous year, or the next year. You can also specify a year by selecting
 **Specified**
 and entering the desired year in the
 **Selected Year**
 field. This option is only available when
 **Dates From**
 is set to
 **User Specified**
 .
  |
 —
  |
|
 General > Selected Year
  |
 Lets you enter a specific year to be shown in the calendar. This option is only available when
 **Dates From**
 is set to
 **User Specified**
 and
 **Year**
 is set to
 **Specified**
 .
  |
 —
  |
|
 General > Month
  |
 Lets you enter a specific month to be shown in the calendar. This option is only available when
 **Dates From**
 is set to
 **User Specified**
 and
 **View**
 is set to
 **Month**
 .
  |
 —
  |
|
 General > First Day of Week
  |
 Lets you select the first day of the week to be shown in your calendar. In the example at right, the first day of the week is Monday.
  |

|
|
 General > First Month Displayed
  |
 Lets you select the first month of the year to be shown in your calendar. This option is only available when
 **Year**
 is selected in the
 **View**
 menu.
  |
 —
  |


