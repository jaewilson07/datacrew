


**Important:**
 Support for Workbench 4 ended on
 **April 15, 2021**
 . Workbench may continue to run on installed machines, but it will no longer receive feature enhancements and security updates. When issues are encountered in Workbench 4, the recommended course of action from the Domo Support team will be to upgrade to the latest version of Workbench 5. To see this article for Workbench 5, click

*here**

.

You can set a custom date format for a specified column in a DataSet job in Workbench 4. You do this by adding the
 **Custom Date Format**
 transform to the DataSet job and then selecting the column and specifying the desired date format.


**Training Video - Setting a Custom Date Format**

Learn how to apply a custom date format transform to your data in Workbench 4.


**To set a custom date format for a column in Workbench 4,**

. In the
 **Accounts**
 pane, select the DataSet job in which you want to set a custom date format.
2. In the
 **Transforms**
 grouping in the Buttons toolbar at the top of the Workbench window, click
 **Add New**
 .
3. In the
 **Transform Type**
 menu, select
 **Custom Date Format**
 then click
 **Next**
 .
4. Click
 **Finish**
 .


 A
 **Custom Date Format**
 item is added under
 **Transforms**
 for this DataSet job.
5. Click on the new
 **Custom Date Format**
 item under
 **Transforms**
 .


**Custom Date Format**
 options now appear in the Dynamic Options panel.
6. In
 **Columns**
 , select the column in which you want to set a custom date format.
7. In the
 **Date Format**
 field, enter the desired date format.


 For a list of accepted date formats, see the next section.
8. Click
 **Save**
 in the
 **DataSet Jobs**
 grouping in the Buttons toolbar at the top of the Workbench window.


###
 Date format specifiers

You can either have Workbench automatically parse date formats or you can specify the date formats used in your data for columns containing dates and times.

 If you do not specify the date format, Workbench uses your current locale settings to parse date strings. In this auto-mode, various formats are supported, based on the locale.


 For example, in the US locale, the following formats are supported:

2013-04-17 12:34:56


 4/17/2013 12:34:56


 April 17, 2013


 April 17, 2013 12:34 PM


 2013-04-17 12:34:56.123456
* If you specify a date format, Workbench uses the specified date format to parse date strings.


 For example, suppose your current locale settings are for Australia and the dates in your data are formatted as day, month, and year using ":" as the separator rather than "/" (as in "

10:10:2013

"). Because the "auto" mode for Australia does not support using ":" as the separator, you would specify the date format string as

d:M:yyyy

to properly parse the dates.


**Note:**
 Dates in your data must match the specified format
 *exactly*
 .

A custom format string consists of one or more custom date and time format specifiers.


 Refer to the following table for the date formats available in Workbench 4:


 Specifier
  |
 Description
  |
| --- | --- |
|
`d`
 |
 Day of month, numeric (1-31)
  |
|
`dd`
 |
 Day of month, numeric (01-31)
  |
|
`ddd`
 |
 Day of week abbreviated name (Sun-Sat)
  |
|
`dddd`
 |
 Day of week full name (Sunday-Saturday)
  |
|
`f`
 |
 Tenths of a second (0-9)
  |
|
`ff`
 |
 Hundreths of a second (00-99)
  |
|
`fff`
 |
 Milliseconds of a second (000-999)
  |
|
`ffff`
 |
 Ten thousandths of a second (0000-9999)
  |
|
`fffff`
 |
 Hundred thousandths of a second (00000-99999)
  |
|
`ffffff`
 |
 Millionths of a second (000000-999999)
  |
|
`fffffff`
 |
 Ten millionths of a second (0000000-9999999)
  |
|
`F`
 |
 Tenths of a second if non-zero (-9)
  |
|
`FF`
 |
 Hundreths of a second if non-zero (-99)
  |
|
`FFF`
 |
 Milliseconds of a second if non-zero (-999)
  |
|
`FFFF`
 |
 Ten thousandths of a second if non-zero (-9999)
  |
|
`FFFFF`
 |
 Hundred thousandths of a second if non-zero (-99999)
  |
|
`FFFFFF`
 |
 Millionths of a second if non-zero (-999999)
  |
|
`FFFFFFF`
 |
 Ten millionths of a second if non-zero (-9999999)
  |
|
`g`
 ,
 `gg`
 |
 Period or era (such as A.D.)
  |
|
`h`
 |
 Hour (1-12)
  |
|
`hh`
 |
 Hour (01-12)
  |
|
`H`
 |
 Hour (0-23)
  |
|
`HH`
 |
 Hour (00-23)
  |
|
`K`
 |
 Time zone information
  |
|
`m`
 |
 Minutes, numeric (0-59)
  |
|
`mm`
 |
 Minutes, numeric (00-59)
  |
|
`M`
 |
 Month, numeric (1-12)
  |
|
`MM`
 |
 Month, numeric (01-12)
  |
|
`MMM`
 |
 Month abbreviated name (Jan-Dec)
  |
|
`MMMM`
 |
 Month full name (January-December)
  |
|
`s`
 |
 Seconds (0-59)
  |
|
`ss`
 |
 Seconds (00-59)
  |
|
`t`
 |
 AM or PM first character (A or P)
  |
|
`tt`
 |
 AM or PM
  |
|
`y`
 |
 Year, one digit minimum (0-99)
  |
|
`yy`
 |
 Year, two digits (00-99)
  |
|
`yyy`
 |
 Year, three digits minimum (000-999)
  |
|
`yyyy`
 |
 Year, four digits minimum (0000-9999)
  |
|
`yyyyy`
 |
 Year, five digits (00000-99999)
  |
|
`z`
 |
 Local timezone hours offset from UTC (such as -7)
  |
|
`zz`
 |
 Local timezone hours offset from UTC (such as -07)
  |
|
`zzz`
 |
 Local timezone hours and minutes offset from UTC (such as -07:00)
  |
|
`:`
 |
 Time separator
  |
|
`/`
 |
 Date separator
  |
|
`"
 *string*
 "`

'
 *string*
 '`
 |
 Literal string delimiter in single or double quotes.
  |
|
 %
  |
 Precedes a custom format specifier character
  |
|
 \
  |
 Precedes specifier character so it appears in result
  |
|
 Non-specifier character
  |
 Appears in result
  |


