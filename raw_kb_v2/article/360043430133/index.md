

Intro
-------

This article lists a number of period-over-period calculations you can try out in Beast Mode. Many of these same calculations may also be possible using our

Period-over-Period charting functionality

.


 Creating a Period-over-Period Graph
-------------------------------------

You can create a period-over-period graph in Domo using one Beast Mode calculation for the x-axis (date) and another Beast Mode calculation for the series. You can also create a Beast Mode calculation to limit the date ranges shown on the card.


 Start creating your own period-over-period Beast Mode calculations using the samples provided below. The following examples show you how to create a year-over-year graph as a demonstration.


**Step 1: Create the x-axis (date) calculation (REQUIRED)**


 In this step you project the dates from previous periods, such as years, onto the current period. In this way, data from different periods will appear on the same range on the x-axis. This Beast Mode calculation replaces the year in a date value with the current year.


`STR_TO_DATE(CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(`Date_Field`, '%m-%d') ), '%Y-%m-%d')`


**Step 2: Create the series (year) calculation (REQUIRED)**


 Next you create a series that represents each period’s data. This Beast Mode calculation lets you create a series that represents the data for each year.


`YEAR(`Date_Field`)`


**Step 3: Create calculations for filtering (OPTIONAL)**


 If you want to see a time frame besides a full year (quarter-over-quarter, month-over-month, etc.), you can create a filter that allows you to get just the date range or period you’re interested in.


 There are two different methods for creating Beast Mode calculations for filtering. The first method lets you create a filter for a specific date range. The second method lets you create a filter for a specified number of previous days, months, etc.


*Specific Date Range*


 Use this Beast Mode calculation to create a filter for a specific date range.


`CASE`


`WHEN CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(`Date_Field `, '%m-%d') ) >= '2015-07-01' AND CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(`Date_Field `, '%m-%d') ) <= '2015-11-30' THEN 'TRUE'`


`ELSE 'FALSE'`


`END`


*Last ‘X’ Days, Months, etc.*


 Use this Beast Mode calculation to create a filter for a specified number of periods back. Replace “3 MONTH” with whatever interval you’re interested in, e.g. “1 DAY,” “4 WEEK,” etc.  Just use the number and the singular version of the unit.


`CASE`


`WHEN STR_TO_DATE(CONCAT(YEAR(CURRENT_DATE()), '-', DATE_FORMAT(`Date_Field `, '%m-%d') ), '%Y-%m-%d') >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH)  THEN 'TRUE'`


`ELSE 'FALSE'`


`END`


 You can use variations of the above filters to limit the range in whatever way makes the most sense to you and your audience.


 Calculating Week-over-Week Change
-----------------------------------

Use the following code to create a calculation that shows week-over-week change. The following example includes 4 weeks prior (aligned on days), and 52 weeks prior (aligned on days). Change the values to the time periods you want.


 X Axis is Date - has to be "Common Date":


`case


 when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 and DateDiff(Current_Date(), `MyDateColumn`) > 0 then Date_Format(`MyDateColumn`, '%b %e')`


`when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < (28 + 28) and DateDiff(Current_Date(), `MyDateColumn`) > 28 then Date_Format(AddDate(`MyDateColumn`,28), '%b %e')`


`when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 + (52 * 7) and DateDiff(Current_Date(), `MyDateColumn`) > (52 * 7) then Date_Format(AddDate(`MyDateColumn`,52 * 7), '%b %e')`


`end`


 Filter to "Last 28 Days":


`case


 when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 and DateDiff(Current_Date(), `MyDateColumn`) > 0 then 'Yes'`


`when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < (28 + 28) and DateDiff(Current_Date(), `MyDateColumn`) > 28 then 'Yes'`


`when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 + (52 * 7) and DateDiff(Current_Date(), `MyDateColumn`) > (52 * 7) then 'Yes'


 else 'No'


 end`


 Pick your metric (in this example, "Visits"), then create a column called "Series":


