

Intro
-------

You can use Beast Mode to add a calculation for use in transforming columns in your chart.

*Video - Intro to Beast Mode**


**Video - Creating a Calculated Field**


**Video - Case Statement Overview**

Parts of the Beast Mode dialog
--------------------------------

The following screenshot shows how the Beast Mode dialog looks:

You can learn about the user interface components of the Beast Mode dialog in the following table:


 Name
  |
 Description
  |
| --- | --- |
|
 Calculated Field Name
  |
 Contains the name of a calculation, which appears in the Categories list in Analyzer, and as the heading of the transform column in cards. You can edit the name. This name cannot be the same as the name of any column in the DataSet; otherwise an error appears reading, "Your specified name for the calculation is invalid."
  |
|
 Formula
  |
 Contains the functions you want in your calculation.You can add column names, calculations, and functions to your calculation by double-clicking items in the
 **DataSet Fields**
 and
 **Functions**
 lists. You can validate your calculation by clicking
 **Validate Formula**
 (which appears after you edit the calculation in the
 **Formula**
 field) or by clicking
 **Save & Close**
 . If the calculation passes, a "Valid Formula" message appears. If the calculation does not pass, an "Invalid Formula" message appears.
  |
|
 DataSet Fields
  |
 Lists categories, values, and calculations that you can double-click to add to your calculation.Calculation columns appear as categories in the list.You can search for items in the list or filter by type. If you enter
 `=`
 (equal sign) as the first character, only Beast Mode calculations display.
  |
|
 Functions
  |
 Lists categories of functions that you can double-click to add to your calculation.You can search for items in the list or filter by type.
  |
|
 Function Description
  |
 Displays the description of the selected function.
  |
|
 Share Calculation on DataSet
  |
 Lets you share the selected calculation on the DataSet, meaning the calculation is available for use in other cards powered up by this DataSet.
  |
|
 Save & Close
  |
 Lets you validate and save the selected calculation, and close the dialog.The calculation
 *must*
 be valid before you can use it to power up charts.
  |

Adding a Beast Mode calculation
---------------------------------

Use the information in this section to add calculations for transforming data using Beast Mode.


**To add a Beast Mode calculation,**

. On the KPI card where you want to add a calculation, click

, then select
 **Edit Card**
 .
2. In Analyzer, click
 **Add Calculated Field**
 .


 For more information about Analyzer, see

Analyzer Layout

.


 The Beast Mode dialog appears.
3. In
 **Calculated Field Name**
 , enter the title of the calculation.

*Note:**
 The title is used as the heading of the created column that may appear in Cards. If you name the Beast Mode the same name as another Beast Mode or column in the DataSet, a modal will pop up allowing you to change the Beast Mode name (along with any others that need to be fixed.)

*Important:**
 It is best to avoid naming Beast Modes as a single keyword that is used in a function, such as "Date" or "Sum". Using words like this can cause the Beast Mode to fail. Whereas "Date Created" and "Sum of Sales" are acceptable.
4. In
 **Formula**
 , enter the calculation you want.


 You can add column names and functions to your calculation by double-clicking items in the
 **DataSet Fields**
 and
 **Functions**
 lists.


 For more information about functions, see

Beast Mode Functions Reference Guide

.
5. (Optional) Mark the option to share the calculation with any cards using the DataSet.
6. Click
 **Save & Close**
 to validate the syntax of the calculation and save your changes.


 If there are errors, revise your calculation.


 After saving, the calculation column appears in the Categories list for the card in Analyzer.

*To edit a Beast Mode calculation,**

. On the KPI card where you want to edit a calculation, click

, then select
 **Edit Card**
 .


 For more information about Analyzer, see

Analyzer Layout

.
2. In Analyzer, in the
 **Categories**
 list, click the calculation column you want to edit.
3. Make any changes you want, then click
 **Save & Close**
 .

*To delete a Beast Mode calculation,**

. On the KPI card where you want to edit a calculation, click

, then select
 **Edit Card**
 .


 For more information about Analyzer, see

Analyzer Layout

.
2. In Analyzer, in the
 **Categories**
 list, mouse over the calculation column you want to remove, then click
 **X**
 .
3. Click
 **Remove**
 to confirm deleting the calculation.

Calculation usage notes
-------------------------


* Most calculations use one of the following general formats:


|
 Format
  |
 Description
  |
| --- | --- |
|
`FUNCTIONNAME(`Column Name`)`
 |
 Used when some single, specific change is applied to all of the cells in a column. Examples of functions used in this kind of calculation include
 `AVG`
 ,
 `MONTHNAME`
 , and
 `CEILING`
 .
  |
