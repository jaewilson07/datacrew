

Intro
-------

This article describes the various pages in the
 **Governance**
 section of the Admin Settings. To learn more about the Admin Settings, see our

Admin Settings Overview

article.


 You can navigate this article by selecting a page from the following list:

 People
* Groups
* Roles
* A


 ttributes
* Activity log
* Licenses
* Sandbox
* Toolkit

People
----------

On the
 **People**
 section of the
 **Governance**
 section, the panel displays information for all users in the instance.

You can learn more about the components in the following table:


 Name
  |
 Description
  |
| --- | --- |
|
 People list
  |
 The list of users in Domo. You can use the
 **Search**
 bar on the right-hand side to locate a specific person in the list.
  |
|
 Search field
  |
 Lets you locate a particular user in your company's Domo instance.
  |
|
 Role
  |
 A list of the user's security access role. A number of default roles are available in Domo, and each of these has different access rights in Domo. For example, users with an "Admin" security role have almost universal access in Domo. For more information about default security roles, see

Default Security Role Reference

.


 You can also create custom security roles with privileges selected specifically for that role. For example, you could create a role with all of the default privileges of the "Participant" role as well as the ability to deploy apps from the Appstore. For more information, see

Managing Custom Roles

.
  |
|
 Add/Export options


 |
**Add New Person**
 allows you to invite someone to Domo. This adds a user profile for that user in the
 **People**
 sub-tab in the
 **Governance**
 tab and also sends them an email message so they can set their own credentials and sign in to Domo. For more information, see

Inviting Others to Join Domo

.


**Bulk Import**
 lets you add users to your Domo in bulk by uploading a specially formatted CSV file with your user information. For more information, see

Adding Users to Domo

.


**Bulk Export**
 lets you generate a list of all users in your Domo instance in CSV format. For more information, see

Generating a List of Users

.
  |


###
 User Attributes

The User attributes screen allows you to see all of the information about a specific person such as their profile, groups, and content they can access.

You can learn more about the components in the following table:

 **Name**  | **Description**  |
|
 Profile
  |
 Displays the user's personal and company details, their localization selections, and where they fit in the org chart.
  |
|
 Groups
  |
 The list of groups this user is a member of. Different groups have different content they can access; therefore, this user has access to all content his/her group can access.


 You can add a new membership to this user using the Add to groups option. For more information, see

Managing Users and Groups

.
  |
|
 Pages
  |
 Displays the Pages that the user has access to.
  |
|
 Cards
  |
 Displays the Cards that the user has access to.
  |
|
 Mobile App
  |
 Lets you customize the layout of this user's Domo Mobile home screen by dragging the tiles to different positions in a list. You can also add selected Pages, Domo features (such as Buzz), Cards, and Projects to tiles then reposition them the way you want them.
  |
|
 Change Password
  |
 Lets you change the password for the user.
  |
|
 Start a Chat
  |
 Starts a Buzz conversation with the user.
  |
|
 Add Content
  |
 Lets you share Cards or Pages with the user.
  |
|
 Add to groups
  |
 Lets you add the user to groups.
  |
|
 Reset Overview Content
  |
 Lets you reset the Cards that appear in the Overview Page for the selected user. For more information, see

Specifying Default Overview Content for Users

.
  |
|
 Delete Person
  |
 Deletes the user from Domo.
  |
|
 Last Activity
  |
 The date of the most recent activity by this user. This does not include other user's actions that may have impacted this user, like sharing of content. Note that there can be up to a 24-hour delay between the activity and reporting on this screen.
  |

Groups
----------

In the
 **Groups**
 section of the Admin Settings, a list of all groups in the Domo instance displays, along with a panel of groups statistics for the instance.


 For more information, see

Creating and Managing User Groups

.


 You can use the following table to find out more about the components of the
 **Groups**
 section:


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
 sub-tab, in which you can toggle the following options:
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
 * . Lets you add users from your Domo instance to this group as new members. (Owners only.)
* . Lets you send a

Buzz message

to all members of this group.
* . Lets you share a selected Page or Card with all members of this group.
* . Lets you choose to either change the group types for or add owners to multiple groups. (Owners only.)
* . Lets you delete all of the selected groups. (Owners only.)


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
 Group management checkbox
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

Roles
---------

When you select
 **Roles**
 in the sub-tab menu, the interface for creating and managing custom roles appears. Here, you can create new roles using default roles as templates, change the grants (privileges) assigned to certain roles, change the security role for multiple users, and see a grid view that compares roles by grants.

This sub-tab is discussed in much more detail in

Managing Roles

.


 Attributes
--------------

The
 **Attributes**
 section of the Admin Settings lets you create and manage user attributes to control dynamic group membership. This is especially helpful when using dynamic PDP as it allows you to build dynamic PDP filters based on user attributes such as name, email, and department. Attributes can also include multi-value lists.


 For more information, see our

Attributes

article.


 Activity Log
----------------

To learn about activity logs, see our article about

Viewing Activity Logs

.


 Licenses
------------

To learn about licenses, see our article about

Adding User Licenses in Domo

.


 Sandbox
-----------

See our

Domo Sandbox

article for information.


 Toolkit
-----------


 The Governance Toolkit contains many useful features including Group Management, Schema Management, and PDP Automation. For more information, see our

Governance Tools

documents.


