

Intro
-------

There are five available tiles in the Text tab of Magic ETL DataFlows. These include:

 Combine Columns
* Replace Text
* Split Column
* String Operations
* Text Formatting

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


**Important:**
 There are significant behavioral differences in Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**

Combine Columns Tile
----------------------


 The Combine Columns tile lets you combine values from multiple columns into one column. For example, you could combine first name and last name from two columns into a new, full name column.

*Video - Combining Columns in Magic ETL**

*To configure the Combine Columns tile,**

. Click the
 **Combine Columns**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Specify the character to use to separate the combined values.
5. (Optional) Remove the original columns after they are combined.
6. Select the columns to combine.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Replace Text Tile
-------------------


 The Replace Text tile lets you replace all occurrences of a text value with another text value (aka
 *search and replace*
 ). You can use Java regular expressions. For more information about Java regular expressions, see

https://docs.oracle.com/javase/tutorial/essential/regex/

.

*Tip:**
 You could use the Set Column Type tile to set a date or number column as text before (and after) using the Replace Text action to replace values.

For information about replacing text values using other actions, see

Value Mapper

in "Magic ETL Tiles: Utility."


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
 You can preview the data transformed by a tile by running a preview, clicking the action in the canvas, then clicking the
 **Preview**
 tab.

Split Column Tile
-------------------


 The Split Column tile lets you split a single string column into multiple columns by a specific delimiter.


**Example**


 For example, the Split Column tile converts data in this format...

...to data in this format...

...using this configuration:

*To configure the Split Column tile,**

. Click the
 **Split Column**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Select the column you want to split.
4. Choose the delimiter on which the string should be separated.
5. Next, decide whether to keep the extra splits in the last column specified in step 4.


 For example, in row 1 in the table above, the extra split Ben exists in the last column Watcher Split 1.
6. Lastly, add and name as many columns as needed.


 In the example above, you can see there are some rows that did not have 3 values to split, so those values remain blank in those columns.


**Note:**
 If you have more values to split than columns created and choose to not keep the extra splits, the values are not placed in any column.

String Operations Tile
------------------------


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
5. Select the column you want to perform this action on.
6. Lastly, specify the beginning and ending character position you want from your string.
7. (Optional) If you want to add another column, click
 **Add String Operation**
 .


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Text Formatting Tile
----------------------


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
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


