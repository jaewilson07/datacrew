

Intro
-------

You can apply filters to a chart either during the process of powering a Visualization Card or afterwards. When you request to add a filter for a column in your DataSet, Domo automatically determines the data type for that column and provides logical filter options. For example, if you choose to filter a column containing numerical values, the dialog provides "greater than," "less than," and "between" options; and if you choose to filter a column with multiple series, the dialog lets you pick one or more series to narrow down to. You can also filter dates using various date filtering criteria.


 Applying Quick Filters
------------------------

Quick Filters are pre-defined filters you can use to create a self-guided experience for others to explore data on a Card and answer questions for themselves. When you apply a Quick Filter to a column on a Card, a new pane is added to the Card containing quick filter checkboxes for those columns. Any user who opens the Details view for this Card can then show or hide columns quickly and easily just by selecting those columns in the Quick Filter pane.

*Video - Adding Quick Filters in Analyzer**


**Video - Searching in Quick Filters**

*To add Quick Filters to a Card,**

. Open the Analyzer for the Card you want to add Quick Filters to.
2. Drag the column you want to provide filters for into the
 **Filters**
 pane.
3. Turn on the
 **Display as Quick Filter**
 option.

For example, let's say Betty Symington, the creator of the "Shipping Costs per State" Card, wants to provide users with a quick filter for toggling states in the Card. In the Analyzer for the Card, she drags the "Customer State" column into the
 **Filters**
 pane then turns on
 **Display as Quick Filter**
 , as follows:

This adds a "Customer State" Quick Filter to the chart, as shown here:

Betty then saves the Card. The "Customer State" Quick Filter is now a permanent addition to the Card until someone removes it in the Analyzer.


 Let's next say that user Brad Storch, manager of the Southeast region for the company, opens the Details view for the Card. Brad only wants to compare data for the three states in his region—the data for all other states is unimportant to him and only clutters the graph. So he first checks and then unchecks the
 **Select All**
 box to clear all checkboxes. Then he checks the boxes for Florida, Georgia, and Alabama to compare data for those states.


**Note:**
 Currently, Analyzer supports up to 20 quick filters on a Card. Adding more will not allow you to save the Card.

##


###
 Filter types for Quick Filters

You can add Quick Filters for any of the three data types in Domo—string/text, values, and dates. You can have as many Quick Filters for a Card as you want. In the previous example, Betty could also add Quick Filters for the product categories as well as the actual shipping costs. Brad could then apply filters for these facets as well.


 When you add Quick Filters for string data, you can choose how users select the desired filters. You do this by clicking on the gear menu at the top of the Quick Filter and choosing
 **Match values**
 ,
 **Multi select**
 , or
 **Single select**
 . With
 **Match values**
 , users locate the filters they want using search filters such as
 **contains**
 ,
 **starts with**
 , etc. With
 **Multi select**
 , users check boxes for columns they want to show (as shown in the previous example). They can check the
 **Select All**
 box to select the boxes for all columns or select this box a second time to clear all the checkboxes. Note that clearing all checkboxes doesn't cause the graph to appear blank; all columns are still shown. Filtering does not occur until you select specific checkboxes. With
 **Single select**
 , users select a single filter by clicking radio buttons. The
 **Multi select**
 and
 **Single select**
 options both include standard search bar so you can narrow down the available filters.


 When you add Quick Filters for date data, users can select from a number of conditional options such as "is greater than," "is between," etc., as well as use a date picker to choose the date(s) they want to filter on.

When you add Quick Filters for value data, users can select from a number of conditional options such as "is greater than," "is between," etc., as well as enter the specific value(s) they want to filter on. A slider is provided that shows the minimum and maximum values in the column and lets you select any number between these.

You can hide any Quick Filter by clicking the downward-pointing arrow next to it.


 If you have multiple Quick Filters, you can rearrange them the way you want. You do this by clicking the
 **Reorder**
 link at the top of the Quick Filters pane then clicking the handles (the three-line icons) and dragging the bars to where you want. You can also rename your Quick Filters in this view by clicking on the current name and entering the desired new name.


 You can also now add Aggregated Filters as a Quick Filter. For more information, see

Aggregated Filters

.

##
 Editing Quick Filters

