

Intro
-------

In the Admin Settings, you can create and manage groups of Domo users. Groups are useful because you can grant access to specified content to all members of a group. For example, you might create a "Marketing" group whose members have access to marketing-related cards. Or, you could create a "Financial" group with access to cards from various departments. You can also create dynamic groups in which members are determined automatically based on whether they meet specified criteria. For example, you could create a dynamic group that includes all members of the "Marketing" department with the title of "Manager." If one of your marketing managers later left the company and was replaced by a new manager, this person would be added to the group automatically.


 In
 **More >**
**Admin > Governance > Groups**
 , you can do all of the following:

 Create and delete groups
* Add and remove members of groups
* Change the name of a group
* Send a Buzz message to all members of a group
* Share a Card or Page with all members of a group
* Assign owners to a group
* Change a group type
* Change other group settings
* Change the avatar for the group

Most of these actions are only available if you are a group owner. For more information about default roles, see

Managing Custom Roles

.


**Note:**
 When you enable SSO, two different type of groups are created—Ad Hoc groups and Directory groups. Ad Hoc groups are created within your Domo instance, while Directory groups are created within your IDP. Directory groups must be managed from within your SSO provider's website.


**Video - Creating and Managing User Groups**


###
 Parts of the Groups interface

The following screenshot points out the most important parts of the
 **Groups**
 page in
 **Admin Settings:**

You can use the following table to find out more about these components:


 Component
  |
 Description
  |
| --- | --- |
|
 Dashboard
  |
 Shows the number of groups of a certain type in your Domo instance, and allow lets you filter the groups listing to only show groups of that type. The following filters are available:
 * **Groups created**
 . Shows all groups sorted by creation date in ascending order (newest to oldest).
* **Dynamic groups**
 . Shows all groups with dynamic rules for determining members (for example, such a group may include all members of the "Corporate Sales" department; if a new hire is added to this department, they are automatically added to the group).
* **Closed groups**
 . Shows all groups with "Closed" status, meaning only the group owners are allowed to invite new members.
* **Directory groups**
 . Shows all "Directory" groups, i.e. those that have been generated through an

SSO provider

.
* **System groups**
 . Shows all groups generated within the Domo instance, usually associated with a

custom security role

.
* **Empty groups**
 . Shows all groups with no members.
 |
|
 Refresh icon
  |
 Refreshes the groups listing.
  |
|
 Settings icon
  |
 Opens the
 **Group settings**
 subtab, in which you can toggle the following options:
 * **Add the admin group [selected group] as an owner automatically during all groups creations**
 . When checked, any user in the group selected in
 **Admin group**
 is added as an owner to all new groups. This is set to the "Manage all groups" grant by default. For more information about grants, see

Managing Custom Roles

.
* **[Selected group] can be removed as owner during group creation or after by any owner**
 . When checked, any user added as a group owner through the selected group may be removed as an owner by any other owner.
* **Hide system groups in the group management pages**
 . When checked, system groups are not shown in the groups listing in
 **Admin Settings > Groups**
 .
 |
|
 New group icon
  |
 Lets you add a closed, open, or dynamic group to your Domo instance using the group creation wizard.
  |
|
 Your group filters
  |
 Lets you filter the group listing to show all groups in your instance, those of which you are an owner, or those of which you are a member.
  |
|
 Group listing
  |
 Shows all groups in your instance that pass the filters you have applied (if any). For any group, you can see the group name, owners, group type (open, ad hoc, directory, closed, dynamic, or system), the people in the group, and the amount of time since the group was last modified. For all columns, you can apply sorts and filters by clicking the

or

icon in the column header.
 * For the "Group" column, you can click

to sort the group names alphabetically or reverse-alphabetically.
* For the "Owners" column, you can click

to select a specific owner to filter on.
* For the "Group Type" column, you can click

to choose a different group type to filter on.

+ **Open**
	 groups are those in which any member can invite another person to the group.
	+ **Closed**
	 groups are those in which only owners can invite other members.
	+ **Dynamic**
	 groups are those that use dynamic rules to determine members.
	+ **Ad hoc**
	 groups are "legacy groups" created within Domo (not through a third-party SSO system) before open, closed, and dynamic groups were released.
	+ **Directory**
	 groups are those that have been generated through a third-party SSO system.
	+ **System**
	 groups are groups generated automatically within the Domo instance, usually associated with a

 custom security role

 .
