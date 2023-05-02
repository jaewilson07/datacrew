

Intro
-------

Domo Workflows allows you to graphically model a business process into an executable workflow using Business Process Management (BPM) notations and flows. Orchestration capabilities offer robust solutions for integrating internal and external systems, configuring decision logic, and automating activities in a workflow. In addition, you have greater visibility into your workflows and how they can be optimized through tracking and metric features.

You can monitor and review any workflow that has been deployed in your instance. To learn how to access this information, see

Workflows Tracking

.

--


 This article introduces Workflows in the following topics:

 Required grants

Navigation

 Landing page
* Workflows Repository List
* S


 earch and filter
* Sort workflows

Permissions

Workflows and Versions


* Create a new workflow
* Version list page
* Create a new version

Workflow Designer

 Variables
* Data Association
* C


 anvas
* Start types

Shapes

 Change a shape
* Flows

Service Task

 Package Library
* Map inputs
* Map outputs
* Test function

User Task

 Configure email
* Configure form
* Forms Library

Conditional Gateway


 Parallel Gateway


 Timer Event


 End Shape


 Validation

--

Required Grants
-------------------

There are two grants that give user-specific rights to Workflows


 in your Domo environment:

 **Manage Workflows**
 — Allows a user to perform any action on any workflow in the instance. This grant should be given to superusers, admins, or anyone who helps manage workflows. People with the Manage Workflows grant who need to access executed workflow instances must specifically grant themselves the View Instance Details and Edit Instance Details permissions in the

permission modal

.
* **Create Workflows**
 — Allows a user to create a net new workflow. This grant should be given to any user who needs the ability to create and add new workflows to the workflow repository in the instance.


**Note:**
 Contact your Customer Success Manager (CSM) or Account Executive (AE) to receive either of these grants for your instance. For information about the available permissions for non-instance admin users, see the

Permissions

section of this article.

Back to top


 Navigation
--------------

You can access Workflows from the navigation header by selecting
 **More**
 >
 **Workflows**
 .


 The Workflows landing page displays.


**Note:**
 If

*Workflows**
 does not display in the
 **More**
 menu, it needs to be enabled in your Domo instance. Contact

Domo Support

or your CSM/AE for assistance.


 Back to top

##
 Navigation Rail

On the left side of the screen inside Workflows, a navigation rail provides shortcuts to other product pages in your Domo environment. These products complement Workflows and offer capabilities to enhance your overall solution. Learn more about them at the following links:

 Forms
* Code Engine
* Queues

*Note:**
 If you do not see icons for the


 other tools in the navigation rail, they have not been enabled in your Domo instance. For more information about the capabilities of these tools, contact your CSM/AE


 or

Domo Support

.


####
 Expand Navigation Rail

To expand the navigation rail, select the

hamburger menu.


 The full name of each tool displays.


 From the landing pages of any of the other tools, select

*Workflows**
 in the navigation rail to return to the Workflows landing page.


 Back to top


 Landing Page
----------------

The Workflows landing page serves as the home screen and entry point for accessing different features of


 the tool. The landing page contains a list of all the workflows you have access to based on your permissions, as well as options for creating new workflows and performing specific actions on existing workflows. This list is called the

Workflows Repository List

.


 In the UI, selecting
 **Learn More >>**
 redirects you to this article.

Back to top


 Workflows Repository List
-----------------------------

The Workflows Repository List is the main feature of the landing page. Each row in the list represents an individual workflow. This list of column headers describes the information contained in each column:

 **Workflow Name**
 — Displays the title of the workflow and a brief description if one exists.
* **Updated**
 — Displays the date the workflow was last updated.
* **Owner**
 — Displays the name of the person who created the workflow and has administrator rights to it.
* **Usage**
 — Displays the number of times the workflow has


 initiated.
* **Active**
 — Displays a count of how many versions of the workflow exist


 and how many are active. For example, 1/2 indicates that there are two versions of the workflow and only one of them is active. Select any row to navigate to the version list for that workflow. See the

Version List

heading for more information.


###


 Actions Menu

Each row in the Workflows Repository List includes a

meatball menu after the
 **Active**
 column that contains available actions for that workflow. You must have specific permissions in the workflow to perform these actions.

Open the

meatball menu for a workflow to view the possible actions, which are described below.


* **Delete**
 — Deletes all versions of the selected workflow. You can't delete a workflow if it has an active version. You must deactivate all versions before you can delete the entire workflow. For more information about versions, see the

Version List

heading. You must have the Delete or Admin permission for this workflow to have this menu option available. To learn about permissions, see the

Permissions

heading.
* **Manage Permissions**
 — Displays the permissions modal, the title of which is
 **Share Access with the Workflow**
 . In this modal, you can give another user or group specific access to the selected workflow. You must have the Share or Admin permission for this workflow to have this menu option available. To learn about permissions, see the

Permissions

heading.
* **Go to Instances List**
 — Displays the instances list and allows you to see previously executed instances of the workflow. You must have the View Instance Details and Edit Instance Details permissions or the Admin permission for this workflow to have this menu option available. To learn about permissions, see the

Permissions

heading.
* **Edit Details**
 — Allows you to edit the workflow name and description. You must have the Edit or Admin permission for this workflow to have this menu option available. To learn about permissions, see the

Permissions

heading.

Back to top

##


 Search and Filter

On the landing page, you can search for workflows in the Repository List that contain specific terms in their titles or descriptions. Enter one or more


 terms in the
 **Search**
 field to use the search function.


 The number of search results displays below the search bar. When no search terms or filters are applied, this number indicates the total number of workflows in the instance.

Selecting

*Add Filter**
 allows you to filter the Workflows Repository List or search results by different detail categories. After you select

*Add Filter**
 , the Filter menu displays, as shown below. The menu options include the following:

 **Last Updated**
 — Filters the list/results by workflows updated in the selected date range or on the selected date.
* **Owners**
 — Filters the list/results to workflows owned by the selected user.
* **Models Used**
 — Filters the list/results to workflows that have been used or unused.
* **Models Active**
 — Filters the list/results to workflows that are currently active or inactive.


 Each menu option has secondary options. For example, selecting
 **Models Used**
 displays secondary options for
 **true**
 and
 **false**
 . You can select an option at each level and add as many Filters as you want to the search. All Filters display as pills in the Filter bar.

To remove a Filter, select

*Delete**
 for that Filter pill.

Back to top

##


 Sort Workflows

You can sort the Workflows Repository List in different ways. By default, the list is sorted by the date each workflow was last updated, from newest to oldest. This date displays in the
 **Updated**
 column of the list.


 To change the sort method, select the sort menu to display the menu of sorting options and choose a primary sort method. Then select the secondary sort method, which is the order in which the results of the primary sort method are listed.


 In the examples below, the primary sort method is
 **Workflow Name**
 , and the secondary sort method is
 **A - Z**
 .


 The available primary sort methods include the following:

 **Updated Date**
 — Sorts the list by the date each workflow was last updated. Secondary sort methods are
 **Newest to Oldest**
 and
 **Oldest to Newest**
 .
* **Workflow Name**
 — Sorts the list by the name of each


 workflow in alphabetical order. Secondary sort methods include
 **A – Z**
 and
 **Z – A**
 .
* Usage — Sorts the list by the total

usage

of each


 workflow. Secondary sort methods include
 **Low – High**
 and
 **High – Low**
 .
* Number of Active Versions — Sorts the list by the number of

active versions

of each


 workflow. Secondary sort methods include
 **Low – High**
 and
 **High – Low**
 .

