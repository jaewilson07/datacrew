


**Note:**
**Dashboard**
 is the term for the section of the Domo interface where you can organize and view your cards. It replaces the term
 **Page**
 .

Intro
-------

You can use Page Filters to apply data filters that affect all of the KPI, Sumo, and Domo App Cards powered by a specified DataSet on a dashboard. All such cards with applied filters are marked with a

icon. In this way, you can quickly spot all cards on the dashboard for which you have applied filters. For example, you could set a filter for all cards powered by a specified DataSet to show values falling under a specified threshold. All cards powered by that DataSet would then be filtered to show only the specified information.


 If PDP (Personalized Data Permissions) is enabled for the selected DataSet, your filter options are limited to what is available to you based on your policy. For example, if you are a member of a policy that can view content only for western states, you can filter only on content that is available to you. Likewise, if you have access to all rows in a policy, you can choose whether to filter on all data or select specific policies. For more information about PDP, see

Creating and Deleting PDP Policies

.


 The Page Filters applied to a dashboard are

 somewhat personal customizations. When a Page Filter is saved, the values selected affect your view only and others do
 *not*
 see the Page Filter values you add.  You can save specific filter configurations as "Filter Views" and then choose your desired Filter View when you navigate to the dashboard. Only you see your saved Filter Views. The only exceptions to this are when Filter Views are saved as the "default" or are shared with everyone, in which case all visitors to the page see them.
* "sticky" customizations that remain until you remove them.
* inherited by a card using the filtered DataSet when viewing or drilling to the card in the Details view.
* *not*
 applied to a card when viewing the card directly, either through a link or a search.

You can apply or edit Card Filters in the Details view of a card. For information about applying Filters to KPI Cards, see

Adding Filters to Your Chart

.


 When adding date Filters, you can choose to apply Filters to a range of dates or to individual time units (which may be days, weeks, months, etc., based on the date grain of the data).

*Important:**
 When adding subsequent cards to a dashboard (that is, all cards after the first), you must use the
 **Existing Data**
 option and select your original DataSet. If you re-add the same DataSet using the
 **Excel**
 or
 **Google**
 options, filtering does not work.


---


**Note:**
 If you have a Participant default security role, you cannot share filter views or set default filter views for the page, but you can add and save filter views for personal use. Participants can also select a filter shared with them, make changes to the filter and save it as a new filter view. The original shared filter view will not be affected. If you have an Admin, Privileged, or Editor default security role, you can create, share, and edit existing shared views, or set a shared filter view as the default. You can also do this if you have a custom role with Edit Pages enabled. For more information about default security roles, see

Managing Custom Roles

.

*Video - Filtering Pages with Filter Views**


 Controlling How Page Filters Affect Your Dashboard
----------------------------------------------------

Dashboard owners, users with an Admin default security role, and users with a custom role with the Manage pages grant enabled can control whether Page Filters are available on a dashboard, allow users to add new filters, and hide the filter icon on their cards.


**To access Filter options,**


 1. Navigate to the dashboard in Domo that you want to filter.


 2. Select

*Dashboard Options**
 .


 The dashboard options menu displays.


 3. Select
 **Filter options**
 from the menu.

4. To disable the adding of Filters to your Page, deselect the toggle for
 **Show filter bar**
 .

*Note:**
 Hiding the filter bar will clear all filters. Any saved Filter Views are still saved but are not accessible when hidden.

5. (Conditional) If Show filter bar is enabled, you can select:


 Allow adding of new filters


 Allow global date filters


 Allow segments


 These settings are enabled by default.

6. To disable the filter icons on your cards, deselect the toggle for Show filter icons.

Applying Page Filters
------------------------

Use the following instructions to apply Page Filters to cards on a dashboard.


 1. Navigate to the dashboard in Domo that you want to filter.


 2. Select

*Show Page filters.**
 (Some system dashboards, such as the
 **Shared**
 dashboard, do not include this option.)


 A ribbon displays with the
 **Filter Views**
 menu, a

button, a date picker, and the
 **Save Filters**
 button. If PDP policies are enabled on DataSets used in any Cards in the Page,
 *and*
 you have access to all the rows, a button reading
 **All Rows**

appears.


 3. (Conditional) If you want to filter on all rows in PDP-enabled DataSets used on the dashboard, leave the PDP options set to
 **All Rows**
 . If you want to filter on a specific policy, do the following:

 Click the dropdown arrow next to
 **All Rows**
 .
* Click
 **Select Policies**
 .
* Check the boxes for all policies you want to Filter on.
* Click
 **Apply**
 .

For more information about PDP, see

Creating and Deleting PDP Policies

.

