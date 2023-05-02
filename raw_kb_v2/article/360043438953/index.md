

Intro
-------

You can access content and perform actions in Domo, depending on the grants of your security role. For information about features for controlling access, see

Controlling Access in Domo

.


 Below are the various default security roles in Domo:


**Admin**


**Privileged**


**Editor**


**Participant**


**Social**


 Each security role has a set of associated grants. Note that these are the
 *default*
 security roles available in Domo. (They are also known as "Domo roles"). You can also create custom security roles in
 **More >**
**Admin > Governance > Roles**
 . This is discussed in detail in

Managing Roles

.


 If you have an "Admin" security role or a customized role with the "Manage all roles" privilege, you can manage grants and security roles of other users in Domo. For information about assigning security roles, see

Assigning a Security Role to a User

.


**Note:**

If a user's access level is changed, they may not be able to see certain assets anymore, depending on their ownership of those assets. For example, if a Privileged user who owns a Page or Card is reassigned to the level of Participant user, he or she will still have access to that Card or Page. If on the other hand a Card or Page was merely shared with that user, they would no longer have access. It will essentially disappear from their view.

Grant Levels for Default Security Roles
-----------------------------------------

The following sections describes the level of grants for the default security roles.

##
 Admin

Users with this default security role have all grants.

##
 Privileged


|  |  |
| --- | --- |
| **Grant**  | **Description**  |
|
 Alerts
  | * Create, edit and share any Alerts to which you have access.
* View, edit, add, or delete Alert Actions on any Alert of which the user is owner.
 |
|
 Appstore
  | * Install and use Apps from the Appstore. Uninstall Apps that you previously installed.
* View the Appstore and App information.
 |
|
 Cards and Dashboards
  | * Use Domo Everywhere to embed cards and dashboards externally, with or without authentication.
* Create, edit and delete cards, Drill views, and Beast Modes to which you have access. Share cards to which you have access.
* Create and edit DataSet views in Analyzer
* Create, edit and delete dashboards, styles, templates, and layouts.
* Create Scheduled Reports and export to email, print, PowerPoint, CSV, and Excel.
* Create and edit natural language generated narratives in notebook cards.
 |
|
 Data
  | * Create data in AppDB.
* Create, edit and delete DataSets to which you have access.
* Export data from DataSets you have access to.
* Create accounts for DataSets in your instance.
* Allow Workbench download.
* Create, edit and delete DataFlows to which you have access. Requires the Edit DataSet grant.
* Train AutoML models. Run DataFlows containing AutoML Inference actions.
* Create, edit and run Magic ETL v2 DataFlows to which you have access.
* Create, edit and delete Jupyter Workspaces to which you have access. Requires the Edit DataSet grant.
 |
|
 DomoApps
  | * View custom DomoApps to which you have access.
* Create, edit and upload custom DomoApps.
 |
|
 Goals
  | * Create and edit any Goals to which you have access.
 |
|
 Pipeline Executor Service
  | * Create, edit, or remove custom pipeline processes.
 |
|
 Users and Groups
  | * Add new people.
* Create, edit and delete groups the person has been granted access to. Add and remove people from groups the person with the grant has access to.
* Create, edit, delete and assign achievements.
 |
|
 Workflows
  | * Submit a certification request for content you have access to.
* Create workflow models.
 |


###
 Editor


|  |  |
| --- | --- |
| **Grant**  | **Description**  |
|
 Alerts
  | * Create, edit and share any Alerts to which you have access.
* View, edit, add, or delete Alert Actions on any Alert of which the user is owner.
 |
|
 Appstore
  | * Install and use Apps from the Appstore. Uninstall Apps that you previously installed.
* View the Appstore and App information.
 |
|
 Cards and Dashboards
  | * Use Domo Everywhere to embed cards and dashboards externally, with or without authentication.
* Create, edit and delete cards, Drill views, and Beast Modes to which you have access. Share cards to which you have access.
* Create and edit DataSet views in Analyzer
* Create, edit and delete dashboards, styles, templates, and layouts.
* Create Scheduled Reports and export to email, print, PowerPoint, CSV, and Excel.
* Create and edit natural language generated narratives in Notebook Cards.
 |
|
 Data
  | * Create data in AppDB.
* Create, edit and delete DataSets to which you have access.
* Export data from DataSets you have access to.
* Create accounts for DataSets in this instance.
* Allow Workbench download.
* Create, edit and delete DataFlows to which you have access. Requires the Edit DataSet grant.
* Train AutoML models. Run DataFlows containing AutoML Inference actions.
* Create, edit and run Magic ETL v2 DataFlows to which you have access.
* Create, edit and delete Jupyter Workspaces to which you have access. Requires the Edit DataSet grant.
 |
|
 DomoApps
  | * View custom DomoApps to which you have access.
* Create, edit and upload custom DomoApps.
 |
|
 Goals
  | * Create and edit any Goals to which you have access.
 |
|
 Workflows
  | * Submit a certification request for content you have access to.
* Create workflow models.
 |


###
 Participant


|  |  |
| --- | --- |
| **Grant**  | **Description**  |
|
 Alerts
  | * Create, edit and share any Alerts to which you have access.
 |
|
 Appstore
  | * View the Appstore and App information.
 |
|
 Cards and Dashboards
  | * Create Scheduled Reports and export to email, print, PowerPoint, CSV, and Excel.
 |
|
 DomoApps
  | * View custom DomoApps to which you have access.
 |
|
 Goals
  | * Create and edit any Goals to which you have access.
 |
|
 Workflows
  | * Submit a certification request for content you have access to.
 |


###
 Social


 This default security role is for trial users and allows access only to Buzz, user profiles, and Projects and Tasks. These users can also create, edit, and share any Alerts to which they have access.


 ​​​​

Grants
--------

A list of the available grants can be found in your Domo instance by following these steps:

. Click on
 **More > Admin > Governance**
 tab.
2. Select the
 **Roles**
 sub-tab.
3. Select the
 **Grants**
 tab.
4. (Optional) Click on the grant for a description of what it controls and what roles have been assigned the grant.

Setting the Default Security Role
-----------------------------------

As an Admin, you can set the default security role that will be assigned to new users who are invited to the instance. The default role is set to Privileged unless it is changed by an Admin.


 To change the default role for your instance,

. Navigate to the
 **More > Admin > Governance > Roles**
 subtab.
2. Click the
 **Default role:**
 dropdown in the top right-hand corner.
3. Select the role you would like to be the default when new users are added to Domo.


