

Intro
-------

In area overlay charts (referred to simply as "area" charts in Domo), all series begin from the same axis and are overlaid on top of each other. In their default state these charts are typically not very useful because data for some series is usually hidden. However, you can distinguish an individual series by mousing over that series in the legend or in the chart itself. Because each series begins from the same baseline, this type of area chart is useful for quickly discerning the value for individual series.


 An area overlay chart is similar to a

stacked area chart

; however, in a stacked area chart, all segments are shown at once, either side by side or on top of each other, whereas in an area overlay chart, segments overlap.


 Subtypes
----------

Stacked area charts have a number of subtypes, including all of the following:

 Vertical curved area
* Vertical step area
* Horizontal area
* Horizontal curved area
* Horizontal step area

For explanations and screenshots for these subtypes, see

Available Chart Types

.


 Powering area overlay charts
------------------------------

Area overlay charts require three columns or rows of data from your DataSet—one for categories (generally dates), one for series in those categories, and one for values. For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your area overlay chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical area overlay chart:

The following graphic shows you how the data from a typical column-based spreadsheet is converted into a horizontal area overlay chart:

Customizing area overlay charts
---------------------------------

You can customize the appearance of an area overlay chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of area overlay charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Style
  |
 Determines the style for an area chart, either "Flat," "Folded," "Curved" or "Step." The default style of the chart depends on the specific subtype you have selected. If you select "Folded," the chart takes on a 3-D appearance, as shown in the example at right.
  |  |


