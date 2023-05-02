

Intro
-------

There are two available tiles in the Aggregate tab of Magic ETL DataFlows. These include:

 Group By
* Rank & Window

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.

*Important:**
 There are significant behavioral differences in the new Magic ETL.


 Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.

*Failure to do so may risk an unintended change to your DataFlow’s behavior.**

Group By Tile
---------------


 The Group By tile lets you aggregate values from multiple columns into one column. For example, you could calculate the average sales per product or get the number of yellow shirts in stock.

*Video - Using Group By in Magic ETL**

*To configure the Group By tile,**

. Click the
 **Group By**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the columns in the grouping.
4. For each column you want to add, do the following:

1. Enter the name of the new column.
	2. Select the columns to aggregate and fill the new column.
	3. Select the aggregation type to use.


	|
	 Type
	  |
	 Description
	  |
	 Data Types Available For
	  |
	| --- | --- | --- |
	|
	 Count
	  |
	 Returns the number of non-null values in the column.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Count including nulls
	  |
	 Returns the number of all values in the column, including nulls.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Count distinct
	  |
	 Returns the number of unique values in the column.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 First non-null value
	  |
	 Returns the first non-null value.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Last non-null value
	  |
	 Returns the last non-null value.
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 First value
	  |
	 Returns the first value (including null).
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Last value
	  |
	 Returns the last value (including null).
	  |
	 Decimal, Whole Number, Text, Date
	  |
	|
	 Sum
	  |
	 Sums all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Average
	  |
	 Returns the average of all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Median
	  |
	 Returns the median of all of the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Minimum
	  |
	 Returns the minimum value in the column.
	  |
	 Decimal, Whole Number, Date
	  |
	|
	 Maximum
	  |
	 Returns the maximum value in the column.
	  |
	 Decimal, Whole Number, Date
	  |
	|
	 Standard deviation
	  |
	 Returns the standard deviation for the values in the column.
	  |
	 Decimal, Whole Number
	  |
	|
	 Combine strings separated by ,
	  |
	 Combines all of the text values in the column, separating them with commas.
	  |
	 Text
	  |
	4. (Conditional) If you want to add a column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Rank & Window Tile
--------------------


 The Rank & Window tile lets you create new columns by applying any of several rank and window functions to columns. For all of these actions, you first define your function, then specify the column the function is to be ordered by, and finally indicate whether the results in the new column should be in ascending or descending order.


 Rank & Window functions are categorized into three types: Ranking, Framed, and Offset.


 For more information about all of the functions described in this section, see

http://docs.aws.amazon.com/redshift/latest/dg/c\_Window\_functions.html

.

*Video - Rank & Window Functions in Magic ETL**


###
 Understanding Partitions

All functions also allow you to optionally specify a column to use as a partition. For example, if you had a series column called "State," selecting "State" as the partition would cause the values in your new column to be divided by state. This is shown in the following example, wherein values in the "Amount" column are ranked in descending order and partitioned by state:

Notice that the two amounts for Connecticut ("CT") are ranked first, followed by the five amounts for Delaware ("DE"), and so on.


 Ranking Functions
-------------------

Ranking functions derive a ranking number for each value in a selected column and display it in a new column. There are three available ranking functions: Rank, Dense Rank, and Row Number.

##
 Rank

The Rank function assigns a rank number to each value in the selected column. If any cells in the column contain the same value, those cells are given the same ranking number, and a "gap" appears in the numbering depending on how many numbers were skipped. For example, if the first three cells in the column had a value of 100 and the next cell had a value of 200 and the values were set to be in ascending order, the first three cells would be ranked "1" and the fourth cell would be ranked "4."


 The following screenshot shows an example of this:

Because the first three states have the same $ value, all are ranked as 1. Rank numbers 2 and 3 are then skipped. The next five states also have the same value, and are all ranked as 4, and so on.


**To configure the Rank action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the ranking results (such as "Rank").
5. In the
 **Select function type**
 menu, select
 **Rank**
 .
6. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
7. In Step 2 of the dialog, select the column you want to rank. (A value column is recommended.)
8. In Step 3 of the dialog, select the order you want the values in the column to be ranked in.
9. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


