

Intro
-------

Beast Mode provides a powerful and effective means of building new columns on cards so you can transform your data in ways you never thought possible. With such a powerful tool in your hands, you may eventually find that you have more Beast Mode calculations in your instance than you can easily handle. Luckily, Beast Mode Manager is here to help you regain control, by keeping tabs on all your Beast Mode calculations and performing actions on them as necessary.


 In Beast Mode Manager, you can do all of the following:

 See statistics on all Beast Mode calculations in your instance, such as the total number of calculations, the number saved to a DataSet, the number not being used, etc.
* View information for a specific calculation, such as the number of Cards using it, the DataSets and Cards where it is found, the last updated date, the owner, etc.
* Edit the formula for any Beast Mode calculation.
* Add new Beast Mode calculations.
* Lock or unlock a calculation (singly or in bulk.)
* Change the owner of a calculation (singly or in bulk.)
* Archive a calculation (singly or in bulk.)
* Send a Buzz message to the owner of a calculation.
* Duplicate calculations to a specified DataSet.

To perform bulk actions, you must either be an Admin or have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled. For more information about roles and grants, see

Managing Custom Roles

.


 Beast Mode Manager is available in the Data Center. This topic provides instructions for accomplishing most basic Beast Mode Manager actions. For information about the Beast Mode user interface, see

Beast Mode Manager tab

.


**Video - Beast Mode Manager**


 Filtering the calculations list
---------------------------------

Beast Mode Manager provides a list of all of the calculations in your instance that you have access to. You can click on calculations in this list to see their details views or select them to perform bulk actions on them (if you are an Admin or have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled). By default, the list includes all calculations in the instance, but you can filter it in a number of ways, including the following:

 Entering keywords for the names of the desired calculation(s) in the
 **Search Beast Modes**
 field at the top of the list. (This search
 *only*
 searches calculation names. It does not search owner names or other metadata.)