Back to top


 Permissions
---------------

Within Workflows, you can grant permissions to other users or groups to perform specific actions for a specific workflow. To grant permissions, follow the steps below.

. Select the

meatball menu for the workflow in the Repository List.


 The

actions menu

displays.
2. Select
 **Manage Permissions**
 .


 The

permissions

modal displays.

The permissions modal contains a search bar, a list of
 **People With Access**
 to the form, and a list of
 **People Without Access**
 to the form. By default, the owner of the workflow has Admin permission to the workflow.
3. In the search bar, enter the name of a person or group.


 If the user or group is found in the instance, they display at the top of the list of
 **People Without Access**
 . A menu displays next to the user or group name. This menu determines the permissions for the user or group; the default permission is No Access.
4. Select the menu for the user or group and select the permission you want to grant them. The following list describes the level of access to the form each permission determines:


* **Admin**
 — Allows the user/group to perform any action on the workflow.

*Note:**
 Users with the Admin permission for a specific workflow are different from users with the Manage Workflows grant, which gives a user access to all workflows in their


 Domo instance or environment.
* **Delete**
 — Allows the user/group to delete the workflow if it is undeployed or deactivated. Users with this access can also delete any version of the workflow.
* **Read**
 — Allows the user/group view-only access to all versions of the workflow.
* **Write**
 — Allows the user/group to make edits to any undeployed version of the workflow.
* **Share**
 — Allows the user/group to grant permissions to other users in the workflow. Users with Share access can only grant access that is equal to or less than their own.
* **Deploy**
 —

Allows the user/group to deploy versions of the workflow.
* **Execute**
 — Allows the user/group to start a workflow instance on a deployed version.
* **View Instance Details**
 —

Allows the user/group view-only access to the Instance List and the Instance Details page to review specific executions of a workflow. If a user does not have the Manage Workflows grant, they can only view workflow instances that they have initiated.

*Note:**
 Users with the Manage Workflows grant that have this permission can view any initiated workflow.
* **Edit Instance Details**
 — Allows the user/group to edit (recover) failed or in-progress workflow instances on the Instance Details page of the workflow. If a user does not have the Manage Workflows

grant, they can only edit workflow instances that they have initiated.

*Note:**
 Users with the Manage Workflows grant that have this permission can


 edit any initiated workflow that has


 an In-Progress or Failed status.

Back to top


 Create a New Workflow
-------------------------

Follows these steps to create a new workflow:

. On the landing page, select
 **+ Add Workflow**
 .


 The
 **Create New Workflow**
 modal displays.

*Note:**
 You must have the Create Workflows grant to create a new workflow. If the
 **+ Add Workflow**
 option is disabled, contact your Domo admin, CSM, or AE.
2. In the
 **Workflow Name**
 field, enter a name for the workflow.
3. (Optional) Enter information in the
 **Description**
 field to provide additional details about the workflow process.
4. (Optional) In the
 **Version**
 field, you can select a different version if necessary. By default, version 1.0.0 is selected. The version number must be in the
 *major.minor.patch*
 format.
5. Select
 **Save**
 to proceed to the

Workflow Designer

or
 **Cancel**
 to return to the landing page.

Back to top


 Version List Page
---------------------

A single workflow can have multiple versions. Versions are helpful because you may need to adjust your workflow either before or after deployment as new requirements emerge or as you learn new ways to optimize the process.


 The Version List page provides an organized way to manage and access versions of a specific workflow. On this page, you can view the details of a workflow and each of its versions, create new versions, and edit existing versions.


 To access the Version List from the Workflows Repository List, select a workflow.


 The Version List page displays.

To return to the Workflows Repository List, select

*Back**
 .

##
 Workflow Name and Description

The workflow name and description display at the top of the Version List page. These are the same name and description that were assigned to the workflow when it was created.


 A person with the Write permission for the workflow can edit the name and description by hovering over them and selecting

*Edit**
 .


 The
 **Edit**
 modal displays.


**Note:**
 Changing the workflow name and description here also updates the row for the workflow in the Workflow Repository List on the landing page.


###
 Last Updated

The
 **Last Updated**
 item on the Version List page displays information about when the workflow was last updated.

##
 Created By and User Access

On the Version List page, you can view the creator of the workflow and avatars for the people or groups who have access to it. Hover over each avatar to view the person's or group's name. If there are more than four users with access to the workflow, a number displays after the fourth avatar indicating the total number of people or groups with access. Select the number to display the permissions

modal, where you can


 view or edit user access.

Back to top

##


 Create a New Version


**Important:**
 To have the
 **+ Add Version**
 option enabled, you must have the Create Workflows grant AND the Write or Admin permission for the workflow.

Do the following to create a new version:


 On the Version List page for the workflow you want to create a new version of, select
 **+ Add Version**
 .


 The following options display:


* **Blank Canvas**
 — Selecting this option creates a new version of the workflow without using a previous version as a starting point.


 The

*Create New Version**
 modal

displays.
* **Existing Version**
 — Selecting this option displays the version numbers for all previous versions created in the workflow.

You can choose a previous version and use it as a starting point in the

Workflow Designer

. This is useful if all or most of the content in the previous version is still valid, but you can add additional shapes or change configurations in the new version. Select a previous version to open the

*Create New Version**
 modal

.


####


 Create New Version Modal

In the
 **Create


 New Version**
 modal,


 you cannot edit the version/workflow name. The name of the version is the same as the name of the workflow and


 other versions of it. The version number is the unique element, and you can edit it in the
 **Version**
 field.

The
 **Version**
 field automatically populates to the next minor version available for the major version. For example, if the last version was 1.6.0, the version number populates to 1.7.0. You can overwrite the version number with other numeric characters. All version numbers must be in the
 *major.minor.patch*
 format.

*Note:**
 If a version number has already been used in the workflow, you cannot save the version under that number a second time.


 You can add optional details or notes to help distinguish this version in the
 **Description**
 field.

After you make any changes, select
 **Save**
 in the modal to save the new version.


 The

Workflow Designer

displays.


 Select
 **Cancel**
 in the modal to return to the Version List page for the workflow.


 Back to top


 Version List
--------------

On the Version List page, each row in the list represents a single version of the


 workflow.


 The following list of column headers describes the information in each row:

 **Version**
 —

Displays the version number.
* **Description**
 — Displays the description of the version. The description is empty if no description was added when the version was created.
* **Contributor**
 — Displays the name of the person who created the version. The contributor can be different from the workflow owner.
* **Deployed**
 — Displays whether the version has been deployed. (Options are a date or
 **No**
 .)
* **Active**
 — Displays whether the version is active and can be deployed. (Options are
 **Yes**
 or
 **No**
 .)
* **Last Updated**
 — Provides the date

on which

the version was last updated.
* **Usage**
 — Displays how many times the version has been deployed.


###
 View a Version

On the Version List page, select a version to navigate to the

Workflow Designer

and view that version's graphical model and configurations.


 The version displays in the least restrictive mode based on your user permissions and the state of the model:

 If you have Write or Admin permission for the workflow, the version opens in Edit mode.
* If you do not have Write permission but have Read permission for the workflow, the version opens in View-only mode.

If the version has already been deployed, the version opens in View-only mode regardless of user permissions. This is because a version cannot be edited after it has been deployed.

##
 Locked Version

Only one person can edit a workflow at a time. While you are editing an open workflow, other people who try to access it view it as locked so that your updates cannot be overwritten. If a person tries to open a version that is currently being edited, the
 **Version Locked**
 modal displays. This modal indicates that the version is locked and displays the name of the person who is editing the version. The modal warns that unlocking the version may result in unsaved changes by either person.

