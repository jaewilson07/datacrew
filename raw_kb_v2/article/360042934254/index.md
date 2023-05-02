

Intro
-------

If you have the proper permissions, you can grant and remove access to Cards and Pages in the

Admin Settings

. Users with an "Admin" default security role or a custom role including the "Manage All Cards and Pages" grant have the ability to grant and remove access to all Cards and Pages in Domo. For more information about default security roles, see

Managing Custom Roles

.


 You can grant and remove access to Cards and Pages in the following ways:

 From the
 **Groups**
 sub-tab, in which case you add the Page or Card to a group's list of accessible content, or remove it if you want to restrict access. These tasks are discussed in

Adding and Removing Accessible Content for a Group

.
* From the
 **People**
 sub-tab, in which case you add the Page or Card to a user's list of accessible content, or delete it from this list to remove this user's access.
* From the
 **Cards**
 or
 **Pages**
 sub-tab, in which case you add the user or group to the Card or Page you want them to have access to, or remove them if you want to restrict their access. If you have "Admin" access, you can add or remove users and/or groups to/from multiple Cards or Pages at once.

Because you can share Pages and Cards separately, you can better control who sees what. For example, if you want a particular user to have access only to one or two specific Cards on a Page, you can share with them the Cards themselves, rather than risking security issues by allowing them to view the entire Page.


 When you are granted access to a Card, you gain access to all past Buzz conversations for that Card. Conversely, if your access to a Card is removed, you lose access to all past Buzz conversations for that Card. For more information, see

Chatting in Buzz

.


 Sharing Pages and Cards with a user or group
----------------------------------------------

When you share a
 *Page*
 with a user, the Page itself is added to the Page tab row in the user's personalized Domo view, and the name of the Page is added to the user's
 **Pages**
 listing in the
 **People**
 sub-tab. When you share a Page with a group, the Page is added to the Domo view of every member of that group, and the name of the Page is added to the group's
 **Content Accessible by this Group**
 listing in the
 **Groups**
 sub-tab. Users you've shared with have access to the Page and all of the Cards in it (unless you restrict access to specific Cards in the Page using the
 **Share**
 dialog).


 When you share a
 *Card*
 with a user, the Card is added to the user's

Shared

Page, and the name of the Card is added to the user's
 **Cards**
 listing in the
 **People**
 sub-tab. When you share a Card with a group, the Card is added to the

Shared

Page for every member of that group, and the name of the Card is added to the group's
 **Content Accessible by this Group**
 listing in the
 **Groups**
 tab.


 As discussed previously, you can share content either by assigning the content to the user or group (in the
 **People**
 and
 **Groups**
 sub-tabs, respectively) or by assigning the user or group to the content. Both of these methods are described in detail in continuation.


 For information about sharing content by assigning it to a group, see

Adding and Removing Accessible Content for a Group

.


**To share content by assigning it to a user or group,**

. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
2. In the
 **People**
 or
 **Groups**
 sub-tab, select the user or group with whom you want to share content.
3. Click

in the
 **People**
 sub-tab or

in the
 **Groups**
 sub-tab.


 A field appears in which you can enter the names of the content you want to add.
4. Enter the name of a Page or Card into the field.


 As you enter or remove characters, results appear in a list.
5. Select a Page or Card from the list.
6. Click
 **Share**
 .
7. (Optional) Add additional content by repeating steps 4-6.
8. (Optional) Remove a page or Card from the field by clicking the "x" to the right of the name.


**Note:**
 It is best practice to only share content with groups and not individual users.

*To share access rights for content by assigning users or groups to the content,**

. Click
 **More**

*> Admin**

.


 The

Admin Settings

appears.
2. Select the
 **Content**
 tab.
3. Select either the
 **Cards**
 or
 **Pages**
 sub-tab.
4. Select
 **Edit >**
**Add Users & Groups**
 .


 A dialog appears in which you can search for users or groups to add to this Card or Page.
5. Check the boxes for all the Cards or Pages you want to provide access to.


 You can use the column filters to filter the Cards in the list. You can also select or deselect all Cards passed through your selected filters.
6. Enter the name of a user or group into the search field.


 The top results of your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.
7. Select a user or group from the list.


 The name of the user or group is added to the field.
8. (Optional) Add additional users and/or groups by repeating the previous two steps.
9. (Optional) Remove a user or group from the field by clicking the "x" to the right of the name.
10. Click
 **Add**
 to add all users and/or groups appearing in the field to the Card or Page.

All users you've shared with have access to all of the Pages and Cards you've shared.

*Note:**
 It is best practice to only share content with groups and not individual users.

Removing access to Cards and Pages
------------------------------------

You can also remove access to or "unshare" Pages and Cards that have been shared in this way. This includes all copied or shared instances of the content; for example, if you shared a Visualization Card with a user, who then shared it with another user, unsharing the Card would cause it to be removed from the Domo views for both users.


 You
 *cannot*
 remove resources available to a user through membership in a group. If you want to remove a user's access to these resources, you must either remove the resources themselves from the group or remove the user from the group.


 For information about removing access to resources shared with groups, see

Adding and Removing Accessible Content for a Group

.


**To remove access to a resource previously shared with a user,**

. Click
 **More**
**> Admin**
 .


 The

Admin Settings

appears.
2. Select the
 **Governance**
 tab.
3. In the
 **People**
 sub-tab, select the user for whom you want to remove access to shared resources.
4. In the
 **Cards**
 section of the panel, locate the name of the Page or Card you want to remove.


 You can use the
 **Search**
 box to find the resource you're looking for.
5. Select either
 **Pages**
 or
 **Cards**
 .
6. Click

for the Page or Card you want to remove.


 A dialog appears asking you to confirm this removal.
7. Click
 **Unshare**
 .

This resource is removed from the list of resources this user has access to.


 You can also perform this same basic task in the
 **Cards**
 or
 **Pages**
 tabs by removing groups or users from the content.

*Note:**
 It is best practice to only share content with groups and not individual users.

*To revoke access rights for content by removing users or groups from the content,**

. Click
 **More**

*> Admin**

.


 The Admin Settings appears.
2. Select the
 **Content**
 tab.
3. Select either the
 **Cards**
 or
 **Pages**
 sub-tab.
4. Check the boxes for all the Cards or Pages you want to remove access to.
5. Select
 **Edit >**
**Add Users & Groups**
 .


 A dialog appears in which you can search for users or groups to remove from this Card or Page.


 You can use the column filters to filter the Cards in the list. You can also select or deselect all Cards passed through your selected filters.
6. Enter the name of a user or group into the search field.


 The top results of your search appear automatically in a list as you enter characters and filter accordingly as you add or remove characters.
7. Select a user or group from the list.


 The name of the user or group is added to the field.
8. (Optional) Add additional users and/or groups by repeating the previous two steps.
9. (Optional) Remove a user or group from the field by clicking the "x" to the right of the name.
10. Click
 **Remove**
 to remove all users and/or groups appearing in the field from the Card or Page.

All users you've removed from the selected content will now lose their access to that content.

*Note:**
 It is best practice to only share content with groups and not individual users.


