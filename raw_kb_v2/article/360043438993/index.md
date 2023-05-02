

Intro
-------

*Note:**

This feature is available
 *on demand.*
 To request that this feature be enabled,

Contact Support

. Depending on the feature, you may be required to complete training before you can use the feature.

Using Publication Groups, you can set up specific users to access only pertinent data in a protected, filtered view of Domo. Based on group membership and filters, these users can view only the slice of data pertinent to them (aka
 *row-based view filtering*
 ,
 *horizontal*
 or
 *row-level*
 security). Publication Groups SSO is also available, for more information see

Publication Groups and You: The Not Quite Definitive Primer

.


 You can create, edit, and delete Publication Groups in your Domo instance if you have an "Admin" default security role or a custom role with "Manage Publication Groups" enabled. For more information about default security roles, see

Managing Custom Roles

.


**Note:**
 Any policies created through Publication Groups will supersede any PDP policies. For more information about PDP, see

Creating and Deleting PDP Policies

.

--


**Tip:**
 With
 *row-based view filtering*
 , you can filter a DataSet based on the row value of a column heading in the data. By filtering row values per user on the same column, you allow a user to view only certain data.

*Video - Publication Groups**


 Understanding the Publication Groups view
-------------------------------------------


###
 Elements of the Publication Groups view

In the Publication Groups view you can...

 Add Pages


 Page owners may create Pages containing Cards to share with Publication Group members.
* Add Cards


 Card owners add Cards to Pages to share with Publication Group members.
* Set up access groups


 Groups and members in Publication Groups are different than regular groups and members in Domo. Publication Groups are special security groups controlled within the Publication Groups view. Members of a Publication Group see only the Pages and Cards authorized for the group. (If users are also members of regular groups, then they see Pages and Cards authorized for those groups.)
* Set up filters on columns


 Filtering works by using a column in the data as a data column filter and using its row values as row value filters to apply to Publication Groups.

+ Data column filters


	 Administrators assign filters for DataSets powering the Cards in the Publication Groups Pages. The data column filters make use of the column headings in the data (for example, the "Region" column heading).
	+ Row value filter values


	 Administrators assign row value filters to Publication Groups to control what row level data access group members have. The row value filter is a value in the specified data column filter. For example, if the data column filter is "Region," values might be "West," "Northeast," and "Southeast."
* Inclusive or exclusive access


 Currently, you can configure the Publication Groups view to provide inclusive and/or exclusive access for internal enterprise users, or exclusive access for external users (those without Domo accounts).


|
 Access Type
  |
 Domo Account Type
  |
 Description
  |
| --- | --- | --- |
|
 Inclusive
  |
 Internal
  |
 You can authorize users in Domo to access Publication Groups Pages and Cards, in addition to seeing other Pages and Cards. To configure this method, administrators add users with "Privileged," "Editor," or "Participant" security roles to Publication Groups, in addition to regular groups.
  |
|
 Exclusive
  |
 Internal or External
  |
 You can authorize users in Domo to access only the Publication Groups Pages and Cards. To configure this method, administrators add users with "Privileged," "Editor," or "Participant" security roles to only Publication Groups, removing them from any regular groups. You can also authorize external users to access only Publication Groups Pages and Cards.
  |

By default, when users are initially added to a Publication Group, they cannot see any data. Administrators must explicitly grant access to data to Publication Group users by specifying the row value filters per group.

*Tip:**
 As you add an additional data column filter to a Publication Group, Domo attempts to apply any existing row value filters to the data column filter when the additional DataSet has the same column names as an existing DataSet. If the DataSet values are the same as values of an existing DataSet, Domo applies any existing row value filters to the additional data column filter. You can specify additional row value filters or any differing values.

In Domo, users create Pages and Cards that they want to share in the Publication Groups view.

##
 How the Publication Groups view works for a user

A user with membership in a Publication Group first logs in to Domo.


**Important:**

If the user has an external account, he or she can access the Publication Group by navigating to

domain-ss.domo.com

where domain-ss is their company domain, then connecting using the implemented Single Sign-On. For more information, see

Implementing Single Sign-On

.

The user can then access the Publication Groups view (by going to the Page specified as the title in the
 **Publication Group**
 settings), then navigate to any available Pages or Subpages, based on membership in Publication Groups.


 On a Page, the user sees filtered data in the Cards, based on DataSet and row value filters. You can also grant access to Cards not connected to a DataSet, such as Notebook cards, Doc cards, and so on.


 Publication Group members with a "Privileged" or "Editor" security role can comment on Cards using Buzz.


 Depending on their membership in regular groups, users cannot share Pages and Cards in the Publication Groups view with others.


 Setting up the Publication Groups view
----------------------------------------

You can set up multiple Publication Groups views to allow specific users to access only pertinent data in a protected, filtered view of Domo. The Publication Groups UI guides you through the process of creating a Publication Group using a three-step walkthrough.


**To set up the Publication Groups view,**