Depending on their permissions, the person can either unlock the version or see it in View-only mode in the Workflow Designer. If the person unlocks the version, all


 of your unsaved edits are lost, and the version can be opened and updated by another user.


 Back to top

##


 Version List Action Menu

Each version row has


 a

meatball menu. When you select this menu, the following actions for the version display. You must have specific

permissions

for the workflow to perform these actions.

 **View**
 — Opens the version in View-only mode in the Workflow Designer. You must have either View and Edit OR Admin permission(s) for the workflow to perform this action.
* **Edit Workflow**
 — Opens the version in Edit mode in the Workflow Designer. You must have Edit OR Admin permission for the workflow to perform this action.
* **Edit Version Details**
 — Opens the
 **Edit Version**
 modal, where you can edit the description of the version. You must have the Edit OR Admin permission for the workflow to perform this action.
* **Create New Version**
 — Opens the

*Create New Version**
 modal

. You must have the Edit OR Admin permission for the workflow to perform this action.
* **Deploy**
 — Attempts to deploy the current version of the workflow. You must have the Deploy OR Admin permission for the workflow to perform this action.
* **Activate/Deactivate**
 — Gives the version an active or inactive status. A workflow cannot be active until it has been deployed. By default, a deployed version has an active status, which you can change to inactive after you deploy the version. This prevents a deployed version from being started. You must have the Edit OR Admin permission for the workflow to perform this action.
* **Start**
 — Initiates the execution of the version. You can only start deployed and active versions. You must have the Execute OR Admin permission for the workflow to perform this action.
* **Go to Instance List**
 — Takes you to the

Instance List

, which displays the previous instances of the workflow that have been executed. You must have either View Instance Details and Edit Instance Details OR Admin permission(s) for the workflow to perform this action.
* **Delete**
 — Deletes the version. You cannot delete a deployed version that has an active

status

, and you must deactivate all versions before you can delete the entire workflow. You must have the Delete OR Admin permission for the workflow to perform this action.


**Note:**
 If you cannot access an action in the menu, either you do not have

permission

to perform the action, or the action is not available due to the version

status

.


 Back to top


 Workflow Designer
---------------------

The Workflow Designer is where you can view, create, or edit the graphical model of a workflow and configure the data elements that support your process. You can design your models with different shapes that represent automated tasks, manual tasks, and decision points. You can also arrange these steps and activities in specific sequences on one or more flows, allowing you to orchestrate the workflow based on your business needs.

##
 Access the Workflow Designer

Access to the Workflow Designer depends on your

permissions

.


 There are two ways to access the Workflow Designer:


 1) Navigate to the Workflow Designer from the Workflows landing page by

creating a new workflow

.


 2) Navigate to the Workflow Designer by selecting creating a version or selecting a previous version from the

Version List page

.


 The following sections introduce the various areas in the Workflow Designer.

##
 Header

The header in the Workflow Designer includes the name of the workflow, controls to

*Undo**
 and

*Redo**
 actions as you build your workflow, the
 **Save**
 button, and the

action menu.


###


 Workflow Designer Action Menu

Select the

action menu in the header of the Workflow Designer to expand it. You must have specific permissions in the workflow to perform these actions. Each action is described below.


* **View**
 — Opens the model for the version in View-only mode in the Workflow Designer. You must have the View and Edit OR Admin permission for this workflow to perform this action.
* **Edit Workflow**
 — Opens the model for the version in Edit mode in the Workflow Designer. You must have the Edit OR Admin permission for this workflow to perform this action.
* **Edit Version Details**
 — Opens a modal to edit the workflow name and description. You must have the Edit OR Admin permission for this workflow to perform this action.
* **Create New Version**
 — Opens the
 **Create New Version**


 modal. The corresponding version number displays on the row and is used as a starting point for the new version. You must have the Edit OR Admin permission for this workflow to access this menu item.
* **Validate**
 — Checks the workflow version for validation issues. If issues are found, the system navigates you to a Validation view to correct them. See the

Validation

section for more details.
* **Deploy**
 — Attempts to deploy the version so it can be started. You must have the Deploy OR Admin permission to perform this action.
* **Activate/Deactivate**
 — Puts the version in an active or inactive status. A workflow can only be active after is it deployed. By default, a deployed version has an active status, which you can change to inactive after you deploy the version. This prevents a deployed version from being started. You must have the Edit OR Admin permission for this workflow to perform this action.
* **Start**
 — Initiates the workflow version to execute. You can only start


 deployed and active versions. You must have the Execute OR Admin permission for this workflow to access this menu item.
* **Go to Instance List**
 — Navigates you to the Instance List and allows you to see prior instances of the workflow that have executed. You must have the View Instance Details and Edit Instance Details OR Admin permission to access this menu item.
* **Delete**
 — Deletes the version. You cannot delete a version if it has an active status. All versions must be deactivated before you can delete the entire workflow.

Back to top

##
 Info Tab

There are two tabs on the left side of the Workflow Designer:
 **Info**
 and

*Data List**

. The components of the
 **Info**
 tab are described below.

 **Workflow Owner**
 — Displays the name and avatar of the workflow's owner.
* **Description**
 — Displays the workflow description, if one exists.
* **Last Updated**
 — Provides the date the workflow was last updated. If there is a 🔴 red dot by the date, there are unsaved edits to the model. If there is a 🟢 green dot, all edits have been saved.
* **Deployed Status**
 — Indicates whether the workflow has been deployed. There are two options: 🔴
 **No**
 or 🟢
 **Yes**
 .
* **Active Status**
 — Indicates whether the workflow is active. There are two options: 🔴
 **No**
 or 🟢
 **Yes**
 .
* **What are Workflows?**
 —

Expanding this section displays information about workflows and triggers.


 Back to top

##


 Data List Tab

The
 **Data List**
 tab displays the type of data used in the workflow through the configured variables.

###


 Variables

Variables store the data values that are passed or generated by the workflow. The values in variables can change as the workflow progresses from step to step

,

and variables can be mapped to inputs or outputs on tasks throughout the workflow.


 Depending on your

permissions

for the workflow, you can add variables to the list. See how to do this below.


#####
 Add a Variable

Follow these steps to add a variable to the Data List:

. In the
 **Enter Variable Name**
 field, enter a name for the variable. You cannot use spaces or special characters in the variable name.
2. Choose a data type from the
 **Select Data Type**
 list. Depending on what you select, the data type may require a subtype or have additional options. See the

Data Types

heading for more information.
3. Select
 **Add New**
 to add the variable to the
 **Data List**
 tab.


 Add as many variables as you need to meet the data requirements of your business process. You can also add variables to the Data List from the configuration panel for specific shapes.

####
 Edit a Variable

You can edit a variable by following these steps:

. Hover over any variable in the Data List and select
 **Edit**
 .


 The name and data type of the variable display.
2. Change the name or data type in the
 **Enter Variable Name**
 or
 **Select Data Type**
 fields.
3. Select
 **Update**
 to save your changes.


#####
 Delete a Variable

Follow these steps to delete a variable from the
 **Data List**
 tab:

. Hover over any variable in the Data List and select

*Delete**
 .


 A dialog displays to confirm deletion.

*Important:**
 Deleting a variable may result in unmapped parameters if the variable is used to configure a shape.
2. Select
 **Delete**
 to remove the variable from the Data List or
 **Cancel**
 to close the dialog without deleting the variable.

