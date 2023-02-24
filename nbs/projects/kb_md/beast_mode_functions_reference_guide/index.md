---
    title: Beast Mode Functions Reference Guide
    url: https://domo-support.domo.com/s/article/360043429933
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamoGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamoGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS/beast-mode](https://domo-support.domo.com/s/topic/0TO5w000000ZanAGAS/beast-mode)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004081
    views: 20,550
    created_date: 2022-10-24 21:20:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


You can use this reference guide to learn about supported functions in Beast Mode.


**Video - Intro to Beast Mode**



 


Supported functions
-------------------


You can use any of the following functions in calculations. You can see examples of many of the functions in [Sample Beast Mode calculations](http://wiki.domo.com/confluence/display/DHCS/Sample+Beast+Mode+calculations "Sample Beast Mode Calculations").


### Aggregate functions




| Function Name | Description | Example |
| --- | --- | --- |
| `APPROXIMATE COUNT (DISTINCT)` | Returns the approximate count of a number of unique values in a column. | `APPROXIMATE_COUNT_DISTINCT(`Customers`)` |
| `AVG` | Returns the average value for each series in a column. | `AVG(`Operating Budget`)` |
| `CEILING` | Returns the highest value for each series in a column.
This function differs from the MAX function in that CEILING is rounded whereas MAX is not rounded. | `CEILING(`Operating Budget`)` |
| `COUNT` | Returns the number of row values in a column. | `COUNT(`Customers`)` |
| `COUNT (DISTINCT)` | Returns the count of a number of unique values in a column. | `COUNT(DISTINCT `Customers`)` |
| `FLOOR` | Returns the lowest value for each series in a numeric column.
This function differs from the MIN function in that FLOOR is rounded whereas MIN is not. | `FLOOR(`Operating Budget`)` |
| `MAX` | Returns the highest value for each series in a numeric column.
This function differs from the CEILING function in that MAX is not rounded whereas CEILING is rounded. | `MAX(`Operating Budget`)` |
| `MIN` | Returns the lowest value for each series in a numeric column.
This function differs from the FLOOR function in that MIN is not rounded whereas FLOOR is rounded. | `MIN(`Operating Budget`)` |
| `STDDEV_POP` | Returns the population standard deviation for each series in a numeric column. | `STDDEV_POP(`Values`)` |
| `SUM` | Returns the sum of each series in a numeric column. | `SUM(`Values`)` |
| `SUM (DISTINCT)` | Returns the sum of unique values in a numeric column. | `SUM(DISTINCT `Values`)` |
| `VAR_POP` | Returns the population standard variance for each series in a numeric column. | `VAR_POP(`Values`)` |


For information about using aggregate functions in summary numbers, see [Applying a calculation to a summary number](/s/article/360043429913 "Adding a Beast Mode Calculation to Your Chart").


### Mathematical functions




| Function Name | Description | Example |
| --- | --- | --- |
| `ABS` | Returns the absolute value for all values in a numeric column.
In other words, any negative values become positive, and positive values stay the same. This is valuable when you want to see aggregation without considering positive and negative values. | `ABS(`Operating Budget`)` |
| `MOD` | Returns the remainder of each value in a numeric column divided by some specified number (dividend). | `MOD(`Values`,2)` |
| `POWER` | Returns each value in a numeric column raised to a given power. If the column contains multiple series, the values are summed for each series. | `POWER(`Values`,2)` |
| `RAND` | Returns random values between 0 and 1. | `RAND(`Values`)` |
| `ROUND` | Returns values in a numeric column rounded to the nearest specified decimal place.
If you do not include a decimal place value in the function, returned values are rounded to the nearest whole number. | `ROUND(`Values`,1)` |


### Logical functions




| Function Name | Description | Example |
| --- | --- | --- |
| `CASE` | Use to begin logical statements in which the value of data is replaced when certain criteria is reached (when...then or when...then, else). These statements use the following format:`CASE `Value` when *x* then 'resultx' else 'resulty' End`
or 
`CASE when `Value`=*x* then 'resultx' else 'resulty' End`
In other words, when the data in the "Value" column equals number *x*, value *resultx* is returned; otherwise value *resulty* is returned. (The value returned can be either a single-quoted string or a number.)
For multiple conditional statements, use the following format:`CASE when `Value`=*x* then 1 when `Value`=*y* then 2 end`
Although valid, avoid using the following inefficient format:`CASE when `Value`=*x* then 1 else CASE when `Value`=*y* then 2 end end`
**IN Operator**In a CASE when clause, you can use the IN operator, which lets you specify multiple values to evaluate.``column_name` IN (value1,value2,...)``CASE when `State` in ('NY', 'TX') then 0 else 1 end`
**LIKE Operator**In a CASE when clause, you can use the LIKE operator, which lets you search for a specified pattern in a column.``column_name` LIKE pattern`
`CASE when `State` like '%TX%' or `State` like '%NY' then 0 else 1 end`You can use these wildcards with the LIKEoperator:* `%` to match any number of characters, even zero characters.`like '%TX%'`
* `_` to match exactly one character.`like '_hn%'`

Values for the LIKE operator are matched in order of the WHEN statements. For example, if a value in the data matches the first and fourth LIKE operators, it is applied to the first operation.  | `CASE when `Amount`=1 then 10 else 0 End`
`CASE `Gender` when 'M' then 'Male' when 'F' then 'Female' end​`
`CASE when `Pennies` >= 600 then 'Large' when `Pennies` <= 300 then 'Small' else `Pennies` end​`
  |
| `IFNULL` | Used in logical statements in which you want to specify a replacement for null values. | `IFNULL(`Values`,0)` |
| `NULLIF` | Returns null if the value in the first column equals the value in the second column; otherwise returns the value in the first column. | `NULLIF(`Value 1`,`Value 2`)` |


**Video - Case Statement Overview**



 


 


### String functions




| Function | Description | Example |
| --- | --- | --- |
| `CONCAT` | Combines strings from two or more string columns. | `CONCAT(`First Name`,' ',`Last Name`)` |
| `INSTR` | Returns the position of the first instance of a specified string in a given column, starting from the first letter in the name.
In the example at right, the calculation would return the position of the first instance of the letter "e" in each string in the column.   | `INSTR(`Group`,'e')` |
| `LEFT` | Returns the specified number of characters in each string in the the given column, starting from the left.  | `LEFT(`Group`,3)` |
| `LENGTH` | Returns the number of characters in each string in the given column.  | `LENGTH(`Group`)` |
| `LOWER` | Converts strings from one or more string columns into lower-case. | `LOWER(`Product Type`)` |
| `REPLACE` | Replaces all of the specified strings in a given column with another specified string.  | `REPLACE(`Department`,'Human Resnources','Human Resources')` |
| `RIGHT` | Returns the specified number of characters in the given column, starting from the right.  | `RIGHT(`Group`,3)` |
| `SUBSTRING` | Extracts and returns a specified number of characters from the values in a string column.
You specify the characters to return by indicating the starting position and the length of characters. For example, specifying the position as 1 and the length as 3 would return the first, second, and third characters for values in the column. | `SUBSTRING(`Employee Name`,1,3)` |
| `TRIM` | Trims leading and trailing spaces for all values in string columns. | `TRIM(`Employee Name`)` |
| `UPPER` | Converts strings from one or more string columns into upper-case. | `UPPER(`Customers`)` |


### Date and Time functions




| Function | Description | Example |
| --- | --- | --- |
| `ADDDATE` | Adds date or datetime values (as intervals) to date values in a date column.
You can specify the date or datetime values to add to date values in a date column by specifying the column, interval, expression, and unit, as in ADDDATE(`*datecolumn*`, interval *expr* *unit*) where *datecolumn* is the column containing a date value, where *expr* is the argument containing the date or datetime value to add, and where *unit* is the string value for the corresponding date or datetime unit type.
You can prefix the expression with a "-" to subtract the value. Specify the unit value (such as second, minute, hour, day, week, month, quarter, year). (The "interval" keyword and unit type values are case insensitive.) For more information, see [Unit type values in Beast Mode.](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode")
For example, adding 12 days to January 4 would return January 16.
Same as DATE\_ADD. | `ADDDATE(`DateCol`, interval 12 day)` |
| `ADDTIME` | Adds a specified number of seconds to all values in a time column. For example, adding 15 seconds to 8:05 would return 8:20. | `ADDTIME(`Time`,25)` |
| `CURDATE` | Returns the current date.
No column name is specified in this function.
Same as CURRENT\_DATE. | `CURDATE()` |
| `CURTIME` | Returns the current time.
No column name is specified in this function.
Same as CURRENT\_TIME. | `CURTIME()` |
| `CURRENT_DATE` | Returns the current date.
No column name is specified in this function.
Same as CURDATE. | `CURRENT_DATE()` |
| `CURRENT_TIME` | Returns the current time.
No column name is specified in this function.
Same as CURTIME. | `CURRENT_TIME()` |
| `CURRENT_TIMESTAMP` | Returns the value of current date and time in YYYY-MM-DD HH:MM:SS format.
No column name is specified in this function.
Same as NOW. | `CURRENT_TIMESTAMP()` |
| `DATE` | Extracts and returns the dates from datetime values. | `DATE(`DateCol`)` |
| `DATEDIFF` | Returns the number of days between two dates from datetime values. | `DATEDIFF(CURRENT_DATE(), `lastmoddate`)` |
| `DATE_ADD` | Adds date or datetime values (as intervals) to date values in a date column.
You can specify the date or datetime values to add to date values in a date column by specifying the column, interval, expression, and unit, as in DATE\_ADD(`*datecolumn*`, interval *expr* *unit*) where *datecolumn* is the column containing a date value, where *expr* is the argument containing the date or datetime value to add, and where *unit* is the string value for the corresponding date or datetime unit type.
You can prefix the expression with a "-" to subtract the value. Specify the unit value (such as second, minute, hour, day, week, month, quarter, year). (The "interval" keyword and unit type values are case insensitive.) For more information, see [Unit type values in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode").
For example, adding 12 days to January 4 would return January 16.
Same as ADDDATE. | `DATE_ADD(`DateCol`, interval 12 day)` |
| `DATE_FORMAT` | Formats dates in a date/time column into a specific format.





**Note:**Beast Mode uses SQL-like date and time formats.



You can specify the format to use for a date or time column by specifying the column and the date or time string, as in DATE\_FORMAT(`*datecolumn*`,'*format*') where *datecolumn* is the column containing a date value and where *format* is the string containing specifier characters to use in formatting the date value.
The "%" character is required before format specifier characters.
For example, using DATE\_FORMAT(`MyDate`,'%Y-%m-%d %h:%i %p'), the date in the *MyDate* date column uses this format: 2013-04-17 10:10 AM.
For information about specifier characters, see [Date Format Specifier Characters in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode").
Similar to TIME\_FORMAT. | `DATE_FORMAT(`DateCol`,'%y')``DATE_FORMAT(`DateCol`,'%m/%d')``DATE_FORMAT(NOW(),'%d %b %Y %T')``DATE_FORMAT(STR_TO_DATE(`DateCol`, '%m,%d,%Y'), '%m/%d/%Y')``ADDDATE(DATE_FORMAT(`DateCol`, '%Y-%m-%d'), interval 12 day)``PERIOD_DIFF(DATE_FORMAT(CURDATE(), '%Y%m'), DATE_FORMAT(`DateCol`, '%Y%m'))` |
| `DATE_SUB` | Subtracts date or datetime values (as intervals) to date values in a date column.
You can specify the date or datetime values to subtract from date values in a date column by specifying the column, interval, expression, and unit, as in DATE\_SUB(`*datecolumn*`, interval *expr* *unit*) where *datecolumn* is the column containing a date value, where *expr* is the argument containing the date or datetime value to subtract, and where *unit* is the string value for the corresponding date or datetime unit type.
You can prefix the expression with a "-" to add the value. Specify the unit value (such as second, minute, hour, day, week, month, quarter, year). (The "interval" keyword and unit type values are case insensitive.) For more information, see [Unit type values in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode").
For example, subtracting 12 days from January 24 would return January 12.
Same as SUBDATE. | `DATE_SUB(`DateCol`, interval 12 day)` |
| `DAY` | Returns the numerical day of the month for all values in a date/time column.
Same as DAYOFMONTH. | `DAY(`DateCol`)` |
| `DAYNAME` | Returns the name of the day of the week for all values in a date/time column. | `DAYNAME(`DateCol`)` |
| `DAYOFMONTH` | Returns the numerical day of the month for all values in a date/time column.
Same as DAY. | `DAYOFMONTH(`DateCol`)` |
| `DAYOFWEEK` | Returns the numerical day of the week for all values in a date/time column (e.g. "2" for "Monday"). | `DAYOFWEEK(`DateCol`)` |
| `DAYOFYEAR` | Returns the numerical day of the year for all values in a date/time column (e.g. "226" for the 226th day of the year). | `DAYOFYEAR(`DateCol`)` |
| `FROM_DAYS` | Converts day numbers into dates. | `FROM_DAYS(`DateCol`)` |
| `FROM_UNIXTIME` | Returns a UNIX datetime value from a UNIX date/time column using the specified format.
For information about specifier characters, see [Date Format Specifier Characters in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode"). | `FROM_UNIXTIME(`UnixDateCol`,'%Y %d %m %h:%i:%s %x')` |
| `HOUR` | Returns the hour for all values in a date/time column (e.g. the time "3:36" would return "3"). | `HOUR(`Time`)` |
| `LAST_DAY` | Aggregates values for each month in a date/time column and returns each aggregation as the last day of each month.
For example, if a date/time column had "15," "16," and "17" as values for January, only the last given date of January would appear, with a combined value of 48. | `LAST_DAY(`DateCol`)` |
| `MINUTE` | Returns the value for each minute in a time column.
If there is more than one instance of a particular minute in the column, the values for those minutes are aggregated. | `MINUTE(`Time`)` |
| `MONTH` | Returns the month number (e.g. "9" for September) for all values in a date/time column. | `MONTH(`DateCol`)` |
| `MONTHNAME` | Returns the name of the month (e.g. "September" rather than "9") for all values in a date/time column. | `MONTHNAME(`DateCol`)` |
| `NOW` | Returns the value of current date and time in YYYY-MM-DD HH:MM:SS format.
No column name is specified in this function.
Same as CURRENT\_TIMESTAMP. | `NOW()` |
| `PERIOD_ADD` | Adds the specified number of months to the values in a date column. For this to work, the date values must be months in the format YYYYMM. | `PERIOD_ADD(`Month`,6)` |
| `PERIOD_DIFF` | Returns the number of months between months in two date columns.
For this to work, the date values must be months in the format YYYYMM. For example, if one column contained the date value 200803 and another contained the value 200809, this function would return 6. | `PERIOD_DIFF(201309,201301)``PERIOD_DIFF(`Month 1`, `Month 2`)``PERIOD_DIFF(DATE_FORMAT(CURDATE(), '%Y%m'), DATE_FORMAT(`DateCol`, '%Y%m'))` |
| `QUARTER` | Aggregates date value data into quarters in a year. | `QUARTER(`DateCol`)` |
| `SECOND` | Returns the value for each second in a time column. If there is more than one instance of a particular second in the column, the values for those seconds are aggregated. | `SECOND(`Time`)` |
| `SEC_TO_TIME` | Converts seconds into hours, minutes, and seconds. For example, 3489 would be converted into 00:58:09.





**Note:** The sec\_to\_time function is limited to 24 hours. When a value is greater than 24 hours, it will overflow and loop back to 0 hours.


 | `SEC_TO_TIME(`Seconds`)` |
| `STR_TO_DATE` | Converts strings (that Domo does not recognize as dates) from one or more string columns into datetime values. You specify the column(s) and the current date format used in those columns.
By default, datetime values are returned in the output format %m-%d-%Y. You can change the output format by enclosing your STR\_TO\_DATE calculation in a DATE\_FORMAT calculation that specifies the date format specifier characters you want.
For information about specifier characters, see [Date Format Specifier Characters in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode"). | `STR_TO_DATE(`DateCol`,'%m,%d,%Y')``DATE_FORMAT(STR_TO_DATE(`DateCol`, '%m,%d,%Y'), '%m/%d/%Y')` |
| `SUBDATE` | Subtracts date or datetime values (as intervals) to date values in a date column.
You can specify the date or datetime values to subtract from date values in a date column by specifying the column, interval, expression, and unit, as in SUBDATE(`*datecolumn*`, interval *expr* *unit*) where *datecolumn* is the column containing a date value, where *expr* is the argument containing the date or datetime value to subtract, and where *unit* is the string value for the corresponding date or datetime unit type.
You can prefix the expression with a "-" to add the value. Specify the unit value (such as second, minute, hour, day, week, month, quarter, year). (The "interval" keyword and unit type values are case insensitive.) For more information, see [Unit type values in Beast Mode](/s/article/360043429953 "Date Format Specifier Characters in Beast Mode").
For example, subtracting 12 days from January 24 would return January 12. Same as DATE\_SUB. | `SUBDATE(`DateCol`, interval 12 day)` |
| `SUBTIME` | Subtracts a specified number of seconds from all values in a time column.
For example, subtracting 30 seconds from 8:05:45 would return 8:05:15. | `SUBTIME(`Time`,15)` |
| `SYSDATE` | Returns the current date and time in YYYY-MM-DD HH:MM:SS format, as in 2014-04-03T19:25:29.
No column name is specified in this function.
Similar to CURRENT\_DATE and CURRENT\_TIME. | `SYSDATE()` |
| `TIME` | Extracts the times from datetime values. | `TIME(`DateCol`)` |
| `TIMEDIFF` | Returns the difference between values in two date/time columns, expressed as a time value. | `TIMEDIFF(`Time 1`,`Time 2`)` |
| `TIMESTAMP` | Returns values in a date column as datetime values. | `TIMESTAMP(`DateCol`)` |
| `TIME_FORMAT` | Formats time in a datetime column into a specific format.





**Note:**Beast Mode uses SQL-like date and time formats. 



You can specify the format to use for time values in a time column by specifying the column and the time string, as in TIME\_FORMAT(`*datetimecolumn*`,'*format*') where *datetimecolumn* is the column containing a time value and where *format* is the string containing specifier characters to use in formatting the time value.





**Note:**The format specifiers used in DATE\_FORMAT may be used with TIME\_FORMAT, but specifiers other than hours, minutes, seconds and microseconds produce a NULL value or 0.  



The "%" character is required before format specifier characters.
For example, using TIME\_FORMAT(`Date`,'%h:%i:%s'), the date in the transformed time column uses this format: 12:20:12.
For information about specifier characters, see [Date Format Specifier Characters for Beast Mode](/s/article/360043429953)
Similar to DATE\_FORMAT. | `TIME_FORMAT(`Date`,'%h:%i:%s')``TIME_FORMAT(NOW(),'%h:%i:%s')` |
| `TIME_TO_SEC` | Returns an elapsed number of seconds for all values in a date/time column. | `TIME_TO_SEC(`DateCol`)` |
| `TO_DAYS` | Returns the number of days since year 0 for all values in a date/time column. For example, the date "01-06-2010" would be returned as "734143," since 734,143 days have transpired between that date and January 1st of year 0. | `TO_DAYS(`DateCol`)` |
| `UNIX_TIMESTAMP` | Returns UNIX time stamps for all values in a date/time column. | `UNIX_TIMESTAMP(`DateCol`)` |
| `WEEK` | Returns the week number for each value of the indicated date or date-time column.
Syntax: WEEK(`dateCol`, mode).
For a Sunday-Saturday week frame, use mode 11: WEEK(`dateCol`, 11).
For a Monday-Sunday week frame, use mode 22: WEEK(`dateCol`, 22).  | `WEEK(`DateCol`,22)` |
| `YEAR` | Returns the year for all values in a date/time column. | `YEAR(`DateCol`)` |
| `YEARWEEK` | Returns the year and week number for each value of the indicated date or date-time column in "YYYYWW" format. For example, a date in the 5th week of the year 2020 will return "202005".
Syntax: YEARWEEK(`dateCol`, mode) 
For a Sunday to Saturday week frame, use mode 11: YEARWEEK(`dateCol`, 11). 
For a Monday to Sunday week frame, use mode 22: YEARWEEK(`dateCol`, 22). | `YEARWEEK(`DateCol`,11)` |


Unsupported functions
---------------------


The following functions are no longer supported: `SQRT`, `CONVERT_TZ`, `MICROSECOND` , `WEEKDAY`