A Quick Filter can be changed in Analyzer by accessing the current filters or in the Details view of the Card.


 To access existing
 **Quick Filters**
 in the Details view of a Card, click on the
 **Expand Quick Filters**
 toggle

.

The
 **Quick Filters**
 pane will open to view and edit all current Quick Filters.


**Note:**
 If a Card has no Quick Filters saved, selecting the toggle

will expand to show the Insights tab only.

Filtering chart data
----------------------

You can apply filters to your DataSet data so your Visualization Cards display only the information you want viewers to see. Not only does this make it possible to glean the most valuable data from a lengthy report, but you can also create multiple charts from a single DataSet by applying different filters to that DataSet.


 This section discusses applying filters to Visualization Cards. For information about filtering all of the Visualization Cards on a Page, see

Adding Drill Path to Your Chart

.


 You can apply filters to a Visualization Card in the following locations:

 The Analyzer. When you apply filters to a Card in Analyzer, those filters become an integral element of the Card and are applied when others view the Card.


 For more information about the Analyzer, see

Analyzer Layout

.
* The
 **Chart**
 tab in the Details view. These filters apply only for you until you close the Details view, and are
 *not*
 applied when others view the Card.


 For more information, see

Filtering Data in a Card Details View

.

Keep in mind the following when applying filters:

 You can filter off of metadata or column/row data that is
 *not*
 part of your table.
* Filters are applied to the raw data in your DataSet, not to your chart itself. For example, if you applied a filter to the "Profit" column, it would apply to each cell in that column, not to the summed data as shown in the chart.
* It is possible to filter on NULL values, but to do so you must use Beast Mode to convert the NULL values into values that can be filtered. For example:


`CASE WHEN `column` IS NULL then 'Filter' ELSE 'Do not Filter' END`


 For more information about Beast Mode, see

Adding a Beast Mode Calculation to Your Chart

.
* Page filters may be applied to a Card when viewing the Card in the Details view or when drilling to the Card from the Details view. Page filters are
 *not*
 applied to a Card when viewing the Card directly, either through a link or a search. You can apply or edit filters in the Details view of a Card. For information about applying filters to a Page, see

Applying Page-Level Filters

.
* You can filter dates either using the method for filtering dates (the
 **Filters**
 field) described in this topic or using the date-specific filtering interface. For information on the date filtering interface, see

Filtering dates

, below.


**Note:**
 Domo recommends that you use
 *only one*
 of the date-filtering methods. Because these methods function independently, using more than one method at a time may cause conflicts in date filters and date ranges.


* If you export a Card from the Details

Page with filters applied, the data remains filtered in the exported Card. For more information about exporting Cards, see

Sharing Content in Domo

.
* If PDP (Personalized Data Permissions) is enabled for the DataSet powering your chart, your filter options are limited to what is available to you based on your policy. For example, if you are a member of a policy that can view content only for western states, you can filter only on content that is available to you. Likewise, if you have access to all rows in a policy, you can filter on any rows you want, and in the Details view of a Card (but not in Analyzer) you can choose whether to filter on all data or select specific policies. For more information about PDP, see

Personalized Data Permissions (PDP)

.


###
 Applying temporary filters

Filters you apply in the Details view for a Card are TEMPORARY and will not be preserved when you leave the Details view. They are also viewable only by you; other users who open this Details view will not see the filters you set.

#####
**To apply a TEMPORARY filter to a Card,**


1. Open the Details view for the Card.
2. Click

.


 A
 **+**
 button appears. If PDP policies are enabled on the DataSet
 *and*
 you have access to all the rows, a button reading
 **Viewing All Data**
 also appears. If you see this button, continue to the next step; otherwise, skip the next step.
3. (Conditional) If you want to filter on all rows in the DataSet, ignore
 **Viewing All Data**
 . If you want to filter on a specific policy, do the following:

1. Click
	 **Select Policies**
	 .
	2. Check the boxes for all policies you want to filter on.
	3. Click
	 **Apply**
	 .
4. Click the
 **+**
 .


 A list of the column labels from your DataSet appears.
5. Select the column you want to apply a filter to.
6. Do one of the following:

