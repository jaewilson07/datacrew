---
    title: Adrenaline DataFlow Functions Reference Guide
    url: https://domo-support.domo.com/s/article/4410213098903
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamzGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC)', '[https://domo-support.domo.com/s/article/4410213098903](https://domo-support.domo.com/s/article/4410213098903)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows](https://domo-support.domo.com/s/topic/0TO5w000000Zao9GAC/sql-dataflows)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004584
    views: 1,459
    created_date: 2022-10-24 22:15:00
    last updated: 2022-10-24 22:41:00
    ---



Supported Functions
-------------------


You can use any of the following functions in an Adrenaline DataFlow:


General Functions
-----------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `IFNULL` | Return the first parameter if non null, otherwise return the second parameter | `IFNULL(ANY, ANY) -> ANY` |
| `NULLIF` | Return null if the two input expressions are equal, otherwise return the first expression. | `NULLIF(ANY, ANY) -> ANY` |
| `NVL` | Similar to `COALESCE` but only accepts exactly two input expressions | `NVL(ANY, ANY) -> ANY` |


Mathematical Functions
----------------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `ADDDATE` | Adds an interval from a date/datetime. Returns a date if the input is a date and the interval is in days or greater, otherwise returns a datetime. Synonym to DATE\_ADD | `ADDDATE(TIME, INTERVAL) -> TIME` |
| `CEILING` | Takes in a number and returns the nearest whole number rounded up. | `CEILING(NUMERIC) -> LONG` |
| `DATE_ADD` | Adds an interval from a date/datetime. Returns a date if the input is a date and the interval is in days or greater, otherwise returns a datetime. Synonym to ADDDATE | `DATE_ADD(TIME, INTERVAL) -> TIME` |
| `DATE_SUB` | Subtracts an interval from a date/datetime. Returns a date if the input is a date and the interval is in days or greater, otherwise returns a datetime. Synonym to SUBDATE | `DATE_SUB(TIME, INTERVAL) -> TIME` |
| `FLOOR` | Takes in a number and returns ths nearest whole number rounded down. | `FLOOR(NUMERIC) -> LONG` |
| `LN` | Return the natural log of the input parameter. | `LN(NUMERIC) -> DOUBLE` |
| `LOG` | Return the base 10 log of the input parameter. | `LOG(NUMERIC) -> DOUBLE` |
| `POWER` | Returns the first number raised to the power of the second number. | `POWER(NUMERIC, NUMERIC) -> DOUBLE` |
| `RAND` | Returns a uniformly-distributed random number x, where 0 <= x < 1. Takes a parameter of any type as a seed. | `RAND(ANY) -> DOUBLE` |
| `RANDOM` | Returns a uniformly-distributed random number x, where 0 <= x < 1. | `RANDOM() -> DOUBLE` |
| `ROUND` | Rounds a value to a specified number of decimal places, retaining the original precision and scale. Fractions greater than or equal to .5 are rounded up. Fractions less than .5 are rounded down (truncated). | `ROUND(NUMERIC) -> DOUBLE` |
| `SQRT` | Returns the square root of the input parameter. Returns null if the result is not a real number. | `SQRT(NUMERIC) -> DOUBLE` |
| `SUBDATE` | Subtracts an interval from a date/datetime. Returns a date if the input is a date and the interval is in days or greater, otherwise returns a datetime. Synonym to DATE\_SUB | `SUBDATE(TIME, INTERVAL) -> TIME` |
| `WIDTH_BUCKET` | Constructs equiwidth histograms, in which the histogram range is divided into intervals (buckets) of identical sizes. In addition, values below the low bucket return 0, and values above the high bucket return bucket\_count +1. Returns an integer value. | `WIDTH_BUCKET(NUMERIC|TIME expression, NUMERIC|TIME min, NUMERIC|TIME max, LONG bucket_count) -> LONG` |


Date Functions
--------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `ADDTIME` | Adds a time value to a date or datetime. The time is represented as the timestamp component of a string date time value. | `ADDTIME(TIME, TIME_LITERAL) -> TIME` |
| `CONVERT_TZ` | Converts a datetime value from one timezone to another. Timezones can be hour offsets, timezone codes, or full timezone names (e.g. -06:00, MDT, America/Denver) | `CONVERT_TZ(DATETIME, STRING from_tz, STRING to_tz) -> DATETIME` |
| `DATE` | Extracts the date portion from a datetime expression. | `DATE(TIME) -> DATE` |
| `DATE_TRUNC` | Truncates a datetime expression to part specified. | `DATE_TRUNC(STRING date_part, TIME) -> TIME` |
| `DATEDIFF` | Returns the number of days between two date values | `DATEDIFF(TIME, TIME) -> LONG` |
| `DAYNAME` | Return the full name of a the weekday for a date. | `DAYNAME(TIME) -> STRING` |
| `DAYOFMONTH` | Return the day of the month for a date. | `DAY(TIME) -> LONG` |
| `DAYOFWEEK` | Return the day number in the week for a date. The return value is the same as WEEKDAY. | `DAYOFWEEK(TIME) -> LONG` |
| `DAYOFYEAR` | Return the day number in the year for a date. | `DAYOFYEAR(TIME) -> LONG` |
| `FROM_DAYS` | Returns a date from a numerical representation of the date (days since epoch). See `TO_DAYS`. | `FROM_DAYS(NUMERIC) -> DATE` |
| `FROM_UNIXTIME` | Returns a date from a unix based time (seconds since epoch). Optionally a pattern for the output format can be included. See `UNIX_TIMESTAMP`. | `FROM_UNIXTIME(NUMERIC, [STRING pattern]) -> DATETIME` |
| `HOUR` | Returns the hour portion of a datetime value. | `HOUR(TIME) -> LONG` |
| `LAST_DAY` | Returns the last day of the month for a given date or datetime. | `LAST_DAY(TIME) -> DATE` |
| `MONTH` | Returns the month number for a given date or datetime. | `MONTH(TIME) -> LONG` |
| `MONTHNAME` | Returns the full name of the month for a given date or datetime. | `MONTHNAME(TIME) -> STRING` |
| `NOW` | Returns the current time in the timezone of the query request context. | `NOW() -> DATETIME` |
| `PERIOD_ADD` | Adds a number of months to a period. Period is a number formatted YYYYMM or YYMM. The result is a long formatted as YYYYMM. | `PERIOD_ADD(NUMERIC period, NUMERIC months) -> LONG` |
| `PERIOD_DIFF` | Difference in months between two periods. Period is a number formatted YYYYMM or YYMM. Both periods should be the same format. The result is the number of months. | `PERIOD_DIFF(NUMERIC, NUMERIC) -> LONG` |
| `QUARTER` | Returns the quarter (1-4) for a given date/datetime. | `QUARTER(TIME) -> LONG` |
| `SEC_TO_TIME` | Takes a number of seconds and returns them formatted as a time (HH:MM:SS). | `SEC_TO_TIME(NUMERIC) -> STRING` |
| `SECOND` | Returns the seconds part of a date time value. | `SECOND(TIME) -> LONG` |
| `STR_TO_DATE` | Parses a string into a date. Returns a STRING if the format equals '%T' or starts with '%H'. Otherwise returns a DATETIME if the format string is longer than 10 characters, and returns a DATE in all other cases. | `STR_TO_DATE(STRING input, STRING format) -> TIME|STRING` |
| `SUBDATE` | Subtracts an interval from a date/datetime. Returns a date if the input is a date and the interval is in days or greater, otherwise returns a datetime. | `SUBDATE(TIME, INTERVAL) -> TIME` |
| `SUBTIME` | Subtracts a number of seconds from a date/datetime. The seconds can be decimal numbers to represent sub-second values. | `SUBTIME(TIME, NUMERIC) -> DATETIME` |
| `SYSDATE` | Returns the current date time. | `SYSDATE() -> DATETIME` |
| `TIME` | Returns the time portion of a datetime as a string formatted HH:MM:SS. | `TIME(TIME) -> STRING` |
| `TIME_FORMAT` | Formats the time portion of a datetime as a string. | `TIME_FORMAT(TIME, STRING format) -> STRING` |
| `TIME_TO_SEC` | Convert a time portion of a datetime to seconds. | `TIME_TO_SEC(TIME) -> LONG` |
| `TIMEDIFF` | Return the time difference between two time/datetimes as a HH:MM:SS string. | `TIMEDIFF(TIME, TIME) -> STRING` |
| `TIMESTAMP` | Returns a datetime value based on the arguments. Input should either be a date or a valid datetime string. | `TIMESTAMP(TIME) -> DATETIME` |
| `TO_DATE` | Converts an input into a DATE value. | `TO_DATE(TIME) -> DATE` |
| `TO_DAYS` | Return the number of days between a date expression and the year 0. | `TO_DAYS(TIME) -> LONG` |
| `UNIX_TIMESTAMP` | Returns the seconds since epoch (unix timestamp for a given date). | `UNIX_TIMESTAMP(TIME) -> LONG` |
| `WEEK` | Returns the week of year for a given date. Optionally a second "mode" parameter can be passed to indicate what starting day of the week to use and whether or not to use iso weeks.
The option parameter is a two digit number.
\* First digit 1 or 2. 1 for January first based weeks, and 2 for the ISO standard weeks
\* Second digit for the first day in the week Sunday - 1, Monday - 2, etc
Currently only 11 and 22 are supported. | `WEEK(TIME[, LONG mode]) -> LONG` |
| `WEEKDAY` | Return the day number in week for a given date/datetime. The return value is the same as DAYOFWEEK. | `WEEKDAY(TIME) -> LONG` |
| `YEAR` | Return the current year for a date/datetime. An optional mode parameter may also be passed, see `WEEK`. | `YEAR(TIME[, LONG mode]) -> LONG` |
| `YEARWEEK` | Return the year and week number as YYYYWW. An optional mode parameter may also be passed, see `WEEK`. | `YEARWEEK(TIME[, LONG mode]) -> LONG` |


String Functions
----------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `DATE_FORMAT` | Formats a date into a string value. | `DATE_FORMAT(TIME, STRING format) -> STRING` |
| `INITCAP` | Capitalizes the first letter of each word. Words are delimited by white space or characters that are not alphanumeric. | `INITCAP(STRING) -> STRING` |
| `INSTR` | Returns the position (1 based) of a search string in another string, or zero if the string is not found. | `INSTR(STRING source, STRING search_string) -> STRING` |
| `LEFT` | Returns X characters from the start of a string. | `LEFT(STRING, LONG) -> STRING` |
| `LENGTH` | Returns the length of a string. | `LENGTH(STRING) -> LONG` |
| `LOWER` | Returns a string with all letters lowercased. | `LOWER(STRING) -> STRING` |
| `LPAD` | Left-pads a string with another string, to a certain length. | `LPAD(STRING, LONG total_length, STRING pad_string) -> STRING` |
| `OCTET_LENGTH` | Returns the number of bytes in the string. | `OCTET_LENGTH(STRING) -> STRING` |
| `REPLACE` | Replaces all occurrences of a substring in a string with a new string. | `REPLACE(STRING, STRING from, STRING to) -> STRING` |
| `RIGHT` | Returns X characters from the end of a string. | `RIGHT(STRING, LONG) -> STRING` |
| `RPAD` | Right-pads a string with another string up to X total characters. | `RPAD(STRING, LONG total, STRING pad_string) -> STRING` |
| `SPLIT_PART` | Splits a string by a given character and returns the requested part (1 based). | `SPLIT_PART(STRING, STRING delimiter, LONG part)` |
| `SUBSTRING` | Returns a substring of a specified length, starting at start\_pos (1 based). | `SUBSTRING(STRING, LONG start_pos, LONG length) -> STRING` |
| `TO_CHAR` | Converts an expression to a string based on the passed in format. | `TO_CHAR(ANY, STRING format) -> STRING` |
| `TO_NUMBER` | Converts a string into a number. An optional pattern can be passed in. If the pattern doesn't include decimals the result will be LONG, otherwise the result will be a DOUBLE. | `TO_NUMBER(STRING, STRING pattern) -> NUMERIC` |
| `TRIM` | Trims whitespace from the begining and end of a string. | `TRIM(STRING) -> STRING` |
| `UPPER` | Converts all characters in a string to uppercase. | `UPPER(STRING) -> STRING` |


Aggregate Functions
-------------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `APPROXIMATE_MEDIAN` | Calculates an approximate median for a group of numerical values. The error tolerance may vary between engines. | `APPROXIMATE_MEDIAN(NUMERIC) -> DOUBLE` |
| `APPROXIMATE_PERCENTILE` | Calculates an approximate percentile for a group of numerical values. The percentile value must between 0 and 1. The error tolerance may vary between engines. | `APPROXIMATE_MEDIAN(NUMERIC, DOUBLE percentile) -> DOUBLE` |
| `AVG` | Calculates the average of a group of numbers. | `AVG(NUMERIC) -> DOUBLE` |
| `COUNT` | Counts the number of rows in the result set. If the DISTINCT keyword is used it counts the number of rows with distinct values for the passed in expression. | `COUNT([DISTINCT] ANY) -> LONG` |
| `LISTAGG` | Transforms non-null values from a group of rows into a list of values that are delimited by a configurable separator. A max\_length can be supplied with an optional default value if the max\_length is exceeded. | `LISTAGG(ANY[, LONG max_length[, STRING separator[, STRING on_overflow]]]) -> STRING` |
| `MAX` | Returns the maximum value in the result set group for the expression. | `MAX(ANY) -> ANY` |
| `MEDIAN` | Returns the median value in the result set group for the expression. Only works on numeric types. | `MEDIAN(NUMERIC) -> NUMERIC` |
| `MIN` | Returns the minimum value in the result set group for the expression. | `MIN(ANY) -> ANY` |
| `STDDEV` | Returns the statistical sample standard deviation in the result set group for the expression. Only works on numeric types. | `STDDEV(NUMERIC) -> DOUBLE` |
| `STDDEV_POP` | Returns the statistical population standard deviation in the result set group for the expression. Only works on numeric types. | `STDDEV(NUMERIC) -> DOUBLE` |
| `SUM` | Returns the sum of all values in the result set group for the expression. Only works on numeric types. | `SUM(NUMERIC) -> NUMERIC` |
| `VAR_POP` | Returns the population variance in the result set group for the expression. Only works on numeric types. | `VAR_POP(NUMERIC) -> DOUBLE` |
| `CORR` | Returns the coefficient of correlation in the result set group for the expression. Only works on numeric types. | `CORR(NUMERIC) -> DOUBLE` |


Analytic Functions
------------------




| Function Name | Description | Structure |
| --- | --- | --- |
| `FIRST_VALUE` | Returns the first value in the partition for a given expression. If a window order by clause is not specified the value returned is not guaranteed to be consistent. | `FIRST_VALUE(ANY) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> ANY` |
| `LAG` | Returns the value of an expression in previous rows based on the offset provided (default 1). Optionally the user can supply a default value if the offset falls out of the range of the partition. | `LAG(ANY[, LONG[, ANY]]) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> ANY` |
| `LEAD` | Returns the value of an expression in subsequent rows based on the offset provided (default 1). Optionally the user can supply a default value if the offset falls out of the range of the partition. | `LEAD(ANY[, LONG[, ANY]]) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> ANY` |
| `LAST_VALUE` | Returns the last value in the partition for a given expression. If a window order by clause is not specified the value returned is not guaranteed to be consistent. | `LAST_VALUE(ANY) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> ANY` |
| `MAX` | Returns the maximum value of an expression within a partition. An order by clause can be supplied and if so the max will be calculated only with values previous to the current row based on the ordering. | `MAX(ANY) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]])` |
| `MIN` | Returns the minimum value of an expression within a partition. An order by clause can be supplied and if so the min will be calculated only with values previous to the current row based on the ordering. | `MIN(ANY) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]])` |
| `NTILE` | Equally divides an ordered data set (partition) into a {value} number of subsets within a window, where the subsets are numbered 1 through the value in parameter constant‑value. For example, if constant‑value= 4 and the partition contains 20 rows, NTILE divides the partition rows into four equal subsets of five rows. NTILE assigns each row to a subset by giving row a number from 1 to 4. The rows in the first subset are assigned 1, the next five are assigned 2, and so on.
If the number of partition rows is not evenly divisible by the number of subsets, the rows are distributed so no subset is more than one row larger than any other subset, and the lowest subsets have extra rows. For example, if constant‑value= 4 and the number of rows = 21, the first subset has six rows, the second subset has five rows, and so on.
If the number of subsets is greater than the number of rows, then a number of subsets equal to the number of rows is filled, and the remaining subsets are empty. | `NTILE(LONG value) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> LONG` |
| `PERCENTILE` | Simplified syntax for calculating a percentile. It takes in an expression and a percentile value and translates it into an analytic expression that is partitioned by the group by clause. | `PERCENTILE(ANY expression, DOUBLE percentile) -> ANY` |
| `PERCENTILE_CONT` | Returns the value that would fall into the specified percentile among a set of values in each partition. | `NTILE(DOUBLE percentile) WITHIN GROUP ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> ANY` |
| `RANK` | Ranks each row from 1 to partition row count based on the order clause in the over expression. | `RANK() OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> LONG` |
| `STDDEV` | Similar to `Aggregate STDDEV` but applies to a partition in the result set. | `STDDEV(NUMERIC) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> DOUBLE` |
| `STDDEV_POP` | Similar to `Aggregate STDDEV_POP` but applies to a partition in the result set. | `STDDEV_POP(NUMERIC) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> DOUBLE` |
| `SUM` | Sums the values in a partition. If an order by is included the sum will only include values at or preceding the current row according to that order. | `SUM(NUMERIC) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> NUMERIC` |
| `VAR_POP` | Similar to `Aggregate VAR_POP` but applies to a partition in the result set. | `VAR_POP(NUMERIC) OVER ([PARTITION BY ANY] [ORDER BY ANY [ASC|DESC]]) -> DOUBLE` |

