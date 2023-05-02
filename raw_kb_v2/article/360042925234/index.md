

Intro
-------

In Analyzer, you can set "Outlier Filters" on a multi-line line chart. This allows you to filter out any lines with points above, below, or in between the value or values you set. If any point on a line does not pass the filter,
 *that entire line is filtered out*
 .


 You configure Outlier Filters in
 **Chart Properties > Outlier Filters**
 . There are two properties in
 **Outlier Filters**
 to be aware of:

 **Show When Points Above**
 . Filters your line chart to show only those lines with any values
 *above*
 the value you specify.
* **Show When Points Below**
 . Filters your line chart to show only those lines with any values
 *below*
 the value you specify.

Note that
 *any*
 values above the filter set in
 **Show When Points Above**
 or below the filter set in
 **Show When Points Below**
 count toward this filter. So if you entered

5000

for the
 **Show When Points Above**
 property, and only one point exceeded 5000, the line would still appear.


 You can use
 **Show When Points Above**
 and
 **Show When Points Below**
 in tandem, to show only those lines within a given range. You do this by entering a larger value in
 **Show When Points Below**
 than in
 **Show When Points Above**
 . Again, note that if any point on a line falls outside the range you set, the line does not appear. If no lines have all points within the filter range, a "No data in filtered range" error appears.


**Note:**

When using Outlier Filters, keep in mind that if the date grain of your line chart changes, this could also change the values that are above or below the threshold(s) you have set, resulting in lines disappearing unexpectedly. For example, let's say you had a line chart with a weekly date grain and you set the
 **Show When Points Above**
 property to

500

. Let's also say the line in the chart has several points exceeding 500. Because there are points above the threshold, the line appears. Let's next say you go back into Analyzer and change the date grain to daily. This causes the individual values on the line to fall below the threshold of 500 (because they are no longer aggregated into weekly values). Thus, the line disappears.

Example
---------

Dottie Birch is the Social Media Marketing manager for her company, Kablinko Toys. She owns the following card that shows all visits to the company website from various social media networks made between January and March in 2014.

Because there are so many social media networks represented here, the chart is difficult to read. Dottie decides to filter the chart to show only those networks that brought in more than 1,300 visitors. She enters the number

1300

for the
 **Show When Points Above**
 property. The chart then filters out all networks without any points at or above 1,300. The only two networks that pass the filter are Facebook and Twitter:

Dottie can also take the opposite approach and show all lines with points below a given threshold. She deletes the value from
 **Show When Points Above**
 and enters the value

53

for
 **Show When Points Below**
 . The chart now filters out all lines with no points at or below 53. Only Pinterest, YouTube, Google+, and LinkedIn have values this low, so these are the lines that remain:

Finally, Dottie decides to try filtering out all lines with outlier values and leaving the others. She sets
 **Show When Points Above**
 to

50

and
 **Show When Points Below**
 to

800

. The only three social networks that pass both filters are Pinterest (with a low value of 50 and a high value of 614), YouTube (50 and 744), and Google+ (50 and 662). All of the other networks have values that are two low, too high, or both, and therefore are filtered out of the chart.

Setting outlier filters
-------------------------

*To set outlier filters on a Line chart,**

. Select
 **Outlier Filtering**
 in
 **Chart Properties**
 .
2. Do one of the following:

* To filter to show only those lines with any points ABOVE a certain value, enter that value for
	 **Show Points Above**
	 .
	* To filter to show only those lines with any points BELOW a certain value, enter that value for
	 **Show Points Below**
	 .
	* To filter to show only those lines with all points within a certain range of values, enter the minimum value in
	 **Show Points Above**
	 and the maximum value in
	 **Show Points Below**
	 .