* If the selected column contains string data,


		1. Select the checkboxes for the items you want to be represented in the chart.


		 You can select all of the checkboxes by clicking
		 **All**
		 or deselect all of the checkboxes by clicking
		 **None**
		 .


		 You can filter the items that appear in the list by entering a keyword in the
		 **Filter by**
		 field.


		**Note:**
		 You can ignore the

	 menu that appears here. In the Page view, this menu lets you filter columns by DataSet. However, since Cards are powered by only one DataSet, there is no need to filter.
		2. Specify whether the items you have checked appear or do not appear in your chart by selecting
		 **In**
		 or
		 **Not**
		 In from the menu in the top right.
		3. Click
		 **Apply**
		 .

	**Note:**
		 Currently, only 500 unique values will show in the Filter menu.
	* If the selected column or row contains amount data,


		1. Select a condition statement from the menu.
		2. Enter the desired amount in the field.


		 For example, if you wanted the chart to show only data greater than $50,000, you would select is less than from the menu then enter "50,000" in the field.
		3. Click
		 **Apply**
		 .
	* If the selected column or row contains date data,


		1. Select a condition statement from the menu.
		2. Click the field to display a calendar, then select the date you want in the calendar.
		3. (Conditional) If you selected between as the condition, click the second field and select the second date for your range from the calendar.
		4. Click
		 **Apply**
		 .


		 For more information about using the Date field to filter dates, see

	 Filtering dates

	 , below.

Your chart updates with the new filter(s) applied. Remember that because you applied the filters in the Details view, they are TEMPORARY and will not be preserved when you leave the Details view. They are also viewable only by you; other users who open this Details view will not see the filters you set. You can also apply an Aggregated Filter as a TEMPORARY filter. For more information, see

Aggregated Filters

.

*Note:**
 If you are attempting to modify filters in a Card Details view and nothing happens when you check or uncheck a box for a filter, this is most likely because this filter has been set in the Analyzer and is an implicit element of the Card.


###
 Applying permanent filters

Filters you apply to a Card in the Analyzer are PERMANENT until you or another user goes back into the Analyzer and modifies them. These filters become an implicit part of the Card. They are viewable by all users and persist when you leave the Details view.


 In the Analyzer, you can apply filters using one of three methods—
 **Selection**
 ,
 **Range**
 , and
 **Match Values**
 .

 With
 **Selection**
 , a list of values for the selected column is provided and you check the boxes for all of the values you want to filter. This option is available for string, amount, and date data.
* With
 **Range**
 , you specify the range of values you want to filter. This option is available for amount and date data only.
* With
 **Match Values**
 , you can apply keyword filters such as
 **contains**
 ,
 **starts with**
 ,
 **does not end with**
 , and so on. This option is available for string data only.

*To apply a PERMANENT filter to a Card,**

. Open the Analyzer view for the Card.
2. Drag the column you want to filter into the
 **Filters**
 box.
3. If the selected column contains STRING data, do one of the following:


	* Apply filters to a list of column values by doing the following:

	1. Leave the dropdown menu in the upper right corner of the dialog set to
		 **Selection**
		 .
		2. Check the checkboxes for the items you want to be represented in the chart.


		 You can select all of the checkboxes by clicking
		 **All**
		 or deselect all of the checkboxes by clicking
		 **None**
		 .


		 You can filter the items that appear in the list by entering a keyword in the
		 **Filter by**
		 field.


		 You can also indicate whether the items you have checked appear or do not appear in your chart by selecting
		 **In**
		 or
		 **Not In**
		 from the menu in the top right.
	* Apply keyword filters by doing the following:

	1. Select
		 **Match Values**
		 in the menu in the top right corner of the dialog.
		2. Select the desired conditional statement from the
		 **Contains**
		 menu.
		3. Enter the filter keyword in the
		 **Filter**
		 field.


		 For example, if you wanted to filter out all strings containing the word "South," you would select
		 **does not contain**
		 as the conditional statement then enter the word

	 South

	 in the
		 **Filter**
		 field.
		4. (Optional) To see a list of all strings that pass your filters, click
		 **Show preview**
		 .

	**Note:**
		 Currently, only 500 unique values will show in the Filter menu.
	* Apply aggregations by doing the following:
		1. Select
		 **Aggregation**
		 in the menu in the top right corner of the dialog.
		2. The aggregation will be set to Count.
		3. Select a condition statement from the menu.


		 One or more fields may appear, depending on the condition statement.
		4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


		 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
		 **is between**
		 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