* For the "People" column, you can choose people from a list to filter to see just their groups.
* For the "Modified" column, you can set up a date filter to see groups modified on a given date, between two specified dates, or before or after a certain date.


 When you check the box for one or more groups, a number of additional icons appear in the top right corner of the
 **Groups**
 page. These allow you to perform bulk actions on the groups. The following options are available:
 * . Lets you add users from your Domo instance to this group as new members. (Owners only.)
* . Lets you send a

Buzz message

to all members of this group.
* . Lets you share a selected Page or Card with all members of this group.
* . Lets you choose to either change the group types for or add owners to multiple groups. (Owners only.)
* . Lets you delete all of the selected groups. (Owners only.)


 If you click within the cell for a group name, a details view for the group appears. Here you can do all of the following:
 * View a listing of the members of the group.
* Change the name of the group.
* Add a description, or edit it if one already exists.
* Change the group type (open, closed, and dynamic groups only).
* View the SSO settings for a directory group.
* Set or change the owners.
* Add members to the group.
* Send a

Buzz message

to all members of this group.
* Share a selected Page or Card with all members of this group.
* Delete members from the group.
 |
|
 Show only groups I can manage checkbox
  |
 When toggled, filters the group listing to show only those groups you have rights to manage.

*Note:**
 Some functions are only available when this checkbox is checked. For example, when disabled, you see these options in the blue bar:

When enabled you’ll see these options:


 |
|
 Search field
  |
 Lets you search the group listing to show only specific groups.
  |


###
 Understanding group ownership

Open, closed, and dynamic groups can have one or more owners, who have the responsibility of managing groups. Most group management actions are available only to owners. These actions include the following:

 Assigning other owners to the group or removing owners.
* Adding and removing members to/from the group.
* Deleting the group from Domo.
* Changing the group type.
* Changing the settings for the group.
* Changing the avatar for the group.
* Changing membership criteria for a dynamic group.

Owners can be individual Domo users or other groups; in the latter case, all members of the group are considered owners.


 Understanding group types
---------------------------

There are a number of different group types available in Domo.

##
 Closed groups

Closed groups are considered "full accountability groups" in Domo and are designed to function as "anchor groups" for departments. Only group owners may invite new members to a closed group. Owners must be named individuals or groups, and members must be named individuals. Any changes made to closed groups are reflected in the

Activity Logs

.


 Closed groups may be assigned as owners of other groups and Domo assets (Cards and Pages).

Closed groups cannot be changed to any other group type, once a group is created as a closed group, it cannot be changed.


###
 Open groups

Open groups are "social groups" within Domo. In these groups, the group owns itself. This means that every member is an owner and may invite other users to join. These groups are ideal for generating Buzz conversations and broadly sharing content, or organizing contact groups. Open groups cannot own other groups.

##
 Dynamic groups

Dynamic groups provide scalable, flexible administration based on policy-based membership. You create membership policies that reference trusted attributes; thereafter, Domo does the work of maintaining the membership. For example, you could create a dynamic group with a rule stating that all members must belong to the "Marketing" department. From then on, if anyone joins that department, or if anyone in said department leaves the company, the group membership is adjusted automatically.


 Dynamic groups may contain individuals or groups (
 *not*
 other dynamic groups) as owners.


 For attributes to be available for use in dynamic groups, you must first lock them in
 **More >**
**Admin > Governance > Trusted attributes.**
 This can be done only by users with "Admin" security privileges. Locked attributes can only be unlocked by Admin users and only when they are not being used in any dynamic groups or PDP policies. For example, if user Fred creates a dynamic group that filters on the "Department" attribute, and Admin user Barney then goes into Admin Settings to unlock that attribute, he would not be able to do so. Fred or Barney would first need to remove the policy from the group.


 In continuation, we describe how to enable/lock attributes in the Admin Settings. For information about adding dynamic PDP policies on a DataSet, see

Creating PDP Policies

.


**To enable user attributes for dynamic groups,**

. Select
 **More**
**> Admin > Governance > Trusted attributes**
 .


 You must have an "Admin" security profile or a role with the "Edit all users" grant to access this screen. For more information about security profiles, see

Security Role Reference

.
2. Check the boxes for all attributes you want to enable for use in dynamic groups.


 Grayed out boxes indicate attributes already being used in dynamic groups or PDP policies.
3. Click
 **Save Changes**
 when done.

*To disable user attributes for dynamic groups,**

. Select
 **More**
**> Admin > Governance > Trusted attributes**
 .


 You must have an "Admin" security profile or a role with the "Edit all users" grant to access this screen. For more information about security profiles, see

