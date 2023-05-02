

Intro
-------

Get answers to frequently asked questions about Beast Mode.

####
 How do I get started with Beast Mode?

For detailed information about adding calculations using Beast Mode, see

Beast Mode Functions Reference Guide

.

####
 Why am I getting an "Invalid Query" error when I try to save my Beast Mode calculation?

Here are some common reasons why you might have received an Invalid Query error as a result of improper practices in setting up a Beast Mode:

 Column names need to be surrounded by back tics:

`column`

. Users commonly use single quote marks instead of the back tic, and this creates the error.
* A string value needs to be surrounded by single quotes:

‘text’

.
* A case statement always needs to have a

CASE

,

WHEN

,

THEN

, and an

END.

Here is an example of a basic case statement:


`CASE WHEN `column1` = ‘good’ THEN ‘Yes’ ELSE ‘No’`
`END`


 The

ELSE

portion is optional; if there is no

ELSE

then the value will be

NULL

if it doesn’t match the first portion.

If you have additional questions about how to implement functions properly in Beast Mode, review this article:

Beast Mode Functions Reference Guide


#####
 Can I use "AND" operators in Beast Mode?

Yes. For example, you could do the following within a CASE function:


`case when `Name` like 'Ca%' AND `id` < 10 then 0 else 1 end`

####
 Can I create custom or multiple summary numbers using Beast Mode?

Yes. For information and examples, see

Sample Beast Mode Calculations -- Creating a custom summary number

.

####
 Can I do "value summing" within Beast Mode?

Yes, this is possible. For example:


`CASE WHEN `Status` in ('New Sales','Renewed') THEN SUM(`Revenue`)`


`ELSE 0`


`END`


 Be aware, however, that you will probably not get the summed value you want, since the SUM takes place within the cell instead of the column. If this doesn't work for you, consider using a Summary Number instead of Beast Mode.

####
 Can I do numerical comparisons using Beast Mode? For example, could I create a CASE statement to tell if a string is between a range of numbers?

No. So the following Beast Mode CASE statement would fail:


`case when`


`postcode > 0 then 1`


`else 0`


`end`

####
 How do I filter on multiple columns and conditions?

Say you want to see how many client upsell opportunities closed (won or paused), but with the native Domo filter, you can't apply multiple conditions to a row-level filter. To filter on multiple non-inclusive columns and conditions, you can create a logical Beast Mode calculation.


 For this situation, the Best Mode would look like this:


`CASE`


`WHEN `opportunity\_type` = ‘upsell’ AND `opportunity\_won` = ‘true’ THEN ‘Yes’`


`WHEN `opportunity\_type` = ‘upsell’ AND `opportunity\_paused` = ‘true’ THEN ‘Yes’`


`ELSE ‘No’`


`END`

####
 How do I filter out certain dates?

Say you want to see how many closed opportunities were won by day in a bar chart, but you want to filter out outliers, such as opportunities that were won within 10 days. To do this, you will want to create a Beast Mode calculation to use in the
 **Filter**
 field that will calculate the time from opportunity open to closed and then categorize them as “Yes” or “No” based on whether or not they closed within 10 days.


 The Beast Mode you would create to this could be named “Opty Closed within 10 Days?” and look like this:


`CASE`


`WHEN DATEDIFF(`Opportunity\_Closed\_Date`,`Opportunity\_Open\_Date`) <= 10 THEN ‘Yes’`


`WHEN DATEDIFF(`Opportunity\_Closed\_Date`,`Opportunity\_Open\_Date`) > 10 THEN ‘No’`


`ELSE ‘Outlier’`


`END`

####
 How do I find the difference between two date columns without including weekends?

Use a

DATEDIFF

function then subtract 2 for every week.

####
 How do I filter data so the summary number matches the value displayed in the card?

Say you have a map card of the United States that calculates the sales amount broken out by state, and the summary number shows the total sales amount. However, the total sales amount in the card legend for the United States is lower than the summary number amount. The reason the sales amount in the Summary Number is larger is because the summary number takes into account all sales amounts regardless of country, and the card legend only shows the sales amounts for the United States. For this scenario, you will need to create a Beast Mode calculation that filters out the non-United States sales amounts.


 The Beast Mode to do this would look like this:


`CASE`


`WHEN `Country` = ‘United States’ THEN ‘Yes’`


`ELSE ‘No’`


`END`


 For more information about summary numbers, see

Configuring Your Chart Summary Number

.

####
 Can I do "percent of total" functions in Beast Mode?

No, but you can insert a data label into your chart that contains the percent of total value by doing the following:

. In Analyzer, open
 **Chart Properties**
 .
2. In
 **Data Label Settings**
 , enter

%\_PERCENT\_OF\_TOTAL

in the
 **Text**
 field.


#####
 Why can't I put Beast Mode calculations in the Filter field?


 The filter in the Analyzer is based on row-level filtering on the DataSet level, so it doesn’t filter on aggregates. To fix this, you can use the Magic ETL or SQL DataFlow tools to group and aggregate the columns for card and filtering usage. For more information about these tools, see

Prepare

.


#####

Can I create a rolling average calculation using Beast Mode?

You cannot create a rolling average calculation using Beast Mode, but you can create a card that displays a quarterly average. Or you can create a DataFlow that will calculate this.


**Why Beast Mode Can’t Do This:**


 A Beast Mode function is calculated on either a single record or group of records, depending on how the data on the card is being grouped. Because of that, the calculation doesn't have a way of referencing other records. For example, if you’re looking for an average for April, you can't create a calculation that looks back at other records that come before April and have it sum these for you.

*Alternative 1: Show a quarterly average on a card.**

Follow these steps to show a quarterly average on a card.


**To show a quarterly average on a card,**

. Set your date grain to "by Quarter" at the top of the card.


 For more information, see

Adding Filters to Your Chart

.
2. Add your date and value columns to the x- and y-axis, respectively.


 For more information, see

Applying DataSet Columns to Your Chart

.
3. Set your aggregation option for your value column to
 **AVG**
 .


**Alternative 2: Create a DataFlow calculation**

You can create this calculation in a DataFlow. The transform would look something like this:


`SELECT`


``DateField``


`,`ValueField``


`,(SELECT`


`SUM(`ValueField`) / COUNT(*)`


`FROM`


`TABLE t2`


`WHERE`


`t2.`DateField` > LAST_DAY(DATE_SUB(t1.`DateField`, INTERVAL 3 MONTH))`


`AND t2.`DateField` < LAST_DAY(t1.`DateField`) ) AS `Rolling_Average``


`FROM`


`TABLE t1`


 This transform assumes that the date field contains a date representing the month, e.g. "2015-01-01" for January.


 In the above calculation, you’re doing the following:

. Using a subquery to retrieve the sum of the last 3 months’ worth of values,
2. Dividing them by the number of records it found in that range, and
3. Calling the field the "Rolling\_Average" field.

You would also need to rename your field names for "DateField" and "ValueField" (and add any others you want in the resulting DataSet) and replace “TABLE” with the DataSet table you're using as your input.

For more information about


 DataFlows


 , see


 Prepare


 .


#####

How do I create Conditional Summing using Beast Mode?


 When using a

CASE

statement to create a calculation, you may want to aggregate the results of this

CASE

statement. Unfortunately, many users make the mistake of using a SUM function inside of the CASE statement:

CASE`


`WHEN `Column\_1` = 'Value\_1’`


`THEN SUM(`Column\_1`)`


`END`

Instead, you need to “wrap” the entire statement in a SUM function for it to execute properly:

SUM(CASE`


`WHEN `Column\_1` = 'Value\_1’`


`THEN SUM(`Column\_1`)`


`END)`

####

How can I aggregate a Beast Mode calculation to make it available as my Summary Number?


 Users commonly attempt to use a Beast Mode calculation containing a

CASE

statement as a Summary Number. For a value to be used as a Summary Number, that value must have a
 *numeric*
 data type. So if a calculation contains
 *only*
 a

CASE

statement, it will be seen by Domo as a
 *string*
 data type rather than a numeric data type.


 The solution to adjusting a common CASE statement calculation into a field with a numeric data type is identical to our solution for conditional summing. Simply “wrap” the entire statement in an aggregation function, such as SUM or COUNT, like so:

SUM(CASE`


`WHEN `Column\_1` = 'Value\_1’`


`THEN SUM(`Column\_1`)`


`END)`


 For more information about summary numbers, see

Configuring Your Chart Summary Number

.

####
 How do I aggregate an existing column using Beast Mode?

Sometimes users think that the only way to aggregate a column of data is by using a Beast Mode calculation. A better way is to use tools within Domo’s Analyzer to create aggregations of a value being used on the x-axis, y-axis, or series of the card in question. For more information, see

Aggregating your data

.

####
 How do I sort month names chronologically on the x-axis?


 Say you want to display full month names on the x-axis of a card instead of the Domo default view of “Year – Abbreviated Month” (for example, 2015 – Jan), but when you apply the month name field to the card, the months are out of order and won’t sort. The month names sort alphabetically instead of chronologically because the month name column is a "string" data type. You can fix this by assigning a numeric value to each month name and then using that as the sort.


 The Beast Mode to do this would look like this:

CASE`


`WHEN `MonthName` = ‘January’ THEN 1`


`WHEN `MonthName` = ‘February’ THEN 2`


`WHEN `MonthName` = ‘March’ THEN 3`


`WHEN `MonthName` = ‘April’ THEN 4`


`WHEN `MonthName` = ‘May’ THEN 5`


`WHEN `MonthName` = ‘June’ THEN 6`


`WHEN `MonthName` = ‘July’ THEN 7`


`WHEN `MonthName` = ‘August’ THEN 8`


`WHEN `MonthName` = ‘September’ THEN 9`


`WHEN `MonthName` = ‘October’ THEN 10`


`WHEN `MonthName` = ‘November’ THEN 11`


`WHEN `MonthName` = ‘December’ THEN 12`


`END`


 For more information about sorting data in a chart, see

Sorting the Data in Your Chart

.

####
 How do I format dates on the x-axis for year-over-year comparisons?


 Say you want to do a Year-over-Year comparison in a card, but you aren’t sure where to begin. Perhaps the x-axis is showing multiple years instead of one, so a comparison is not possible. Or perhaps you are getting the error “No Data Exists” when applying the year-over-year comparison series.


 To do a year-over-year comparison, you’ll need to create the three following Beast Mode calculations:


1. A calculation named "Months" that formats the dates on the x-axis so it shows just the month and not the year:


`DATE_FORMAT(`DateColumn`,'%M')`
2. A calculation named "Year over Year" that creates a series in which values are broken out by year:

YEAR(`DateColumn`)`


1. A calculation named "Month Sort" that sorts the months on the x-axis:

MONTH(`DateColumn`)`


#####
 How do I change a date column from a "string" data type to a "date" data type?


 Say you want to use dates in your card, but the date column you want to use is being read as a “string” data type, which is causing the date values in the column to be non-sorted and non-sortable in the card. You can change the data type of a column containing dates from a string value to a date value using a Beast Mode calculation, as follows:

STR\_TO\_DATE(`DateColumn`,’%d/%m/%Y’)`

*Note:**
 Be sure only date values, such as 1/1/2016, are used as values in the column. Otherwise, the calculation won’t work.

For more information about data types, see

Understanding Chart Data

.

####
 How do I format date values on the x-axis?


 Say you want to view the date values in a specific format instead of the standard card format. For example, your card is visualizing the current month by day, so the date values on the x-axis are showing the year, month, and day (for example, 2016-01-15). However, you may only want to see the day and month values (01-15).


 You can change the display of date values so you only see the day and month, using the DATE\_FORMAT() function to reformat the date values:

DATE\_FORMAT(`DateColumn`,’%d-%m’)`


 You can also format dates in using
 **Chart Properties**
 . For more information, see

Changing the Date Format in Your Chart

.

####

How do I change the date column to represent a different time zone?


 You can adjust your company time zone in the Admin Settings, as described here:

Setting Your Company Time Zone

.


 Sometimes, though, you’ll need to use a Beast Mode when time zones don’t match up between DataSets.


 Say the dates in the date column in a card are based on EST, but your company is based on PST, and you want to see the data based on PST instead of EST. You can shift the dates values to another time zone by adding or subtracting time from the date values depending on what time zone you are switching it to. The functions that add and subtract time are

DATE\_ADD()

and

DATE\_SUB()

. For example, switching the date values from EST to PST would require you to subtract 3 hours, and can be done with the Beast Mode calculation like the one below:

DATE\_SUB(`DateColumn`, interval 3 HOUR)`

####
 How can I use Beast Mode to calculate percent (%) change from the previous year to the current year?

This topic is discussed here:

Sample Beast Mode Calculations - Calculating Percent Change from the Previous Year to the Current Year


 .


#####
 How do I create a period-over-period graph using Beast Mode?

This topic is discussed here:

Sample Beast Mode Calculations - Creating a Period-over-Period Graph


 .


#####
 How do I divide by NULL or zero?

You can divide by NULL or zero by using the following case statement:


`CASE`


`WHEN iFNULL(`value2`,0) = 0 THEN 0`


`ELSE `value1` / `value2``


`END`

####
 How do I create conditional summing?

When using a CASE statement to create a calculation, you may want to aggregate the results of this CASE statement. Unfortunately, many users make the mistake of using a SUM function inside of the CASE statement, like the following:


`CASE WHEN `Column_1` = 'Value_1’ THEN SUM(`Column_1`) END`


 Instead, you need to “wrap” the entire statement in a SUM function for it to execute properly:


`SUM(CASE WHEN `Column_1` = 'Value_1’ THEN SUM(`Column_1`) END)`

####
 I've added a shared calculation but it only seems to show up in new cards. Is there a way to use it in existing cards?

When you share a Beast Mode calculation, it is stored on the data source powering the card. The shared calculation is available in other cards that are powered up by that same data source.

####


 What do I do if my Beast Mode “disappears” after saving?

This issue is most commonly caused by multiple users editing the same card at the same time and overwriting each others' changes. If the Beast Mode is shared on the DataSet, it can also be caused by users editing different cards on the DataSet overwriting each others' changes to the shared Beast Modes on that DataSet.


 This problem can most easily be solved by e


 ither coordinating with other users to make sure you’re not overwriting each others' changes, or by editing at a time when others are not as likely to also be making edits.


 This issue also occurs when you attempt to create Beast Mode calculations on a card in a drill path. Because drill path cards are not actual cards, Beast Mode calculations created in a drill path will not be saved. In order to ensure the calculations are saved, they must be created in the top layer of the card and have the
 **Share Calculation on DataSet**
 checkbox checked. For more information about drill path, see

Adding Drill Path to Your Chart

.

####
 How do I deal with NULL values when adding columns?

If you are trying to SUM the values in a column with NULL values, you need to convert those NULL values to zero using the IFNULL function.


 For example,


`IFNULL(`col`,0)`


 So let's say you had a "Category" column with values "A," "B," and "C," and an "Amount" column with values "20," "10" and an empty cell (which is NULL). When you SUM the Amount column, the IFNULL calculation converts the NULL value to 0 and then applies the SUM as normal.

####
 Can I use links to local file URLs in Beast Mode calculations?

Not at this time.

####
 How does the WEEKDAY function work in Beast Mode?

The WEEKDAY function is not supported in Beast Mode. If WEEKDAY is used, it is replaced with the functionality of DAYOFWEEK.

####
 Why can't I delete a Beast Mode calculation from a card?

When a Beast Mode calculation is shared on a DataSet, it can be used on multiple cards. If the calculation is being used in any of those cards (filter, series, sort, date column, etc.), it can't be deleted until the calculation is no longer being used by any cards. If you try to remove that calculation, you will get an error message listing all of the cards using the calculation. You should also check the drill paths on each card, as they may be hiding calculations that you aren't aware are being used.

####
 Why does multiplying two large positive numbers result in a negative number?

Numeric columns are either 64 bit LONG, 64 bit FIXED DECIMAL , or FLOAT (DECIMAL vs DOUBLE) datatypes. When a mathematical function results in a numerical value larger than maximum for the datatype, then it will overflow to a negative number.