`case


 when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 and DateDiff(Current_Date(), `MyDateColumn`) > 0 then 'Last 28 Days'`


`when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < (28 + 28) and DateDiff(Current_Date(), `MyDateColumn`) > 28 then '4 Weeks Prior'`


`when when DateDiff(AddDate(Current_Date(), -1), `MyDateColumn`) < 28 + (52 * 7) and DateDiff(Current_Date(), `MyDateColumn`) > (52 * 7) then '52 Weeks Prior'


 end`


 Calculating Percent Change from the Previous Year to the Current Year
-----------------------------------------------------------------------

Say you have a card that shows the last 24 months, grouped by month. You have the year set as the series. In the summary number you want to show the percent change from January through the current month of the previous year compared to January through the current month of the current year. To achieve this, you can create the following Beast Mode calculation:


`(SUM(CASE WHEN YEAR('Date') = YEAR('NOW') THEN 'Total Sales' ELSE 0 END)-SUM(CASE WHEN YEAR('Date')= YEAR(DATE_SUB('NOW', INTERVAL 1 YEAR))AND month('Date') <= month('NOW') THEN 'Total Sales' ELSE 0 END))/`


`SUM(CASE WHEN YEAR('Date')= YEAR(DATE_SUB('NOW', INTERVAL 1 YEAR)) AND month('Date') <= month('NOW') THEN 'Total Sales' ELSE 0 END)`


 This calculation would be useful as a summary number on a card or as the value on a Single Value gauge card. If you’d like to chart the percent change over time, follow the instructions for advanced period-over-period calculations found in the previous section, then create a Beast Mode calculation to find the percent change from the fields created for the previous year’s value and the current year’s value following this formula:


`(This Year’s Value – Last Year’s Value)  / Last Year’s Value`


 Calculating Variance
----------------------


###
 Variance CY-PY

Use the following code to create a calculation for the variance Current Year - Past Year:


`(


 SUM(CASE WHEN YEAR(`MyDateColumn`) = YEAR(CURRENT_DATE()) THEN `Amount` ELSE 0 END)


 - SUM(CASE WHEN YEAR(`MyDateColumn`) = YEAR(CURRENT_DATE()) - 1 THEN `Amount` ELSE 0 END)


 )`

##
 Variance % ((CY - PY)/PY)

Use the following code to create a calculation for the variance % ((Current Year - Past Year) / Past Year):


`(


 (SUM(CASE WHEN YEAR(`MyDateColumn`) = YEAR(CURRENT_DATE()) THEN `Amount` ELSE 0 END)


 - SUM(CASE WHEN YEAR(`MyDateColumn`) = YEAR(CURRENT_DATE()) - 1 THEN `Amount` ELSE 0 END)


 )


 / NULLIF(SUM(CASE WHEN YEAR(`MyDateColumn`) = YEAR(CURRENT_DATE()) - 1 THEN `Amount` ELSE 0 END), 0)


 )`

##
 Year-to-Date Variance

Let's say you have a DataSet with your employee count by store by month. How could you compare the current month's employee count to the year-end count?


 Assuming your card is filtered to the current year, you could create the following Beast Mode calculations:


 Employee Count This Month:


`COUNT(DISTINCT CASE WHEN YEAR(DateColumn) = YEAR(CURRENT_DATE()) AND MONTH(DateColumn) = MONTH(CURRENT_DATE()) THEN `Employee ID` END)`


 Employee Count This Year:


`COUNT(DISTINCT'Employee ID')`


 Employee Count This Year -  Employee Count This Month (YTD Variance):


`COUNT(DISTINCT `Employee Id` - COUNT(DISTINCT CASE WHEN YEAR(DateColumn) = YEAR(CURRENT_DATE()) AND MONTH(DateColumn) = MONTH(CURRENT_DATE()) THEN `Employee ID` END)`


 If you need this data to be trended over time, this solution will require doing some DataFlow work to summarize things at a monthly level with a reference to YTD for each month.


 Calculating Year-over-Year (YOY) with Ratios
