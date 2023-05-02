

Intro
-------

Queues allow you to organize manual tasks into different buckets of work and control who can access them.


 This article describes how to access, configure, and manage Queues in the following topics:

 Navigation
* Required grants
* Home page
* Queue Manager
* User permissions
* Tasks

Navigation
--------------

You can access Queues from the side panel of any page in Workflows, Code Engine, or Forms. From the side panel, select

*Queues**
 .

*Note:**
 If

*Queues**
 does not display in the side panel, contact your Domo representative for assistance.


 Required Grants
-------------------

There are two grants for rights to perform specific actions on queues within your Domo environment:

 **Manage Queue**
 — Allows you to perform any action on any queue in the customer instance. This should be granted to superusers, admins, or anyone who helps manage queues for customers.
* **Create Queue**
 — Allows you to create a new queue. This grant should be given to any user who needs the ability to create and add new queues to the workflow repository in your environment.

Contact your Domo representative to receive either of these grants for your instance. For information about the available permissions for non-instance admin users, see the

User Permissions


 section of this article.


 Home Page
-------------

The Queues home page is the entry point for viewing and accessing the various features of the tool. On this page, you can see task counts and volumes for the queues you have access to, as well as various hyperlinks to quickly navigate to filtered tasks.

Queue Manager
-----------------

If you have Admin access, you can view the Queue Manager by selecting

*Queue Manager**
 .

From this screen, admins can add or remove queues and administer access control.


 The Queue Manager screen displays all the queues in the instance.

##
 Create a Queue

Admins can follow these steps to create a queue:

. In the Queue Manager, select
 **+ New Queue**
 .


 ​​​​​The
 **New Queue**
 modal displays.
2. In the modal, enter a name and description in the
 **Queue Name**
 and
 **Queue Description**
 fields.

To delete or manage permissions, select the

kebab menu at the end of each row.

*Note:**
 During beta, deleting a queue is not available.

You can use the search, filter, and sorting controls to locate a queue or arrange the list in a different order. By default, the queue list is sorted by most recent to last recent.

Selecting
 **Manage permissions**

in the

kebab menu launches the permission modal for the specific queue.

User Permissions
--------------------

In the permissions modal, search for the user whose permissions you want to edit and select the desired option from the access list.

You can grant users granular permissions, so they only have access to certain actions in a queue or task.


 The following list describes the various access levels:

 **Admin**
 — Allows a user to perform any action on a specific queue or task in that queue.
* **Delete**
 — Allows a user to delete a queue. This option is disabled during beta.
* **Read**
 — Allows a user view-only access to queue settings in
 **Queue Manager**
 .
* **Write**
 — Allows a user editing access to a queue.
* **Share**
 — Allows a user to grant another user access to a queue with equal or lesser permissions.
* **Create Content**
 — Allows a user to create a task so that it displays in a queue.
* **Read Content**
 — Allows a user view-only access to a task and the queue count.
* **Update Content**
 — Allows a user to edit and submit a task.
* **Void Content**
 — Allows a user to void a task, which prevents manual updates from occurring.


###
 Queue Panel

All the queues a user has access to display in the
 **Queue Panel**
 on the home page. A count of all the open tasks in the queue display next to the queue name.


**Note:**
 Queue counts are not dynamic, so you must refresh to see if volumes have changed.


 Select a queue in the panel to navigate to the task list for that queue.


###
 Navigation Tiles

Tiles across the top of the home page provide counts and quick links to filtered task lists.


 The following list describes the tiles:

 **Open Tasks**
 — Displays the number of open tasks in all the queues you have access to.
* **My Tasks**
 — Displays the number of tasks assigned to you in all the queues you have access to.
* **Completed Today**
 — Displays the number of tasks you have completed during the day.

Select any tile to navigate to a filtered list showing the corresponding tasks.

##
 My Recent Activity

You can see a list of tasks you have recently interacted with from the
 **My Recent Activity**
 tab in the side panel on the home page.

