

Intro
-------

Domo's Magic ETL has gotten a major upgrade. Not only has the data processing engine been significantly upgraded making most DataFlows run remarkably faster and in more efficient ways, but new tiles and functionality have been added to make the most out of transforming your data using Magic ETL.


 This article presents important

Notable Behavior Changes

you should make note of before upgrading Magic ETL as well as notes on new features.


 All of the feature updates can be divided into four main categories:

 Performance
* New/Updated Tiles
* User Interface
* Advanced Options

Why Upgrade?
--------------

We wanted to make Magic ETL more internally consistent and more aligned with other Domo features like Beast Mode. One of our goals was to eliminate all cases where Magic ETL resolves column name collisions without the user's input. Joins and Append Rows both deal with name collisions, and Magic ETL now deals with both of them differently. We heard from many customers that this change is important for data cleanliness.


 Rethinking auto-rename is just the start. Magic ETL now features a new formula system with over 200 functions inspired by Domo Beast Mode, various SQL databases, and Spreadsheet software. Formulas are a game-changer for Magic ETL. The functionality offered by the formula system goes beyond expressing a cluster of traditionally-configured tiles more concisely. In some cases, it even surpasses what is possible in a MySQL DataFlow. Formulas can be used to edit columns in place or add new columns. or as part of a
 **Group By**
 or
 **Filter Rows**
 tile, to construct complex aggregations or filter conditions. For more information, see

Writing Formulas in Magic ETL.

For the complete list of supported functions available in the new formula system, see

Supported Functions in Magic ETL

.


 Notable Behavior Changes
--------------------------

Some changes in Magic ETL might cause transforms to work differently. This could manifest as errors like “Column not found” or “Duplicate column name”, or more subtly as different output data. As such, it is important to be aware of all of these changes before migrating an existing DataFlow to Magic ETL v2 or before writing a new DataFlow if you are already very familiar with Magic ETL's previous behavior.

###
 Filter Rows

Null values are treated differently by the comparison functions. In SQL and Magic ETL v2's DataFlows, the result of any comparison with null is always null, which is treated by the
 **Filter Rows**
 tile like a false result. In most contexts in Magic ETL v2, null is not equal to null, but null is also not not equal to null; null is not greater than zero, but it is also not less than zero, nor is it equal to zero. If you have nulls in columns referenced by
 **Filter Rows**
 tiles, all of those rows will be dropped, regardless of the function or its other argument. The only functions that can deal with nulls truthfully are “is null” and “is not null”. In Magic ETL v1, a filter might have tested “column = null”. This will no longer have the same result; such filters should be changed to use the “is null” operator.


 If after switching a flow to Magic ETL v2, it runs successfully, but the output seems to be missing rows, this change is a likely culprit. It can be especially surprising with the “is not equal to” function. It might seem like “column <> 5” should only drop rows where column’s value is 5, but in fact it will also drop rows where column is null, for the reason described above. The table below has additional examples of null behavior in
 **Filter Rows**
 .


 Test
  |
 Evaluated Result
  |
 Filter Effect
  |
| --- | --- | --- |
|
 4 <> 5
  |
 true
  |
 keep
  |
|
 5 <> 5
  |
 false
  |
 drop
  |
|
 null <> 5
  |
 null
  |
 drop
  |
|
 null = null
  |
 null
  |
 drop
  |
|
 null <> null
  |
 null
  |
 drop
  |
|
 null is null
  |
 true
  |
 keep
  |
|
 null is not null
  |
 false
  |
 drop
  |
|
 5 is not null
  |
 true
  |
 keep
  |
|
 5 is null
  |
 false
  |
 drop
  |


 To handle nulls in more complex ways, use the new formula system. The
 **Filter Rows**
 tile is one of three tiles (
 **Group By**
 and
 **Add Formula**
 being the other two) which supports formula evaluation. The IFNULL() function works particularly well for handling a null result from a filter expression. For example, if column “col” has null values, and we want to filter for rows whose value for “col” is not 5, preserving our nulls, we could write this expression: IFNULL(col <> 5, TRUE)


 Besides null handling, there are many other scenarios that filter formulas make easier. In Magic ETL v1, the single formula below would have required two separate
 **Filter Rows**
 tiles with multiple conditions each.

###
 Date and Time Parsing

With date and time parsing, the process of converting incoming text into Date or Date & Time values has changed significantly. Generally, it is stricter than it used to be. Some text that parsed successfully in Magic ETL v1 might result in an error in Magic ETL v2. The goal of being stricter is avoiding scenarios where a value is silently misinterpreted, like a month being mixed up with a day. Magic ETL now uses a fixed list of unambiguous date and time formats, plus a locale-specific list of ambiguous formats (e.g. “01/02/2020” is January 2nd in the US and February 1st in most other places). If Magic ETL fails to parse a date, a custom format can now be specified on the
 **Input DataSet**
 tile, on a per-column basis. For information on the format specification, refer to