4. If the selected column contains AMOUNT data, do one of the following:


	* Apply filters based on a range by doing the following:

	1. Leave the dropdown menu in the upper right corner of the dialog set to
		 **Range**
		 .
		2. Select the Aggregation method (default is No aggregation.)
		3. Select a condition statement from the menu.


		 One or more fields may appear, depending on the condition statement.
		4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


		 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
		 **is between**
		 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	* Apply filters from a list of column values by doing the following:

	1. Select
		 **Selection**
		 in the menu in the top right corner of the dialog.
		2. Check the checkboxes for the values you want to be represented in the chart.


		 You can select all of the checkboxes by clicking
		 **All**
		 or deselect all of the checkboxes by clicking
		 **None**
		 .


		 You can filter the values that appear in the list by entering a keyword in the
		 **Filter by**
		 field.


		 You can also indicate whether the values you have checked appear or do not appear in your chart by selecting
		 **In**
		 or
		 **Not In**
		 from the menu in the top right.
5. If the selected column contains DATE data, do one of the following:


	* Apply filters based on a range by doing the following:

	1. Leave the dropdown menu in the upper right corner of the dialog set to
		 **Range**
		 .
		2. Select a condition statement from the menu.


		 One or more fields may appear, depending on the condition statement.
		3. Enter the desired dates in the fields as necessary.


		 For example, if you wanted your Card to show information for dates between 1-31-2014 and 4-30-2015, you would select
		 **is between**
		 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.
	* Apply filters from a list of dates found in the column by doing the following:

	1. Select
		 **Selection**
		 in the menu in the top right corner of the dialog.
		2. Check the checkboxes for the dates you want to be represented in the chart.


		 You can select all of the checkboxes by clicking
		 **All**
		 or deselect all of the checkboxes by clicking
		 **None**
		 .


		 You can filter the dates that appear in the list by entering a keyword in the
		 **Filter by**
		 field.


		 You can also indicate whether the dates you have checked appear or do not appear in your chart by selecting
		 **In**
		 or
		 **Not In**
		 from the menu in the top right.
	* Apply aggregations by doing the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for dates between 1-31-2014 and 4-30-2015, you would select
	 **is between**
	 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.

Filtering dates
-----------------

In the Analyzer, you can filter date columns to show the information for a desired date range by doing either of the following:

 Selecting the desired Card date range, date grain ("graph by" option), date range field (if more than one date column have been applied to the Card) and date filter in the date options menu that appears above your chart (recommended). If you are building a

Period-over-Period chart

, you can also configure
 **Compare To**
 options.
* Dragging the desired date column into the
 **Filters**
 box, then specifying filter options.


**Note:**
 Domo recommends that you use only one of the date-filtering methods. Because these methods function independently, using more than one method at a time may cause conflicts in date filters and date ranges.

This topic discusses using the date filter menu that appears above your chart. For information about filtering dates using the
 **Add Filter**
 box, see

Changing the Date Format in Your Chart

.

##
 Date filter menu

The date filter menu appears in the chart preview pane, above the top right corner of the preview. This menu only appears after you have applied a date column to the chart. Clicking on this menu opens a pop-up with a number of sub-menus:

 **Card Date Range**
 . This lets you choose the range of data shown in the chart. By default this is set to
 **All Time**
 , meaning that filters are not yet being applied to the dates in this column. (Only dates within 2000-2030 are supported.)
* **Graph By**
 . This lets you choose the date grain for the chart. The date grain determines whether the data is shown by week, by month, etc. This menu is described in more detail in

Changing the unit of time used to represent data

. By default no date grain is selected, meaning the chart uses the same date grain used in your DataSet (for example, if data is broken down by week in the DataSet, it is automatically broken down by week in the chart).
* **Compare To**
 . Available for Period-over-Period chart types only. Here you specify the time period(s) the period you selected in
 **Card date range**
 is being compared to. This menu is discussed in much more detail in

Period-over-Period Charts

.
* **Date Range Field**
 . This lets you choose the date column you want to filter. If only one date column has been applied to the chart, this menu is grayed out.
* **Date Filter**
 . This lets you filter dates within the date range selected in
 **Card Date Range**
 .
