

Intro
-------

Workflows offers tracking capabilities that allow you to monitor and review any workflow that has been deployed. Use these features to access general or specific details about Workflows instances and, if needed, to recover instances that have failed to execute.


 This article discusses Workflows tracking details in the following topics:

 Instances List
* Filter panel
* Metrics
* Instances table
* Instance details and playback (in progress)
* Workflow instance recovery
* Cancel workflow instances

Instances List
------------------

You can use the
 **Instances List**
 to view and filter Workflows instances that have been deployed. This page shows how many instances have been deployed or executed for a specific period and provides other metrics to facilitate workflow management.


###


 Filter Panel

There are several ways to narrow your search for an instance. The available filter options are listed below.

 **Workflow**
 — A list to filter the model. You must select one.
* **Version**
 — A list to filter the instance by model versions. The available choices are All Versions or any deployed version by its version number.
* **Status**
 — Checkbox options to filter instances by their current status. The available statuses are Complete, In-Progress, Canceled, and Failed. You can use all options in any combination.
* **Time Period**
 — A list to filter instances by their Started By


 date. The available options are Today, Last 7 Days, Last 30 Days, Year to Date, Lifetime, and Custom. Note that choosing a longer time period may require more time to return results.

##


 Metrics

Below are the six metrics currently available to help admins and editors understand how their instances perform.

 **Success**
 — The number of instances that completed successfully.
* **In-Progress**
 — The number of instances that are currently running.
* **Canceled**
 — The number of instances that were canceled in the middle of the flow.
* **Failed**
 — The number of instances that have failed.
* **Total**
 — The combined number of instances based on the selected Filters.
* **Avg Cycle Time**
 — The average runtime of all the instances based on the selected Filter should this be plural.


 A pie chart is also available to visually represent the metrics and their statuses as percentages.


###

Back to top


###


 Instances Table

The
 **Instances**
 table displays information about instances and helps you navigate


 to the instance

Details page, where you can view the inflight status of a workflow instance.

You can use the search bar to filter the list of instances by ID and other filtering options.

###
 Filter Options


* **Completed**
 — Similar to the Time Period Filter, this is a list to filter instances by their completion date.
* **Started by**
 — A list to filter by the person who initiated the instance.

###
 Instance List

You can select any


 instance in the list to navigate to the instance


 Details

page, where you can view the instance diagram and flight status. Here are some pieces of information the table gives you:

 **ID**
 — The ID of the instance. This can be used in the
 **Instances**
 table search bar as a Filter.
* **Version**
 — The model version the instance is related to.
* **Status**
 — The most recent status of the instance.
* **Started By**
 — The person who initiated the instance.
* **Start**
 — The date and time the instance initiated.
* **Complete**
 — If the instance status is Complete, a date and time displays. If the instance status is In-Progress, Failed, or Canceled, the status displays as N/A.


 Back to top

Instance Tracking Details and Playback (in progress)
--------------------------------------------------------

The Instance Tracking Details

page displays a specific execution of an instance and the data used in that specific instance.


 You can navigate to this page by selecting an instance from the
 **Instances**
 list. Note that you can only access this page if you have the View Instance Details permission for the workflow. Learn more about permissions in the

Workflows Overview

.

When you select an instance in the
 **Instances**
 list, the Details page for that instance displays.

The instance Details page displays the flow path the instance took during its execution and the data values that were passed and produced by


 each step. You can see all of the completed steps, and which steps still remain if the instance is still in progress.

##
 Instance Status

The instance status shows the overall status for the execution of a specific instance.


 See details about the three possible statuses below.

 **Complete**
 — The initiated instance has successfully reached one or multiple end shapes.
* **In Progress**
 — The initiated instance is currently in progress and has not reached its end shapes.
* **Failed**
 — The initiated instance produced an error and failed before it could reach its end shapes.

##
 Playback Controls

Use the playback controls to start and replay the events of an initiated workflow instance. The controls display in the upper

-

right corner of the instance Details page.

The following table describes the playback controls:


 Icon
  |
 Control
  |
 Description
  |