Oracle’s documentation of the Java DateTimeFormatter class

.

###
 Date and Time Operations

Date and time operations in Magic ETL are now performed by default in the company timezone specified in the Domo Admin menu. Magic ETL v1 performed these operations in UTC, the international standard time. This means that a company whose timezone is America/Denver that uses the “Month of date” operation on a Date & Time column will get the month of that timestamp from Denver’s perspective, not that of Greenwich (UTC).


 The WEEK\_OF\_YEAR() function in the Date Operations tile is also now different. Week 1 is the first week with a Sunday in the year. This differs from previous versions of Magic ETL and Beast Mode, where week 1 is the first partial week.


 Using the
 **Add Formula**
 tile, week behavior can be adjusted: the WEEK() function accepts a second argument: an integer from 0 to 7, representing the “week mode” to use when calculating the week of a date. These modes are described in

Oracle’s MySQL documentation

, and are reflected in the behavior of Beast Mode. Mode 0 (or WEEK() without the mode argument) yields the same result as the WEEK\_OF\_YEAR() function in the
 **Date Operations**
 tile.

###
 Joins

There are two major changes to the
 **Join Data**
 tile:

. It is no longer important to ensure that the table with fewer duplicate join keys is on the left of the join. The issue in Magic ETL manifesting as the error, “The left input cannot include over 10,000 duplicates”, has been eliminated.
2. Name conflicts are no longer resolved without user input. Instead, we have added a section to the
 **Join Data**
 tile’s configuration for describing name conflict resolution. This section can be filled out automatically or manually. In addition to renaming conflicting columns, it is now possible to remove them in the
 **Join Data**
 tile’s configuration as well.


####
 Append Rows (Union)

Previously, when two or more columns going into an
 **Append Rows**
 tile had the same names but different data types, they would not be combined. Instead, two or more new columns would be created, with names like “ID Whole Number” and “ID Text”. Now, the
 **Append Rows**
 tile never changes column names. Columns that have different types will have their data converted to the best type possible given the types of all the columns that share a name. For example, if one column had type Whole Number, while another had type Decimal, the columns would be combined into a column with type Decimal. In cases where the types are wholly incompatible, like Dates and Decimals, the resulting column will be Text type. This behavior can be replaced with stricter behavior using a new option in the
 **Append Rows**
 tile configuration. The stricter behavior is to throw an error (i.e. fail the execution) if two columns with the same names have different types.

###
 Other Considerations

Beyond understanding behavior changes in Magic ETL, it is valuable to learn about the increased transform functionality. Those familiar with the previous version of Magic ETL should be sure to try out the following:

 The new
 **Add Formula**
 tile—which supports over 200 functions, most of which are unique to the new Magic ETL. When using
 **Add Formula**
 for the first time, be sure to expand the formula editor and browse the function list.
* The
 **Input DataSet**
 tile—which now supports changing the type of incoming columns, as well as configuring how errors and nulls should be handled. If you want to interpret all nulls in a Text column as the Empty String instead, you can now do so.
* The new
 **Dynamic Unpivot**
 tile—which makes more sense in some scenarios than the older Unpivot (
 **Collapse Columns**
 ) tile. If you want to pivot all columns except a few, rather than pivoting a few columns and leaving most alone, consider using this new tile.

This video details the behavior changes.


**Video - Upgrading Magic ETL**

Feature Updates
------------------

###
 Performance


**Faster Runtimes**

Magic ETL is now much more performant than the previous version. While each DataFlow's performance changes may vary, most DataFlows will run significantly faster simply by upgrading to the new version. For detailed instructions on how to do this, see

Upgrading Magic ETL

. We have even found that Magic ETL now often outperforms many MySQL and RedShift DataFlows.

*Important:**

Please be aware of the behavior changes in Magic ETL v2 if you choose to switch your Dataflows back to Magic ETL v1.


**DataSet Views as Inputs**


 DataSet Views can now be used as inputs in Magic ETL. This allows for easier filtering, aggregating, renaming, or dropping columns, and performs Beast Mode functions prior to bringing your data into Magic ETL. Try filtering out all unnecessary rows before bringing your data into Magic ETL for reduced runtimes.


**Append Processing**


 One of the limitations of the previous version of Magic ETL is that at every DataFlow run, the engine loads all of the input DataSet's data, every time, even if that data is unnecessary for the transformations taking place. Now at the start of each run, the system reviews the state of the DataFlow's inputs and outputs. Where possible, only new rows added to the inputs since the last DataFlow execution will be processed during that DataFlow execution. Those rows will then be auto-appended to the output DataSet(s) resulting in the exact same output data but in a dramatically reduced runtime. To learn more about this optimization, see