**Note:**
 Special characters are
 *not*
 supported in the search field (such as: ! # % etc.) Only letters and numbers are supported.
* Clicking on the

icon in the top right corner of the list, choosing the desired filter, then entering or selecting the criteria to filter on (if required).

You can combine filters from the menu
 *if*
 it makes sense to do so (for example, you could not apply
 **Used in Card**
 and
 **Not used in Card**
 together). You can also combine these filters with Dashboard filters (discussed in the next bullet). For example, you could click the
 **Saved to DataSet**
 filter in the dashboard to narrow your list to show only calculations saved to DataSets; if you then selected
 **Locked**
 in the filter menu, the list would be further narrowed to show only locked calculations.
* Clicking on any of the dashboard filter cards on the right half of the screen (such as
 **Total Beast Modes**
 ,
 **Owned by you**
 ,
 **Saved to DataSet**
 , etc.). These can be combined with filters you have selected in the

menu.

Viewing Information for a Calculation
---------------------------------------

You can open the details view for any Beast Mode calculation by clicking on it in the calculations list on the left side of the screen. In the details view, you can see the Beast Mode formula; the Card or DataSet the calculation is built on; metrics for the calculation such as the number of Cards using it, the total number of Card views, and the last update date; the data type and owner; the Cards using the calculation; and a preview of the calculated column together with the column(s) it is derived from. You can also take actions on the calculation, such as locking or unlocking it, changing the owner, or sending a Buzz message to the owner.


 To see all of the Cards that use a particular Beast Mode calculation, go into the details view for the calculation then click the
 **Cards**
 tab. This is an excellent way to find out which Cards will be affected if changes are made to this calculation.

Adding a Calculation
----------------------

In Beast Mode Manager, you can add a calculation to any DataSet you have access to. Note that calculations created in this way are tied to the
 *DataSet*
 , whereas calculations added in the

Analyzer

are tied to the
 *Card*
 . This distinction becomes important when sharing content with other Domo users in your instance. If you share a Card with a Beast Mode calculation tied to it, that calculation is shared as well. Similarly, if you share a DataSet with a Beast Mode calculation tied to it, then that calculation is shared.


**To add a calculation to a DataSet,**

. In Beast Mode Manager, click
 **Add Beast Mode**
 in the upper right corner of the screen.


 A dialog appears in which you can choose a DataSet.

This dialog includes many options for locating your desired DataSet. In addition to being able to search by name, you can also apply various filters to your search. If you click the

icon, a dialog appears with a number of selectable filters such as
 **Owned by**
 ,
 **Created Date**
 ,
 **Tag**
 , and so on. You can choose any of these filters then specify the criteria for the filter. For example, if you chose
 **Tag**
 , you would then be prompted to select the tag associated with your desired DataSet. You can also customize filters by applying operators. These differ between filters. Most filters include the
 **Not**
 operator so you can indicate that specified criteria are excluded from your filter. For example, you might build a filter in which the status is
 *not*
 disabled. Date-based filters include the
 **On**
 ,
 **Not On**
 ,
 **Before**
 , and
 **After**
 operators so you can narrow down when when a DataSet was created or last run. Number-based filters include
 **Equal To**
 ,
 **Not Equal To**
 ,
 **Less Than**
 , and
 **Greater Than**
 operators.


 In the filter dialog, you can also choose from several quick filters by clicking
 **Favorite Filters**
 . These include
 **Recently run**
 (which defaults to 7 days),
 **Owned by you**
 , and
 **Needs attention**
 .


 You can apply multiple filters to narrow down your results; for example, you might apply an
 **Owned by**
 filter specifying user "Kate Nickelby," a
 **Type**
 filter specifying "Adobe Analytics," and a
 **Status**
 filter specifying "Disabled."


 Once you have your results set, you can change the sort by clicking
 **Created Date (oldest to newest**
**)**
 and then choosing the desired sort method and direction.
2. Click
 **Choose DataSet**
 when ready.
3. Create your Beast Mode formula as explained in

Adding a Beast Mode Calculation to Your Chart

.

Editing a Beast Mode Formula
------------------------------

You can edit any Beast Mode calculation formula from within Beast Mode Manager. To do this, you must be an Admin or have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled. For more information about roles and grants, see

Managing Custom Roles

.


**To edit a Beast Mode formula,**

. Click on the calculation in the list to open its Details view.
2. Do one of the following:

* Select
	 **Edit formula**
	 in the wrench menu in the upper right corner.
	* Mouse over the formula at the bottom of the screen and click the pencil icon that appears.
3. Edit the formula as explained in

Adding a Beast Mode Calculation to Your Chart

.

Locking or unlocking a calculation
------------------------------------

You can lock a Beast Mode calculation so that it can be edited or unlocked only by the owner, an Admin, or any users who have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled. For more information about roles and grants, see

Managing Custom Roles

. You can lock/unlock Beast Mode calculations singly or in bulk.


**To lock or unlock a single calculation,**

. Do one of the following:

* Click on the calculation in the list to open its Details view, then click the wrench icon in the upper right corner.
	* Mouse over the calculation, check the box (this only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled), then click the wrench icon at the top of the list.
2. Select
 **Lock**
 or
 **Unlock**
 .

*To lock or unlock multiple calculations at once,**

. In the calculations list in the Overview screen, mouse over one of the calculations you want to lock or unlock then check the box. (This only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled.)
2. Check the boxes for all of the other calculations you want to lock or unlock.


**Tip:**

If you have already filtered the list to show only the calculations you want to lock or unlock, you can check all the boxes at once by checking the
 **Select All**
 box at the top of the list.
3. Select
 **Lock**
 or
 **Unlock**
 in the wrench menu at the top of the list.

Changing the owner of a calculation
-------------------------------------

By default, the owner of a Beast Mode calculation built on a DataSet is the DataSet owner, and the owner of a Beast Mode calculation built on a Card is the Card owner. Owners have many privileges not available to non-owners, such as the ability to lock or unlock calculations, change ownership, edit formulas, and duplicate calculations to other DataSets. To change the owner of a calculation, you must be an Admin or have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled. For more information about roles and grants, see

Managing Custom Roles

.


 You can change ownership of Beast Mode calculations singly or in bulk.


**To change the owner of single calculation,**

. Do one of the following:

* Click on the calculation in the list to open its Details view, then click the wrench icon in the upper right corner.
	* Mouse over the calculation in the list, check the box (this only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled), then click the wrench icon at the top of the list.
2. Select
 **Change owner**
 .
3. Select the new owner in the
 **Search people**
 field.
4. Click
 **Change**
 .

*To change the owner of multiple calculations at once,**

. In the calculations list in the Overview screen, mouse over one of the calculations you want to change ownership of then check the box. (This only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled.)
2. Check the boxes for all of the other calculations you want to change ownership of.


**Tip:**

If you have already filtered the list to show only the calculations you want to change ownership of, you can check all the boxes at once by checking the
 **Select All**
 box at the top of the list.
3. Select
 **Change owner**
 in the wrench menu at the top of the list.
4. Select the new owner in the
 **Search people**
 field.
5. Click
 **Change**
 .

Archiving a calculation
-------------------------

You now have the ability to archive Beast Modes. This removes Beast Modes from Cards or DataSets. You are only able to archive a Beast Mode if it is not in use on a Card. The archive feature is also available for bulk use. You can select up to 100 Beast Modes at a time when using bulk archive. There is no limit to the total amount of Beast Modes that you can archive. To archive a calculation, you must be an Admin or have a role with the "Manage All Cards and Pages" and "Manage DataSets" grants enabled. For more information about roles and grants, see

Managing Custom Roles

.


 You can also unarchive Beast Modes following these same steps and it will restore it to the Card or DataSet it originated from. If a Card or DataSet is deleted, then the Beast Mode is also deleted. You can archive calculations singly or in bulk.


**Video - Archiving and Unarchiving Beast Modes**

*To archive a single calculation,**

. Do one of the following:

* Click on the calculation in the list to open its Details view, then click the wrench icon in the upper right corner.
	* Mouse over the calculation in the list, check the box (this only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled,) then click the wrench icon at the top of the list.
2. Select
 **Archive**
 .
3. In the popup window that appears confirm you want to archive the Beast Mode by clicking
 **Archive**
 .

*To archive multiple calculations at once,**

. In the calculations list in the Overview screen, mouse over one of the calculations you want to archive then check the box. (This only appears if you are an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled.)
2. Check the boxes for all of the other calculations you want to archive.


**Tip:**

If you have already filtered the list to show only the calculations you want to archive, you can check all the boxes at once by checking the
 **Select All**
 box at the top of the list.
3. Select
 **Archive**
 in the wrench menu at the top of the list.
4. In the popup window that appears confirm you want to archive the Beast Modes by clicking
 **Archive**
 .

Duplicating calculations to a different DataSet
-------------------------------------------------

You can copy Beast Mode calculations to a different DataSet in your instance. This essentially functions as a "Save As" because you can then make changes to the copied calculations without affecting the original (similar to how you can

Managing Custom Roles

.


**To duplicate calculations to another DataSet,**

. In the calculations list in the Overview screen, mouse over a calculation you want to duplicate then check the box that appears. (You must be an Admin or have a role with "Manage All Cards and Pages" and "Manage DataSets" grants enabled for the box to appear.)
2. (Optional) If you want to duplicate more than one calculation, check the boxes for all the other calculations you want to change ownership of.


**Tip:**

If you have already filtered the list to show only the calculations you want to change ownership of, you can check all the boxes at once by checking the
 **Select All**
 box at the top of the list.
3. Select
 **Duplicate to DataSet**
 in the wrench menu at the top of the list.


 A dialog appears in which you can select a DataSet.
4. Locate your DataSet using the various filter options.


 For more information about these options, see

Adding a calculation

, above.
5. Click
 **Choose DataSet**
 when ready.

Sending a Buzz Message to a Calculation Owner
-----------------------------------------------

You can send a Buzz message to the owner of a calculation from its details view. The message automatically loads the Buzz formula so that you can either send it as is or make edits to it before sending. This is a good way of reaching out to the owner to let him or her know that the calculation is broken or you want to suggest improvements.


**To send a Buzz message to a calculation owner,**

. Click on the calculation in the list in Beast Mode Manager to open its Details view.
2. Select
 **Buzz owner**
 in the wrench menu in the upper right corner of the Details view. (If you are already the owner, this option is grayed out.)


 The
 **New Message**
 dialog appears.
3. Enter your message.


 For more information, see

Chatting in Buzz

.
4. (Optional) Edit the formula if desired.


 For more information about writing and editing Beast Mode formulas, see

Adding a Beast Mode Calculation to Your Chart

.
5. Press Enter to post the message.


