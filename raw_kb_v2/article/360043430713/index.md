

Intro
-------

By default, when you create a DataSet, you are set as the owner of that DataSet and are the only person with access to the DataSet. You can share DataSets with users and groups so those people will have access to view and edit the data. You do this in the details view for the DataSet, which is located in the Data Center. For more information about the parts of the Data Center, see

Data Center Layout

.


 When sharing DataSets, you can optionally choose to send email notifications to let recipients know the DataSet is being shared with them.


 You can also share DataSets by sharing cards powered by those DataSets. For information about sharing cards, see

Sharing and Removing Access to Content

.


**Video - DataSet Sharing**

##
 Access Rights

When sharing a DataSet with a user or group, you can assign that user or group to any of a number of different roles, as shown below. (Owners of DataSets have all rights. Both Owners and Co-Owners are added to the "All rows" PDP policy for the DataSet.)


 Role
  |
 Can see all data in the DataSet?
  |
 Can build cards?
  |
 Can change the DataSet configuration?
  |
 Can assign users or group members as Co-Owners or Editors when sharing?
  |
 Can share the DataSet?
  |
 Can view the DataSet?
  |
| --- | --- | --- | --- | --- | --- | --- |
|
 Co-Owner
  |
 x
  |
 x
  |
 x
  |
 x
  |
 x
  |
 x
  |
|
 Can Edit
  |
 x (unless restricted by PDP)
  |
 x
  |
 |
 x (Owners and Co-Owners only)
  |
 x
  |
 x
  |
|
 Can Share
  |
 |
 x
  |
 |
 |
 x
  |
 x
  |

To learn about changing the owner of a DataSet, see

Changing the Owner of a DataSet

.


**Note:**
 Users with an "Admin" security role or a custom role with "Manage DataSets" can view and edit ALL DataSets and build cards from them. So, for example, if an "Admin"-level user was set to "Can Edit" level for a DataSet, he or she would still have all of the same access privileges as an Owner or Co-Owner. For more information about access rights, see

Managing Roles

.

##
 DataFlow Access

If you share all the input DataSets of a DataFlow with a user or group, the user or group members will gain access to edit the DataFlow. So, for example, if DataSet A and DataSet B were the only inputs to DataFlow C, and you shared DataSet A and DataSet B with the members of group "Sales Team West Region," all members of that group would then be able to edit DataFlow C.


 Sharing the output DataSet from a DataFlow does
 *not*
 grant access to the DataFlow. To be able to edit the DataFlow, a user must be shared on all input and output DataSets used in the DataFlow.


 For more information about DataFlows, see

DataFlow Management.


###
 PDP Impact

In general, sharing a DataSet with a user has no impact on PDP. The only exception is when you make someone an Owner or Co-Owner, in which case the user is automatically added to the "all rows" PDP policy and has access to the entire DataSet. So if you want to preserve PDP restrictions for a user, make sure to set them to Editor when sharing the DataSet.


 Sharing a DataSet
-------------------

You can share access to a DataSet with users and/or groups in the details view for the DataSet.


**To share a DataSet with one or more users or groups,**

. Click
 **Data**
 in the toolbar at the top of the screen.


 The Data Center opens, with the
 **Data Warehouse**
 tab opened by default.
2. Click the

icon on the left side of the screen to open the
 **DataSets**
 tab.
3. Use the various filters and search options to locate the DataSet you want to share.


 For more information about using these options, see

Data Center Layout

.
4. Click the DataSet to open its details view.
5. Select

*>**
6. Click
 **Add People**
 at the bottom of the dialog.
7. Enter the name of a user or group into the
 **Search**
**users**
 field.


 The top results for your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.
8. Select the user or group you want to share the DataSet with in the list.


 The name of the user or group appears in the field.
9. Select the desired access level for the user or group.


 For a table showing privileges for each level, see

Access rights

.


**Note:**
 The options available here depend on your own access rights for the DataSet (unless you have an "Admin" security profile or a custom role with "Manage All DataSets" enabled, in which case you can always see all options).
10. (Optional) Add additional users or groups and set access for them by repeating the previous three steps.
11. (Optional) Remove a user or group from the field by clicking the "x" to the right of the name.
12. (Optional) Write a message in the
 **Message to include**
 field to let the recipients know you're sharing a DataSet with them.
13. Click
 **Share**
 .

The users and groups you selected now have access to the DataSet. In addition, if you wrote a message and checked the box, all users and group members receive an email notifying them about the action.


 Changing a User's DataSet Access Level
----------------------------------------

For users who already have access to a DataSet, you can change their access level or remove their access entirely. You can do this in the details view for the DataSet. Keep in mind that if you want to switch a user's access to "Co-Owner," you must be a Co-Owner yourself (or have an "Admin" security profile or a custom role with "Manage All DataSets" enabled).


**To change the DataSet access level for a user or group,**

. Click
 **Data**
 in the toolbar at the top of the screen.


 The Data Center opens, with the
 **Data Warehouse**
 tab opened by default.
2. Click the

icon on the left side of the screen to open the
 **DataSets**
 tab.
3. Use the various filters and search options to locate the DataSet you want to change access for.


 For more information about using these options, see

Data Center Layout

.
4. Click the DataSet to open its details view.
5. Select

*> Manage Sharing**
 .
6. Locate the user or group in the list you want to change/remove access for.
7. Do one of the following:

* To change the access level for the user or group, select the desired access level in the dropdown menu.
	* To remove DataSet access entirely for the user or group, click the "x" to the right of the dropdown menu.


