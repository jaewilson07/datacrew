---
title: Managing Custom Roles
url: https://domo-support.domo.com/s/article/360043438973
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZamlGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanMGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanMGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZapEGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZapEGAS)', '[https://domo-support.domo.com/s/article/360042922874](https://domo-support.domo.com/s/article/360042922874)', '[https://domo-support.domo.com/s/article/360043438953](https://domo-support.domo.com/s/article/360043438953)', '[https://domo-support.domo.com/s/article/360042934354](https://domo-support.domo.com/s/article/360042934354)', '[https://domo-support.domo.com/s/article/360043438893](https://domo-support.domo.com/s/article/360043438893)', '[https://domo-support.domo.com/s/article/360043438973](https://domo-support.domo.com/s/article/360043438973)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZapEGAS/roles](https://domo-support.domo.com/s/topic/0TO5w000000ZapEGAS/roles)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004059
views: 4,073
created_date: 2022-10-24 21:19:00
last updated: 2022-10-24 22:39:00
---





---




 


****Note:**** This feature is available **on demand.**  
 


To request that this feature be enabled,


* Contact [Technical Support](/s/article/360042922874)
* Reach out to your Domo Customer Success Manager or Technical Consultant.


Depending on the feature, you may be required to complete training before you can use the feature.








---




 

**Note:**This feature is available for enterprise users only.



Intro
-----


Domo has always provided [built-in security roles](/s/article/360043438953 "Security Role Reference") such as Admin, Privileged, and Participant that are used to restrict access to sensitive Domo features. These roles govern which users in your Domo instance can perform sensitive tasks such as exporting data, inviting users, and changing company settings. With the Role Management tool, you can create and manage custom security roles, giving you more flexibility and finer granularity in assigning access to Domo's powerful features.


Using Role Management, you can...


* Expand the list of roles beyond the current built-in roles (Admin, Privileged, Editor, Participant, and Social).
* Manage the privileges assigned to each new role.
* Delete unused roles.
* Get easy reporting on the privileges and list of assigned users in each new role.
* Use SSO to automatically assign people to appropriate roles through a SAML assertion at each login.


You can create as many custom roles as needed for your organization.


The Role Management tool is available in the Admin Settings in Domo, by selecting **More** **> Admin  > Governance > Roles**. You must have an Admin default security role or a custom role with the Manage All Roles grant enabled to access this tool.


**Video - Role Management**



 


Understanding the Role Management Interface
-------------------------------------------


The Role Management area in Admin Settings is made up of three main tabs as well as several other tabs you can access from the main tabs. 


### Roles Tab


The **Roles** tab is the initial tab you see when you click **Roles** in the Admin Settings. The following screenshot shows a typical view of this tab:


![role_management_roles.png](role_management_roles.png)


This tab lists all of the roles in your Domo, both the default roles (Admin, Privileged, Editor, Participant, and Social) as well as any custom roles you have created. Default roles are referred to in the UI as Domo roles. Grants for these roles *cannot* be altered. User-created roles are referred to as Custom roles. Custom roles *can* be edited as necessary.  


For each role in the list, you can see all of the following:


* The description of the role
* The number of grants (privileges) available for this role
* The number of people in your Domo instance who have been assigned this role
* The date when the role was created.


You can search for roles by name or sort the roles in the list using any of a number of sort methods, such as role name, number of grants, etc. 


In this tab you can also do the following:


* Create a copy of any existing role (Domo or custom) by clicking the **New** button and choosing the role you want to copy. This opens the Edit view for the role, in which you can select or deselect the privileges available for this role. This subtab is described in more detail in the next section. (You can also open this subtab for an existing role by clicking the role name in the **Roles** tab.)
* Specify the default role for new users in your Domo added either through invitation or SSO.


#### Role Edit View


When you click on a role in the **Roles** tab or you click **New** in that tab to copy an existing role, you are taken to an edit view in which you can select or deselect privileges assigned to the role as well as manage users with that role. This view comprises two distinct subtabs—**Grants** and **People**. 


The following screenshot shows how the **Grants**subtab might appear for a typical user:


![role_management_roles_admin_grants.png](role_management_roles_admin_grants.png)


This subtab lists all of the grants (privileges) available in Domo, with checkboxes for each individual grant. For any custom role (*not* default Domo roles), you can check or uncheck boxes as desired to assign privileges to Domo users with that role. You can search for any grant by name using the **Search grants** box. 


The following screenshot shows how the **People** subtab might appear for a typical user:


![role_management_roles_admin_people.png](role_management_roles_admin_people.png)


This subtab lists all users in your Domo who have been granted this role. In You can switch one or more users to a different role by checking the boxes next to their names then selecting the new role in the **Change Role** menu that appears. You can also search for a particular user in the **Search people** box or choose a different sort method in the **Sort by** box. 


Both of these subtabs also provide access to the **Duplicate Role** and **Add People**options.


**Duplicate Role** is useful as it allows you to duplicate any role, Domo or custom, by clicking **Duplicate Role**. This creates a copy of the role and gives it a default name by affixing a number to the original name (such as "Privileged copy2"). You can change the default name and description (which remains unchanged unless you manually change it) by clicking within the name of description and making the changes. Once you have duplicated a role, you can change the grant configuration as desired, even if the original role was a default Domo role. 


As an example, you might have a subset of users who should have Participant-level access *except* you also want them to be able to deploy Appstore apps. In this case, you could easily create the new role by duplicating the Participant role, checking the box that reads "Use Appstore," and saving. The new role is now available in your Domo and can be granted to new or existing users as necessary. 


**Add People** opens a list of all users in your Domo, which appears similar to the following:


![role_management_add_people.png](role_management_add_people.png) 


Here you can quickly and easily switch users into the selected role by checking the boxes next to their names and clicking **Add People**. You can do this for individual or multiple users. You can also search for a particular user in the **Search people** box or choose a different sort method in the **Sort by** box. 


### Grants Tab


You open the **Grants** tab by clicking **Grants** in the main view that appears when **Roles** is selected in the left panel. The following screenshot shows this tab:


![role_management_grants.png](role_management_grants.png)


This tab lists all grants (privileges) available in Domo. For each grant, you can see the roles (both Domo and custom) to which the grant has been assigned; the number of roles out of the total roles that have the role assigned to them; the associated Domo feature, and the number of users with the grant bestowed. You can search for a specific grant using the **Search grants** field.


#### Grant Edit View


When you click on a grant in the **Grants** tab, you are taken to an edit view in which you can select or deselect the roles with access to the grant. You can also see the number of grants for the role out of the total number of grants in Domo, as well as the number of users of your Domo instance with the role applied. 


The following screenshot shows this view for the "Manage All Roles" grant. 


![role_management_manage_all_grants.png](role_management_manage_all_grants.png)


You can select or deselect grants for a selected role by checking/unchecking the boxes on the left. You *cannot*select or deselect default Domo roles (indicated by a lock icon) in this view.


### People Tab


You open the **People** tab by clicking **People** in the main view that appears when **Roles** is selected in the left panel. The following screenshot shows this tab:  


![role_management_people.png](role_management_people.png)


This tab lists all users of your Domo instance, together with their email addresses, roles, departments, and titles. Similar to the **Add People** listing that appears when you click the **Add People** button in the **Roles** edit view, you can switch select users into a different role by checking the boxes next to their names and clicking **Add People**. You can do this for individual or multiple users. You can also search for a particular user in the **Search people** box or choose a different sort method in the **Sort by** box. 


Performing Role Management Tasks
--------------------------------


This section lays out the steps for performing the most common role management tasks, including creating and deleting new custom roles, switching users to a different role, and so on.


### Creating Custom Roles


In Domo, you create new roles not by building them from scratch, but by using existing roles as templates. This is not only faster than building from the bottom up but also gives you the benefit of a foundation to work from; for example, you might decide you want to create a new role that is similar in most respects to the "Privileged" role but includes some additional capabilities not natively available to "Privileged" users. 


**To create a custom role,**


1. Click **More** **> Admin > Governance > Roles**.
2. Do one of the following:


	* Click **New** in the top right corner of the **Roles** tab then select the existing role (either Domo or custom) that you want to base the new role off of.  
	  
	![role_management_create_new_role_button.png](role_management_create_new_role_button.png)
	* In the **Roles** tab, navigate in the list to the role you want to base your new role off of and click that role. Then, in the edit view for the role, click **Duplicate Role**.  
	  
	![role_management_duplicate_role.png](role_management_duplicate_role.png)  
	  
	Whichever method you choose, the end result is the same—a copy of the new role is created, with the edit view open so you can choose the grants that will be available for users with this role assigned. By default the new role takes the name "*New Role*(copy)."
3. (Optional) If desired, give the new role a more descriptive name and description by clicking on the name/description and entering the new name/description in the field.
4. In the grants list, check the boxes for privileges users with this role should have, and uncheck the boxes for privileges they should not have.
5. Click the orange **Save** button to save your new grant configuration.


The new role is now available to be assigned to users in your Domo, together with all of its associated privileges and limitations. For more information about assigning a security role, see [Assigning a Security Role to a User](/s/article/360042934354 "Assigning a Security Role to a User").


### Modifying Custom Roles


You can modify the grant configuration for custom roles by clicking on them in the **Roles** tab and making your changes. You can *only* modify custom roles, i.e. those that have been created by you or other users in your Domo. You cannot modify any of the default Domo roles (Admin, Privileged, Editor, Participant, or Social).


**To modify a custom role,**


1. Click **More** **> Admin > Governance > Roles**.
2. In the list in the **Roles** tab, locate and click on the custom role you want to modify.
3. Make changes to the grants available for users with this role as desired.
4. Click the orange **Save** button to save your new grant configuration.


### Deleting Custom Roles


You can delete custom roles by clicking on them in the **Roles** tab and clicking the trash can icon ![buzz_delete.png](buzz_delete.png). You can *only* delete custom roles, i.e. those that have been created by you or other users in your Domo. You cannot delete any of the default Domo roles (Admin, Privileged, Editor, Participant, or Social).


**To modify a custom role,**


1. Click **More** **> Admin > Governance > Roles**.
2. In the list in the **Roles** tab, locate and click on the custom role you want to delete.
3. Click the ![buzz_delete.png](buzz_delete.png) icon in the top right corner of the edit view.
4. Click **OK**.


### Assigning or Removing Roles to/from a Grant


In addition to assigning/removing grants to/from a role as explained above, you can also do the opposite—assigning roles to a grant or removing them if need be. For example, maybe you have built two custom roles called "Privileged2" and "Editor2," and you want both groups to be able to manage alerts. Instead of having to open up and edit the grant configuration for both groups individually, you could simply locate and open the "Manage All Alerts" grant in the **Grants** tab then check the "Privileged2" and "Editor2" boxes. As with most other role management tasks, this is only possible with custom roles; you cannot manipulate the grant configuration for default Domo roles.


**To assign or remove a custom role to/from a grant,**


1. Click **More** **> Admin > Governance > Roles**.
2. Click the **Grants** tab.
3. In the list of grants, locate and click on the grant you want to reassign.  
This opens the edit view for the grant.
4. In the list of roles, check the boxes for all custom roles that should have access to the grant, and/or uncheck the boxes for those roles that should not have access.
5. Click **OK**.
6. Click **Save Changes**.


### Switching Users to a Different Role


You can bulk-change users to a different role in Domo. You can assign users to default Domo or custom roles. There are several different ways to do this, all with the same end result:


* You can choose a role and add users to that role.
* You can open a list of all users in Domo and select users in the list to be added to a different role.
* You can choose a role and change users who currently have that role to a different role.


With all of these options, you can switch users to a different role either individually (one at a time) or in bulk.


**To add users to a selected role,**


1. Click **More** **> Admin > Governance > Roles**.
2. Do one of the following:


	* To add users to a role from the **Roles** tab,
	
	
		1. In the list of roles, locate and click the role you want to add users to.  
		The edit view for the role opens.
		2. Click the **Add People** button.  
		A list of all users in your Domo instance appears.
		3. Check the boxes for all users you want to add to the selected role.
		4. Click **Add People**.
		5. Click **OK** to confirm.
	* To add users to a role from the **People** tab,
	
	
		1. Click the **People** tab.  
		A list of all users in your Domo instance appears.
		2. Check the boxes for all users you want to switch to a different role.
		3. In the **Change Role** menu, select the role you want to switch the selected users to.
		4. Click **OK** to confirm.


The users you chose are now reassigned to the role you selected.


**To change users with a specific role to a different role,**


1. Click **More** **> Admin > Governance > Roles**.
2. In the list of roles, locate and click the role you want to switch users from.  
The edit view for the role opens.
3. Click **People** to open the **People** subtab.  
A list of all users in your Domo instance with the given role appears.
4. Check the boxes for all users you want to switch to a different role.
5. In the **Change Role** menu, select the role you want to switch the selected users to.
6. Click **OK** to confirm.


The users you chose are now reassigned to the role you selected.


### Changing the Default Role for New Users


When you add users to Domo individually via the Admin Settings as explained in [invitation](/s/article/360043438893), they are given a default role, which is initially set to Privileged. In **Admin Settings > Roles**, you can change this default security role to any role you want, either a default Domo role or a custom role you've created.


**To change the default role for new users in your Domo,**


1. Click **More** **> Admin > Governance > Roles**.
2. Select the new default role for new users in the **Default role** menu.  
  
![role_management_default_role.png](role_management_default_role.png)


Grants List
-----------


To view a list all of the grants that may be assigned to users along with the specific privileges available for each:


1. Click **More > Admin > Governance > Roles**.
2. Select the **Grants** tab.  
  
![Grants_Tab.png](Grants_Tab.png)
3. Click on the grant to see the associated privileges assigned to the grant.  
  
![Grant_Attributes.png](Grant_Attributes.png)