The last ten tasks you interacted with display in this tab. A change must be made in a task for it to show up as a recent activity. You can select any row in the tab to navigate to that task. This is helpful if you need to quickly access a task that you recently updated.

##
 Watch List

Select the
 **Watch List**
 tab to view and access tasks that you have flagged as items of interest. The
 **Watch List**
 tab displays next to the
 **My Recent Activity**
 tab in the side panel on the home page.

You can flag a task for the
 **Watch List**
 only only while viewing the task after selecting it from the task list. If you want to remove a task from the
 **Watch List**
 , select the flag icon to delete it.


 The
 **Watch List**
 displays the assignee and the status of the task for quick reference. You can select any row in the
 **Watch List**
 to navigate to that task.

##
 Graphs

As tasks are added and completed in your queues, you can see how volumes change throughout the day in the graph options displayed in the central area of the home page. The graphs display the number of open items every fifteen minutes.

There are two options for viewing the open tasks in your queues:

 **All Tasks**
 — Displays the number of open tasks and how many of them have been assigned to you throughout the day.
* **Tasks Per Queue**
 — Displays the number of open tasks and how many are in each queue throughout the day.


###
 Queues and Task List

You can access tasks by selecting a queue or tile option from the home page. You are always taken to the task list after selecting a navigation option, but the results in the task list are filtered based on your selection.


 For example, if you select a queue on the home page, the task list displays the open tasks for that queue. If you select the
 **My Tasks**
 tile, the task list filters to show the open tasks that you are assigned to in all your queues.

###
 Results

The filtered results display in the task list. Each result in the task list represents a single task. A results count displays above the task list so you know how many results are in the list.

Under the column headers, metadata is provided for each task. The metadata items are described below.

 **Task ID**
 — Displays the task ID. Each task has a unique ID consisting of the creation date and an alphanumeric character set.
* **Queue**
 — Displays the assigned queue for the task.
* **Assigned To**
 — Displays the assignee for the task.
* **Form**
 — Displays the form name associated with the task.
* **Status**
 — Displays the status of the task. The options are Open, Complete, and Void, which are described in the

Statuses

section of this article.


####
 Filters

You can update the task list by changing the Filters. By default, the Filters are set based on the corresponding option that you selected on the home page. However, you can clear or enter values in the filter list to see different results.

You can apply multiple filters to the task list at the same time, but you can specify only one selection per Filter. The available Filters are described below.

 **Queue Filter**
 — Filters the task list by queue. Selecting a queue on the home page populates the Filter by default. The list displays options from other queues accessible to you. Clearing the Filter displays tasks in all queues.
* **Assigned To Filter**
 — Filters the task list by assignee. Select a user in this Filter to see all their assigned tasks. Clearing this Filter displays tasks for all assignees and unassigned tasks.
* **Status Filter**
 — Filters the task list by status. Most navigation options on the home page populate this Filter with Open. The menu displays options for Open, Complete, or Void. Clearing this Filter shows tasks with any status.
* **Created Filter**
 — Filters the task list by the date the task was created. The menu displays options for different time periods, including Today, Last 7 Days, Last 30 Days, Year to Date, Lifetime, and Custom. The custom option allows you to enter a specific date range. Clearing this Filter displays tasks created on any date.
* **Completed Filter**
 — Not implemented at this time. A Completed Filter allows you to filter by the date a task was completed. This can be used with the Status Filter when it is set to Complete.


####
 Search

A search field allows you to search for a task by its Task ID. After you enter a valid ID in the
 **Task ID**
 field, the task list filters to display the individual task.

Tasks
---------

Tasks are generated by a workflow and represent a manual step in that workflow. Each task is associated with a form that needs to be completed by a person. When the task is complete, the workflow progresses to the next step.


 Open a task by selecting a row in the list. The task displays in the viewer and provides various interactions controls.


###
 Slider

