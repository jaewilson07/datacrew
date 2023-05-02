

Intro
-------

In Domo, a calendar is a basic chart type that shows a number of items or a summation of values for specific days over a specified time period. You can choose to display calendar data for an entire year, for a month, or for a single day.


 A calendar requires two columns or rows of data from your DataSet—one contains the dates and the other contains the number of category items corresponding to each date. You can also include an optional values column. The background color for a date determines how many items are associated with the date, or, if a values column is present, the amount for each date. If there are multiple instances of a certain date, the amounts for the date are summed. For information about value, category, and series data, see

Understanding Chart Data

.


 By default, Domo uses the
 **Auto**
 view to display your calendar, which depends on the breadth of data in the DataSet. If the data in your DataSet spans multiple months, the calendar automatically shows data in the
 **Year**
 view. If the data in the DataSet spans a few days or weeks within the same month, the calendar automatically shows data in the
 **Month**
 view. You can change this default auto view behavior in
 **Chart Properties**
 . For example, if your DataSet contained data for a year, you could tell Domo to show data for a single month by selecting
 **View > Month**
 in
 **Chart Properties**
 . Or, if your DataSet contained data for multiple years, you could indicate the desired year in
 **Chart Properties**
 . You can also show the data in a
 **Week**
 view and can indicate the day that starts the week (such as Monday). For more information about the options available in
 **Chart Properties**
 , see

Customizing calendars

.

*Important:**
 For your calendar to work properly, you
 *must*
 set the date grain to
 **Day**
 . Otherwise the chart does not display the correct data. For more information about setting date grains, see

Adding Filters to Your Chart

.


**Video - Building a Calendar Card**

Powering a calendar
---------------------

In the Analyzer, you choose the columns containing the data for your calendar. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a calendar.

Customizing calendars
-----------------------

You can customize the appearance of a calendar by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of calendars include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Theme > Theme
  |
 Determines the color theme for the calendar.
  |
 |
|
 General > View
  |
 Determines whether the calendar displays data for an entire
 **Year**
 , for a
 **Month**
 , for a
 **Week**
 , for a single
 **Day**
 ,
 **Last Year Rolling**
 , or
 **Next Year Rolling**
 . If you select
 **Auto**
 (which is the default), the calendar determines the view based on the breadth of data in the DataSet. For example, if your DataSet contains data for more than one month, the year view displays automatically so all represented months can be shown.
  |
 —
  |
|
 General > Dates From
  |
 Determines whether the dates that appear in the calendar are to be determined automatically based on your DataSet (which is the default) or you plan to specify them manually using the
 **Year**
 ,
 **Selected Year**
 ,
 **Month**
 , and
 **Day**
 properties. For example, if the series of dates in your DataSet started with "01-06-2014" and you chose the "Day" view, then by default Domo would show the data for "01-06-2014" because it was the first value in the DataSet. If you wanted to show a different date, you could do so by selecting
 **User Specified**
 here and then specifying the date using the
 **Year**
 ,
 **Selected Year**
 ,
 **Month**
 , and
 **Day**
 properties.
  |

*Year View**

*Month View**

*Week View**

*Day View**


 |
|
 General > Year
  |
 Determines the year to be used when
 **User Specified**
 is selected for the
 **Dates From**
 property. Options include
 **Current**
 (which is the default),
 **Previous**
 ,
 **Next**
 , and
 **Specified**
 . If you select
 **Specified**
 , you enter the specified year in the
 **Selected Year**
 field. This option is useful if your DataSet contains data for more than one year.
  |
 —
  |
|
 General > Selected Year
  |
 Lets you specify the year for your data when you have selected
 **Dates From > User Specified**
 and
 **Year > Specified**
 . This option is useful if your DataSet contains data for more than one year.
  |
 —
  |
|
 General > Month
  |
 Lets you specify the month for your data when you have selected
 **Dates From > User Specified**
 . The default is
 **Current**
 .
  |
 —
  |
|
 General > Day
  |
 Lets you specify the day of the month for your data when you have selected
 **Dates From > User Specified**
 . The default is
 **Current**
 .
  |
 —
  |
|
 General > First Day of Week
  |
 Lets you specify the first day of the week in your calendar. The default is
 **Sunday**
 .
  |
 —
  |

Exporting an MS Outlook calendar for use in Domo
--------------------------------------------------

You can export a calendar from Microsoft Outlook as an Excel spreadsheet file for use in creating a calendar in Domo. This is a useful way of getting your scheduled meetings and appointments into Domo.


**To export a Microsoft Outlook calendar into Domo,**

. Open Microsoft Outlook 2010.
2. Select
 **File > Options**
 .
3. Click
 **Advanced**
 to display the
 **Advanced**
 tab.
4. Click
 **Export**
 .
5. Select
 **Export**
 to a file, then click
 **Next**
 .
6. Select
 **Comma Separated Values**
 , then click
 **Next**
 .
7. Select
 **Calendar**
 , then click
 **Next**
 .
8. Click
 **Finish**
 to export the calendar to a Microsoft Excel spreadsheet.
9. If you are prompted to set the date range, enter the desired date range, then click
 **OK**
 .
10. In Domo, power a calendar chart using the Microsoft Excel spreadsheet file.