. Determine the column names and row values in the DataSets of the Cards in the Publication Groups view to use in filtering the data by user.
2. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
3. Click
 **Content**
 .
4. Click
 **Publication Groups**
 .
5. Click
 **New Publication Group**
 .
6. In the
 **Name**
 field, enter the name you want to use for the top Page of the Publication Groups view.
7. Click
 **Step 1**
 to open the first step in the walkthrough.
8. Click
 **Add Page**
 , select a Page you want to add to the Publication Groups view, then click
 **Add Page**
 .

1. (Conditional) If you want the Page to be the Page Publication Groups users go to when they sign in, click
	 **Landing Page**
	 .
	2. (Optional) If you want additional Pages to appear in the Publication Groups view, select and add those Pages.
9. Click
 **Next**
 to open the second step in the walkthrough.


 All DataSets used in the Page(s) you selected in step 7 are listed here.
10. (Optional) If you want to add DataSets to this list, click
 **Add DataSet**
 , select the DataSet you want to add filters to, then click
 **Add DataSet**
 . Repeat to add additional DataSets.
11. For each DataSet in the list, select a filter option in the dropdown.


 Filter options are as follows:


 Option
  |
 Description
  |
| --- | --- |
|
 No Access
  |
 Members of this Publication Group will not have access to any of the rows in this DataSet.
  |
|
 All Rows
  |
 Members of this Publication Group will have access to all of the rows in this DataSet.
  |
|
 Filter Access
  |
 Members of this Publication Group will have access to specifically defined data in this DataSet.
  |


 For all DataSets in which you select
 **Filter Access**
 , you must specify the columns to be filtered by clicking
 **Add Filter**
 and selecting the desired column. If you want, you can include a custom name for the column. You can also add multiple filters to the same DataSet by clicking
 **Add Column**
 and repeating these steps.
12. Click
 **Next**
 to open the third step in the walkthrough.


 In this step, you can grant access to any Cards in the Page not powerered by a DataSet, such as Notebook Cards, Doc Cards, etc.
13. Toggle on the
 **Enable access**
 switch if you want to grant access to Cards in the Page not linked to DataSets.
14. Click
 **Next**
 to open the fourth step in the walkthrough.
15. In the
 **People**
 dialog, do the following:

1. Search for and select users and groups to add to this Publication Group.
	2. (Conditional) If using SSO, specify the SSO email or group.
	3. Click
	 **Add**
	 .
16. For each person, group, or email you've added, do the following:

1. Click the pencil icon to expand the
	 **Filters and values**
	 column.
	2. For each DataSet in blue, click the DataSet and check the boxes for all rows that should be accessible by members of this Publication Group, then click
	 **Apply**
	 .
17. Click
 **Done**
 .
18. (Optional) Repeat the above steps to add more people, groups, or emails.
19. Click
 **Create New**
 .

*To edit a Publication user group,**

. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
2. Click
 **Content**
 .
3. Click
 **Publication Groups**
 .
4. Search for and select the Publication Group you want to edit.
5. Make the changes you want, then click
 **Save Changes**
 .

*To delete a Publication user group,**

. Click
 **More**
**> Admin**
 .


 The Admin Settings appears.
2. Click
 **Content**
 .
3. Click
 **Publication Groups**
 .
4. Search for and select the Publication Group you want to delete.
5. Click
 **Delete Publication Group**
 , then click
 **Delete**
 .

Example scenario
------------------

In the
 **Publications Group**
 view in the Admin Settings, a user sets up a Publication Group so that members of the "West Coast" and "East Coast" groups can see only the "Finance" and "Marketing" Pages, and the Cards in those Pages are filtered to show only data that is pertinent to each group. Jhonka, a sales executive with a "Privileged" security role with access to other groups, can see the data for all the regions.


 The following table shows how three charts in the "Marketing" Page display different data depending on the whether the "Region" column filters are set to "East Coast" or "West Coast."


 Region
  |
 Filtered Card view
  |
| --- | --- |
|
 West
  |

|
|
 East
  |

|

The next table shows the Details Page
 **Data**
 view for the "OR: Referring Domains" chart for both the "East Coast" and "West Coast" groups. The appropriate data appears in both Publication Groups, based on the row value filters.


 Region
  |
 Filtered data view
  |
| --- | --- |
|
 West
  |

|
|
 East
  |

|

The filtered data applies to other features such as Analyzer, alerts, drilling, previewing, and exporting. For example, when using Analyzer, only the values pertinent to the user appear. The following table shows how the available Analyzer filters appear differently depending on the user group.


 Region
  |
 Filtered Analyzer Values
  |
| --- | --- |
|
 West
  |  |
|
 East
  |  |

Updating Pages in Publication Groups
--------------------------------------

If new Cards are added and are using a DataSet that is already being used in the Publication Group, then any new Cards will show automatically. If a new Card is added and is using a new DataSet that isn't already being used in the Publication Group, then you will need to go into Step 2 of the configuration to designate the level of access and any filters for the DataSet. Once this is done the Card will show in the Publication Group.