4. Select

*Add Filter**
 .


 A list of all column names used in DataSets in cards on this dashboard appears. If a column name is used in more than one DataSet, an arrow appears to the right of the name so you can filter down to the desired DataSet.


 5. Select the name of the column you want to filter.


 Alternatively, if the column name is used in more than one DataSet and you want to filter to show just the rows in a specific DataSet, you can click the arrow next to the column name to bring up a dialog with the names of all the applicable DataSets. Here you can check the boxes for all the DataSets you want to show rows for (or simply select all DataSets by checking the
 **Select all**
 box).


 If you select a column that appears in more than one DataSet without filtering down to a specific DataSet, the columns from the DataSet powering the most cards on the dashboard will be used for the Filter.


 After you select a column or DataSets, a
 **Filter**
 button appears in the ribbon and a modal appears in which you can select your Filters. The interface components of the modal differ depending on whether the column or row you selected contains series, amount, or date data.


 6. Do one of the following:

 (Conditional) If the selected column contains string data,

a. Select the checkboxes for each series you want to show in the cards on this dashboard.


 You can choose all of the checkboxes by selecting
 **All**

or deselect all of the checkboxes by selecting

*None**

.

You can filter the series that appear in the list by entering a keyword or a string of characters found in a keyword in the
 **Filter by**

field.


**NOTE**

Finally, if you want to load values from a specific DataSet, you can select


 XXXNAME then choose the desired DataSet. This loads the unique values on that DataSet but applies to all DataSets with that same column name.

b. Specify whether the items you have checked appear or do not appear in your chart by selecting
 **In**

or

*Not In**

from the menu in the top right.

c. Select
 **Apply**

.
* (Conditional) If the selected column contains amount data, do one of the following.

- If you want to filter amounts based on a range, follow these steps:


 a. Leave the menu in the upper right corner set to
 **Range**

.XXXX


 IMAGEXXX

b. Select a condition statement from the menu.


 One or more fields may display, depending on the condition statement.


 c. (Conditional) If one or more fields display when you select a condition statement, enter the desired amounts in the fields.


 For example, if you wanted your Cards to show information for amounts between 200,000 and 300,000, you would select
 **is between**

from the menu, enter "200,000" in the first field, and enter "300,000" in the second field.

- If you want to filter amounts based on specific values from your DataSet, follow these steps:


 a. Select
 **Selection**

in the menu in the XXX

b. Check the boxes for all of the values you want to filter on.


 You can select all of the checkboxes by clicking
 **All**

or deselect all of the checkboxes by clicking

*None.**

Or you can filter the values that appear in the list by entering a string of numbers in the

*Filter by**

field.

If you want to load values from a specific DataSet, you can click


 COPY FROM ABOVE then choose the desired DataSet. This will load the unique values on that DataSet but apply to all DataSets with that same column name.

c. Finally, you can specify whether the items you have checked appear or do not appear in your chart by selecting
 **In**

or

*Not In**

from the menu in the top right.

d. Select
 **Apply**

.

(Conditional) If the selected column contains date data,


1. 1. 1. Do one of the following:

		* If you want to filter dates based on a range...

			1. Leave the dropdown menu in the upper right corner set to
				 **Range**
				 .
				2. Select a condition statement from the menu.


				 One or more fields may appear, depending on the condition statement.
				3. Enter the desired dates in the fields as necessary.


				 For example, if you wanted your Cards to show information for dates between 1-31-2014 and 4-30-2015, you would select
				 **is between**
				 from the menu, select January 1, 2014 in the first field, and select April 30, 2015 in the second field.
			* If you want to filter dates based on specific dates from your DataSet...

			1. Select
				 **Selection**
				 in the dropdown menu in the upper right corner.
				2. Check the boxes for all of the dates you want to filter on.


				 You can select all of the checkboxes by clicking
				 **All**
				 or deselect all of the checkboxes by clicking
				 **None.**
				 Or you can filter the dates that appear in the list by entering a filter string in the
				 **Filter by**
				 field. (For example, if you wanted to filter down to dates from 2010, you would enter "2010" into this field.)


				 If you want to load values from a specific DataSet, you can click

			 then choose the desired DataSet. This will load the unique values on that DataSet but apply to all DataSets with that same column name.


				 Finally, you can specify whether the dates you have checked appear or do not appear in your chart by selecting
				 **In**
				 or
				 **Not In**
				 from the menu in the top right.
		2. Click
		 **Apply**
		 .

The affected Cards in the Page update to reflect the Filters you have selected. In addition, a

icon appears on each affected Card.

*Note:**
 You can also use Aggregated Filters to filter a Dashboard. For more information, see