Back to top

##


 Data Types

Each variable in the Data List must have a data type to designate what kind of value it can store. This also helps you know which variable can be mapped to the contract (inputs and outputs) on a task in the workflow.


 Each data type has a corresponding icon to help you identify what kind of data is


 required or

is

being used in your model. The data types


 are described below.


|
 Icon
  |
 Data Type
  |
 Description
  |
| --- | --- | --- |
|

|
 Text
  |
 A text (string) variable contains


 values for alpha, numeric, special, or international characters.
  |
|

|
 Number
  |
 A number (integer) variable contains values for numeric characters only.
  |
|

|
 Decimal
  |
 A decimal (float) variable contains values for numeric characters only.
  |
|

|
 Boolean
  |
 A Boolean variable stores only


 the binary options of true or false.
  |
|

|
 Date
  |
 A date variable contains a single date value.
  |
|

|
 Time
  |
 A time variable contains


 a single time of day value.
  |
|

|
 Date-Time
  |
 A date-time variable contains


 a value that includes both a date and time of day value.
  |
|

|
 Duration
  |
 A duration variable contains


 a value for a unit of time, such as five


 minutes.
  |
|

|
 List
  |
 A list variable contains one or more values in a list form. Values are stored starting at index 0 and increment by one for every value including in the mapping. You must configure a list variable with a subtype that specifies what type of list values are stored. The values in the list are subject to the character/format restrictions of the subtype.
  |
|

|
 Object
  |
 An object variable can have multiple child properties and stores their corresponding data values. You can configure an object as defined or open, as described below. Object variables are convenient for keeping related data in one variable, such as an address that has a


 city, state, and zip code.
  |


####
 Defined Object

You can configure a defined object with child property variables. You have the option to add child variables when you select an object as the data type for the variable in the
 **Data List**
 tab. Each child variable stores an individual value based on the data type selected. Please note a child variable cannot be configured with an object data type. Workflows does not support nesting in defined objects at this time.


 For each child variable you want to add, select
 **Add Child**
 , then enter a name and data type for it.

Select
 **Add New**
 or
 **Update**
 to add the defined object variable to the
 **Data List**
 tab.

You can expand a Defined Object to view the child and their designated data types. Hover over the Defined Object and select

*Expand**
 to see the child variables under the Defined Object. Select

*Collapse**
 to close the Defined Object.


####
 Edit/Delete a Child Variable

You can edit or


 delete a child variable by expanding the Defined Object and selecting

*Edit**
 or

*Delete**
 for that child variable.


 A dialog displays to confirm deletion. Select
 **Delete**
 to remove the child variable or

select

*Cancel**
 to close the dialog.

###
 Open Object

An Open Object is configured with no defined child variables. The object is added to the Data List and can store a JSON payload without limits to its structure or nesting. Open Objects are convenient to use when the workflow calls an API in a service task and the response is contained in a single parameter.

*Tip:**
 Open Object variables have an "empty" cube icon

,  while Defined Object variables have a "filled" cube icon

.

Back to top

##


 Data Association

Within the Workflow Designer, data association allows you to see where data is used across shapes in the workflow. Select a variable in the
 **Data List**
 tab,


 and the shapes that reference that variable in your configuration are highlighted in the variable's color. In the example below, the shapes that reference the
 **list**
 variable are highlighted in blue.

When you select a variable, a banner displays at the top of the canvas. The banner is always the same color and displays the total number of shapes associated with the variable, the variable name, and the data type.

Select

*Close**
 in the banner to exit Data Association mode. Note that selecting another variable changes the context to show associations for the new selection.


 Back to top

##


 Canvas

The canvas is where you graphically design and configure your workflow. Shapes represent different operations are connected to each other with

flows

to determine the sequence and any dependencies. The next sections describe the steps to design a workflow on the canvas.

###
 Canvas Controls

The canvas has various options and controls to help you navigate

in

the tool and view the model or workflow.

####
 Element Controls

There are several


 ways to control and move the elements (shapes and flows) on the canvas with a mouse/trackpad and hot keys commands. These are detailed below.

#####
 Select Elements


* **Single element selec**
 t
 **—**
 Left-click a node or edge of an element to select the element.
* **Multi-element select —**
 Hold Shift + left-click and drag the cursor to select multiple elements. Holding Control (Windows)/Command (Mac) and selecting multiple nodes also selects multiple elements.
* **Select All Elements —**
 Press Control (Windows)/Command (Mac) + A to select all the elements.


######
 Move Nodes


* To move selected nodes anywhere on the canvas, left-click, hold, and drag the cursor to the desired location.
* Move selected nodes by one pixel with the directional arrows on a keyboard.


######
 Pan


* Left-click

in

an empty space in the canvas and drag to move the entire canvas.


######
 Zoom


* Place the cursor over the canvas and use the mouse wheel to zoom in and out.
* Select the zoom controls to

*Zoom In**
 and

*Zoom Out**
 . Fit all the nodes in view by selecting

*View all**
 .


####


 Configuration Panel

When you add a

start type

or a

shape

to the canvas and have that item selected, a configuration panel displays to the right of the canvas, as shown below. The configuration panel can have one or more tabs, based on the type of the start or shape. In this example, the configuration panel has two tabs:
 **Mapping**
 and
 **Timer**
 .

When no start or shape is selected, no configuration panel displays.

##


 Start Types

When you create a net new workflow, the canvas is blank except for two options in the upper

-

left corner. These options are for the start type:
 **Start**
 or
 **Timer**
 .


* **Start**
 — This start, known as a Message Start, initiates the workflow with a manual trigger, API call, or integration. It


 is an endpoint that you can reach manually or programmatically, depending on your needs. You can also configure a Message Start with

s


 tart parameters

. Start parameters require necessary information to be passed to initiate the workflow. A Message Start does not allow any incoming flows and can only have one outgoing flow.
* **Timer**
 — A Timer Start initiates the workflow based on a configured interval. Each time the interval is completed, an instance of the workflow starts. You cannot pass data into the workflow when using a Timer Start. A Timer Start does not allow any incoming flows and can only have one outgoing flow.


####
 Message Start

When you select
 **Start**
 (Message Start), the start box changes into a Message Start shape,


 and a corresponding configuration panel displays to the right of the canvas. To learn more about

Shapes

, see the heading below. To learn more about the

configuration panel

,


 see above.


 The title for the Message Start defaults to "Start
 *Workflow Name*
 ." You can change the title by double-clicking inside the Message Start shape and editing the text,


 or by editing the
 **Title**
 field in the
 **Mapping**
 tab of the configuration panel. You can also add a description in the shape or in the
 **Description**
 field of the
 **Mapping**
 tab. Any text you enter in one place displays in the other.


####


 Add Start Parameters

You can add start parameters to a Message Start to require or allow data values to be passed into the workflow upon initiation. You must configure start parameters in the
 **Mapping**
 tab of the configuration panel. If you chose a Message Start on the canvas, the
 **Select configuration type**
 field in the configuration panel is already set to Start.

To configure a start parameter for a Message Start, indicate if the parameter is required or not with the toggle. Add a name for the parameter in the
 **Enter Parameter Name**
 field and and select the

data type

the value should match. You cannot use spaces or special characters in the parameter name.


 After you populate the fields, the
 **Add New**
 button becomes available.


 Select
 **Add New**
 to add the parameter.


 The new parameter displays at the bottom of the panel under
 **Parameters**
 .

Note that the parameter displays with the name and

the

