

Intro
-------

Box plot charts are commonly used to represent statistics and quality measurements. For any given category, at least five values are required in the DataSet. From these values, Domo derives a
 *high*
 value, a
 *Q3*
 (Quartile 3) value, a
 *median*
 value, a
 *Q1*
 (Quartile 1) value, and a
 *low*
 value. The five derived values for each category are plotted on the chart as a
 *box and whisker plot*
 , with the Q1, median, and Q3 values forming the box and the high and low values forming the "whiskers."


 As an example, if you uploaded the DataSet
 *1,3,5,6,9,11,15*
 , Domo would derive values for an individual box plot diagram as follows:

 The
 *median*
 is the middle value in the ordered DataSet, in this case "6."
* The
 *Q1*
 and
 *Q3*
 values are the medians of the lower and upper halves of the DataSet, in this case "3" and "11."
* The
 *low*
 and
 *high*
 values are the lowest and highest values in the DataSet, in this case "1" and "15."

The resulting box plot would appear as follows:

Box plot charts include both vertical and horizontal sub-types.


 Powering box plot charts
--------------------------

Box plot charts require two columns or rows of data from your DataSet—a category column or row containing the name of each individual box-and-whisker diagram, and a value column or row containing the values for each category, from which the box plot values will be derived. For information about value, category, and series data, see

Understanding Chart Data

.


**Note:**

Box plot charts have a limit of 100,000 rows of data (in contrast to most other chart types, which allow only 25,000 rows).

In the Analyzer, you choose the columns containing the data for your box plot chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from the category and value columns in a typical column-based spreadsheet is converted into a two-diagram box plot chart:

Customizing box plot charts
-----------------------------

You can customize the appearance of a box plot chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of box plot charts include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Line Color
  |
 Determines the color of lines in a box plot. If the
 **Disable Fill**
 property is unchecked, the fill color of the boxes matches the line color; otherwise only the lines are colored. The default color is blue.
  |
 —
  |
|
 General > Percent Width
  |
 Determines the width of box plot diagrams in the chart. You can enter any value between 10 and 100. The lower the value, the thinner the boxes. In the example, the
 **Percent Width**
 has been set to

15

.
  |  |
|
 General > Hide Whisker Caps
  |
 When enabled, hides the "whisker caps," the lines for high and low values that appear at the ends of the "whisker lines" by default. In the example, whisker caps have been hidden.
  |  |
|
 General > Disable Fill
  |
 By default, boxes in a box plot chart contain a colored fill. Checking this box removes the fill, causing the boxes to appear transparent, as in the example.
  |  |


