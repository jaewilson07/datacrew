

Intro
=======

You can create a customized experience for users and groups in your Domo by setting PDP (Personalized Data Permissions) policies on DataSets. These policies allow you to filter data in DataSets for specified users and groups. Those users and groups then see only the data pertinent to them when viewing KPI and Sumo cards with PDP policies applied.


 For example, you might have a card showing a map with data for two regions in the U.S—West and East. You could create two PDP policies—one for the "West" region and one for the "East" region. For the "West" policy you would select those salespeople working in the West region, and for the "East" policy you would select those salespeople working in the East region. If Larry, a salesperson based in Washington, then opened the card, he would see data
 *only*
 for the states in the West region—all states in the East region would appear with no data.


 When creating PDP policies, you can use any of the following filters:

 **Simple filter**
 . This allows you to build policies based on specific column values. For example, you could build a policy for the "West" region and one for the "East" region, as illustrated above.
* **Custom filter**
 . This allows you to customize a filter to use in your policy. A variety of rules is available. You can use "greater than" and "less than" rules to base a filter around a specific threshold, or you can use a "between" rule to build a filter around a range of values or dates. You can also apply a "begins with" rule to filter on strings.
* **Filter by user or group attribute**
 . This allows you to build dynamic PDP filters based on attributes for a user or group such as name, email, or employee number. In the Domo navigation header, go to
 **More >**
**Admin > Governance > Attributes**
 . Here you can check attributes that should be available for use in PDP. For information about enabling or disabling user attributes, see the heading for

Enabling or Disabling Attributes for Dynamic PDP Policies

.

PDP policies are also applied in other tools in Domo, such as alerts and DataFusions. When you are subscribed to an alert on a card powered by a PDP DataSet, the alert is customized to reflect the PDP policies in place. When you build a DataFusion from one or more input DataSets with PDP policies in place, those policies are incorporated into the output DataSet.

*Video - Dynamic Personalized Data Permissions (PDP)**

Creating PDP Policies
-----------------------

You create and manage PDP policies in the Data Center.

*Video - Personalized Data Permissions (PDP) Policy Creation**

*To create a PDP policy,**

. Click
 **Data**
 in the toolbar at the top of the screen.
2. Click

in the left-hand navigation pane.
3. Locate and click the DataSet you want to apply a policy to.
4. Click the
 **PDP**
 tab.
5. (Optional) Click the
 **Impact**
 button to open a list of cards and alerts that will be affected by PDP policies on this DataSet.


 Though this is not required, it is highly recommend that you review this list before proceeding. For more information, see Viewing PDP Outcomes below.
6. (Optional) If there is anyone in addition to the DataSet owner and "Admin" users who should have access to all of the data in this DataSet, grant full permission to the user by doing the following:

1. Click

 in the
	 **All Rows**
	 row.
	2. In the
	 **Add Groups & People**
	 dialog, enter the name of a person or group who should have full access to the data. Select a name to add it to the policy.
	3. Click
	 **Apply**
	 .

**Important:**
	 If this DataSet is an input DataSet in a DataFlow, it is highly recommended that you grant full access to the DataFlow owner; otherwise the DataFlow could break when PDP policies are set.
7. Click
 **Add Policy**
 .
8. Enter a descriptive name for this policy.
9. Click
 **Add Data**
 to open the
 **Add Data Access**
 dialog.
10. In the
 **Column Name**
 dropdown, select the column you want to filter on.
11. In the
 **Access Type**
 menu, select the filter type you want to base this policy on.

* Select
	 **Simple filter**
	 if you want your policy to be based on a specific column value. For example, if you were creating a region-based policy in which users in the "East" region should only be able to see data for their own region, you would select this filter option and then select "East" as the region to filter on.
	* Select
	 **Custom filter**
	 if you want to create a customized filter for your policy. For example, you might have a group of users who should only be allowed to see data within a certain date range or above or below a certain threshold. You could create such a policy using this option.
	* Select
	 **Filter by user attribute**
	 if you want to enable a dynamic PDP policy based on a selected user attribute. For example, you might want users to see only those rows that show their email address and filter out all others. You could do this by using this option. Note that for this to work, you
	 *must*
	 select PDP-permissible attributes in the
	 **Attributes**
	 section of Admin: Governance. For more information, see the heading for

 Enabling or Disabling Attributes for Dynamic PDP Policies

 below.
12. (Conditional) If you selected
 **Simple filter**
 in step 11...

1. In the
	 **Search/Add Row Values**
	 field, select the name of the row you want to filter on.
	2. (Optional) Repeat step 8 as many times as necessary until you have added all of the rows you want to filter on.
	3. Click
	 **Apply**
	 .
13. (Conditional) If you selected
 **Custom filter**
 in step 11...