Security Role Reference

.
2. Clear the boxes for all attributes you want to disable for use in dynamic groups.


 Grayed out boxes indicate attributes already being used in dynamic groups or PDP. You
 *cannot*
 disable these attributes until they have been disabled in the groups or PDP policies.
3. Click
 **Save Changes**
 when done.


###
 Directory groups

Directory groups are "imported" into Domo through SSO. These groups cannot have owners and their membership cannot be managed from within Domo, though you can delete them if you have the "Manage all groups" grant. These groups can own other groups.

##
 Ad hoc groups

Ad hoc groups are "legacy groups" created within Domo (not through a third-party SSO system) before open, closed, and dynamic groups were released. As with directory groups, they cannot have owners. They can be managed by users with the "Manage all groups" or "Edit users" grant. Ad hoc groups cannot own other groups.

##
 System groups

These are groups owned and maintained by Domo. These include role groups and grants. They cannot be managed or deleted and do not have owners, though they can own other groups. You are able to hide system groups by clicking the gear icon in the top right-hand corner of the Groups page and check the box that states:
 **Hide system groups**
 .


 Creating a group
------------------

You can create a new open, closed, or dynamic group in the
 **Groups**
 sub-tab in the Admin Settings by clicking
 **New Group**
 and following the steps in the wizard. As part of this process, you will do the following:

. Name the group and give it a description (optional).
2. Select the group type (open, closed, or dynamic).
3. Select members of the group, OR, if it is dynamic, configuring the rules for membership.
4. Choose an avatar to represent the group throughout your Domo instance.
5. Specify owners of the group.
6. Review your settings and save.

Group creation applies to open, closed, and dynamic groups only. You cannot create any of the following group types within Domo:

 Directory (these are created through SSO)
* System
* Ad hoc

*To create a group,**

. In
 **More >**
**Admin > Governance > Groups**
 , click
 **New Group**
 in the top right corner of the tab.
2. Enter a name for the group.
3. (Optional) Enter a description for the group so you and other users can more easily identify it later, then click
 **Next**
 .
4. Select the desired group type.


 Group types are as follows:
	* With an
	 **Open**
	 group, you select all group members, and any member of the group can invite anyone to join the group.
	* With a
	 **Closed**
	 group, you select all group members, but only group owners can invite new users to join the group.
	* With
	 **Dynamic**
	 groups, you do
	 *not*
	 select specific members of the group; rather, membership is based on adherence to dynamic rules. For example, you might have dynamic groups for all of your sales regions. If a new sales rep is hired within the "West" region, that person would automatically be added to the "West" group in your Domo instance because it matches the sales region he was hired into.
5. (Conditional) Do one of the following:

* If you chose
	 **Open**
	 or
	 **Closed**
	 in the previous step, select all desired members of the group from the list of users. You can search for users by name or filter using the filter options available in each column. Once you are done, click
	 **Next**
	 .
	* If you chose
	 **Dynamic**
	 in the previous step, do the following:

	1. In the first dropdown menu, select
		 **Any**
		 if group membership is only dependent on a single rule being met (an OR statement), or select
		 **All**
		 if all of the selected rules must be met (an AND statement). For example, you may have a case where group members may be members of the "Sales" department OR have a title of "Account Development Manager"; if either condition is met, they are included in the group. Alternatively, you may have a group where members must be in the "Sales" department AND have a title of "Account Development Manager"; if both conditions are not met, the user is not included in the group.
		2. In the
		 **Add criteria**
		 field, select a trusted attribute to filter on. For more information about setting trusted attributes, see

	 Creating and Deleting PDP Policies

	 .
		3. Select all values within the attribute that meet the conditions of group membership.


		 For example, if you selected "Department" as the attribute in step 5ii, here you would choose all departments whose members should have membership in this group.
		4. (Optional) Add additional OR statements to the membership criteria by clicking the
		 **+ OR**
		 button under the criteria box and repeating steps 5i through 5iii above.
		5. (Optional) View the members who pass the filters by clicking
		 **Preview Membership**
		 .
		6. Click
		 **Next**
		 when done.
6. Choose an avatar by doing one of the following options, then click
 **Next**
 when done.

* Edit the standard text avatar (a bubble with two or three initial letters) by clicking
	 **Edit Text Avatar**
	 then choosing a background color and text color and entering the desired text (limit three characters).
	* Upload an image from your computer by clicking
	 **Upload Photo**
	 , selecting your image file (the image does not need to be a photo, only a standard image file such as a JPEG or PNG), then rotating and cropping as desired.
	* Taking a picture of yourself using your webcam.
