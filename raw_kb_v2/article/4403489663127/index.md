

Intro
-------

With Aggregated Filters, you are now able to filter on an aggregated column value. Aggregated Filters can be applied to string, amount, or date columns and are available to be used everywhere Filters are applied:

 Inside the Analyzer

.
* As a Quick Filter

.
* In the Card Details page

.
* On a Dashboard

.

Aggregated Filters inside the Analyzer
----------------------------------------


1. Open the Analyzer view for the Card.
2. Drag the column you want to filter into the Filters box.
3. If the selected column contains STRING data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
4. If the selected column contains AMOUNT data, do the following:
	1. Leave the dropdown menu in the upper right corner of the dialog set to Range.
	2. Select the Aggregation method (default is No aggregation.)
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
5. If the selected column contains DATE data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for dates between 1-31-2014 and 4-30-2015, you would select
	 **is between**
	 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.
	5. Click
	 **Apply**
	 .
6. Once all desired Filters have been applied,
 **Save**
 the Card.

Aggregated Filters as a Quick Filter
--------------------------------------

There are two parts to using Aggregated Filters as a Quick filter. First is

creating the Aggregated Quick Filter

, and second is

using the Aggregated Quick Filter

.

##
 Creating the Aggregated Quick Filter


1. Open the Analyzer view for the Card.
2. Drag the column you want to filter into the Filters box.


**Note:**
 Only columns that contain AMOUNT data can be saved as an Aggregated Quick Filter.
3. Leave the dropdown menu in the upper right corner of the dialog set to Range.
4. Select the Aggregation method (default is No aggregation.)
5. Enable the
 **Display as Quick Filter**
 slider.
6. Click
 **Apply**
 .
7. Rename the Quick Filter by clicking on the column name in the Quick Filter list next to the Chart Types so that the aggregation type is in the title.


 For example, if you chose the aggregation of
 **Sum**
 on your column called Amount, you would name your column Sum of Amount. This will make sure that your users understand the aggregation that is applied to the column.
8. Once all desired Filters have been applied,
 **Save**
 the Card.


###
 Using the Aggregated Quick Filter


1. 1. Under the desired Quick Filter, select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	2. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields OR use the slider bar to select the values.


	 For example, if you wanted your Card to show information for amounts between 500,000 and 5,000,000, you would select
	 **is between**
	 from the menu, enter "500000" in the first field, and enter "5000000" in the second field. Or you would drag the slider bar until the values in the fields match the numbers you are looking for. The Minumum and Maximum value for the column will be displayed underneath the slider.

Aggregated Filters in the Card Details view
---------------------------------------------


1. Open the Details view for the Card.
2. Click

.


 A
 **+**
 button appears. If PDP policies are enabled on the DataSet
 *and*
 you have access to all the rows, a button reading Viewing All Data also appears. If you see this button, continue to the next step; otherwise, skip the next step.
3. (Conditional) If you want to filter on all rows in the DataSet, ignore Viewing All Data. If you want to filter on a specific policy, do the following:

1. Click the dropdown arrow next to
	 **All Rows**
	 .
	2. Click
	 **Select Policies**
	 .
	3. Check the boxes for all policies you want to filter on.
	4. Click
	 **Apply**
	 .


	 For more information about PDP, see

 Creating and Deleting PDP Policies

 .
4. Click the
 **+**
 .


 A list of the column labels from your DataSet appears.
5. Select the column you want to apply a filter to.
6. If the selected column contains STRING data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
7. If the selected column contains AMOUNT data, do the following:
	1. Leave the dropdown menu in the upper right corner of the dialog set to Range.
	2. Select the Aggregation method (default is No aggregation.)
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
8. If the selected column contains DATE data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for dates between 1-31-2014 and 4-30-2015, you would select
	 **is between**
	 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.
	5. Click
	 **Apply**
	 .

Aggregated Filters on a Dashboard
-----------------------------------


1. Navigate to the Dashboard in Domo that you want to filter.
2. Click

. (Some system Pages, such as the Shared Page, do not include this option.)


 A bar appears with
 **Filter Views**
 , a
 **+**
 icon, and
 **Save Filters**
 buttons. If PDP policies are enabled on DataSets used in any Cards in the Page,
 *and*
 you have access to all the rows, a button reading
 **All Rows**
 appears.
3. (Conditional) If you want to filter on all rows in PDP-enabled DataSets used in the Page, leave the PDP options set to
 **All Rows**
 . If you want to filter on a specific policy, do the following:

1. Click the dropdown arrow next to
	 **All Rows**
	 .
	2. Click
	 **Select Policies**
	 .
	3. Check the boxes for all policies you want to Filter on.
	4. Click
	 **Apply**
	 .


	 For more information about PDP, see

 Creating and Deleting PDP Policies

 .
4. Click
 **+**
 .


 A list of all column names used in DataSets in Cards in this Page appears. If a column name is used in more than one DataSet, an arrow appears to the right of the name so you can filter down to the desired DataSet if you want.
5. Click the name of the column you want to filter.


 Alternatively, if the column name is used in more than one DataSet and you want to filter to show just the rows in a specific DataSet, you can click the arrow next to the column name to bring up a dialog with the names of all the applicable DataSets. Here you can check the boxes for all the DataSets you want to show rows for (or simply select all DataSets by checking the
 **Select all**
 box).


 If you select a column that appears in more than one DataSet without filtering down to a specific DataSet, the columns from the DataSet powering the most Cards in the Page will be used for the Filter.


 After you select a column or DataSets, a
 **Filter**
 button appears on the left side of the gray bar, and a dialog appears in which you can select your Filters. The interface components of the dialog differ depending on whether the column or row you selected contains series, amount, or date data.
6. If the selected column contains STRING data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
7. If the selected column contains AMOUNT data, do the following:
	1. Leave the dropdown menu in the upper right corner of the dialog set to Range.
	2. Select the Aggregation method (default is No aggregation.)
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for amounts between 200,000 and 300,000, you would select
	 **is between**
	 from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.
	5. Click
	 **Apply**
	 .
8. If the selected column contains DATE data, do the following:
	1. Select
	 **Aggregation**
	 in the menu in the top right corner of the dialog.
	2. The aggregation will be set to Count.
	3. Select a condition statement from the menu.


	 One or more fields may appear, depending on the condition statement.
	4. (Conditional) If one or more fields appeared when you selected a condition statement, enter the desired amounts in the fields.


	 For example, if you wanted your Card to show information for dates between 1-31-2014 and 4-30-2015, you would select
	 **is between**
	 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.
	5. Click
	 **Apply**
	 .


