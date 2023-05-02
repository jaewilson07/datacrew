

Intro
-------

A histogram is a chart type that represents the frequency at which certain ranges of values appear in a DataSet. Histograms are most often used for statistical analysis.


 Understanding histograms
--------------------------

In a histogram, two axes appear, one on the left side of the graph and one at the bottom. One of the axes is divided into ranges of values called "bins." The other axis measures the number of items in the DataSet that fall into each bin. For each bin, a bar is drawn that represents the number of items in the bin. In a vertical histogram, the axis with the bins appears on the bottom and the axis that measures the items appears on the left. In a horizontal histogram, these axes are switched.


 The following example shows how a histogram works. This histogram represents the frequency at which specific height ranges appear in a group of students. The bottom axis shows the complete range of heights in the DataSet, with bins for individual ranges. The left axis measures the number of items–in this case, students–that fall into each bin.

Powering histograms
---------------------

Histograms require only two data columns or rows from your DataSet. One of the columns contains category names, and the other contains the associated values. Note that the category names themselves do not appear in the chart, but are counted and represented numerically. Also, values do not appear as is, but are converted into ranges in your chart. An optimal number of ranges (and hence, bins) is determined automatically, but you can change the default number of bins in
 **Chart Properties,**
 as seen in the section below on Customizing histograms.


**Note:**
 Histograms

have a limit of 25,000 rows of data.

For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your histogram. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer.


###
 Examples

The following graphic shows you how data from a typical column-based spreadsheet is converted into a vertical histogram:

The following graphic shows you how data from a typical column-based spreadsheet is converted into a horizontal histogram:

Customizing histograms
------------------------

You can customize the appearance of a histogram by editing its
 **Chart Properties**
 . Properties for all chart types are listed and described in

Chart Properties.

Unique properties of histograms include the following. You can click a thumbnail image to see a larger image.


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 Bar Settings > Symbol Color
  |
 Allows you to set the color for bins. The default is blue.
  |
 —
  |
|
 Bar Settings > Histogram Bins
  |
 Lets you change the number of bins that appear in the histogram. An optimal number of bins is determined automatically by Domo, but you can choose any number between 3 and 20. Changing the number of bins may create "gaps" for ranges with no data. The example at right shows one such gap in the 4.9-5.0 data range. This indicates that there were no items in the DataSet with a value between 4.9 and 5.0.
  |

|