Aggregated Filters

.

*To edit a Filter,**

. Click the button for the Filter in the gray bar at the top of the Page.


 The dialog for the Filter appears.
2. Edit the Filter settings as desired.
3. Click
 **Apply**
 .

Your changes are applied to the Filter.


**To remove a Filter,**

. Click the button for the Filter in the gray bar at the top of the Page.
2. The dialog for the Filter appears.
3. Click

.
4. Click
 **Continue**
 to confirm the removal.

This Filter is removed, and all of the Cards that used the Filter are updated accordingly.


**To hide Page Filters,**

. Click

, which is located in the upper right area of the Page.

Your Page Filters are hidden and all of the affected Cards are updated. Hiding Filters in this way does
 *not*
 deactivate them completely. If you want to deactivate Filters, you must remove them using the steps above.


 You can reapply your hidden Filters by clicking

.

*Note:**
 Turning off Page Filters does
 *not*
 remove the Filter for all users. The only way to make a Filter on a Card apply to all users is to apply a Filter while editing a Card. Consequently, you cannot persist a Page Filter to multiple Cards for all users.

Using Filter Views
--------------------

Filter views allow you to customize a dashboard to meet the needs of all audiences. Using Filter views, you can do all of the following:

 Create and save your own Filters without affecting anyone else's view.
* Curate and share important views to create alignment on a specific perspective.
* Provide any number of personalized data stories for any person in any role.
* Designate which saved Filter view is the "default" for first-time visitors to a dashboard.

Any user with a default security role of Participant or higher can add Filter views as well as rename, copy, and delete their own Filter views. To share Filter views with all dashboard visitors or set them as the default view for a LOCKED Page, you must either be the dashboard owner or have a role with the Manage Cards and Pages or Edit Pages grant enabled. For UNLOCKED Pages, any user with a default security role of Editor or higher can share Filter views and set default views. For more information about custom roles, see

Locking or Unlocking Page Content

.

###
 Saving a Filter View

Once you save a Filter view, it is added to your
 **Filter Views**
 menu on the left side of the gray filter bar. XXXX From here, you can choose it anytime you visit this page to quickly apply the Filter.

You are the only one who sees Filters you have created,
 *unless*
 a Filter has been designated as the "Default" Filter for the dashboard or is shared with everyone, in which case all users are able to select it. However, just because a default Filter has been set, this does not mean users are required to use it. They are still able to create and set their own Filter views as desired.


 When a default Filter view is configured, those Filters will load anytime somebody visits the dashboard for the first time. For each subsequent visit, the Filters that user had configured the last time they were on the dashboard will load again, starting them where they left off.


 Do the following to create and save a Filter view:


 1. Create the Filter as explained in

Applying Page Filters

, above.


 2. Select
 **Save Filters**
 in the ribbon.


 RESULT??XXXX

3. Select
 **Create New Filter View**
 .


 4. Enter a descriptive name for the new Filter.


 5. (Optional) If you want this to be the default Filter for the dashboard, (in which case, this Filter configuration will be the first thing users see when they open the dashboard,) check the
 **Set as default**
 for everyone box. Be aware that if a default Filter already exists for this dashboard, the new Filter will replace it as the default.


 6. Select
 **Save**
 .


 The new view is added to your
 **Filters view**
 menu.

###
 Updating a Filter View

If you make a change to a Filter, that change is not applied automatically to any Filter views that include it. If you want the Filter views to update, you must do this manually.


 Do the following to update a filter view.


 1. Select
 **Save Filters**
 in the ribbon.

2. Select
 **Update Existing Filter View**
 .


 3. Select the Filter view to update.


 4. Select
 **Update**
 .


 The selected Filter view is now updated.

##
 Renaming a Filter View

You can rename any Filter view you have created, as long as you meet the following criteria:

 You are the dashboard owner
* You have a role with the Manage Cards and Pages or Edit Pages grant enabled
* The dashboard is unlocked and you have a default security role of Editor or higher

For more information about custom roles, see

Managing Custom Roles

.


 Follow these steps to rename a Filter view:


 1. Select the
 **Filter views**
 menu in the ribbon.

Mouse over the Filter View you want to rename and click the

icon that appears.


 Select
 **Rename**
 .


 Enter the desired new name for the Filter view.


 Click
 **Save**
 .

##
 Copying a Filter view

You can copy any Filter view in a Page, even those you haven't created that are set to default. This is a good way to make small changes to an existing configuration without having to rebuild it from scratch.


**To copy a Filter view,**

. Click into the
 **Filter views**
 menu on the left side of the gray filter bar.
2. Mouse over the Filter View you want to copy and click the

