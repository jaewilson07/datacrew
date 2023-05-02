

Intro
-------

This article contains information for troubleshooting Domo in the following topics:

 Forgotten password
* Expired password
* Changing the password for a connector account
* Map area with data not displaying
* Missing access to a Domo feature
* Problems with Internet Explorer
* Sorting errors
* Spreadsheet error after renaming
* Truncated text in spreadsheets
* Unable to sync value scale and data label values
* Unable to view a specific card or dashboard


###


 Forgotten Password

If you forget your password to login to Domo, you can change it from the signing dialog, as long as you know the email address you use to login. For more information, see

Changing Your Password

.


 If you cannot remember your login email address, ask someone who can login to tell you what email address displays for you in your user profile.

##


 Expired Password

If your password has expired or is expiring, you can reset it. To learn how, see

Changing Your Password

.

##


 Changing the Password for a Connector Account

For connectors that require you to enter account credentials manually (as opposed to using OAuth), you can edit the password for the account in the
 **Accounts**
 section of the Data Center.

. From the navigation header, select
 **Data.**
2. In the left navigation menu, select

*Accounts**
 .
3. Hover over the entry you want to edit, then select
 **Edit**
 .
4. Edit the credentials in the appropriate fields.
5. Select
 **Save Changes**
 .

For more information, see

Managing User Accounts for Connectors.


###


 Map Area with Data Not Displaying

When data does not display for an area of a map, that area appears grayed out and the legend indicates there is no data. In the example below, California indicates no data.

If there is data for the area, then the map may not be properly connected to the data, due to an incorrect name or code. To fix this, change the name or code for that area of the map. Refer to the list of supported names and codes for the map you are using. For more information on supported names and codes, see our articles on

Continental and Regional Maps

and

U.S. State and County Maps

.


 You can do one of the following:

 Change the value in the DataSet.
* Use a Beast Mode calculation to rename the value (in a new, transformed column), then set the area column name (state, country, and so on) to use the transformed column.


 For example, to transform a "broken" area, you could use the

CASE

function, as in the the following example of a calculation named "RenState" that renames mispellings of "Californai" in the
 **State**
 column to "California" in the
 **RenState**
 column.


`CASE `State`


 when 'Californai' then 'California'


 else `State`


 end`


 For more information about Beast Mode, see

Adding a Beast Mode Calculation to Your Chart

.


###


 Missing Access to a Domo Feature

The most likely reason for this is that you do not have sufficient rights to access the feature you want. The default security roles in Domo are Admin, Privileged, Editor, Participant, and Social. Each security role has specific grants to certain features. Users with Participant and Social roles generally have view-only access. Users with an Admin role have access to all features, cards, and dashboards in their company instance.


 For a list of grants in Domo and the associated access levels, see

Default Security Role Reference

. You can also create custom roles in which you specify the privileges available to users with that role. For more information, see

Managing Custom Roles

.

##


 Problems with Internet Explorer

This is a known issue with Internet Explorer. Large Sumo and Table Cards are especially affected and may have slower load times.


 To resolve this issue, we recommend switching to another browser such as Mozilla Firefox or Google Chrome. If this is not feasible, you can try reducing the number of columns or rows in your Sumo Cards and Tables.

##


 Sorting Errors


####
 Unable to sort in Pie or Donut graph

By default you cannot use the
 **Sorting**
 menu to change the order in which slices appear in Pie and Donut graphs. However, if you check the
 **Unsorted Data**
 box in
 **Chart Properties**
 , you can use
 **Sorting**
 to change the sort order.


 For more information about Pie and Donut graphs, see

Sorting the Data in Your Chart

.

###
 Unable to sort in Funnel Bars/Folded Funnel graph

Because Funnel Bars and Folded Funnel graphs are intended to show data dropping off through a series of stages, the data is automatically sorted from highest to lowest value. You cannot change the sorting in these graph types. However, you can change the sorting in standard Funnel graphs.


 For more information about Funnel graphs, see

Sorting the Data in Your Chart

.

##


 Spreadsheet Error After Renaming

When updating a spreadsheet, Domo uses the name of the spreadsheet and the worksheet to update data. For more information, see

Updating or Refreshing the DataSet for a Visualization Card

.


 If you have rename worksheet, Domo may be unable to update the data from the spreadsheet. You can revert to the old name of the worksheet, and then update the spreadsheet.

##


 Truncated Text in Spreadsheets

Domo has a 1024-character limit. Any additional characters are truncated. You can get around this by splitting the text between two columns to make sure it stays within the limit. You must do this in your own data before bringing it into Domo.


 You can contact

Domo Support

to request a character-limit increase. Multiples of 1024 are preferred. Note that anything over 8100 characters can have a significant effect on performance when loading cards.

##


 Unable to Sync Value Scale and Data Label Values

When editing a chart, you can ensure that the values on your value scale and those in your data labels are in sync using one of the following options:

 Set number formatting using the
 **Format**
 menu (by selecting
 **More Options**
 under the value menu).


 While this option syncs the numbers on the value scale and in your hover labels, it has the following drawbacks:

+ Only the hover labels are affected; the permanent data labels (which you apply by selecting
	 **Chart Properties > Data Label Settings > Show > Always**
	 ) are not affected.
	+ There are no advanced formatting options as there are in the
	 **Chart Properties**
	 .
	+ The
	 **Format**
	 menu items are overridden by formatting changes in
	 **Chart Properties**
	 .


	 Because of this override, Domo recommends that you use
	 **Chart Properties**
	 to specify formatting where possible.
* Set formatting in
 **Chart Properties > Data Label Settings**
 by checking the
 **Use scale format**
 and the
 **Use scale abbreviation**
 boxes. Also, ensure that
 **Show > Always**
 is selected.

For more information, see

Formatting Data Label and Hover Text in Your Chart

.

##


 Unable to View a Specific Card or Dashboard

If a card or dashboard has not been shared with you, you cannot see it. Ask someone who has access to the card or dashboard to share it with you. Content that is shared with you appears on your
 **Shared**
 page. For more information, see

Sharing and Removing Access to Cards and Dashboards

.