----------------------------------------------


 All calculations for ratios must be done in a DataFlow if using this type of comparison.


###
 YOY: Multi-Period Comparison

To create multi-period year-over-year calculations, refer to the following table:


 Period
  |
 Description
  |
 Calculation
  |
| --- | --- | --- |
|
 By Year
  |
 Create a year Beast Mode and plot as category (x-axis on most charts).
  |
 year(`datefield`)
  |
|
 By Quarter
  |
 Create a Quarter Beast Mode and plot as category (x-axis on most charts), and if you’re spanning multiple years, use

year(

`datefield`

)

as the series.
  |
 Quarter(`datefield`)
  |
|
 By Month
  |
 Create a Month Beast Mode and plot as category (x-axis on most charts), and if you’re spanning multiple years, use


 year(`datefield`)


 as the series.
  |
 Month(`datefield`)
  |
|
 By Week
  |
 Create a Week Beast Mode and plot as category (x-axis on most charts), and if you’re spanning multiple years, use


 year(`datefield`)


 as the series.
  |
 WeekofYear(`datefield`)
  |
|
 By Day
  |
 Create a Day Beast Mode and plot as category (x-axis on most charts), and if you’re spanning multiple years, use


 year(`datefield`)


 as the series.
  |
 DayofYear(`datefield`)
  |


###
 YOY: 2-Period Comparison


 ‘This Year’

and

‘Last Year’

can be swapped out for other text or amount fields. When running ratios, amount fields are needed.


 The advantage of using the “Same Series" vs. the “Multiple Series" is that you can consolidate the code using the “Same Series”. However, if you’re swapping out ‘This Year’/‘Last Year’ for amount columns, these need to be separated.

###
 YOY: Full-Year Comparison

To create full-year year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when Year(`Datefield`) = Year(curdate()) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when Year(`Datefield`) = Year(curdate())-1 then 'Last Year' end
  |
|
 Multiple Series - Same Series
  |
 Case year(`Datefield`) when year(curdate()) then 'This Year' when year(curdate())-1 then 'Last Year’ End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when Year(`Datefield`) = Year(curdate()) then `Amountfield` end / Case when Year(`Datefield`) = Year(curdate())-1 then `Amountfield` end) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Year-to-Date (YTD) Comparison

To create year-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 CASE  WHEN year(`Datefield`)=year(curdate())  THEN 'This Year' END
  |
|
 Multiple Series - Previous Year
  |
 CASE  WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (dayofyear(curdate()) >= dayofyear(`Datefield`))) THEN 'Last Year' END
  |
|
 Multiple Series - Same Series
  |
 CASE WHEN year(`Datefield`) = year(curdate()) AND curdate() >= `Datefield` THEN 'This Year’ when ((year(`Datefield`)=(year(curdate()) - 1)) AND (dayofyear(curdate()) >= dayofyear(`Datefield`))) THEN 'Last Year' END
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN year(`Datefield`)=year(curdate())  THEN `Amountfield` END / CASE  WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (dayofyear(curdate()) >= dayofyear(`Datefield`))) THEN `Amountfield` END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Quarter Comparison

To create quarterly year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())-1) then 'Last Year' end
  |
|
 Multiple Series - Same Series
  |
 Case when (Quarter(`Datefield`) = Quarter(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' when (Quarter(`Datefield`) = Quarter(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())) then `Amountfield` end / Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())-1) then `Amountfield` end) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Quarter-to-Date (QTD) Comparison

To create quarter-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate()) and dayofyear(`Datefield`) <= dayofyear(curdate())) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())-1 and dayofyear(`Datefield`) <= dayofyear(curdate())) then 'Last Year' end
  |