###
 Dense Rank

The Dense Rank function is the same as the Rank function, with one important difference. If any cells in the column contain the same value, those cells are given the same ranking number, as in a "Rank" function; however, the numbering continues as normal to the next cell (i.e. no "gap" appears). For example, if the first three cells in the column had a value of 100 and the next cell had a value of 200 and the values were set to be in ascending order, the first three cells would be ranked "1" and the fourth cell would be ranked "2."


 The following screenshot shows an example of this:

Because the first three states have the same $ value, all are ranked as 1. The next five states also have the same $ value and are ranked as 2, and so on.


**To configure the Dense Rank action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the ranking results (such as "Rank").
5. In the
 **Select function type**
 menu, select
 **Dense Rank**
 .
6. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
7. In Step 2 of the dialog, select the column you want to rank. (A value column is recommended.)
8. In Step 3 of the dialog, select the order you want the values in the column to be ranked in.
9. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


###
 Row Number

The Row Number function returns the row numbers of all values in the selected column. Note that when partitioning is used, rows take the number of their row within the partition group,
 *not*
 necessarily the row number of the DataSet. This is shown in the following screenshot, in which the row numbering derived from the Row Number function restarts with each new partition. Thus, beginning with row 4, the derived row numbers are not the same as the DataSet row numbers.

*To configure the Row Numbers action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the ranking results (such as "Row Number").
5. In the
 **Select function type**
 menu, select
 **Row Number**
 .
6. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
7. In Step 2 of the dialog, select the column you want to derive row numbers for.
8. In Step 3 of the dialog, select the order you want the values in the column to be sorted in.
9. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)

Framed Functions
------------------

Framed functions take a mathematical function and apply it to a cell in a column, along with a specified number of cells before it ("Preceding") and after it ("Following"). The derived values appear in a new column.


 The following simple example shows how this works. For this example, the user has selected the Sum function and has indicated a Preceding value of 1 and a Following value of 2.

In the example, each value in the "Original Value" column is added to the one cell above it and the two cells below it, and the result appears in the same row in the "Derived Value" column. So for row 5, 3 is added to 1 (in row 4), 5 (in row 6), and 1 (in row 7). The total, 10, appears in the "Derived Value" column in row 5. If there are not enough values above or below a given value to include in the calculation, these are simply omitted. For example, for row 7 there is only one Following value, so the equation simply becomes 5 + 1 + 2 = 8.


 When partitioning is applied, partitions are honored in functions. In the following example, the user has selected Sum and indicated a Preceding value of 1 and a Following value of 2, just as in the previous example. However, he also sets the "Class" column as a partition.

Because of the grouping of rows thanks to the partition, some of the values are summed differently. For example, in row 4, only one Following value is available because the partition separates all "B" values into another group. So the equation for this row becomes 2 + 1 + 3 = 6. Likewise, for row 6, only the two Following values are available because of the partition; therefore, 5 + 1 + 2 = 8.


 For an explanation of partitioning, see

Understanding Partitions

at the top of this page.

##
 Average

The Average function takes the average of a given cell and its indicated Preceding and Following values. In the following example, the user has applied the Average function to the "Amount" column, set Preceding and Following values of 2, and set the "Cust" column as a partition.

*To configure the Average action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the derived values.


 It is suggested you pick a name indicating the number of Preceding and Following values, such as "Average (2P and 2F)."
5. In the
 **Select function type**
 menu, select
 **Average**
 .


 Two new menus appear after you select your function type.
6. In the
 **Select column**
 menu, select the column with values that will be averaged.
7. In the
 **Preceding**
 and
 **Following**
 fields, enter the number of Preceding and Following values you want to include in your averages.
8. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
9. In Step 2 of the dialog, select the column you want your order to be based on.
10. In Step 3 of the dialog, select the order you want the values in the new column to be sorted in.
11. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


###
 Count

The Count function returns a count of a given cell and its indicated Preceding and Following values. In the following example, the user has applied the Count function to the "Amount" column, set Preceding and Following values of 2, and set the "Cust" column as a partition.

