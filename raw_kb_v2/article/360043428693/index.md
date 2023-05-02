

Intro
-------

You build a chart in Domo by uploading or connecting a DataSet

let's explain that a DataSet is what we call a dataset that is inside Domo, including one that has been brought in from a third-party source

(such as a Microsoft Excel spreadsheet or a MySQL database) and then specifying which columns from that DataSet are to be applied to the chart. For example, you might have a simple two-column Microsoft Excel spreadsheet with one column for salespeople and another column for sales in the month of January; you could upload this spreadsheet to Domo and create a vertical bar chart that showed the values for each salesperson. Or, you might connect to a database with hundreds of columns and rows; you could then build dozens of charts, with each chart powered by only a few different columns from your database.


 Refer to the following sections in this topic for information about column- and row-based DataSet layouts and the different types of data and how these are

interpreted by charts

. (what does this mean?) This information is important because each chart type requires columns containing specific types of data to be powered up. For example, a simple bar chart requires only a value column and category column, whereas a scatter plot chart requires three value columns and a series column.


 For information about adding DataSets to Domo using data connectors, see

Connecting to Data with Connectors

.

fix this link to have the right name of the target article


**Video - How Data Becomes a Card**

Types of data in a DataSet
----------------------------

When we talk about the types of data in a DataSet, we may be referring to one of two different things: the
 *data type*
 , an automatic interpretation of how the data in a DataSet should be used, or the
 *column or row type*
 , which you use to tell Domo which data should be applied on which axis in your chart. It is important to understand the distinctions between these types of data because you need to be able to apply them correctly to power a chart.


 For more information about applying columns to a chart, see

Applying DataSet Columns to Your Chart

.

##
 Data type

When you

add a DataSet into Domo

