

Intro
-------

There are two available tiles in the Dates and Numbers tab of Magic ETL DataFlows. These include:

 Calculator
* Date Operations

For information about creating a Magic ETL DataFlow, see

Creating a Magic ETL DataFlow

.


 For information about the Data Center, see

Data Center Layout

.


**Important:**
 There are significant behavioral differences in the new Magic ETL. Read the


 Behavior Changes and Feature Updates in Magic ETL


 article before converting mission-critical Magic ETL DataFlows.
 **Failure to do so may risk an unintended change to your DataFlow’s behavior.**

Calculator Tile
-----------------


 The Calculator tile lets you add a column with values from a simple calculation.


 Do the following to configure the
 **Calculator**
 tile:

. Click the
 **Calculator**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

, then entering the name you want.
3. Enter the name of the new column.
4. Select the operation you want.


|
 Operation
  |
 Description
  |
| --- | --- |
|
 Addition
  |
 Adds values from two columns.
  |
|
 Subtraction
  |
 Subtracts values from two columns.
  |
|
 Multiplication
  |
 Multiplies values from two columns.
  |
|
 Division
  |
 Divides values from two columns.
  |
|
 Ceiling
  |
 Returns the highest value for each series in a numeric column.
  |
|
 Floor
  |
 Returns the lowest value for each series in a numeric column.
  |
5. Select the columns to use or specify the values you want.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.

Date Operations Tile
----------------------


 The Date Operations tile lets you add a column with values from a date-based calculation.


 Do the following to configure the
 **Date Operations**
 tile:

. Click the
 **Date Operations**
 tile in the canvas.
2. (Optional) Rename the tile by clicking

*Edit**
 , then entering the name you want.
3. Enter the name of the new column.
4. Select the date operation you want.


|
 Operation
  |
 Description
  |
| --- | --- |
|
 Add to date
  |
 Returns the result of adding a unit of measurement to values in a date column. Units of measurement include months, weeks, days, hours, minutes, seconds, or milliseconds.
  |
|
 Subtract from date
  |
 Returns the result of subtracting a unit of measurement from values in a date column. Units of measurement include months, weeks, days, hours, minutes, seconds, or milliseconds.
  |
|
 Difference between dates
  |
 Returns the difference in a unit of measurement between two dates. Units of measurement include days, working days, hours, minutes, seconds, milliseconds.
  |
|
 Year of date
  |
 Returns the year for values in a date column.
  |
|
 Quarter of date
  |
 Returns the quarter for values in a date column.
  |
|
 Month of date
  |
 Returns the month for values in a date column.
  |
|
 Day of year
  |
 Returns the numerical day of the year for values in a date column.
  |
|
 Day of month
  |
 Returns the numerical day of the month for values in a date column.
  |
|
 Day of week
  |
 Returns the numerical day of the week for values in a date column.
  |
|
 Week of year
  |
 Returns the numerical week for values in a date column. Weeks are Sun-Sat. Week 1 is the first week with a Saturday in this year.
  |
5. Select the columns to use or specify the values you want.


**Tip:**
 You can preview the data transformed by a tile by running a preview, clicking the tile in the canvas, then clicking the
 **Preview**
 tab.