1. In the menu under "Include Values That Match These Rules," select the desired filter condition.
	2. In the field on the right, enter the value or string or select the date that completes the condition. (If you selected
	 **Is Between**
	 , there will be two fields—one for the minimum value or start date, and one for the maximum value or end date.)


	 For example, if you wanted to create a policy for users who should only be allowed to see data within a certain date range, you would select
	 **Is Between**
	 in the menu, then choose the desired start date in the first field, and finally choose the desired end date in the second field.
	3. (Optional) If you want to add more custom filters, click
	 **Add Rule**
	 then repeat steps 13a and 13b.
	4. Click
	 **Apply**
	 when ready.
14. (Conditional) If you selected
 **Filter by user attribute**
 in step 11, complete the following:

1. Click
	 **Select user attribute**
	 then select the attribute you want to dynamically filter on.
	2. Click
	 **Apply**
	 .

**Note:**
	 For dynamic PDP policies to work, you must enable any selected attributes in the
	 **Attributes**
	 section of
	 **Admin: Governance.**
15. Click

in the row for the newly added policy to open the
 **Add Groups & People**
 dialog.
16. In the
 **Search/Add Groups & People**
 field, do one of the following:

* Enter the name of a person or group you want to add to the policy. Select a name to add it to the policy.
	* Add everyone with DataSet access to the policy by clicking the blue
	 **add everyone**
	 link.
17. Click
 **Apply**
 .
18. Click
 **Save**
 .

The policy is now created. However, it is not yet applied to this DataSet. To turn on PDP for the DataSet, click

next to the "Enable PDP" text. Now anything in Domo powered by or associated with this DataSet is affected by the policy and includes a stamp of

to inform users that they are not seeing all of the available data due to PDP.


 To turn off this policy, click

.


 You can add multiple policies to the same DataSet by clicking
 **Add Policy**
 in the
 **PDP**
 tab for the DataSet and repeating the preceding steps. You can even combine different filter types in a policy (for example, you could create one rule with a custom filter and another rule with a user attribute-defined filter).

##
 Adding Users to Multiple PDP Policies

There may be times when you want to add a user or group to more than one policy on the same DataSet. For example, you may have a salesperson named "Ted" who works within the "East" region but also needs access to California's data. You can accomplish this by adding a
 *new*
 policy in which the data for California is applied to Ted. Adding "California" to the existing policy in which you have selected the East region
 *will not work*
 —your DataSet appears empty. This is because selecting multiple values from the same DataSet applies an

AND

statement, and because "California" is never found within the East region in the DataSet, the policy prevents data from appearing. Separate policies in the same DataSet, however, are considered

OR

statements; therefore, Ted's data appears for both the East region and California.

*Video - Query Creation in Personalized Data Permissions (PDP)**


###
 Viewing PDP Outcomes

By clicking the
 **Impact**
 button, you can open a dialog that shows how setting PDP policies for a DataSet will affect DataFlows and cards tied to the DataSet. Any affected DataFlows fall under the
 **Attention**
 tab, and any affected cards fall under the
 **Personalized**
 tab. If the policies will not affect any DataFlows or cards, no tabs appear.


 It is highly recommended that you view PDP outcomes before creating policies on a DataSet, especially if the DataSet is an input DataSet in a DataFlow. In the event that a DataFlow will be broken by setting PDP policies on this DataSet, a
 **Fix It**
 button is provided. You can also include the DataFlow owner in the
 **All Rows**
 group, which ensures that the DataFlow will not break.

*Video - Impact Insights - Personalized Data Permissions (PDP)**


###
 Previewing DataSets Affected by PDP Policies

All PDP policies include the ability to preview the data in the DataSet as affected by that policy. After you create a policy, a good practice is to preview the data for that policy to make sure only the necessary data appears.


**To preview a DataSet for a PDP policy,**

. In the
 **PDP**
 tab for the DataSet you want to preview, mouse over the row for the policy you want to preview.
2. Click the eye icon

to open the preview.
3. Click
 **Done**
 when you are finished previewing the data.

Deleting PDP Policies
-----------------------

You delete a PDP policy in the
 **PDP**
 tab for the DataSet with the policy. When you delete a policy, it is no longer applied to cards, alerts, DataFlows, etc.


**Important:**
 Deleting all policies for a DataSet turns off PDP for the DataSet and all users with access will be able to see the data.


**To delete a PDP policy,**

. In the
 **PDP**
 tab for the DataSet with policies you want to delete, mouse over the row for the policy you want to delete.
2. Click the trash can icon

to delete the policy.
3. Click
 **Delete**
 to confirm the deletion.


 If this is the only policy applied to the DataSet, you are given a warning that all users with access will be able to see the data if the policy is deleted.
4. If you are sure you want to do this, click
 **Delete**
 again.

Enabling or Disabling Attributes for Dynamic PDP Policies
-------------------------------------------------------------