A slider between the task list and form viewer allows you to adjust the width so that one display is more prominent than the other. Move the slider left or right to expand or collapse the viewer. A full view option is available in the form header if you only want to see the form after the task is selected.


###
 Task Header

The task header in the viewer displays the metadata associated with the task, including the task ID, form name, and task status.

The task header also contains controls for specific actions, which are described below.

##
 Assign a Task

The
 **Assignee**
 field is located below the task ID. To assign the task to a user, select
 **Edit**
 next to the
 **Assignee**
 field.

You can either search for a person or scroll through the list to find them.

##
 Workflow Instance Link


**Workflow**
 in the form header navigates you to the Instance Details view in Workflows. It also displays the workflow instance that generated the task and where that user task sits in the workflow.


**Note:**
 You must have the View Instance Details or Edit Instance Details permission in Workflows to view the instance.


###
 Watch List Flag

You can mark the task to be added to the Watch List by selecting

*Flag**
 , which turns orange when the task is added. Select

*Flag**
 again to remove it.


 The Watch List is accessible from the home page and provides a quick link to each task you add.


###
 Task Action Menu

The

action menu allows users with the specific permissions to perform certain actions on the task. Select this menu to access the following options:

 **Void Task**
 — Cancels the task and updates its status to Void. A voided task does not pass any data back to the workflow and places the workflow in a failed state.
* **Unlock Task**
 — Unlocks a task that is being edited by another user. When you open a task, it is locked so that other users cannot update it. An admin can unlock the task so someone else can edit it.
* **Transfer Queue**
 — Moves the task from one queue to another. When this option is selected, an admin must specify another queue to send the task to via a modal that displays. The admin can only select other queues that they have access to.
* **Expand**
 — Displays the task in a full-page view. When the task is expanded, the icon changes to
 **Collapse**
 , which you can select to return to the previous view.
* **Close**
 — Closes the task. This action does not save any data entered in the task fields.

##
 Tabs

Each task has tabs to help you enter and review data for the associated form. The tabs are located below the task header.


####
 Form Tab

The
 **Form**
 tab displays editable fields for the form. You can also save and submit forms from this tab.


 See below for the other components of this tab.

####
 Previous and Next

If the form has multiple pages, you can navigate through them using
 **Previous**
 and
 **Next**
 . Selecting
 **Next**
 displays the following page, and selecting
 **Previous**
 displays the prior page in the form.

####
 Save

This is not currently implemented.


 After entering data in the fields, you can save the form without submitting it by selecting
 **Save**
 . This saves all the data entered in the task and keeps the form in an Open status. You can then close the task and return to the form in its most recently saved state.


 For more information about task statuses, see the

Statuses

section of this article.

####
 Submit

*Submit**
 is enabled only when you fill in all the required fields in the task. Selecting this option submits the data you entered in the fields and updates the task to Completed status. The workflow that created the task consumes any data marked as output in the form configuration. After you submit a task, you cannot make updates or change the status back to Pending.


 For more information about task statuses, see the

Statuses

section of this article.


**Note:**
 Anyone with the Update Content permission for the queue containing an Open task can update the task, regardless of whether they are assigned to the task.

###
 History Tab

The
 **History**
 tab displays all update events for the task. Event details include the time, the person who performed the update, the event type, and a description.


####
 Comments Tab

The
 **Comments**
 tab displays comments that users have added to the task. These can be additional notes, communication with other users, or general information.


###


 Statuses

Tasks can have one of the following statuses:

###
 Open

All tasks have an Open status when they are created by a workflow. Anyone with Update Content access to the queue in which the task resides can update an Open task, regardless of whether they are assigned to the task.

###
 Completed

You must submit a task for it to have a Completed status. After a task has been submitted and has a Completed status, you cannot edit it or change it back to an Open status.

###
 Void

Only an admin user can apply the Void status to a task. A voided task means that you do not want to submit any data, and the associated workflow that created the task is placed in a failed state. After a task is voided, you cannot edit it or change it back to an Open status.

