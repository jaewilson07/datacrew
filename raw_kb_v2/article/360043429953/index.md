

Intro
-------

In a Beast Mode calculation using a

DATE\_FORMAT

function, you can specify the format to use for a date or time column by specifying the column and the date or time string, as in

DATE\_FORMAT(`
 *datecolumn*
 `,'
 *format*
 ')

where
 *datecolumn*
 is the column containing a date value and where
 *format*
 is the string containing specifier characters to use in formatting the date value.


 For example, using

DATE\_FORMAT(`MyDate`,'%Y-%m-%d %h:%i %p')

, the date in the
 *MyDate*
 date column uses this format: 2013-04-17 10:10 AM.


 The "%" character is required before format specifier characters.


 If necessary, you can convert date string values in columns to datetime values using the

STR\_TO\_DATE

function.

*Note:**
 In a Beast Mode calculation using a

TIME\_FORMAT

function, you can specify the format to use for time values in a time column by specifying the column and the time string, as in

TIME\_FORMAT(`
 *datetimecolumn*
 `,'
 *format*
 ')

where
 *datetimecolumn*
 is the column containing a time value and where
 *format*
 is the string containing specifier characters to use in formatting the time value.


 The format specifiers used in

DATE\_FORMAT

may be used with

TIME\_FORMAT

, but specifiers other than hours, minutes, seconds and microseconds produce a NULL value or 0.

*Sample Formats**


 Format
  |
 Result
  |
| --- | --- |
|
`DATE_FORMAT(`MyDateColumn`,'%m-%d-%Y')`
 |
`11-04-2008`
 |
|
`DATE_FORMAT(`MyDateColumn`,'%d %b %y')`
 |
`04 Nov 08`
 |
|
`DATE_FORMAT(`MyDateColumn`,'%d %b %Y %T')`
 |
`04 Nov 2008 11:45:34`
 |
|
`DATE_FORMAT(`MyDateColumn`, '%m/%d/%Y')`
 |
`01/13/2013`
 |
|
`DATE_FORMAT(`MyDateColumn`, '%M %d, %Y')`
 |
`August 1, 2013`
 |
|
`DATE_FORMAT(`MyDateColumn`, '%b %d, %Y')`
 |
`Aug 1, 2013`
 |
|
`DATE_FORMAT(`MyDateColumn`,'%b %d %Y %h:%i %p')`
 |
`Nov 04 2008 11:45 PM`
 |
|
`DATE_FORMAT(`MyDateColumn`,'%Y-%m-%d %h:%i:%s')`
 |
`2013-11-06 09:38:10`
 |
|
`DATE_FORMAT(STR_TO_DATE(`MyDateColumn`,'%m,%d,%Y'),'%m/%d/%Y')`
 |
`11/04/2008`
 |

For more information about adding Beast Mode calculations, see

Adding a Beast Mode Calculation to Your Chart

.


 Date format specifiers
------------------------

All examples assume a date and time of April 15th, 2013, at 11:44:15 PM.


 Specifier
  |
 Description
  |
 Sample
  |
 Result
  |
| --- | --- | --- | --- |
|
`%a`
 |
 Abbreviated weekday name (Sun..Sat)
  |
`DATE_FORMAT(`MyDate`,'%a')`
 |
 Mon
  |
|
`%b`
 |
 Abbreviated month name (Jan..Dec)
  |
`DATE_FORMAT(`MyDate`,'%b')`
 |
 Apr
  |
|
`%d`
 |
 Day of month, numeric (00-31)
  |
`DATE_FORMAT(`MyDate`,'%d')`
 |
 13
  |
|
`%f`
 |
 Microseconds (000000..999999)
  |
`DATE_FORMAT(`MyDate`,'%f')`
 |
 300000
  |
|
`%H`
 |
 Hour (00-23)
  |
`DATE_FORMAT(`MyDate`,'%H')`
 |
 23
  |
|
`%h`
 |
 Hour (01-12)
  |
`DATE_FORMAT(`MyDate`,'%h')`
 |
 11
  |
|
`%i`
 |
 Minutes, numeric (00-59)
  |
`DATE_FORMAT(`MyDate`,'%i')`
 |
 44
  |
|
`%j`
 |
 Day of year (001-366)
  |
`DATE_FORMAT(`MyDate`, '%j')`
 |
 105
  |
|
`%M`
 |
 Month name (January..December)

*Note:**
 This option is padded with trailing whitespace to 9 characters.

|
`DATE_FORMAT(`MyDate`,'%M')`
 |
 April
  |
|
`%m`
 |
 Month, numeric (00-12)
  |
`DATE_FORMAT(`MyDate`,'%m')`
 |
 04
  |
|
`%p`
 |
 AM or PM
  |
`DATE_FORMAT(`MyDate`,'%p')`
 |
 PM
  |
|
`%r`
 |
 Time, 12-hour (hh:mm:ss followed by AM or PM)
  |
`DATE_FORMAT(`MyDate`,'%r')`
 |
 11:44:15 PM
  |
|
`%s`
 |
 Seconds (00-59)
  |
`DATE_FORMAT(`MyDate`,'%s')`
 |
 15
  |
|
`%T`
 |
 Time, 24-hour (hh:mm:ss)
  |
`DATE_FORMAT(`MyDate`,'%T')`
 |
 23:44:15
  |
|
`%v`
 |
 ISO week number of the year (the first Thursday of the new year is in week 1)
  |
`DATE_FORMAT(`MyDate`,'v')`
 |
 16
  |
|
`%W`
 |
 Weekday name (Sunday..Saturday)
  |
`DATE_FORMAT(`MyDate`,'%W')`
 |
 Monday
  |
|
`%w`
 |
 Day of the week (1-7; Sunday is 1)
  |
`DATE_FORMAT(`MyDate`,'w')`
 |
 2
  |
|
`%x`
 |
 ISO year (4 or more digits)
  |
`DATE_FORMAT(`MyDate`,'x')`
 |
 2013
  |
|
`%Y`
 |
 Year (4 or more digits)
  |
`DATE_FORMAT(`MyDate`,'%Y')`
 |
 2013
  |
|
`%y`
 |
 Last two digits of year
  |
`DATE_FORMAT(`MyDate`,'%y')`
 |
 13
  |

Unit type values
------------------

You can specify unit type values for date or datetime expressions in

ADDDATE

,

DATE\_ADD

,

DATE\_SUB

, and

SUBDATE

functions, including those listed in the following table.

*Note:**
 In Beast Mode calculations, the unit type value is case insensitive.


|
 Unit Type Value
  |
 Expected Expression Format
  |
| --- | --- |
|
 MICROSECOND
  |
 MICROSECONDS
  |
|
 SECOND
  |
 SECONDS
  |
|
 MINUTE
  |
 MINUTES
  |
|
 HOUR
  |
 HOURS
  |
|
 DAY
  |
 DAYS
  |
|
 WEEK
  |
 WEEKS
  |
|
 MONTH
  |
 MONTHS
  |
|
 QUARTER
  |
 QUARTERS
  |
|
 YEAR
  |
 YEARS
  |
|
 SECOND\_MICROSECOND
  |
 'SECONDS.MICROSECONDS'
  |
|
 MINUTE\_MICROSECOND
  |
 'MINUTES:SECONDS.MICROSECONDS'
  |
|
 MINUTE\_SECOND
  |
 'MINUTES:SECONDS'
  |
|
 HOUR\_MICROSECOND
  |
 'HOURS:MINUTES:SECONDS.MICROSECONDS'
  |
|
 HOUR\_SECOND
  |
 'HOURS:MINUTES:SECONDS'
  |
|
 HOUR\_MINUTE
  |
 'HOURS:MINUTES'
  |
|
 DAY\_MICROSECOND
  |
 'DAYS HOURS:MINUTES:SECONDS.MICROSECONDS'
  |
|
 DAY\_SECOND
  |
 'DAYS HOURS:MINUTES:SECONDS'
  |
|
 DAY\_MINUTE
  |
 'DAYS HOURS:MINUTES'
  |
|
 DAY\_HOUR
  |
 'DAYS HOURS'
  |
|
 YEAR\_MONTH
  |
 'YEARS-MONTHS'
  |