Dynamic PDP policies allow you to assign policies that are unique per individual. Instead of selecting individual values in specific columns to pertain to specific users or groups, you select a column and a user attribute. Domo then automatically allows people to see only those rows that match that user attribute. For example, you could create an attribute-defined PDP policy based on a user's email address. Then, if a user opened a card with this PDP policy applied, Domo would only show data corresponding to those rows containing the user's email address.


 To prevent security breaches, user attributes
 *must*
 be locked in Admin Settings before they can be used in PDP policies. This can be done only by users with Admin security privileges. Locked attributes can only be unlocked by Admin users and only when they are not being used in any PDP policies. For example, if a user creates a PDP policy that filters on the
 **Employee number**
 attribute, and an Admin user then goes into
 **Admin Settings**
 to unlock that attribute, he would not be able to do so. Either one of the users would first need to disable the PDP policy.


 Dynamic PDP policies can be used in conjunction with simple and custom filters.


 In continuation, we describe how to enable/lock attributes in the Admin Settings. For information about adding dynamic PDP policies on a DataSet, see Creating PDP Policies, above.


**To enable user attributes for PDP,**

. In the Domo navigation header, select
 **More**
**> Admin > Governance > Attributes**
 . You must have an Admin security profile to access this screen. For more information about security profiles, see

Security Role Reference

.
2. Check the boxes for all attributes you want to enable for use in PDP.


 Grayed out boxes indicate attributes already being used in PDP.
3. Click
 **Save Changes**
 when done.

*To disable user attributes for PDP,**

. In the Domo navigation header, select
 **More**
**> Admin > Governance > Attributes**
 . You must have an Admin security profile to access this screen. For more information about security profiles, see

Security Role Reference

.
2. Clear the boxes for all attributes you want to disable.


 Grayed out boxes indicate attributes already being used in PDP. You
 *cannot*
 disable these attributes until they have been disabled in the PDP policies.
3. Click
 **Save Changes**
 when done.

Example Scenario — PDP Applied to a Card
------------------------------------------

This straightforward example shows how adding PDP policies to a card affects how the data in the card appears to different users. Suppose the company "Kablinko Electronics" keeps track of sales throughout the U.S. using a DataSet in which sales are broken down by region—"East" and "West." The data is presented using a U.S. map. By default, no PDP policies are in place, so all data in the DataSet appears, as follows:

The head of a Sales department wants to ensure that salespeople in each region see only the data that pertains to them. All salespeople belong to one of four groups—"Kablinko East," "Kablinko West," "Kablinko South," and "Kablinko Central"—so this is a simple matter of connecting each group to a policy filtered to the appropriate region.


 The department goes into the Data Center, locates the pertinent DataSet, and clicks
 **PDP**
 to open the PDP tab for the DataSet. They enter a policy name—"East Region"—then select
 **Add Data**
 to open the
 **Add Data Access**
 dialog. They select
 **Region**
 as the column and
 **East**
 as the value, then apply the changes. Finally they select the "Kablinko East" group in the
 **Add Groups & People**
 dialog and save the new policy. They then repeat the same steps for a "West Region" policy, selecting "West" as the value and "Kablinko West" as the group. They do not create a policy for "Kablinko Central" or "Kablinko South" yet.


 Ross'
 **PDP**
 tab for the DataSet now appears as follows:

Now that the policies are in place, users from the three groups see the data in the map differently depending on their group's policy. A user from the "East" group would see the card as follows:

Notice that data only appears for those states that fall into the "East Region." Also notice that the chart total has changed to reflect the PDP policy (it was 1,453,971.45 in the non-PDP version of the chart) and that a

stamp appears near the title to indicate that this view shows a PDP-filtered version of the data.


 Likewise, a user from the "West" group would see the card as follows:

Because the department head did not create policies for "Kablinko Central" or "Kablinko South," users from those groups attempting to access the card would see the following:

These users could then click the
 **Request Access**
 button to send a Buzz message to the department head (the DataSet owner) asking them to create the necessary policies for the users to view their pertinent "slices" of data.


 Deleting PDP Policies
-----------------------

You delete a PDP policy in the
 **PDP**
 tab for the DataSet with the policy. When you delete a policy, it is no longer applied to cards, alerts, DataFlows, etc.


**Important:**
 Deleting all policies for a DataSet turns off PDP for the DataSet and all users with access will be able to see the data.


**To delete a PDP policy,**

. In the
 **PDP**
 tab for the DataSet with policies you want to delete, mouse over the row for the policy you want to delete.
2. Click the trash can icon

to delete the policy.
3. Click
 **Delete**
 to confirm the deletion.


 If this is the only policy applied to the DataSet, you are given a warning that all users with access will be able to see the data if the policy is deleted.
4. If you are sure you want to do this, click
 **Delete**
 again.