|
 Multiple Series - Same Series
  |
 Case when (Quarter(`Datefield`) = Quarter(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' when (Quarter(`Datefield`) = Quarter(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate()) and dayofyear(`Datefield`) <= dayofyear(curdate())) then `Amountfield` end / Case when (quarter(`Datefield`) = quarter(curdate()) and year(`Datefield`) = year(curdate())-1 and dayofyear(`Datefield`) <= dayofyear(curdate())) then`Amountfield` end) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Month Comparison

To create monthly year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate())-1) then 'Last Year' end
  |
|
 Multiple Series - Same Series
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate())) then `Amountfield` end / Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate())-1) then `Amountfield` end) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Month-to-Date (MTD) Comparison

To create month-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then 'This Year'  end
  |
|
 Multiple Series - Previous Year
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year)) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then  'Last Year'  end
  |
|
 Multiple Series - Same Series
  |
 Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then 'This Year' when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year)) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then Last Year' End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then `Amountfield` end / Case when (month(`Datefield`) = month(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year)) and DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate())) then `Amountfield`  end)  -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Week Comparison

To create month-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year’ end
  |
|
 Multiple Series - Previous Year
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Multiple Series - Same Series
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year’ End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

((Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then `Amountfield` end / Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then `Amountfield` End) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####
 YOY: Week-to-Date (WTD) Comparison

To create week-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year)) and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then 'Last Year' End
  |
|
 Multiple Series - Same Series
  |
 Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then 'This Year' when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then 'Last Year’ End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(curdate()) and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then `Amountfield` end / Case when (WEEKOFYEAR(`Datefield`) = WEEKOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year)) and DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate())) then `Amountfield` End) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


####

YOY: Day Comparison

To create week-to-date year-over-year calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Year
  |
 Case when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' end
  |
|
 Multiple Series - Previous Year
  |
 Case when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Multiple Series - Same Series
  |
 Case when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then 'This Year' when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then 'Last Year' End
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(Case when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(curdate())) then `Amountfield` end / Case when (DAYOFYEAR(`Datefield`) = DAYOFYEAR(curdate()) and year(`Datefield`) = year(date\_sub(curdate(), interval 1 year))) then `Amountfield` End) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|

POP Calculations with Ratio Calculations (Current Period vs. Last)
--------------------------------------------------------------------


###
 POP: Quarter-over-Quarter (QOQ) Comparison

To create quarter-over-quarter comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Period
  |
 CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (quarter(`Datefield`)=quarter(CURDATE()))) THEN `Amountfield` END
  |
|
 Multiple Series - Previous Period
  |
 CASE  WHEN (quarter(curdate())=1) THEN (CASE  WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (quarter(`Datefield`)=4)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (quarter(`Datefield`)=(quarter(CURDATE()) -1))) THEN `Amountfield` END ) END
  |
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (quarter(`Datefield`)=quarter(CURDATE()))) THEN `Amountfield` END / CASE  WHEN (quarter(curdate())=1) THEN (CASE  WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (quarter(`Datefield`)=4)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (quarter(`Datefield`)=(quarter(CURDATE()) -1))) THEN `Amountfield` END ) END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###
 POP: QTD Quarter-over-Quarter Comparison

To create quarter-to-date quarter-over-quarter comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series - Current Period
  |
 CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (quarter(`Datefield`)=quarter(CURDATE()))) THEN `Amountfield` END
  |
|
 Multiple Series - Previous Period
  |