|
`FUNCTIONNAME(`Column Name1`,`Column Name2`,...)`
 |
 Used when a calculation is applied across two or more columns. One example of a function used in this kind of calculation is
 `CONCAT`
 , which combines strings from different columns.
  |
|
`FUNCTIONNAME(`Column Name`,
 *somevalue*
 )`
 |
 Used when a calculation involving a specified value is applied to a column. An example of a function used in this kind of calculation is
 `POWER`
 . When using this calculation, you specify the power you want all the cells in a column to be raised to.
  |
|
`FUNCTIONNAME(`Column Name`, '
 *string*
 ')`
 |
 Used when a calculation involving a specified string is applied to a column. An example of a function used in this kind of calculation is
 `DATE_FORMAT`
 . When using this calculation, you specify specifier characters to use in formatting the date value. For more information, see

Date Format Specifier Characters in Beast Mode

.
  |


* In calculations, Beast Mode function names are
 *not*
 case sensitive.
* In calculations, column names are case sensitive and are separated by commas. Do
 *not*
 use Beast Mode function names as column names; Beast Mode function names are reserved.
* Use backticks (aka
 *backquotes*
 ) (`) or double quotes (") for column names:

`Customers`

or

"Customers"

Wrap column names of two or more words with backticks (`) or double quotes ("). If you use any column name that matches the name of a function (such as

DATE

), then use backticks or double quotes (") to wrap the column name.
* Use single quotes (') for strings:

'mystring'
* You can escape a quote using two single quotes:

'O''Neal'
* You can insert a space in a calculation using single quotes:
 `' '`


 This is useful with functions like

CONCAT

when you need to combine strings.
* You can use most standard arithmetic operators in your custom calculations, such as + (addition), - (subtraction), \* (multiplication), / (division), and so on.
* You cannot refer to a specific calculation by name in another calculation.


 For example, if you create a calculation called "MaxColumn1," you cannot use that name when defining another calculation.
* Calculations can be completed automatically as you enter them.

+ As you enter functions, a list of functions appears, which you can select from.
	+ If you enter a backtick ('), a list of column names appears, which you can select from.
* When you check the box for
 **Share Calculation on DataSet**
 for a calculation, that calculation is saved to the DataSet. The calculation is then available for use in any other charts that use this DataSet.
* If your calculation aggregates rows in your DataSet, you can apply it to your card summary number. For more information, see the

next

section.
* While you can combine some functions in a calculation, you
 *cannot*
 stack numerical functions. For example,

SUM(MIN())

is invalid.
* Calculations you create using Beast Mode are inherited when you drill from one view to another using the same DataSet. However, calculations are not inherited when you drill to a new DataSet. For information about drill paths, see

Adding Drill Path to Your Chart

.
* You can make selecting filter options easier by using "Yes" and "No" rather than "1" and "0" in calculations.
* Do
 *not*
 mix data types of values you put in a transformed column.


 For example, in a

CASE

function, do not store "Yes" (string) and "0" (number) in the same column.
* You can double click categories, values, functions, and DataSet fields in the lists to add them to your calculation.
* As you type a column or function name, a menu appears, which you can select from to add them to your calculation. For example, enter ` to see the column list, then select the column you want.
* You can drag and drop a column name from the DataSet Fields list to your calculation.
* Any Beast Mode calculations that use processing intensive functions such as

COUNT (DISTINCT)

or

SUM (DISTINCT)

will slow down the visualization performance of cards that are built off of large DataSets. This also happens with complex case statements that are over 30 lines of code. If you have to build these functions into a large DataSet, we recommend you do it in a DataFlow to optimize visualization performance.

For Beast Mode syntax examples, see

Sample Beast Mode Calculations

.


 Applying a calculation to a summary number
--------------------------------------------

If your Beast Mode calculation aggregates rows in your DataSet, it can be used in your card summary number. Calculations built using any of the following functions can be applied to your summary number:

 AVG
* COUNT
* COUNT (DISTINCT)
* MAX
* MIN
* SUM
* SUM (DISTINCT)
* STDDEV\_POP, VAR\_POP

When you add such a calculation, the Beast Mode is automatically added to the list of available columns that may be used in the summary number for this chart.

*Note:**
 For a Beast Mode column to work as the Summary Number, it must be aggregated in some way (for example, the

SUM()

function) or be the result of an operation on values within functions (for example,

SUM()

functions). For instance,

'Customers'

does
 *not*
 work for a Summary Number, but

SUM('Customers')

may be used as a Summary Number.

For more information about summary numbers, see

Configuring Your Chart Summary Number

.