7. Specify all owners of the group, then click
 **Next**
 .


 By default, you as the group creator are assigned as an owner. You cannot change this here, though you can remove yourself as an owner later, as discussed in

Assigning owners to a group

. Members of the default group selected in the Group Settings screen are also automatically assigned as owners (unless you unchecked the box reading
 **Add the admin group [Selected group] as an owner automatically during all groups creations**
 in the Group Settings screen (accessible by clicking the gear icon in
 **Admin Settings > Groups**
 )).
8. Review your settings in the final screen, then click
 **Save**
 when ready.

Sharing content with a group or group members
-----------------------------------------------

Once you have created a group, a good next step is sharing Pages and Cards that pertain to the group members' roles and responsibilities. You do
 *not*
 need to be a group owner to share content with members.


**To share content with a group,**

. Do one of the following:

* In the groups listing in
	 **More >**
	**Admin > Governance > Groups**
	 , check the box(es) for the group(s) you want to share content with, then click

 in the upper right corner of the window. (Use this option if you want to BULK-SHARE the same content with multiple groups.)
	* Open the details view for the group by clicking on the group name, check the names of all users you want to share the content with, then click

 in the upper right corner of the window. (Use this option if you want to share content with INDIVIDUAL MEMBERS of a group.)
2. Choose the Cards and Pages you want to share with the group, groups, or individual users.


 You can search by keyword in the
 **Search Cards and Pages**
 field or filter to show just Cards or Pages by choosing
 **Cards**
 or
 **Pages**
 in the
 **Add Filter**
 field.
3. Click
 **Share**
 to confirm.

Adding members to a group
---------------------------

In the Admin Settings, you can add members to an open or closed group, meaning that those users have access to all Pages and Cards assigned to that group. You can do this in the following ways:

 You can add users to the group (in the
 **Groups**
 sub-tab of the Admin Settings), or
* You can assign existing groups to the list of groups of which a user is a member (in the
 **People**
 sub-tab of the Admin Settings).


**Note:**
 You cannot add members to a dynamic group in this way, since membership in these groups is determined based on preconfigured rules.

To add users to a closed group, you must be an owner of that group.


 Users added to a group gain access to all past Buzz conversations for that group. For more information, see

Chatting in Buzz

.


**To add users to an open or closed group,**

. In
 **More >**
**Admin > Governance > Groups**
 , locate the group you want to add members to.
2. Click on the group name to open the details view for the group.
3. Click the
 **Add People**
 button in the upper right corner.


 If the group is a closed group and you are not the owner, this button does not appear.
4. Check the boxes next to the names of all the users you want to add.
5. Click
 **Save**
 .

The added users are now added to the group and have access to the content assigned to the group.


**To assign a group membership to a specific user,**

. In the user list in
 **More >**
**Admin > Governance >**
**People**
 , select the user for whom you want to assign a group membership.
2. The information panel for the user appears.
3. Click
 **Add Group**
 .

A field appears in which you can search for existing groups in Domo.
4. Enter the name of a group into the field.


 The top results of your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.
5. Select a group from the list.


 The name of the group appears in the field.
6. (Optional) Add additional group memberships to this user by repeating the previous two steps.
7. (Optional) Remove a group name from the field by clicking the "x" to the right of the name.
8. Click
 **Add**
 to add all groups appearing in the field into the user's group membership listing.

The user now belongs to the added groups and has access to the content assigned to the groups.


 Removing users from a group
-----------------------------

When you remove users from an open or closed user group, they can no longer access content for that group (unless they are members of another group with access OR they have been granted access to the same content in the
 **People**
 sub-tab). You can remove a user from a group by doing either of the following:

 Removing the user from the group (in the
 **Group**
 sub-tab of the Admin Settings)
* Removing the group from the user's group membership listing (in the
 **People**
 sub-tab of the Admin Settings)


**Note:**
 You cannot add members to a dynamic group in this way, since membership in these groups is determined based on preconfigured rules.

To remove users from a group, you must be an owner of the group.


 Users removed from a group lose access to all past Buzz conversations for that group. For more information, see

Chatting in Buzz

.


**To remove a user from a group,**

. In
 **More >**
**Admin > Governance > Groups**
 , locate the group you want to remove members from.