data type

that

you entered. A red asterisk beside the parameter name indicates that it is a required parameter. In addition, the
 **Mapping**
 field for the parameter populates with a variable of the


 same name and type. This is done by default for convenience.


 You must map each start parameter to a variable for a valid configuration. When you add a parameter, a corresponding variable of the same name and type is added to the
 **Data List**
 tab and is automatically mapped to the parameter.

You can change the mapping if needed, but it must be to a variable of the same data type. To change the mapping, choose another variable from the
 **Mapping**
 list in the
 **Parameters**
 area of the configuration panel. All variables of the same type


 in the Data List display as options in the list. You can also remove a mapping without selecting another variable by selecting
 **Clear**
 from the list.


 Add as many parameters as necessary to accommodate the data you provide to


 the workflow.

####
 Default Values

You can configure parameters with default values


 so that a specific value is provided to the workflow if one is not provided by the person or system initiating the Message Start.


 To configure a default value, select

*Parameter options**
 in the
 **Parameters**
 area of the configuration panel.


 The
 **Configure Defaults**
 modal displays, allowing you to enter a default value for the parameter. Select
 **Submit**
 to save your default value or
 **Cancel**
 to close the modal without saving the default value.

You can configure a default value for all parameters. It is also valid to configure some parameters with a default value and not others.


 Parameters that have a default value


 are indicated by a blue dot in the upper-right corner of the parameter's
 **Mapping**
 field.

You can change default values for any parameter until that version of the workflow is deployed.


 Back to top

###
 Timer Start

When you select a
 **Timer**
 , the start box changes into a Timer Start shape, and a corresponding configuration panel displays to the right of the canvas.


 The title for the Timer start shape defaults to "Start
 *Workflow Name*
 ." You can change the title by double-clicking inside the Timer Start shape and editing the text,


 or by editing the
 **Title**
 field in the
 **Mapping**
 tab of the configuration panel. You can also add a description in the shape or in the
 **Description**
 field of the
 **Mapping**
 tab. Any text you enter in one place displays in the other.


#####
 Intervals

An interval is the amount of time between executions of the workflow. You can configure the length of the interval in the
 **Mapping**
 tab of the configuration panel. If you are using a Timer Start, the
 **Select configuration type**
 list is set to Timer. Open the
 **Update Interval**
 list and select an interval option.

The interval options are described below.

 **Every Minute**
 — Displays duration options for every minute, every five minutes, and every 15


 minutes. Check the
 **Active Hours**
 box to specify times in the
 **From**
 and
 **To**
 fields if you only want the workflow to run during certain hours of the day every time the duration is reached. Otherwise, leave the
 **Active Hours**

check

box unchecked to let the workflow run continuously every time the duration is reached.
* **Every Hour**
 — Deploys the workflow every hour. Check the
 **Active Hours**
 box to specify times in the
 **From**
 and
 **To**
 fields if you only want the workflow to run during certain hours of the day. If the
 **Active Hours**
 box is unchecked, the workflow runs once


 per hour,


 24 times per day.
* **Every Day**
 — Deploys the workflow one time every day. You must select the hour you want the workflow to start in the
 **Start Between**
 field.
* **Every Weekday**
 — Deploys the workflow one time every weekday (Monday – Friday). The workflow doesn't start on weekend days (Saturday & Sunday). You must select the hour

when

you want the workflow to start in the
 **Start Between**
 field.
* **Every Month**
 — Deploys the workflow one time every month on a specified day. The options are the first of the month, the fifteenth of the month, and the last day of the month. You must select one of these options in the
 **Day**
 field. You must also select


 the hour

when

you want the workflow to start in the
 **Start Between**
 field.


#####
 Configuration Type

The
 **Select configuration type**
 field in the configuration panel allows you to change the start shape to another start type. If you have entered any configuration updates in the panel, selecting a different start type displays a warning dialog asking you to confirm the configuration change. Select
 **OK**
 to change the start type. The start shape changes,


 and the configuration panel reflects the change. Select
 **Cancel**
 to return to the canvas without changing the start type.

Back to top


 Shapes
----------

The Workflows Designer offers a core set of Business Processing Modeling Notation (BPMN) shapes that you can implement in a workflow after you have selected a start type. These shapes are connected to each other by lines or "flows." Learn about

flows

below.


 The next sections describe each available shape, listed below:

 Service Task
* User Task
* Conditional Gateway
* Parallel Gateway
* Timer Event
* End Shape

To add a shape to the canvas after you configure your

start type

, select

*Add**
 .


 The notation pallet displays, and you can select a shape to add to the canvas.

##
 Notation Pallet

The notation pallet displays the BPMN shapes you can add to the canvas. Hover over each shape to see a tool tip with the shape type. In the image below, a
 **Timer Event**
 is being selected.

When you select a shape from the notation pallet, that shape is connected to the outgoing flow—the line coming from the start or previous task.

Each shape represents a type of activity in the workflow,


 and you can configure each to perform specific actions and steps. These shapes are part of the BPMN 2.0 spec and have their own distinctive icons that display after the shape is added to the canvas.


 Back to top

##


 Service Task


 A Service Task is an automated activity in a workflow that executes a pre-defined function of code programmed to perform a specific job. When the workflow reaches a Service Task, it executes the assigned function and then moves on to the next step in


 the flow. A Service Task can have multiple incoming flows


 but only one outgoing flow.

To configure a Service Task, select the shape after you add it to the canvas so that its configuration panel displays on the right.

Select
 **Explore Functions**
 in the configuration panel. The

Package Library

modal opens.


 In the Package Library modal, you can search for the function that you need the Service Task to execute at this point in the workflow.

Back to top


 Package Library
-------------------

The Package Library modal displays a library of packages that contain one or more functions. Domo offers a variety of general functions in the library for all customers to use. Many of Domo's general functions allow you to integrate with other Domo products, such as querying a DataSet, writing to a DataSet, starting a DataFlow in


 Magic ETL, and calling a writeback connector.


 Any custom functions that you develop or that are specific to


 you also display in your instance of the library.

*Note:**
 All packages and functions are created with the Code Engine tool. See the

Code Engine documentation

or speak with your CSM/AE for more information.

In the modal, you can scroll through the library to find the appropriate package. A search bar allows you to filter the package results. The library returns any packages that match the package name, description, or function name to the characters entered in the search field.


 You can also filter the library by adding a Filter pill to the search bar. Filter options include
 **Owner**
 ,
 **Updated Date**
 , and
 **Function Count**
 .

To apply one or more Filters, select

*Add Filter**
 to view the Filter menu. Select one of the options to add the Filter to the field, and then populate the pill with one of the available values. In the example below, the
 **Updated Date**
 Filter is active, and the date options display.

Continue these steps until you have added all the Filters you want

to

. The search results update dynamically with each added Filter. To remove a Filter, select

*Delete**
 for that Filter.


**Note:**
 If a package you want to use doesn't exist in the


 Package Library, you can create it in Code Engine by selecting
 **New Package**
 in the modal. This opens the Code Engine tool.

You must have the appropriate permissions to use Code Engine. See the

Code Engine documentation

for more details.


 Select a package by selecting the tile for that package in the modal.


 The Functions view displays.


 The Functions view includes the package author's name, a list of available versions, and the name and description for each function in the package. Select

*Back**
 to return to the Package view of the modal or

*Close**
 to exit the modal.

You can select
 **Edit Package**
 in the Function

s

view, which opens the Code Engine tool and allows you to add or remove a function from


 the package. You must have the proper permissions to be able to edit a package. See the