* **Use Fiscal Calendar**
 . This lets you toggle your fiscal calendar if one has been set up in your instance. For more information about having a fiscal calendar configured, see

Using A Fiscal Calendar

.


####
 Changing the date range for a chart

Domo provides a wide variety of options you can use to determine the date range that appears in your chart. You can select a specific time period (this week, last year, week to date, etc.) or specify a custom range (such as between two specified dates).


**To change the date range for a chart,**

. Click the date range in the top right corner of the chart preview area to show the date configuration options.


 If you do not see a date range, this means you have not yet applied a date range column to your chart.
2. Select the desired date range in the
 **Card Date Range**
 menu.

Changing the unit of time used to represent data ("date grain")
-----------------------------------------------------------------

You can use the
 **Graph By**
 menu to change the unit of time or
 *date grain*
 by which data is shown. For example, a chart could show data by day, by week, by month, etc. Essentially, by changing the date grain of a chart, the "zoom level" in the chart's timeline changes. For example, in a chart showing data for 2009, you could select a monthly date grain, in which case twelve data points would appear, one per month; a daily date grain, with 365 data points; an hourly date grain, with 24 date points; a yearly date grain with only a single data point; and so on. You could not zoom out farther than a year, however, because the date range includes only one year.


**To change the date grain for a chart,**

. Click the date range in the top right corner of the chart preview area to show the date configuration options.


 If you do not see a date range, this means you have not yet applied a date range column to your chart.
2. Select the desired date grain in the
 **Graph By**
 menu.

In the following example, the user has selected
 **Weekly**
 from the date grain picker; therefore, the trendline represents the data in the column from week to week.

The user then changes the date grain to
 **Monthly**
 . This allows the user to get a broader view of the data.

Notice that the value increases sharply in July, which may warrant further investigation. This trend would have been more difficult to identify had the date grain been set to
 **Daily**
 or
 **Weekly**
 . However, a smaller date grain may help to identify spikes or lows for days or weeks.

*Notes:**


* In supported chart types used to display time data, such as Line and Bar charts, the date grain is automatically determined and applied in a timescale. For example, if your DataSet contains seven months of data, the timeline would automatically be broken down into months, even if data items appeared for individual days in your DataSet. If you manually change the date grain, the timeline shows dates as they appear in your DataSet. You can reset the default date grain and automatic time scale in a chart by selecting
 **None**
 in the
 **Graph By**
 menu.


 If you do
 *not*
 want the time scale in a chart, you can disable it by clicking
 **Chart Properties > Category Scale > Never Use Time Scale**
 . When selected, date data appears as it does in your DataSet, using individual dates and applying the
 **Date Output Format**
 setting.


 For more information, see

Chart Properties

.
* By default, when a chart uses a weekly date grain, weeks are represented with week numbers, e.g. "Week 4" for the fourth week of the year. If you want, you can change this so weeks are shown with specific dates instead. For more information, see

Changing the Date Format in Your Chart

.
* Domo only displays data from the year 1990 and forward when using a date grain in chart. This is to ensure optimal performance in Card rendering. You can see all years that exist in your data if it is set to
 **Graph by None**
 .


###
 Limiting date data in a chart

In addition to selecting the date range for your chart and choosing the date grain, you can filter the data that appears within the selected date range. You do this in the
 **Date Filter**
 sub-menu. You can filter date data using any of a number of conditional statements, such as "is greater than," "is less than or equal to," "is between," etc. For example, if you only wanted your chart to show data for August 12th, 2014 and later, you would select
 **is greater than or equal to**
 , then select August 12th, 2014 in the calendar.


 When you set a filter for date data in this way, the filter appears in your
 **Filters**
 pane. If desired, you can quickly remove the filter by mousing over it and clicking the "x" that appears. For more information about the
 **Filters**
 pane, see

Filtering chart data

.


**To limit the date data in a chart,**

. Click the date range in the top right corner of the chart preview area to show the date configuration options.


 If you do not see a date range, this means you have not yet applied a date range column to your chart.
2. Select the desired conditional statement in the
 **Date Filter**

menu.
3. Click in the blank field to open the date picker tool.
4. Select the desired date in the date picker.


 (If you chose
 **is between**
 as your conditional statement, you will need to select two dates, one as the start date and the other as the end date.)


