

Intro
-------


**Note:**
 This article is for the old Magic ETL. For information on the new Magic ETL, see

Magic ETL

.

This article describes in detail all of the
 **Edit Data**
 tiles in Magic ETL, including the following:

 Filter Rows
* Remove Duplicates
* Replace Text
* Set Column Value
* String Operations
* Text Formatting
* Value Mapper

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


 Filter Rows
-------------

The Filter Rows tile lets you include or exclude rows based on specified rules.


**Example**


 For example, the Filter Rows tile transforms this data...

... to this...

... using this configuration:

*To configure the Filter Rows tile,**

. Click the
 **Filter Rows**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select whether to include rows that meet
 *all*
 or
 *any*
 of the rules you define.
4. For each filter rule, do the following:

1. Select a column to filter on.
	2. Select the operation to use.


	 Operation items appear in the list, depending on the type of data in the column to filter on.
	3. Select whether to compare against values in a specific column or a specific value, then do one of the following:

	* (Conditional) If comparing against a column, select the column to use.
		* (Conditional) If comparing against a specific value, enter the value to use.
	4. (Conditional) If you want to add another rule, click
	 **Add Filter Rule**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Remove Duplicates
-------------------

The Remove Duplicates tile lets you remove duplicate rows, based on specific columns.

*Video - Removing Duplicates in Magic ETL**

*Example**


 For example, the Remove Duplicates tile transforms this data...

... to this...

... using this configuration:


**Note:**
 Duplicate rows with the same base margin were removed.

*To configure the Remove Duplicates tile,**

. Ensure that the column with values you want exists in the DataSet.
2. Click the
 **Remove Duplicates**
 tile in the canvas.
3. (Optional) Rename the tile by clicking

, then entering the name you want.
4. For each column with duplicate values you want to remove, do the following:

1. Select the column you want.


	 For example, "Product Base Margin".
	2. Mark whether the comparison is case sensitive.
	3. (Conditional) If you want to add another column, then click
	 **Add Column Comparison**
	 .


**Note:**
 For a row to be removed, all of the columns selected in the Remove Duplicates tile
 *must*
 be duplicates.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then click the
 **Preview**
 tab.

Replace Text
--------------

The Replace Text tile lets you replace all occurrences of a text value with another text value (aka
 *search and replace*
 ). You can use Java regular expressions. For more information about Java regular expressions, see

https://docs.oracle.com/javase/tutorial/essential/regex/

.

*Tip:**
 You could use the Set Column Type tile to set a date or number column as text before (and after) using the Replace Text tile to replace values.

For information about replacing text values using other tiles, see

Set Column Value

and

Value Mapper

.


**Example**


 For example, the Replace Text tile replaces occurrences of the text value "Jumbo Box" in the "Product Container" column...

... with the text value "Ginormous"...

... using this configuration:

*To configure the Replace Text tile,**

. Click the
 **Replace Text**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column to search in.
4. Enter the text value you want to find.


 For example, "Jumbo Box".
5. (Option) Specify the find settings to use by clicking

in the field.


|
 Option
  |
 Description
  |
| --- | --- |
|
 Whole words
  |
 Searches for whole words.
  |
|
 Case sensitive
  |
 Searches with case-sensitive values.
  |
|
 Use RegEx
  |
 Searches and replaces using Java regular expressions.
  |
6. Enter the text value you want to replace with.


 For example, "Ginormous".


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Set Column Value
------------------

The Set Column Value tile lets you replace the value of a column with the values in another column.


**Notes:**

 You can only replace values in one column with values from another column that have the same data type. For example, you can copy from a column with string values to another column with string values.
* Both columns
 *must*
 already exist in the DataSet.

For information about replacing text values using other tiles, see

Replace Text

and

Value Mapper

.

*Example**

For example, the Set Column Value tile transforms this data...

... to this...

... using this configuration:

*To configure the Set Column Value tile,**

. Ensure that the column with values you want exists in the DataSet.
2. Click the
 **Set Column Value**
 tile in the canvas.
3. (Optional) Rename the tile by clicking

, then entering the name you want.
4. For each column with values you want to replace, do the following:

1. Select the column with values you want to replace.


	 For example, "Product Base Margin".
	2. Select the column with the values you want.


	 For example, "Net Margin".
	3. (Conditional) If you want to add a column, then click
	 **Add Column**
	 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

String Operations
-------------------

The String Operations tile lets you substring, trim, or pad a string with spaces.

*Example**

For example, the String Operations tile can transform this data...

... to this...

... using this configuration:

*To configure the String Operations tile,**

. Click the
 **String Operations**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Type the name of your new column.
4. Then, choose the type of operation you want to perform.
5. Select the column you want to perform this tile on.
6. Lastly, specify the beginning and ending character position you want from your string.
7. (Optional) If you want to add another column, click
 **Add String Operation**
 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Text Formatting
-----------------

The Text Formatting tile lets you format text (lower case, upper case, capitalization), remove numbers, or remove everything except numbers.

*Example**

For example, the Text Formatting tile transforms this data...

... to this...

... using this configuration:

*To configure the Text Formatting tile,**

. Click the
 **Text Formatting**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. For each column you want to format, do the following:

1. Select the text column you want.
	2. Select the type of letter-case format you want.
	3. Select whether to remove numbers or remove everything except numbers.
4. (Conditional) If you want to add another column, click
 **Add Column**
 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Value Mapper
--------------

The Value Mapper tile lets you search and replace string values in a specific column, according to pairs of string values you enter. (You might use the Value Mapper tile for replacing abbreviations or converting language codes.) You can either have replacement values overwrite an existing column or be in a new column.


 For information about replacing text values using other tiles, see

Replace Text

and

Set Column Value

.

*Example**

For example, the Value Mapper tile transforms this data...

... to this...

... using this configuration:


**Note:**
 This example shows values written to a new column. If configured, the values could overwrite values in the original column instead.

*To configure the Value Mapper tile,**

. Click the
 **Value Mapper**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column you want to search.
4. Select whether the values overwrite the values in the specified column or appear in a new column.

1. (Conditional) If writing values to a new column, enter the name of the column.
5. Select whether to write the original value or a default value when a match is not found in a row.

1. (Conditional) If writing a default value, enter the value.
6. For each value mapping you want, enter the value to search for and the value to replace with.
7. (Conditional) If you want to add a mapping, then click
 **Add Mapping**
 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