| --- | --- | --- |
|  |
 Toggle
  |
 Controls whether the instance starts to auto-play or defaults to

show

the furthest point of execution.
  |
|  |
 Replay
  |
 Replays the workflow from the first start shape.
  |
|  |
 Play
  |
 Plays or resumes the workflow from the last stopped point.
  |
|  |
 Stop
  |
 Stops/pauses the workflow from playing.
  |
|  |
 Fast Forward
  |
 Increases the speed of playback. There are four speeds, and selecting the button repeatedly cycles through them.
  |


###
 Shape Status

Shapes that were


 invoked during


 the execution of the instance display with an icon and a corresponding colored border:

 **Completed shapes**
 — Display with a green check mark and a green border.
* **In Progress shapes —**
 Display with a blue spinner icon and a blue border.
* **Failed shapes —**
 Display with a red X and a red border.


####
 Shape Iterations

For shapes that have been activated multiple times in a workflow instance, the number of iterations display in the lower-right corner of the shape. If the shape has only been activated one time in the instance, no number displays.


###
 Data Panel

You can select a shape on the Details page either during or after the playback to


 see the data used in the execution of an instance.


 To view the data panel for a shape in the workflow, select a shape.


 The data panel opens at the bottom of the screen and displays the data values used in the shape.

At the top of the data panel is the banner, which includes the title of the shape, the date and time it executed, the date and time it completed, the duration it was active, and the current status of the shape, which corresponds to the shape's playback icon.

The data panel also displays the parameter names and types, along with how they were mapped and the actual values used.

User Tasks and Service Tasks shapes display inputs and outputs, while other shapes display what the values of the variables were when the shape was activated.


 Data panels for shapes that have been activated multiple times and have more than one iteration include an option to scroll through the different iterations and see the data for each one. If multiple iterations for the shape exist, the option to scroll through them displays on the left side of the data panel, just below the banner.

Workflow Instance Recovery
------------------------------

The instance Details page offers recovery capabilities if you have the Edit Instance Details permission for the workflow. Recovery means that if a workflow instance fails to complete due to a runtime error,


 or if


 the instance is still in progress, you can update the data and retry the execution from that point.


 If you have access to edit a workflow instance, you can


 select
 **Edit Instance**
 for shapes that have a status of Failed or In Progress. This option displays in the upper

-

right corner of the data panel for that shape.


 Select
 **Edit Instance**
 to enter Recovery mode.

In Recovery mode, a banner displays at the top of the screen. In the banner, you

have options to


 can

select
 **Exit Recovery**
 ,
 **Retry**
 , and
 **Cancel Instance**
 .


###
 Recovery Options

The recovery options are described below.

 **Exit Recovery**
 — Returns you to View-only mode on the instance Details page.
* **Retry**
 — Attempts to execute


 again from where the workflow failed or


 is currently in progress.
* **Cancel Instance**
 — Stops all execution on a workflow instance and updates the status to Canceled.


###
 Edit Workflow Instance Data

While in Recovery mode, you can change input data

on


 at

the current or last active point in the workflow instance before attempting to retry the instance. To do this, locate the input you want to change in the data panel and select

*Edit**
 for that input.

Selecting

*Edit**
 allows you to add or change the data value. When you are finished editing, select

*Keep**
 or

*Discard**
 .

Change as many data inputs on the shape as you need to before selecting
 **Retry**
 as a recovery option in the banner.


 Note that you can only enter Recovery mode when as error has occurred or when the workflow instance is waiting for a shape in an In Progress status to complete. The only shapes that have an In Progress status long enough for you to apply Recovery capabilities are a User Task or a Timer. The other shapes execute too quickly, and trying to edit them while they are in an In Progress status is not possible. However, you can attempt to recover any shape that has a Failed


 status.


 Cancel Workflow Instances
-----------------------------

If you have a workflow instance in an In Progress status that you know will never reach a Completed status, it is best practice to cancel that instance so that it displays properly in the logs and doesn't get


 updated by mistake.


 If a workflow instance that generates a task in a queue (from a User Task) updates to Canceled, the task in the queue updates to a status of Void.