,(let's change the verb here) the data in each column is categorized by its
 *data type*
 . The data type of a column determines how it can be used in a chart. For example, if your DataSet contains a column with text values, such as employee names, Domo assigns a data type of
 *string*
 to the column. It then assumes that you are going to apply that column to a
 *category*
 or
 *series*
 axis on your chart. Similarly, if a column contains numeric values, Domo assigns a data type of
 *numeric*
 to the column and assumes you are going to apply the column to a
 *value*
 axis.


 Although you can apply any column to any axis on your chart, each axis in a given chart is designed for specific data types; consequently, if you apply the wrong data type to an axis, the chart does not appear correctly. For example, in most chart types, applying a column with a "date" data type to your "series" axis causes the date data to be represented incorrectly.


 The following table lists the data types in Domo:


 Data Type
  |
 Description
  |
| --- | --- |
|
 Date
  |
 Contains date values in any of a variety of different formats. Date columns are usually applied to your category axis when creating a chart.

let's give examples of each type of data mentioned in this chart.

|
|
 Datetime
  |
 Contains time or date-time values in any of a variety of different formats. Date-time columns are usually applied to your category axis when creating a chart.
  |
|
 Numeric
  |
 Contains straight numbers, though a few special characters (such as commas) are permitted. Adding letters or other characters changes the data type to "date" or "string." You usually apply numeric columns to value axes (and sometimes series axes) when creating a chart.
  |
|
 String
  |
 Generally contains non-numeric characters, though in some scenarios you may be able to pass off numeric columns as string columns (for example, by changing the cell format in Microsoft Excel to "Text"). You usually apply string columns to category and series axes in a chart.
  |

In Analyzer, each column selection menu lists the columns in your DataSet by data type. This makes it easier to apply columns to the appropriate axes in your chart. The screenshot in Column or row headers shows an example of this. For more information about applying columns to a chart, see

Applying DataSet Columns to Your Chart

.

##
 Column or row type

Data in a DataSet you upload or connect to can
 *generally*
 —but not always—be categorized as belonging to any of these column or row types:
 *header data*
 ,
 *category data*
 ,
 *series data*
 , and
 *value data*
 .


 The following screenshot shows the column or row types in a typical column-based DataSet, and these are described in greater detail in continuation.

A row-based DataSet contains the same types of data. The only difference is that the header labels are found in the leftmost column, and the other data types are found in rows, not columns.


 For more information about these data layouts, see

DataSet layouts

, below.

###
 Column or row headers

The top row in a column-based DataSet—or the leftmost column in a row-based DataSet—contains the labels of the columns/rows and is called the
 *header row*
 or
 *header column*
 . The labels in the header row or column do not appear in the charts powered by this DataSet. However, Domo often uses these names in the product when referring to the columns or rows. For example, in the Analyzer, you apply columns or rows to power the chart by dragging their header labels into fields corresponding to the chart axes. For more information, see

Applying DataSet Columns to Your Chart

.

###
 Category and series columns and rows

A
 *category*
 column or row contains items being measured, either as the names of those items or as a series of dates on which measurements were taken. Typically, categories are represented on the horizontal axis or x-axis. Most charts require a category column or row to be powered up. (Exceptions include X-Y coordinate charts, such as scatter plot and bubble charts, in which there are two value columns or rows.) In more complex chart types, categories are broken down into
 *series*
 items. For instance, in the DataSet previously shown, the "Charles" category can be broken down by team—either Team A, Team B, or Team C, as reflected in the following chart in which each category is a group of three series or bars:

In chart types that include legends, the legend items are generally used to denote the series data. One exception to this is in maps, which lack series columns but use legends to denote ranges in the map.

###
 Value columns and rows

A
 *value*
 column or row contains the measurements for the categories and/or series columns/rows in the chart. In the preceding screenshot, the heights of each bar are determined by the values for each category-series pair and are measured by the vertical scale on the left side of the chart (or the y-axis). In many chart types, values are measured on the vertical axis, or y-axis.


 Most chart types require a value column or row; some types, like bubble charts, require more than one.


 For information about applying data columns to chart axes in the Analyzer, see

Applying DataSet Columns to Your Chart

.


 DataSet layouts
-----------------

DataSets used to power charts can have a
 *column-based layout*
 or a
 *row-based layout*
 .


 You specify the layout type of your data when adding the DataSet. Row-based layouts are converted to standard columnar layouts when pulled into Domo.


 Though different chart types require different numbers of columns and rows, you should be aware of the following:

 a DataSet can have as many columns and rows as you want
* the columns or rows you use in a particular chart do
 *not*
 need to be side by side in the DataSet
* the columns and rows can be reused

This makes it possible for you to power up multiple charts using the same DataSet. You can also add multiple drill path levels to a chart by filtering off of different columns or rows. For more information about adding drill paths, see

Adding Drill Path to Your Chart

.

##
 Column-based layouts

In DataSets with a column-based layout, data items are arranged in columns and the first row contains the labels for each column. Your DataSet must have at least two adjacent columns and two rows (not necessarily adjacent). This is the most common DataSet this layout.


 The following screenshot shows a section from a typical column-based spreadsheet layout:


###
 Row-based layouts

In DataSets with a row-based layout, the data items are arranged in rows, and the first column contains the labels for each row. Your DataSet must have at least two adjacent rows and two columns (not necessarily adjacent). Row-based layouts are converted to standard columnar layouts when pulled into Domo.


 The following screenshot shows the same data as the preceding screenshot, but it has been rearranged into a row-based layout:


###
 Cross-tab layouts

A cross-tab layout has both column
 *and*
 row headers, so the value in each data cell corresponds to a particular column-row pair, similar to a table. This type of layout may be used in applications in which you enter data manually, such as Microsoft Excel. Cross-tab layouts are converted to standard columnar layouts when pulled into Domo. For each column in a converted cross-tab layout, Domo affixes a default name in the format "Column1," "Column2," etc. You can change these default names if you want.

*Note:**
 You can only pull cross-tab data into Domo from a Microsoft Excel DataSet. For more information, see

File Upload Connector

.

The following screenshot shows data in cross-tab format:


**Note:**
 Because cross-tab spreadsheet layouts are converted to a Domo-usable columnar format, pivot tables you try to pull from Excel lose their formatting. A better alternative is to create your pivot tables directly in Domo using the Sumo capability. For more information about creating Sumo Cards, see

How do I build or edit a Sumo Card?