New Magic ETL DataFlow Auto Append Processing

.

###
 New/Updated Tiles

*New Tiles**

Add Formula

If you're a SQL power user, transitioning to the previous version of Magic ETL often felt clunky. At times, what took one line of MySQL code could take 15+ mouse clicks in Magic ETL. With the Add Formula tile, that frustration is no more. The Add Formula tile is a row-by-row expression evaluator that allows you to write SQL-style syntax directly into your Magic ETL DataFlow. Create and modify your columns with compounded expressions. Case statements, statistical utility functions, and time-value-money operations are all easily accomplishable with this new tile.

Alter Columns

The Alter Columns tile is an upgraded version of the Set Column Type tile. Now you can easily rename, remove, or change the data types of your columns in one simple tile.

Dynamic Unpivot

This new tile is the inverse of the Unpivot tile. If you expect your schema on an input DataSet to change, using the Dynamic Unpivot tile allows you to narrow a table by pivoting all column data except those columns specified into new rows. Any columns now excluded in the configuration will become row values.


**Updated Tiles**

Group By

One important distinction you need to consider when using the Formula Tile is "What type of transformation am I trying to perform?" If the answer involves aggregations in any way, then you should look to the Group By tile which now supports SQL-style expressions with formula support. The Add Formula tile performs row-by-row operations which does not support aggregations. If you want to use operations like SUM, MEDIAN, or PERCENTILE, then be sure to select the Group By tile to aggregate your data.

Filter Rows

The Filter Rows tile now supports SQL-style expressions as well. Previously, performing a compound filter statement required multiple mouse clicks. In the updated Magic ETL, complex filter rules are quickly configurable with this expression evaluator. For more information on how to write filter formulas, see

How to Write a Filter Formula in Magic ETL

.

Pivot & Unpivot

What was the Uncollapse Columns tile is now the Pivot tile. What was the Collapse Columns tile is now the Unpivot tile.

Join Data

Historically, column name collisions were difficult to handle when joining data. Now, the Join Data tile enables you to easily specify what should happen when duplicate columns names occur. With easy column name conflict resolution and drop columns options, the Join Data tile has never been easier.

Python & R Scripting

Scripting tiles are now much more flexible. Specifying a schema for your output DataSet is now optional. Executing your script provides the needed schema for your output DataSet, saving you time. You can run a preview to generate the schema or specify it when you need it as part of downstream tiles.

###
 User Interface

*Color-Coded, Curved Lines**


 Previously, complex ETLs were difficult to follow and understand by viewing the graph alone. Now with color-coded, curved lines, lines are by default colored by data source, allowing you to more quickly grasp the flow of your transformations. Don't like the default colors? You can change them using the color picker.


**Notes on Tiles**


 Have you ever come across a complex Magic ETL DataFlow you did not create or that has been running untouched for months? Deciphering what transformations are taking place or even why can sometimes be difficult. With annotate functionality on individual tiles, you can write detailed explanations regarding what the DataFlow is doing on every tile.


**New Tile Categorizations**


 Finding the specific tile you needed in the old Magic ETL could be difficult given that the drop-down categories were limited to DataSets, Edit Columns, Edit Data, and Combine Data. The new Magic ETL has much more detailed categorization: Text, Dates and Numbers, Utility, Filter, Combine Data, Aggregate, and Pivot. The tile tooltips have also been updated to reflect exactly what's new about each tile.


**Selectable text in Data Previews**


 Easily interact with the preview data in a Magic ETL DataFlow with selectable text. Now you can quickly copy and paste individual cells or a group of cells from the Preview or Data tabs.

###
 Advanced Options

*Enhancements to data type handling**


 The inclusion of formulas makes Magic ETL a more versatile tool. This new feature highlighted the need to ensure data type handling is configurable upon the initial load of a DataSet as well as throughout the DataFlow. Easily specify what data type a column should be as well as the expected format and what to do when the data is unreadable as that specified data type.


**Preview and Data Table on Input DataSet tile**


 Due to the addition of data type classification upon input, we've introduced a new Preview tab on the Input DataSet tile. Now you can easily see the raw data in the Data tab as well as how that data has changed per our configured transform settings with the new Preview tab.


**DataFlow Transform Settings**


 Magic ETL now provides the ability to handle time zones, locales, and collation modes as well as specify default date and timestamp formats for your DataFlow. This is accessible at the DataFlow level as well as the individual tile level when one would need to specify what time zone a tile should be performed in.