2. Click on the group name to open the details view for the group.
3. Check the boxes for all users you want to remove from the group.
4. Select
 **Remove from group**
 in the gear menu in the upper right corner of the window. (If you are not an owner and/or the group is not an open or closed group, the gear icon does not appear.)

*To remove a group from a user's group membership listing,**

. In the user list in
 **More >**
**Admin > Governance >**
**People**
 , select the user from whom you want to remove a group membership.
2. The information for the user appears in the rightmost panel.
3. Click
 **Remove**
 for the group you want to remove in the
 **Group Memberships**
 list.


 A confirmation dialog appears.
4. Click
 **Remove**
 to confirm.

Removing groups from Domo
---------------------------

You can remove user groups from Domo in the Admin Settings. You must be an owner of a group to remove it. If you remove a group, all members of that group who had access to Cards and Pages assigned to the group lose their access to those Cards and Pages.


**To remove a group from Domo,**

. In
 **More > Admin > Governance > Groups**
 , check the boxes for all groups you want to remove.
2. Click the trash can icon that appears in the top right corner of the window.
3. Click
 **Delete**
 to confirm the decision.

The group is removed, and any users who were in this group are no longer able to access content that was accessible by the group's members (unless they are members of another group with access to the same content OR they have been granted access to the same content in the
 **People**
 sub-tab).


 Changing the name and description for a group
-----------------------------------------------

You can change the name and description of a user group in the Admin Settings. You do
 *not*
 need to be an owner in the group to make these changes.


**To change the name of a group,**

. In
 **More > Admin > Governance > Groups**
 , click on the group name to open the details view for the group.
2. Mouse over the name or description of the group, click the pencil icon, then enter the new desired group name or description.

Assigning owners to a group
-----------------------------

As a group owner, you can take many actions that are not available to regular group members. For a list of these actions, see

Understanding group ownership

.


 You are assigned automatically as a group owner when you create the group. In the details view for the group, you can change the present owners (including yourself, if desired).


 Group ownership is available only for open, closed, and dynamic groups.


**To change the ownership for a group,**

. In
 **More > Admin > Governance > Groups**
 , click on the group name to open the details view for the group.
2. Mouse over the "Owners" area then click the
 **Edit**
 link that appears.
3. Add or remove owners as necessary in the
 **Set owners**
 field.
4. Click
 **Save**
 .

Changing a group type
-----------------------

As the owner of an open, dynamic, or ad hoc group, you can change the group type to be open, dynamic, or closed. Once a group is closed, you cannot change the group type. You cannot change the group type for directory or system groups (though directory groups may be nested within dynamic groups).


**To change the group type for a group,**

. In
 **More > Admin > Governance > Groups**
 , click on the group name to open the details view for the group.
2. Mouse over the "Group Type" area then click the
 **Edit**
 link that appears.
3. Click the

button then select the desired group type.

Keep in mind all of the following when making your selection:

* Changing a DYNAMIC group to an OPEN or CLOSED group will stop dynamic addition of users to the group. In the case of an OPEN group, any member of the group will be able to manage its content and membership.
	* Changing a DYNAMIC or OPEN group to a CLOSED group is irreversible. Once a group is closed, it remains closed.
	* Changing an OPEN group to a DYNAMIC group will require that you set membership criteria for the group, as explained in steps 5i-5vi in

 Creating a group

 , above.
	* You can change an AD HOC group to be DYNAMIC, OPEN, or CLOSED, but you cannot change it back to AD HOC afterwards.
4. Once you have made your changes, click
 **Save**
 .

Changing the membership criteria for a dynamic group
------------------------------------------------------

Sometimes it may be necessary to update the membership criteria for a dynamic group after that group has already been created. Fortunately you can do this easily without having to go through the group creation wizard again. You must be an owner of the group to be able to do this.


**To change the membership criteria for a dynamic group,**

. In
 **More > Admin > Governance > Groups**
 , click on the group name to open the details view for the group.
2. Mouse over the "Membership Criteria" area then click the
 **Edit**
 link that appears.
3. Make your changes, as explained in steps 5i-5vi in

Creating a group

, above.
4. Click
 **Save**
 when done.

Changing your group avatar
----------------------------

You can change the avatar for your group in the details view for the group, without having to go through the group creation wizard again. You must be an owner of the group to be able to do this.


**To change your group avatar,**

. In
 **More > Admin > Governance > Groups**
 , click on the group name to open the details view for the group.
2. Mouse over the avatar then click the
 **Edit**
 link that appears.
3. Make your changes, as explained in step 6 of

Creating a group

, above.