Code Engine documentation

for more details.


 The individual functions in the package display in a list in the Function

s

view. Each row represents a single function and displays the function name, the number of inputs and outputs, and a function description. Select a row to see the parameters for each of the function's inputs and outputs.


 The input parameters show the data the function needs to execute, and the output parameters show what the function returns. You can assign the function to the Service Task in your workflow by pressing


**Select Function**
 .

When you assign a function to a Service Task, the name and description of the function automatically populate in the shape if those areas are blank. You can edit these fields if needed by double-clicking the shape or making the changes in the configuration panel.


 The function parameters are also automatically added to the parameter section of the configuration panel. A red asterisk beside the parameter name indicates that it is a required field for the function to work and must be mapped for a valid configuration.

Back to top

##


 Map Inputs

Map the input parameters using one of the options in the
 **Mapping**
 list.

All variables of the same type


 from the
 **Data List**
 tab display as options in the
 **Mapping**
 list. Selecting a variable for an input means that during runtime, the value stored in that variable is passed


 to the Service Task and

is

used by the function.


 If a variable of the same name and type as the parameter exists in the
 **Data List**
 tab, it maps to that input automatically. You can change the mapping to another variable or use the
 **Clear**
 option to remove a mapping from the field.


###
 Custom Value

If you do not have or do not


 want to map a variable for the input, select the
 **Custom**
 option from the
 **Mapping**
 list.

The
 **Custom**
 option allows you to enter a specific value for


 that input. The custom value must adhere to the format constraints of


 the parameter data type.

Back to top

##


 Map Outputs

Map the output parameters using one of the options in the
 **Mapping**
 list. All variables of the same type in the Data List display as options in the list. Selecting a variable for an output means that during runtime, the value produced by the function stores that variable and overwrites/replaces any prior value that the variable contained.


 You can automatically create a variable and map it to the parameter by selecting the
 **Create Variable and Map**
 option in the list. This is convenient if the variable you want to use for the mapping has not yet


 been created.


####
 Remove Function

The function you chose for a Service Task displays in the
 **Mapping**
 tab of the configuration panel under
 **Parameters**
 .

If you want to remove the function, select

*Delete.**

Back to top

##


 Test Function

You can try out the function before deploying the workflow to make sure it works as expected. Select
 **Test**
 in the configuration panel.


 The
 **Testing:
 *Name of function***

modal displays.

Populate the
 **Inputs**
 fields with values


 which must adhere to the format constraints of


 the parameter data type. After you enter the values, select
 **Test**
 . View the results in the
 **Console**
 tab of the modal.

Back to top

##


 User Task


 A User Task is


 a manual step in the workflow that requires a human touchpoint. When the workflow reaches a User Task, a person must perform a manual action to complete the step and move the workflow forward to the next item. A User Task can have multiple incoming flows but only one outgoing flow.

To configure a User Task, select the shape after you add it to the canvas so that its


 configuration panel displays to the right. Enter a title and description by selecting either


 the shape or the fields in the configuration panel and entering text. The text in the shape reflects changes in the
 **Title**
 and
 **Description**


 fields.

You can configure a User Task with two types of manual interactions. Choose an option from the
 **Select configuration type**
 list to view additional fields in the configuration panel. After you select an interaction type, you must fully configure it for it to be valid.


####


 Configure Email

The Email Configuration Type allows you to configure an email interaction. When the workflow reaches an Email User Task, an email is sent to an individual or group. The recipient can respond to the email by using the response options embedded in the email body. The response options display as a button.


 Selecting
 **Email**
 as the configuration type opens the email edit options in the configuration panel.


#####
 Recipients

Start configuring the email by entering the names of the people or groups you want to


 receive the email in the
 **Email Recipient(s)**
 field. Emails can only be sent to Domo users. As you enter text in the field, the available recipients automatically filter.

####
 Email Subject

Enter the subject line of the email in the
 **Email s**
**ubject**
 field.

####
 Email Body

Enter your message in the
 **Email body**
 field. You can insert a variable into the email body so that if a value is needed at runtime, whatever is stored in the variable displays in the email. Insert a variable by selecting one from the
 **Insert Variable**
 list. All the variables from the
 **Data List**
 tab are available as list options.


####
 Response Options

Configure the response options for recipients by selecting a data type for the return value from the
 **Select data type**
 list, and then enter a label for the button that displays in the email (
 **Response label**
 field). Enter the value that returns to the workflow if the button is selected (
 **Response value**
 field). The
 **Response value**
 field has different options for entry based on the data type you select.


 After you populate each field, you can select
 **Add New**
 to save your response option.

Add as many response options as you need. Each response displays in the
 **Listed Responses**
 area of


 the configuration panel, and each response option displays as a different button in the email. The data type locks after the first response option is added because all the return values must be of the same type for the response to map to a variable.


####
 Output Mapping

In the
 **Output Mapping**
 section, map the email response to a variable of the same type so that


 the response can be stored.

This image shows


 a sample email as seen by


 the recipient.


####


 Configure Form

The Form Configuration Type allows you to assign a pre-configured form to a User Task. Forms are created in the

Forms

tool.


 To use a form, select the
 **Form**
 option in the
 **Select configuration type**
 list in the configuration panel. The configuration panel displays the option to
 **Explore Forms**
 .

Back to top


 Forms Library
-----------------

Select
 **Explore Forms**
 to open the Forms Library modal, where you can search for and select the form you need an end user to complete when the workflow reaches the Form User Task.

In the modal, you can scroll through the library of all forms you have access to and find the form you need. A search bar allows you to filter the form results. The library returns any form that matches the form name or description to the characters in the search field.


 You can also filter the library by adding a Filter pill to the search bar. Filter options include
 **Created By**
 and
 **Last Updated**
 . To apply one or more Filters, select

*Add Filter**
 to view the Filter menu. Select one of the options to add the Filter to the field,


 and then populate the pill with one of the available values.


 Continue these steps until you have added all the Filters you want

to

. The search results update dynamically with each added Filter. To remove a Filter, select

*Delete**
 for that Filter.


 In the example below, the
 **Updated Date**
 Filter is active, and the date options display.

Select a form tile in the modal to preview the form. The modal displays the form on the left, and you can interact with the fields and view the different sections and pages of the form by scrolling and using the
 **Back**
 and
 **Next**
 controls.

The inputs and outputs for the form display in the modal. These parameters were defined when the form was created in the Forms tool. The input parameters indicate which data the form requires. Data passed into the inputs display in the corresponding fields in the form. Fields marked as outputs store the data entered by the end user who completes the form in workflow variables.


 You can assign your desired form


 to the User Task by pressing


**Select Form**
 .

When you assign a form to the User Task, the form automatically populates the name and description of the User Task shape if they are blank. You can edit these fields if needed by selecting the shape or in the configuration panel. The form parameters are also automatically added to the
 **Parameters**
 section of the configuration panel. The red asterisk beside the parameter name indicates that it is a required field for the form and must be mapped for a valid configuration.

Back to top

##


 Conditional (Exclusive) Gateway


 A Conditional Gateway, also called an Exclusive Gateway in the BPMN spec, has multiple outgoing flows that are configured so that the workflow travels down a single path based on conditions that evaluate data in the instance.

Select a Conditional Gateway from the notation pallet. After the shape displays on the canvas, select it to display the configuration panel.


 You can add a title and description by selecting either


 the shape or the
 **Title**
 and
 **Description**
 fields in the configuration panel and entering text. The text in the shape and in the
 **Title**
 and
 **Description**


 fields in the configuration panel mirror each other.


 Add multiple outgoing flows from the Conditional Gateway by selecting the gray gateway icon on the right or bottom of


 the shape.