icon that appears.
3. Select
 **Copy**
 .
4. (Optional) Enter a new descriptive name for the Filter View.
5. Click
 **Save**
 .


###
 Deleting a Filter view

You can delete any Filter view you have created. You can only delete a default Filter view if...

 you are the Page owner,
* you have a role with the "Manage Cards and Pages" or "Edit Pages" grant enabled, or
* the page is unlocked and you have a default security role of "Editor" or higher.

For more information about custom roles, see

Managing Custom Roles

.


**To delete a Filter view,**

. Click into the
 **Filter views**
 menu on the left side of the gray filter bar.
2. Mouse over the Filter view you want to delete and click the

icon that appears.
3. Select
 **Delete**
 .
4. Click
 **Delete**
 to confirm.


###
 Sharing a Filter view

If you want a Filter view to be available to all visitors to a Page without necessarily being the default view, you can do so by toggling on the
 **Share with everyone**
 option for that Filter View. You can only do this if...

 you are the Page owner,
* you have a role with the "Manage Cards and Pages" or "Edit Pages" grant enabled, or
* the page is unlocked and you have a default security role of "Editor" or higher.

For more information about custom roles, see

Managing Custom Roles

.


**To delete a Filter view,**

. Click into the
 **Filter Views**
 menu on the left side of the gray filter bar.
2. Mouse over the Filter View you want to share and click the

icon that appears.
3. Turn on the
 **Share with everyone**
 option.

Applying dynamic date range Filters
-------------------------------------

You can use dynamic date range Filters to adjust the date range window for all the Cards on a Page. These Filters can be saved and used as the default for all users in a Page. They can also be saved to different Filter Views (described in the previous section). Dynamic date range Filters can be a huge time-saver, since users do not need to manually apply filters to see data for a given date or time range. Also, with dynamic date range Filters, the date range data for your Cards automatically "rolls over" when the current period ends.

*Note:**
 Dynamic date range filters only apply to Visualization Cards and Sumo Cards. They do NOT work on Doc Cards, Poll Cards, Notebook Cards, and Custom Apps.


**Important:**
 Dynamic date rang filters will not work on a Card if, inside of Analyzer, the Graph By of the Card has been set to None.

You choose dynamic date range Filters in the
 **Choose Date**
 menu in the gray filter bar at the top of a Page.

The Filters you choose here are applied to all Cards in the Page that have had a

date column applied in Analyzer

. Filters are applied to each Card's unique date column and take into account date filters that have already been set on the Card. So for example, if a Page contained a Card that was powered by the "Sales Dates" column and the dates were filtered in Analyzer to show March through June, if dynamic date range Filters were set on the Page, the Filters would be applied to the "Sales Dates" column and would only work within the March-June time period. If the dynamic Filters were set outside that time period, the Card would display "No data in filtered range."


 You are able to choose Cards that will not be affected by the dynamic date, by deselecting the
 **Allow global date**
 feature. More information can be found in the

Controlling how Page Filters affect your Page

section above. If you have chosen the
 **Hide Date on Card Details**
 option for a Card, the dynamic date will also not be applied to the Card.


 Most of the options for dynamic date range Filters are the same as those for filtering dates in the Analyzer. In essence, these options are as follows:

 ****Date Range****
 . This lets you choose the range of data shown for all Cards in the Page being powered by date columns. By default this is set to
 ****Default****
 , meaning that all Cards use their own date ranges. A wide variety of other options is available, including the current date period, period-to-date options such as
 **Week to Date**
 , and so on.
* ****Graph By****
 . This lets you choose the date grain for all Cards in the Page being powered by date columns. The date grain determines whether the data is shown by week, by month, etc. This menu is described in more detail in

Changing the unit of time used to represent data

. By default no date grain is selected, meaning the Cards use the same date grain used in their powering DataSets. (For example, if data for a Card was broken down by week in the DataSet, it would be automatically broken down by week in the Card).


**Note:**
 The Date Graph By does not impact Single Value charts. This is to ensure best data practices as Graph By will impact which row is returned in the chart query.

Applying Card-to-Card Filters
-------------------------------

When you apply Card-to-Card Filters in a Page, you can mouse over a specific chart element in a Card, and that same element will be highlighted in all other Cards in the Page that share it. This allows you to make quick correlations between your Cards that might otherwise take hours.


 For example, let's say user Tanya is a manager in her company's retail department. She has access to a Domo Page called "Retail" that includes a number of Cards related to profits and spending for her company, as shown here:

All of these Cards show disparate but related data for roughly the same time period—early 2013 to early 2015—with a monthly date grain. As it is now, Tanya can go into each Card one at a time and see data for a given month. This is useful, but what Tanya really wants to do is compare data for all of the different Cards across the same month. Specifically, she wants to correlate the data for "RT: Gross Profit and Margin," "RT: Gross Margin by Product Line," and "RT: Cost per Conversion" for January 2014. Before Card-to-Card Filters, she probably would have had to look at each Card one at a time, write down the values for January 2014, and finally compare them. But now, all she has to do is mouse over the bar for January 2014 in any of the Cards, and the same bar highlights in all of the others:

*Tip:**

Card-to-Card

Filters work best when the Card size is set to "Large" or "Full." For more information about Card sizing, see

Changing the Size of Cards in a Page

.


 With Card-to-Card Filters, you can also click on a chart element to apply a Filter for that element to all Cards in the Page. For example, if you clicked on the bar for "2014-Jan," all Cards would be filtered to that month. This also works for rows in tables. You can turn off this Filter by clicking the element again.


 Card-to-Card Filters are automatically enabled in

Storytelling Dashboards

. In standard Pages, they can be toggled on or off by Page owners, users with an "Admin" default security role, or users with a custom role with the "Manage pages" grant enabled. They do this by toggling the
 **Interaction filters**
 option, which is located in the wrench menu on the right side of the filter bar.

When this option is enabled on a Page, all users ("Participants" included) can mouse over Cards to see Card-to-Card Filters in action. When the option is disabled, "Participant"-level users cannot apply Card-to-Card Filters.


 Using Filter Cards to filter Card content
-------------------------------------------

You can use

Date Selector

Cards to apply Filters to all of the Cards on a Page. You build these Cards in Analyzer just like any other chart types.


 Filter Cards only work when Card-to-Card Filters are turned on (see the preceding section for more information). If Card-to-Card Filters are not turned on, clicking a Filter opens the Details view for the Card instead of applying the Filter.

##
 Slicer, Checkbox, and Radio Button Cards

Slicer, Checkbox, and Radio Button Cards contains Filters from a DataSet column. Once you have added one of these Cards to a Page, you can click any of the Filters in the Card to apply that Filter to all of the Cards in the Page. With Slicer and Checkbox Cards, you can apply as many Filters as you want. With Radio Button Cards, you can apply only one Filter at a time.


 You can deactivate a Filter by clicking on it a second time.


 The following animated GIF shows an example of this. Here, marketing manager Scott wants to view Eloqua campaign data for email and social media channels. Instead of having to configure Page Filters, all Scott has to do is click all of these Filters in the Slicer Cards. He clicks "Email" and "Social Media" in the "Eloqua: RT Marketing" slicer Card. All of the other Cards in the Page are then Filtered accordingly.

  |  |
| --- | --- |
|  |  |

(If you would like to download a full-size version of this GIF, just click on it.)


 For information about building Slicer, Checkbox, and Radio Button Cards, see

Slicer, Checkbox, and Radio Button Cards

.

##
 Range Selector Cards

Range Selector Cards let users filter all Cards on a Page to reflect a selected range of values or dates. A slider appears with a minimum and maximum value. When a user changes these minimum and maximum values, all Cards update to show data within the new range. In the following animated GIF, the user sets the minimum value (which was originally set to 2,000 by the Card creator) to 3,011, and the maximum value (originally 4,998) to 3786. All of the other Cards in the Page update to reflect the new range.

  |  |
| --- | --- |
|  |  |

(If you would like to download a full-size version of this GIF, just click on it.)


 For information about building Range Selector Cards, see

Range Selector Card

.

##
 Date Selector Cards

By default, a Date Selector Card displays a series of dates in calendar format, either in a yearly or monthly view (depending on settings you have applied in Chart Properties). You can click and drag over a range of dates to filter all other Cards in the Page to show data for those dates. In the following animated GIF, the user highlights all dates from April 1st to August 31st in the "Street Metrics Date Selector" Card. The four other Cards in the dashboard reflect this selected range.

  |  |
| --- | --- |
|  |  |

(If you would like to download a full-size version of this GIF, just click on it.)


 Alternately, you can click the
 **Presets**
 link on the Card to display a number of premade date Filters, such as "This week," "Last year," etc.


 You can show different premade Filters by clicking the blue links over the buttons ("Weeks," "Months," etc.).

*Note:**
 Using the Presets filters will act as a Global Date filter on the Page just like using the dynamic date range filter and will filter all Cards on the Page, not just the Cards that contain the same date column as your Filter Card.

You can clear date Filters from a Date Selector Card by clicking the
 **Clear**
 link or by mousing over the Card and clicking

.


 For more information about building Date Selector Cards, see

Date Selector Card

.

