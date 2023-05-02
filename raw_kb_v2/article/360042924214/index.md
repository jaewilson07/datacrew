

Intro
-------

Find answers to frequently asked questions about the Analyzer here.

####
 What is the difference between the "Sum" and "Count" aggregation types?

"Sum" adds together all of the values in a DataSet column to yield a total of those values, whereas "Count" merely counts the number of items in a column and presents that number as a total. A "Count" aggregation can be applied to a column of
 *any*
 data type—value, string, or date. A "Sum" aggregation, however, can only be applied to a value column.


 For example, in the following DataSet, the "Invoice" and "Cust" columns have the "Count" aggregation applied. This value is "11" because there are 11 rows of data in the DataSet. The "Amount" column has the "Sum" aggregation applied. This value is "2,071,998" because this is the total of all of the values in this column.

For more information about data types, see

Aggregating your data

.

####
 What are the DataSet row limits for each chart type?

Box Plots and Histograms have a pre-set limit of 100,000 rows of data. Other chart types have a pre-set limit of 25,000 rows (although the charting engine may limit the data further depending on how many series are represented). You can now use the
 **Limit Rows**
 command inside of the Analyzer to set values larger than would otherwise be possible. To keep the responsiveness fast on your Dashboards, the chart engine limits the number of rows it downloads to the browser. Now you can override these limits by explicitly setting these values.

####
 What are the optimal summary number aggregations for each chart type?


 When configuring the summary number for a chart, remember that certain aggregations are more appropriate for some chart types than others. For example, the "Current" aggregation is most appropriate for chart types with a trendline. Using this aggregation with other chart types may not make much sense. A full list of chart types and the appropriate summary number aggregations for each is provided here:

Summary number best practices

.


#####


 How do I include multiple targets in a chart?


 There are a number of ways to include multiple targets in one chart. For example, you may have a

Stacked Bar graph

with multiple regions and you want each region to have its own target.


 Here are some ways in which you can include multiple targets in a chart:


* Use a “Bullet Chart.” A Bullet Chart allows you to set targets for each individual category. For more information, see


 Bullet Chart


 .
* Use a “Grouped Bar with Symbol” graph and make the symbol values the target for each bar. To do this, you must have a column with the targets set for each region.


 For more information about this chart type, see


 Grouped Bar with Line Chart


 .
* Set the targets in a DataFlow. In this way you can compare revenue, sales, etc., with the targets provided in your own data, so that the targets can be a part of the graph.
* Use Beast Mode to set the thresholds. For example, if your chart includes a rate line that should never fall below 5% or go above 10%, you could create the following Beast Mode calculations and then add these as a series to your chart:


	+ Name:

 Upper Limit

 . Calc:

 AVG(.1)
	+ Name:

 Lower Limit

 . Calc:

 AVG(.05

 )


#####
 How do I change the name of a column?

Sometimes when the naming convention in the DataSet has changed, the column will no longer exists. This can happen when the spelling has changed or if letters have had their case changed.  The easiest way to fix this is to simply add back in the correct corresponding columns.

. Go to the card that won’t display, and edit the card.
2. Click, drag, and drop the correct corresponding columns into their respective places.

The card will automatically render once the correct columns are back in their place.
3. Save the changes.


#####
 My bar chart is showing %\_CATERGORY\_TOTAL multiple times for each bar. How do I set the data label properly?

Sometimes you may select the wrong chart type for the data you would like to display. In this example, the user is trying to set up a bar chart with multiple data inputs for each bar. In this case, "Stacked Bar" is the proper chart type. For more information about formatting data labels, see

Formatting Data Label and Hover Text in Your Chart

.

. Go to the card that is displaying multiple values, and edit the card.
2. Navigate to
 **Chart Properties > Data Label Settings**
 .


 Note that the columns are displaying multiple values, but no options exist to change the data labels.


 2. Change the chart type to "Stacked Bar."


 3. In
 **Data Label Settings**
 , select
 **Show One Label**
 .

4. Save the changes.


**How can I show markers in a graph for the average value, minimum/maximum values, standard deviation, etc.?**


 You can do this by going into
 **Chart Properties > Scale Marker**
 . Here you can select the type of calculation for the marker (in the
 **Value Type**
 menu), add text if desired, and configure various other options. For more information, see

Adding Scale Markers to Your Charts

.


**Is it possible to show a total of all rows in a chart?**


 You can do this using a Sumo table, as shown in the following example:

For more information about building Sumo tables, see

Adding a Sumo Card

.


**Why are lines disappearing in my Line graph when I change the date grain?**


 This most likely involves Outlier Filters that have been set on the graph. When using Outlier Filters, keep in mind that if the date grain of your Line graph changes, this could also change the values that are above or below the threshold(s) you have set, resulting in lines disappearing unexpectedly. For example, let's say you had a Line graph with a weekly date grain and you set the
 ****Show When Points Above****
 property to 500. Let's also say the line in the graph has several points exceeding 500. Because there are points above the threshold, the line appears. Let's next say you go back into Analyzer and change the date grain to daily. This causes the individual values on the line to fall below the threshold of 500 (because they are no longer aggregated into weekly values). Thus, the line disappears.


 For more information about Outlier Filters, see

Filtering Outliers in a Line Graph

.


**Why can't I see dates prior to 1990 in my card?**


 KPI charts, which have a date range and grain selected, will not display dates prior to 1990. If you have a business need to see dates prior to this time, please contact your Customer Success Manager to discuss options specific to your instance.


**Why is my `Date` Quick Filter not filtering correctly?**


 When using columns named 'Year' or 'Date', the card can become confused because those are also SQL functions which Domo uses to query DataSets for cards. Therefore, the card engine sometimes is unsure whether to use the column name or call the SQL function. We recommend using more specific column names. For example, 'Model Year' or 'Submission Date'.