The notation pallet displays. Select the shape you want to connect to the outgoing flow.


 If both spaces for outgoing flows are taken, select
 **Add Gateway**

i

n


 the corner of the shape to add one or more additional outgoing flows.

After you add another outgoing flow, you can adjust and maneuver the flows and shapes as needed to fit your model design.

###
 Join Flows Together

You can use a Conditional Gateway to combine flows into a single flow. Any incoming flow to a Conditional Gateway automatically activates the gateway and moves


 the workflow forward. The workflow does not wait for all the incoming flows to reach that point before continuing, as


 a

Parallel Gateway

does. Having multiple incoming flows to a Parallel Gateway means there could potentially be multiple active tokens on the flow.

*Note:**
 A token is the active point of a flow at any given time during the workflow execution.


####
 Conditional Rules

You need to configure conditions for each outgoing flow. During runtime, the workflow travels down the first path that evaluates as


 true. The condition bubble—where the condition rules are configured—displays on the outgoing flow of a conditional gateway.

You can add a title for the condition by selecting either


 the shape or the
 **Title**
 field in the configuration panel and entering text. You can also enter a description in the configuration panel. Select a configuration type for the conditional gateway by choosing one of the options in the
 **Select configuration type**
 list:
 **Basic
 **, Default, or Advanced.****


####
 Basic Configuration

Basic configuration allows you to create rules

by

using a general expression editor. Select
 **Basic**
 from


 the
 **Select configuration type**
 list.


 An option to
 **Add New Rule**
 displays in the configuration panel.

Select
 **Add New Rule**
 to open the
 **New Rule**
 popup. Select the
 **Datalist variable**
 list, and then choose a variable that you want to evaluate in the condition.

After you choose a variable to evaluate, the expression editor expands.

Fill out the fields in the expression editor to create the rule you want to add to the condition. The operation options vary based on the variable

that

you select. For example, a number variable has different operation values than a text variable.


 The
 **Comparison value type**
 list allows you to select either a custom value, a


 null value, or another variable to evaluate against the selected DataSet variable.

*Important:**

 If you choose a custom value, you can enter it. The variable type against which the value is evaluated determines how the value can be entered.
* A null value indicates a lack of value, which is different from a value of zero.
* You can select another variable as the comparison value. When this option is selected, you can select another variable from


 the
 **Data List**
 tab. The options are limited to other variables of the same data type.

You cannot select any parent Objects from the
 **Data List**
 tab in any field in the expression editor. However, you can select child variables.


 After all fields are populated, you can select
 **Add Rule.**

After you select
 **Add Rule**
 , the rule displays in the configuration panel.

You can add multiple rules to the condition if other variables need to be evaluated as well. After the initial rule is added, you can select
 **Add New Rule**
 again, but there is now an option to add the rule as an
 **And**
 or an
 **Or**
 rule. The rules stack and display in their respective groupings in the configuration panel.


 All rules

that are

in the same grouping are connected by an
 **And**
 . Create a new grouping by making an
 **Or**
 rule. Add as many groupings as you need


 to configure the condition.


 You can move rules from one grouping to another by selecting the handle to the left


 of each rule. Drag the rule from one grouping to another.

To edit a rule, hover over the row to view

*Edit**
 .

Select the icon to


 change the rule or delete it.

###
 Advanced Configuration

Select the
 **Advanced**
 option from the
 **Configuration value type**
 list to create a rule using expression syntax.


 You can enter FEEL syntax to create an advanced rule. Select the question mark icon above the
 **Enter Expression**
 field for examples and information. You can also insert variables into the expression, using the
 **Insert variable**
 field at the bottom of the tab.

You should use an advanced expression if you need to reference an Open or Defined Object variable at the parent level, or if you need an operation that is


 not available in the basic configuration.

###
 Default Configuration

Select the
 **Default**
 option from the
 **Select configuration type**
 list to create a default condition. There are no additional configuration fields to complete for a default condition. This type of condition only activates during runtime if no other condition on an outgoing flow for a Conditional Gateway evaluates as True.

*Tip:**
 You can only configure one outgoing flow from a Conditional Gateway. Configuring a default condition for


 an outgoing flow is not required, but it is a best practice because if no outgoing flows evaluates as


 True, the workflow errors and fails. A default condition ensures that the gateway always has a path to take.

Back to top

##


 Parallel Gateway


 A Parallel Gateway branches a workflow into multiple flows that are all active at the same time. This is helpful when you want your workflow to perform multiple steps in parallel that are not interdependent.


 Select a Parallel Gateway from the notation pallet. After the shape displays on the canvas, select it to display the configuration panel.


 You can add a title and description by selecting either the shape or the
 **Title**
 and
 **Description**
 fields in the configuration panel and entering text.
 **Title**
 and
 **Description**
 are the only fields in the configuration panel.


 Add multiple outgoing flows from the Parallel Gateway by selecting the gray gateway icon on the right or bottom of the shape.

Selecting a gateway icon opens the notation pallet, where you can select a shape to connect to the outgoing flow.


 If both spaces for outgoing flows are taken, select
 **Add Gateway**
 in


 the corner of the shape to add one or more additional outgoing flows. After you add another outgoing flow, you can adjust and maneuver the flows and shapes as needed to fit

within

your model design.

Parallel Gateways don't require any additional configuration. When a workflow reaches a Parallel Gateway, it automatically travels down each outgoing flow.


 You can also use a Parallel Gateway to combine flows into a single flow. A Parallel Gateway allows multiple incoming flows. When the workflow reaches a Parallel Gateway, the gateway waits for all incoming flows to reach that point before it moves forward.


 Back to top

##


 Timer Event


 A Timer Event waits

for

a specified duration of time before the workflow moves to the next shape in the flow.


 You can add a title or description for the Timer Event by selecting the shape to open the configuration panel and filling out the
 **Title**
 and
 **Description**
 fields.


 Configure a duration by selecting a value from the
 **Mapping**
 list for the

*setting**
 parameter.

When you select
 **Custom**
 from the
 **Mapping**
 list, you can manually select the length of time


 you want to hold the workflow in place.

Enter the numeric value and select the unit for the duration from the list and select
 **OK**
 .

###
 Timer Boundaries

You can use a Timer Boundary Event to listen to a task and activate an alternate flow if that task is not completed within the configured duration. The task may or may not be terminated,


 depending on the type of timer boundary used.


 You can add a Timer Boundary to a Service Task or User Task. To add and configure a Timer Boundary, select the
 **Timer**
 tab in the configuration panel when you have either a Service Task or User Task selected on the canvas.

Select
 **+**
**Add New**
 to add a timer to the task and configure the type and duration. Every time you select
 **+**
**Add New**
 , a new timer displays in the
 **Timer**
 tab. You can add up to four Timer Boundaries to a certain Service or User Task.

When you add a Timer Boundary in the configuration panel, a Timer Boundary also displays on the task shape on the canvas.

You can configure the Timer Boundary in the configuration panel. To do this, select

*Expand**
 for that Timer Boundary. None of the Timer Boundary configuration details display in the shape on the canvas.

To configure the behavior of the Timer Boundary, select one of the timer types described below.

 **Interrupting Timer**
 — This


 cancels the task when the Timer Boundary's configured duration is met and outgoing flow


 is activated. Map a value to the

