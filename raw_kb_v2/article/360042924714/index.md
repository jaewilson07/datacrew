

Intro
-------

A shape gauge uses any of 45 different images to indicate a current value. By using different images to indicate different ranges, you can convey to users whether the current value is positive, neutral, or negative. The classic example of this kind of gauge in Domo is the face gauge, which shows a smiling red face for positive range values, a neutral orange face for middling values, and an angry red face for negative values.

In addition to faces, all of the following shapes are available for you to use in shape gauges:

 Different shapes such as squares, circles, triangles, pentagons, and octagons
* Thumbs up/thumbs down
* Airplanes taking off/landing
* Lightning bolts
* Batteries that are empty, half-full, and full
* And dozens more

In addition, you can vary shapes by customizing their colors, giving you even more options to choose from.

You can have up to 10 ranges in a shape gauge.


 Other gauge types in Domo include

Single Value gauges

,

Filled gauges

,

Progress Bar gauges

,

Radial gauges

, and

Comparative Fill gauges

.


 Powering shape gauges
-----------------------

A shape gauge requires only one column or row of data from your DataSet, which should contain value data. The value data is aggregated based on what you select in the
 **Calculation**
 menu (which you access by clicking on the column name next to "Gauge Values"). For example, if you select
 **Sum**
 , the values in the column are summed and this total value is used for the gauge. If you select
 **No aggregation**
 , the first value in the DataSet is used. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your shape gauge. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

KPI Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a shape gauge:

Customizing shape gauges
--------------------------

You can customize the appearance of a shape gauge by editing its
 **Chart Properties**
 . For information about all chart properties, see

Setting Properties for Gauges

. Unique properties of shape gauges include the following:


 Property
  |
 Description
  |
| --- | --- |
|
 General > No Data Handling
  |
 Determines what happens when no data is sent to the gauge. You can choose to have a message display (which is the default), set the value of the gauge to 0, or show a blank gauge.
  |
|
 Range 1-10 > Minimum Value
  |
 Lets you specify the minimum value for the selected range.
  |
|
 Range 1-10 > Maximum Value
  |
 Lets you specify the maximum value for the selected range.
  |
|
 Range 1-10 > Color
  |
 Lets you specify the color for the selected range.
  |
|
 Range 1-10 > Symbol
  |
 Lets you specify the image for the selected range.
  |
|
 Out of Range > Color
  |
 Lets you specify the color used when the current value does not fall within any of the ranges you have configured.
  |
|
 Out of Range > Symbol
  |
 Lets you specify the symbol used when the current value does not fall within any of the ranges you have configured.
  |


