

Intro
-------

Waterfall charts are essentially Bar charts that show a series of profits and losses for a specified time period, with a summary bar showing the amount remaining at the end of the time period. Profits appear as green bars, losses appear as red bars, and start and summary bars appear as blue bars.


 Vertical and horizontal subtypes are available for Waterfall charts.


 Powering Waterfall Charts
---------------------------

A Waterfall chart requires three columns or rows of data from your DataSet—one for categories, one for series (generally dates), and one for values. The series data in your DataSet determines the order of the categories (for example, if your series data consisted of dates, the category bars would be arranged by date) but by default only appears when you mouse over a bar to show the hover text. However, you can show summary bars for individual series by checking a box in
 **Chart Properties**
 . For more information, see

Customizing Waterfall Charts

.


 For information about value, category, and series data, see

Understanding Chart Data

.


 In the Analyzer, you choose the columns containing the data for your Waterfall chart. For more information about choosing data columns, see

Applying DataSet Columns to Your Chart

.


 For more information about formatting charts in the Analyzer, see

Visualization Card Building Part 2: The Analyzer

.


 The following graphic shows you how the data from a typical column-based spreadsheet is converted into a vertical Waterfall chart:

The following graphic shows you how the data from the same column-based spreadsheet is converted into a horizontal Waterfall chart:

Customizing Waterfall Charts
------------------------------

You can customize the appearance of a Waterfall chart by editing its
 **Chart Properties**
 . For information about all chart properties, see

Chart Properties

. Unique properties of Waterfall charts include the following:


 Property
  |
 Description
  |
 Example
  |
| --- | --- | --- |
|
 General > Show Summary Bars
  |
 Adds a summary column for each series in the chart. The screenshot shows an example of this, in which a summary column is provided for the bars for each individual date. Because the dates appear only on mouse-over, this is a good way of making the series for each date more distinguishable.
  |

|
|
 General > Summary Text
  |
 Lets you specify the text that appears below the summary bars. In the example, the user has replaced the word "Summary" with the word "Total."
  |

|

Advanced Demo
---------------

Waterfall charts can be powerful tools for showing data, especially sales pipeline use case data. They can help you answer questions such as "What was our sales pipeline at the beginning and end of the quarter, and what changed in between?" and "I know the values in my pipeline changed, but why?" However, these charts can also be very challenging to build. We present this step-by-step demo to help you through all of the steps in building an effective waterfall chart.

##
 Prerequisites

To follow this demo, you will need 2 DataSets—one with the snapshot data for the starting point of the sales opportunity and another with the snapshot data for the ending point of that opportunity. Both DataSets should be filtered to the snapshot date (BATCH\_LAST\_RUN usually works) and should contain the following information:

 Opportunity ID
* Status or stage
* Amounts
* Anticipated close date

##
 Part 1 - Joining the DataSets


1. Start a new MySQL DataFlow in the Data Center.
2. Add the 2 DataSets (the beginning and ending snapshot DataSets mentioned in the prerequisites) as input DataSets in your DataFlow.
3. Add a transform in which you join the DataSets using a FULL OUTER JOIN (see the below screenshot for a code example).

* Use a LEFT JOIN on both DataSets.
	* Include an

 ifnull

 statement on the "Opportunity ID" to make sure it's populated.
	* Include a

 where

 statement in which you filter to where the opportunity ID is null.
	* Give labels to each of the key dimensional columns to indicate whether they are at the beginning or end of the period. For example, if you had a column called "Amount" in your starting point DataSet, you would include the line

 ob. `Amount` as `Beginning Amount`,

 in the MySQL.
4. Generate an output DataSet.


 Once you have done a successful FULL OUTER JOIN, you should have a new DataSet with one row for every opportunity. Each row should provide information for both the beginning and end snapshot dates, including the status, amount, and close date. The DataSet should look something like the following:

This DataSet becomes the basis for all the buckets you render in the waterfall chart.


###
 Part 2 - Building the Buckets


1. Start a new MySQL DataFlow in the Data Center.
2. Add the DataSet you created in part 1 as the input DataSet in your DataFlow.
3. For the transform, create a query for each bucket you want to render in your chart.

* Give each bucket a hard-coded column called "Bucket" and enter the label for whatever that subset of data ties to.


	 In the below example, each query returns opportunities that make up the beginning pipeline.
	* Include a

 union all

 statement after each bucket section. (UNIONs are recommended because it is possible an opportunity may fall into more than one bucket.)
4. Generate an output DataSet.


###
 Part 3 - Building the Card


1. Build your Waterfall card in Analyzer, making sure to assign columns as follows:

* **Summary Group - "**
	 Bucket" column
	* **Item Names -**
	 "Bucket" column
	* **Value -**
	 The column with your amount data (use the default SUM aggregation)

This will give you a Waterfall chart showing your beginning and ending points with all increases and decreases in between.

##
 Part 4 - Validating

With a Waterfall card, all of the positive amounts should be equal to the negative amounts, i.e. they should have a net of 0. If your values are not balanced, the chart will display a "Summary Ending Pipeline" value that tells you the discrepancy in the data. In the following example, the positive and negative amounts are off by $1000.

This indicates there is an issue in the data you need to fix. To do this, follow these steps:

. Build a table card based on the DataSet being used to calculate the buckets.


	* Create a separate Beast Mode calculation for every bucket.


	 For the "Beginning Pipeline" bucket, the Beast Mode would look something like this:


	`Sum(case when `Bucket` = ‘Beginning Pipeline’ then `Amount` else 0 end)`
	* Include your "Amount" column (using the default SUM aggregation) in the table as well, and change the label to "Unexplained Variance."
2. Go to the Details view for the table card you just built.
3. Sort by the "Unexplained Variance" column to see which opportunities have problems.


 For example, in the following card, note that one opportunity has an unexplained variance of -$1,000. By sorting, it is easy to identify the problem opportunity. You can then look at the other columns to see if there has been any activity contributing to this discrepancy. Because there has been no activity here, we can assume the problem involves the query itself. In this case, you would go back into the DataFlow and try to pin down and fix the problem.
4. Fix the situation.


 You will know the problem is fixed when all "Unexplained Variance" values go to 0 and the "Summary Ending Pipeline" bar disappears from the card.