*setting**
 parameter to configure the duration for the timer. You can select a variable with a duration variable or enter a custom value.
* **Non-Interrupting Timer**
 — This


 does not cancel the task when the Timer Boundary's configured duration


 is met. The task remains active until it is completed, but the Timer Boundary's outgoing flow is activated. The same mapping options are available for a Non-Interrupting Timer Boundary, with one exception: If you want to configure the duration with a custom value, you have the option to add a Time Cycle.

Adding a Time Cycle means that every time the configured duration is met, the outgoing flow is activated. Add a Time Cycle by checking the box, then choose whether the Time Cycle should continue indefinitely or be limited to a cycle number.

 Choosing an indefinite Time Cycle means the Non-Interrupting Timer Boundary continues to trigger the outgoing flow each time the duration is met


 until the task is completed.
* The Cycle Number

only

triggers the outgoing flow only


 for the


 number of iterations defined in the configuration.


#####
 Add an Outgoing Flow to a Timer Boundary

You can add one outgoing flow to a Timer Boundary.


#####
 Move a Timer Boundary

You can move a Timer Boundary by dragging it to another corner of the task, but only if there is not already a Timer Boundary in that corner. You can use this feature to prevent an outgoing flow from overlapping with another shape or flow in the model.


 Back to top

##


 End Shape


 An End shape represents the end of a flow. No action takes place at an End shape, except


 that the workflow stops when it reaches this point. A workflow can have multiple End shapes if the design has places where one flow branches into two or more.

You can add a title or description for the End shape by selecting the shape to open the configuration panel and filling out the
 **Title**
 and
 **Description**
 fields.


###


 Change a Shape

You can change the shape type by selecting a shape and hovering over the shape icon until it changes to a kebab menu:

Select the kebab menu to open the notation pallet.

Select the shape you want to use instead. You can also select

*Delete**
 to remove the shape from the canvas.

*Important:**
 Some shapes do not have all icons enabled in the notation pallet. For example, a gateway can only be replaced with the other gateway option.

Back to top


 Flows
---------

Flows are the paths that connect shapes. These lines appear by default whenever you add a shape from the

notation pallet

, but


 you can move these flow lines to adjust the design of your workflow as needed.


 Move a flow by selecting the line. Flows turn orange when selected. Drag the vertical (up-and-down) section of the line to move the flow up or down. Drag the horizontal (right-to-left) segment of the flow to move the flow right or left.

You can also move a flow by selecting a shape and dragging it to a different


 location on the canvas. You can arrange flows by moving either


 the shapes or the flows themselves.


 You can also add shapes between two connected shapes by selecting

the


**Add**
 on a selected flow. The notation pallet displays, and you can select a shape to add to the workflow

in


 at

that location.


 You can delete a flow by selecting the flow and selecting

*Close.**


 If you need to create a flow between two shapes that already exist on the canvas, select

*Add**
 on an outgoing flow to bring up the notation pallet, then select

*Connect**
 . The flow displays and connects to another shape on the canvas by default. You may have to adjust the flow if the default path is not correct.


 Back to top


 Validation
--------------

Workflows has a Validation feature that shows the workflow creator where errors or potential issues are detected in the version. These issues are a result of a shape with missing configuration or a flawed design on the canvas. Validation mode helps you identify what these issues are, where they are located, and how to fix them.


 You can access Validation mode in two ways:

 Select the


 Workflow Designer Action Menu

,


 then


 Select
 **Validate**
 .
* Deploy a version of a workflow by selecting
 **Deploy**
 from either the


 Workflow Designer Action Menu

or the


 Version List Action Menu

.

If the workflow version has errors or other validation issues, a dialog displays informing you that issues have been detected. You can select different options depending on the severity of the issues.


 If the errors are found during an attempted deployment, a modal prompts you to either cancel the deployment or review the issues in validation. All errors must be resolved before you can deploy the workflow.

If only warnings or information issues are found, you can either review them in Validation mode, or acknowledge that they may have a negative impact during runtime and proceed


 with the deployment.

However


 you reach Validation mode, you can see which shapes or areas have validation issues.

Any shape with validation issues displays with a highlight color that corresponds to the highest severity issue(s) for that shape.

##
 Validation Banner

The banner at the top of the canvas in Validation mode displays the total number of issues found; the breakdown of the issues by severity into errors, warnings, and informational issues; and controls to
 **Revalidate**
 the workflow, to
 **Save**
 the workflow, and to
 **Close**
 Validation mode. Learn more about these controls below.

The border color at


 the bottom of the banner corresponds to


 the highest severity level of issues found. If there are no issues, the border is


 green.

 **Revalidate**
 — Select this option after you make changes to the workflow to revalidate the model and


 see if the issues have been resolved. You can continue to make edits to the workflow model in Validation mode, but the changes are not automatically saved. You must select
 **Save**
 to save the edits, even after revalidation.
* **Save**
 — Select this option to save any edits to the workflow. Select

*Expand**
 to save or save and deploy the workflow.
* **Close**
 — Select this option to close Validation mode.


###
 Severity Levels

The severity levels in Validation mode are Error (red), Warning (yellow), and Informational (blue):

 **Error (red)**
 — You must correct all errors in a workflow version before you can deploy it.


 Example: The shape has a missing mapping in the configuration.
* **Error (yellow)**
 — You do not have to correct warnings to deploy a workflow version, but we strongly recommend that you do. Warnings usually indicate


 that a best practice is not being followed.


 Example: There is not a default condition configured out of a conditional gateway.
* **Informational (blue)**
 — You do not have to correct informational issues to deploy a workflow version. Informational issues are typically superficial and do not impact the performance of the workflow but may be helpful to review and address.


 Example: A title has not been entered for the shape.


###


 Shapes in Validation Mode

Select a highlighted shape to see the specific validation issues for that shape. When you select a shape in Validation mode, the shape has a darkened border that glows.

When you select a shape in Validation mode, a message panel also displays at the bottom of the screen with the details of the corresponding validation issues.


###
 Message Panel

The Message panel displays the validation messages for the issues detected in the workflow version. The messages provides details for


 each issue: the severity of the issue and how to correct it. If there are general issues that are not associated with a shape, they display in the Message panel when no shape is selected in Validation mode.

Select a highlighted shape to see corresponding validation messages. Messages are categorized into severity groupings—all error messages are in one section, all warnings are


 in another, and all informational messages are in their own section of the Message panel. If messages for a severity type are not detected, they do not display in the Message panel.


 The Message panel displays the name of

the

each shape with an issue and the total number of issues that it contains.

You can also navigate between the highlighted shapes by using the navigation arrows in the header of the Message panel.

The numbers between the arrows show how the total number of shapes with issues and which shape


 you are currently viewing in the sequence. Select the arrows to quickly cycle through the shapes with issues. Select

*Collapse**
 to minimize the Message panel.


 When the panel is collapsed, you can expand it by selecting

*Expand**
 .


 Shapes without validation issues are not highlighted on the canvas and don't display in the Message panel.

###
 Access Data Association in Validation Mode

Data Association is accessible in Validation mode. When


 you select a variable in the
 **Data List**
 tab, you leave Validation mode, and the associated shapes that use that variable display. See the

Data Association

heading for more details.


 When you exit Validation mode by selecting a variable in the
 **Data List**
 tab, an option to
 **Return to Validation**
 displays in the Data Association banner so you can return to Validation mode. If you do not want to return to Validation mode, you can close the Data Association banner to return to the Edit mode screen in the Workflow Designer.


 Back to top