MAX(CASE WHEN YEAR(curdate()) / 4 = ROUND((YEAR(curdate()) / 4),0) THEN


 CASE WHEN QUARTER(curdate())=1 THEN (DAYOFYEAR(curdate()) - 1)


 WHEN (QUARTER(curdate())=2) THEN (DAYOFYEAR(curdate()) - 91)


 WHEN (QUARTER(curdate())=3) THEN (DAYOFYEAR(curdate()) - 182)


 WHEN (QUARTER(curdate())=4) THEN (DAYOFYEAR(curdate()) - 273)


 ELSE 0 END


 ELSE CASE


 WHEN QUARTER(curdate())=1 THEN DAYOFYEAR(curdate()) - 1


 WHEN QUARTER(curdate())=2 THEN DAYOFYEAR(curdate()) - 90


 WHEN QUARTER(curdate())=3 THEN DAYOFYEAR(curdate()) - 181


 WHEN QUARTER(curdate())=4 THEN DAYOFYEAR(curdate()) - 272


 ELSE 0 END


 END) \* MAX(CASE WHEN YEAR(curdate()) / 4=ROUND(YEAR(curdate()) / 4,0) THEN


 CASE WHEN (QUARTER(curdate())=1) THEN 91


 WHEN (QUARTER(curdate())=2) THEN 91


 WHEN (QUARTER(curdate())=3) THEN 92


 WHEN (QUARTER(curdate())=4) THEN 92


 ELSE 0  END


 ELSE CASE


 WHEN (QUARTER(curdate())=1) THEN 90


 WHEN (QUARTER(curdate())=2) THEN 91


 WHEN (QUARTER(curdate())=3) THEN 92


 WHEN (QUARTER(curdate())=4) THEN 92


 ELSE 0 END


 END) - MAX(CASE WHEN YEAR(curdate()) / 4=ROUND(YEAR(curdate()) / 4,0) THEN


 CASE WHEN QUARTER(curdate())=1 THEN DAYOFYEAR(curdate()) - 1


 WHEN QUARTER(curdate())=2 THEN DAYOFYEAR(curdate()) - 91


 WHEN QUARTER(curdate())=3 THEN DAYOFYEAR(curdate()) - 182


 WHEN QUARTER(curdate())=4 THEN DAYOFYEAR(curdate()) - 273


 ELSE 0 END


 ELSE CASE


 WHEN QUARTER(curdate())=1 THEN DAYOFYEAR(curdate()) - 1


 WHEN QUARTER(curdate())=2 THEN DAYOFYEAR(curdate()) - 90


 WHEN QUARTER(curdate())=3 THEN DAYOFYEAR(curdate()) - 181


 WHEN QUARTER(curdate())=4 THEN DAYOFYEAR(curdate()) - 272


 ELSE 0 END


 END) + SUM(CASE WHEN QUARTER(curdate())=QUARTER(`Datefield`) AND YEAR(`Datefield`)=YEAR(curdate()) THEN `Amountfield` ELSE 0 END) -


 SUM((CASE WHEN ((QUARTER(curdate())=QUARTER(`Datefield`)) AND (YEAR(`Datefield`)=YEAR(DATE\_SUB(curdate(),INTERVAL 1 QUARTER)))) THEN `Amountfield` ELSE 0 END ))) / SUM((CASE  WHEN QUARTER(DATE\_SUB(curdate(),INTERVAL 1 QUARTER))=QUARTER(`Datefield`) AND YEAR(`Datefield`)=YEAR(DATE\_SUB(curdate(),INTERVAL 1 QUARTER)) THEN `Amountfield` ELSE 0 END ))

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

Take the formula above and insert the previous two sections to get the result.


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###
 POP: Month-over-Month (MOM) Comparison

To create month-over-month comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series
  |

CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=month(CURDATE()))) THEN `Amountfield` END


 CASE  WHEN (month(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (month(`Datefield`)=12)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=(month(CURDATE()) -1))) THEN `Amountfield` END ) END

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=month(CURDATE()))) THEN `Amountfield` END / CASE  WHEN (month(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (month(`Datefield`)=12)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=(month(CURDATE()) -1))) THEN `Amountfield` END ) END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###

POP: Month-to-Date MOM Comparison

To create month-to-date month-over-month comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series
  |

CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=month(CURDATE()))) THEN `Amountfield` END


 CASE WHEN month(curdate()) = 1 THEN CASE WHEN year(`Datefield`) = year(curdate()) - 1 AND month(`Datefield`) = 12 AND DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate()) THEN `Amountfield` END  ELSE CASE  WHEN year(`Datefield`) = year(curdate()) AND month(`Datefield`) = month(curdate())-1 AND DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate()) THEN `Amountfield` END END

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (month(`Datefield`)=month(CURDATE()))) THEN `Amountfield` END / CASE WHEN month(curdate()) = 1 THEN CASE WHEN year(`Datefield`) = year(curdate()) - 1 AND month(`Datefield`) = 12 AND DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate()) THEN `Amountfield` END  ELSE CASE  WHEN year(`Datefield`) = year(curdate()) AND month(`Datefield`) = month(curdate())-1 AND DAYOFMONTH(`Datefield`) <= DAYOFMONTH(curdate()) THEN `Amountfield` END END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###
 POP: Week-over-Week (WOW) Comparison

To create week-over-week comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series
  |

CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=weekofyear(CURDATE()))) THEN `Amountfield` END


 CASE  WHEN (weekofyear(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (weekofyear(`Datefield`)=52)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=(weekofyear(CURDATE()) -1))) THEN `Amountfield` END ) END

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=weekofyear(CURDATE()))) THEN `Amountfield` END / CASE  WHEN (weekofyear(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (weekofyear(`Datefield`)=52)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=(weekofyear(CURDATE()) -1))) THEN `Amountfield` END ) END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###

POP: Week-to-Date WOW Comparison

To create week-to-date week-over-week comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series
  |

CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=weekofyear(CURDATE()))) THEN `Amountfield` END


 CASE WHEN weekofyear(curdate()) = 1 THEN CASE WHEN year(`Datefield`) = year(curdate()) - 1 AND weekofyear(`Datefield`) = 52 AND DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate()) THEN `Amountfield` END ELSE CASE WHEN year(`Datefield`) = year(curdate()) AND weekofyear(`Datefield`) = weekofyear(CURDATE()) -1 AND DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate()) THEN `Amountfield` END END

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (weekofyear(`Datefield`)=weekofyear(CURDATE()))) THEN `Amountfield` END / CASE WHEN weekofyear(curdate()) = 1 THEN CASE WHEN year(`Datefield`) = year(curdate()) - 1 AND weekofyear(`Datefield`) = 52 AND DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate()) THEN `Amountfield` END ELSE CASE WHEN year(`Datefield`) = year(curdate()) AND weekofyear(`Datefield`) = weekofyear(CURDATE()) -1 AND DAYOFWEEK(`Datefield`) <= DAYOFWEEK(curdate()) THEN `Amountfield` END END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


###
 POP: Day-over-Day (DOD) Comparison

To create day-over-day comparison calculations, refer to the following table:


 Type
  |
 Calculation
  |
| --- | --- |
|
 Multiple Series
  |

CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (dayofyear(`Datefield`)=dayofyear(CURDATE()))) THEN `Amountfield` END


 CASE  WHEN (dayofyear(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (dayofyear(`Datefield`)=365)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (dayofyear(`Datefield`)=(dayofyear(CURDATE()) -1))) THEN `Amountfield` END ) END

|
|
 Ratio: % change between the two using the formula (C/P) - 1
  |

(CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (dayofyear(`Datefield`)=dayofyear(CURDATE()))) THEN `Amountfield` END / CASE  WHEN (dayofyear(curdate())=1) THEN (CASE WHEN ((year(`Datefield`)=(year(curdate()) - 1)) AND (dayofyear(`Datefield`)=365)) THEN `Amountfield` END ) ELSE (CASE  WHEN ((year(`Datefield`)=year(curdate())) AND (dayofyear(`Datefield`)=(dayofyear(CURDATE()) -1))) THEN `Amountfield` END ) END) -1


**Note:**
 Can also be done using (C-P)/P but this takes more code.

|