*To configure the Count action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the derived values.


 It is suggested you pick a name indicating the number of Preceding and Following values, such as "Count (2P and 2F)."
5. In the
 **Select function type**
 menu, select
 **Count**
 .


 Two new menus appear after you select your function type.
6. In the
 **Select column**
 menu, select the column with values that will be counted.
7. In the
 **Preceding**
 and
 **Following**
 fields, enter the number of Preceding and Following values you want to include in your counts.
8. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
9. In Step 2 of the dialog, select the column you want your order to be based on.
10. In Step 3 of the dialog, select the order you want the values in the new column to be sorted in.
11. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


###
 Sum

The Sum function returns a sum of a given cell with its indicated Preceding and Following values. In the following example, the user has applied the Sum function to the "Amount" column, set Preceding and Following values of 2, and set the "Cust" column as a partition.

*To configure the Sum action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the derived values.


 It is suggested you pick a name indicating the number of Preceding and Following values, such as "Sum (2P and 2F)."
5. In the
 **Select function type**
 menu, select
 **Sum**
 .


 Two new menus appear after you select your function type.
6. In the
 **Select column**
 menu, select the column with values that will be summed.
7. In the
 **Preceding**
 and
 **Following**
 fields, enter the number of Preceding and Following values you want to include in your totals.
8. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
9. In Step 2 of the dialog, select the column you want your order to be based on.
10. In Step 3 of the dialog, select the order you want the values in the new column to be sorted in.
11. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)

Offset Functions
------------------

Offset functions add a new column to your DataSet in which values are the same as those in a selected column
 *but*
 offset by a specified number of rows. Offset functions come in two types: the Lag function, in which the values in the new column are offset
 *after*
 the values in the original column, and the Lead function, in which the values in the new column are offset
 *before*
 the values in the original column. In both Lag and Lead functions, partitions are honored.

##
 Lag

In a Lag function, the values in your new column follow the values in your original column after a specified offset. In the following example, a Lag of 3 has been applied, and the "Cust" column has been added as a partition.

Notice that an offset of 3 rows has been inserted between the values in the "Amount" column and the matching values in the "Lag" column. Also, because of the partition, rows 13 to 15 are the first 3 rows in the "Leo, Inc." grouping, so their cells in the "Lag" column appear blank.


**To configure the Lag action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the derived values.


 It is suggested you pick a name indicating the offset value of the lag.
5. In the
 **Select function type**
 menu, select
 **Lag**
 .


 Two new menus appear after you select your function type.
6. In the
 **Select column**
 menu, select the column with values that will appear in the new column.
7. In the
 **What rows should be included**
 field, enter the desired offset value.
8. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
9. In Step 2 of the dialog, select the column you want your order to be based on.
10. In Step 3 of the dialog, select the order you want the values in the new column to be sorted in.
11. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


###
 Lead

In a Lead function, the values in your new column precede the values in your original column after a specified offset. In the following example, a Lead of 3 has been applied, and the "Cust" column has been added as a partition.

Notice that an offset of 3 rows has been inserted between the values in the "Amount" column and the matching values in the "Lead" column. Also, because of the partition, rows 17 to 19 are the last 3 rows in the "Leo, Inc." grouping, so their cells in the "Lead" column appear blank.


**To configure the Lead action,**

. Click the
 **Rank & Window**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Click
 **Add Function**
 .
4. Add a name for the new column that will contain the derived values.


 It is suggested you pick a name indicating the offset value of the lead.
5. In the
 **Select function type**
 menu, select
 **Lead**
 .


 Two new menus appear after you select your function type.
6. In the
 **Select column**
 menu, select the column with values that will appear in the new column.
7. In the
 **What rows should be included**
 field, enter the desired offset value.
8. Click the
 **Apply**
 button in the top right corner of the dialog.


 Three new steps appear.
9. In Step 2 of the dialog, select the column you want your order to be based on.
10. In Step 3 of the dialog, select the order you want the values in the new column to be sorted in.
11. (Optional) In Step 4 of the dialog, select the column to use as a partition, if any. (For an explanation of partitioning, see

Understanding Partitions

at the top of this page.)


