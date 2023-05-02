

Intro
-------

This guide provides an overview of the Facilities Management App. In addition, it contains recommendations on best practices and tutorials for getting started.

*Note:**
 This app is part of the

Get Back to Work Solution

and is available
 *on-demand and paid*
 .

To request this feature be enabled,

 Reach out to your Domo Customer Success Manager or Account Executive.
* If you do not have contact information for your CSM or AE, contact Domo Support. For information on how to contact Support, please see:

Getting Help

Prerequisites
---------------

Before you can start using the Facility Management application to its fullest extent, you must first add the
 **\_FacilitiesAdmin\_**
 group to your Domo instance. Members of the
 **\_FacilitiesAdmin\_**
 group have additional features available to them in the application, such as creating notifications, locations, tasks, and teams.


 Facility administrators
-------------------------

Facility administrators are Domo users who are members of the
 **\_FacilitiesAdmin\_**
 group. If you are not a facility administrator, continue to the

Facility workers

section.

##
 Getting started

In this section, we'll be going over a few key basics of the Facility Management application. Including adding new teams, adding new locations, and adding new tasks. If you're the first and/or only Facility Administrator to use the application, your first time opening should look similar to the image below.


 Because no teams, locations, or tasks have been created, all of the daily stats in the
 **Daily COVID-19 Defense Efforts**
 section will be empty. In this section, we'll be going over creating each one of these items so you can see the status of each of your facilities.


####
 Adding new Teams

Teams are groups managed inside your Domo instance. To create a new team from scratch, you must first add a new Domo group in the Admin Settings of your Domo instance. To learn how to add a group to Domo, see the documentation

here

.


 To create a new team:

 Click the
 **Create New**
 button on the home screen, or
* Open the menu by clicking the

button in the top left corner and then clicking
 **Create Team**
 .

This will take you to the
 **New Team**
 web form:

Because no teams have been added, the
 **Current Teams**
 list is empty. To add a team, select it in the combo box titled
 **Teams**
 and then click
 **Create Team**
 . Those teams will now appear in the
 **Current Teams**
 list and the
 **Manage Teams**
 view (accessed via the

menu).


####
 Adding new floor plans

Before you can add individual locations to your facilities, you must first add a floor plan. Floor plans are typically a single floor of a single building, but you can configure them to your liking.


 As an example: if your facility is a single building that has a single floor, your floor plan could be the entire building. Subsequent locations could be a conference room, a common area, or a specific employee's workspace.


 To add a floor plan, open the

menu and click
 **Add New Floor Plan**
 . This will take you to the
 **New Floor Plan**
 web form:

Once on this screen, follow these steps to create a floor plan:

. Define the type of floor plan by choosing an option in the combo box titled
 **What type of floor plan is this?**
 (e.g. campus, building, etc.) The options in this combo box are determined by the locations DataSet used by many applications in the

Get Back To Work Solution

.
2. Once you've selected a type for your floor plan, a new set of combo boxes will appear. These help specify exactly which part of your campus or facility this floor plan is located.

Starting from the top, select the location of the floor plan associated with each of the fields listed. Depending on which
 **type**
 you selected in the first step, you may see fewer/additional combo boxes appear.


 As an example: if you're creating a floor plan for
 **Floor 1**
 of
 **Building 808**
 , which is located in
 **American Fork, Utah**
 the combo boxes would be filled like this:
3. Once you've filled in all visible combo boxes, upload the image of your floor plan. SVG and image file types are supported; SVG files may offer a more feature-rich experience (which we'll see when adding locations.)
4. Once you've uploaded the floor plan image, click the
 **Create Floor Plan**
 button to complete the process.


####
 Adding new locations

After adding a floor plan for your facility, you may now add new locations. You'll be automatically redirected to the
 **New Locations**
 view after creating a floor plan, or you can manually navigate there by opening the

menu and clicking
 **Create Location**
 .

To create a new location:

. Select a floor plan in the combo box labeled
 **Select a floor plan...**
2. Select the type of location to be created. In most cases, this will be either the same as the type assigned to the floor plan or more specific.


 Ex: If the floor plan is assigned the type
 **Floor**
 the locations assigned to the floor plan should be more specific (
 **Floor > Location**
 ) or as specific (
 **Floor**
 ) as the type assigned to the selected floor plan.


**Important:**
 Types of locations assigned to the floor plan should never be
 **less**
 specific than the type floor plan.


 Once you've selected the floor plan and the type for the new location(s), the list of available locations will be populated with the distinct options from the locations DataSet and the floor plan image will appear below the list.
3. Select the desired locations in the list titled
 **Locations on this floor**
 on the left and then click the
 **>**
 or
 **>>**
 button to move them to the
 **Locations assigned to this floor plan**
 list on the right.
4. If your floor plan is an SVG file, you may select different locations on the floor plan to associate with the location. To do this, select the location in the
 **Locations assigned to this floor plan**
 and then click the part of the SVG you'd like to associate with that location.
5. Click
 **Create Locations**
 to complete the process; this will redirect you to the
 **Locations**
 view where you can see each location and any tasks assigned to it.


###
 Tasks

Now that you've added some teams and locations, you can now create tasks. Tasks are the lifeblood of the Facility Management application; they determine which areas are clean and which areas need additional attention. They also provide the basis for determining the stats on the home screen. Each task is associated with a
 **L**
**ocation**
 and a
 **Team**
 . Each team member assigned to a task will see it on their schedule/home screen.


 To create a new task:

 Click
 **Create New**
 on the home screen, or
* Open the application menu and click
 **Create Task**
 .

This will open the
 **New Task**
 web form:


####
 Task details

Every task must be assigned a
 **Title**
 ,
 **L**
**ocation**
 ,
 **T**
**eam**
 , and a level of
 **Estimated Work**
 (estimated number of minutes to complete the task.)


####
 Task schedule

Every task must also be assigned a schedule. The default schedule is for each task to be completed once a day on weekdays.


 Schedules can be assigned the following types:

 **One Time**
 - Task will only be scheduled once.
* **Daily**
 - Completed once per scheduled day.
* **Weekly**
 - Completed once per scheduled week on the scheduled day.
* **Custom Interval**
 - Completed on a custom daily or hourly time interval.


#####
 One Time

To schedule a one time task:

. Select the
 **One Time**
 schedule type.
2. In the date-time input titled
 **Complete Task By**
 , select the date and time to use as the tasks due date.

####
 Daily

To schedule a daily task:

. Select the
 **Daily**
 schedule type.
2. Select the days on which the task should be completed.
3. Select the start and end times for the task; if the start and end times are the same, the task can be completed at any time on the scheduled days.

####
 Weekly

To schedule a weekly Task:

. Select the
 **Weekly**
 schedule type.
2. Select the day of the week on which the task should be completed.
3. Select the start and end times for the task; if the start and end times are the same, the task can be completed at any time on the scheduled day.

####
 Custom Interval

To schedule a task on a custom interval:

. Select the
 **Custom Interval**
 schedule type.
2. Select the days on which the task should be completed.
3. Select the start and end times for the task; if the start and end times are the same, the task can be completed at any time on the scheduled day.
4. Select the interval for the task, available interval types are
 **Days**
 and
 **Hours**
 .


 Ex 1:

Complete every
 **10 Days**


 Ex 2: Complete every
 **36 Hours**

##
 Notifications

Notifications can be created and scheduled to notify workers of different events, such as a daily reminder for workers to wash their hands or pick up new personal protective equipment.


 To create a new notification open the application menu and click
 **Create Notification**
 . This will open the
 **New Notification**
 web form:

Every notification must be assigned a
 **Subject**
 ,
 **Frequency**
 ,
 **Category**
 , and
 **Scope**
 . Optionally, you may add
 **Content**
 to the body of the notification.

 **Subject**
 - Similar to the subject line of an email or the headline of a news article, the
 **Subject**
 is a summary of the notification.
* **Frequency**
 - The
 **Frequency**
 of a notification is similar to the schedule of a Task, it defines when and how often a notification is sent.
* **Category**
 - Defines the type of notification to be sent. The available categories are:
 **Info**
 ,
 **Alert**
 ,
 **Weather**
 ,
 **Danger**
 , and
 **Biohazard**
 .
* **Scope**
 - Defines who should see the notification, this can be
 **C**
**ompany Wide**
 or a list of specific teams.


####
 Frequency Types

Notifications may be assigned one of the following frequency types:

 **Daily**
 - The notification is sent a user-specified number of times per day.
	+ If the
	 **Daily Rate**
	 is set to
	 **1**
	 , the notification will be sent at the time specified in the
	 **Send At**
	 time selector.
	+ If the
	 **Daily Rate**
	 is higher than
	 **1**
	 , the notifications will be sent between the times selected in the
	 **Start Time**
	 and
	 **En**
	**d Time**
	 time selectors.
* **Weekly**
 - The notification is sent once at the beginning of each week.
* **Monthly**
 - The notification is sent once at the beginning of each month.

*Important:**
 Notification definitions created by the app are consumed by a DataFlow which runs on a daily basis to create new notifications for each user. If you create a notification on Wednesday at 9:00 AM, the notification will
 **not**
 be sent until the following day or until the DataFlow is triggered manually.

####
 Scope

The Scope determines who the notification is sent to. The
 **Scope**
 can be
 **Company Wide**
 or a list of a
 **Teams**
 .


 When a notification's Scope is
 **Company Wide**
 no recipients are assigned. Anyone who uses the
 **Facilities Management**
 application will see the notification.

When a notification's Scope is based on a list of Recipient teams, all current members of those teams will see the notification. Only teams that have been added (via
 **Create Team**
 ) to the application are available as options in the
 **Recipients**
 combo box.


###
 Display mode

Display mode is, at its core, a
 **location**
 status snapshot. To activate display mode, open the application menu and click
 **Enter Display Mode**
 . You will be prompted to select a location and then enter your facility administrator password.


**Important:**
 Your facility administrator password is created and managed within the app, it is
 **not**
 your Domo password. The only purpose of this password is to ensure the display mode is not inadvertently unlocked and changed.


 To exit display mode, click the close button on the top right-hand corner of the screen and enter your facility administrator password.


 We will cover additional information about display mode in the

Facility workers

section of this documentation.

##
 Current schedule

The home screen (labeled as
 **Current Schedule**
 in the application menu) provides you with a concise overview of your facilities. On first use, the schedule will be mostly empty, as it uses the Tasks, Teams, and Locations you create to populate its various stats and indicators.

###
 Defense Efforts

The
 **Daily COVID-19 Defense Efforts**
 portion of the schedule provides you with a brief summary of your facility, its open Tasks, and level of effort. As an administrator, you have access to view all Teams, Tasks, and Locations. Subsequently, all data in this section will include all Teams, Tasks, and Locations.


* **Today's Prevention**
 - The percentage of Tasks that have been completed.
* **Estimated Time Commitment**
 - The overall amount of time needed to complete all open Tasks.
* **Tasks**
 - The total number of Tasks created and assigned in the application.
* **Teams**
 - The total number of Teams added to the application.


####
 Improvement Opportunities

The
 **Improvement Opportunities**
 section of your schedule provides sub-views that provide a more detailed summary of each of your Teams, Tasks, and Locations.

####
 Locations

Under the
 **Locations**
 tab of improvement opportunities, you'll see a list of all your locations. Each item in the list is labeled with the name of all geographic levels associated with the location. On the left-hand side of the list is the row number, mainly for reference. On the right-hand side of the list is the status of the location (i.e. the percentage of completed Tasks assigned to that location.)


#####
 Tasks

Under the
 **Tasks**
 tab of Improvement Opportunities is a list of Locations and all Tasks assigned to that Location. The header of each list item displays some basic information about that location such as: the Location Name, the Level of Effort to complete all open Tasks in that location, and the percentage of completed Tasks in that location. If a Location has not been assigned any Tasks, the percentage will always display
 **100%**
 .


 You can expand each list item to see all Tasks assigned to that Location. Each Task also shows the next due-date and its completion status. If the Task is not complete, you may click
 **Mark as Complete**
 to complete the Task and update the schedule view.


#####
 Teams

The
 **Teams**
 tab of improvement opportunities shows a list of all Teams added to the application and the number of Tasks to which that Team is assigned. Clicking on a Team in the list will redirect you to the details view for that Team. You can also access the Team details by opening the application menu, clicking
 **Manage Teams**
 , then clicking
 **View Team**
 for the Team you'd like to view.

The Team details view lists all members of the Team and the number of Tasks assigned to all users in that Team. If a user is assigned to more than one Team, their workload may vary from other Team members.

Facility workers
------------------


###
 Current schedule

Your
 **Current Schedule**
 gives you a summary of your daily progress and a breakdown of all Tasks to which you and your Teams are assigned. You can see your Teams' current progress under
 **Daily COVID-19 Defense Efforts**
 as a percentage of Tasks completed titled
 **Today's Prevention**
 . The estimated amount of time needed to complete all open Tasks is labeled
 **Estimated Time Commitment**
 .


 On the bottom portion of the screen you will see all Locations and Tasks to which you and your Teams have been assigned, as well as the estimated time commitment for each location's open Tasks and the current progress of that Location. To view individual Tasks at that Location, click the expand arrow on the right-hand side of the location entry.


 Here you will see the name of each Task, the next due date for that Task, and its completion status. If the Task has
 **not**
 been completed, you can click
 **Mark as Complete**
 to complete the Task and update the schedule view.


###
 View locations

To view a specific floor plan and/or Location, open the application menu by clicking the

button in the top left corner and then click
 **View Locations**
 . Here, you will see the image representation for each floor plan and each Location assigned to the floor plan. If the selected floor plan was uploaded as an SVG file, you may see portions of the image highlighted in green. Highlighted portions of the SVG image are associated with individual Locations.


 Below the floor plan image are three KPIs:
 **On Schedule**
 ,
 **Dirty**
 , and
 **Clean**

 **On Schedule**
 - The number of Locations on the selected floor plan that do not have any overdue tasks.
* **Dirty**
 - The number of Locations on the selected floor plan that have overdue tasks.
* **Clean**
 - The number of Locations on the selected floor plan which don't have any open tasks.


 To view a different floor plan, change the selection in the
 **Floor Plans**
 combo box.

Similar to the schedule view, you will be provided a list of Locations and all Tasks assigned to that Location. You may complete Tasks by expanding the list entry for a Location and clicking
 **Mark as Complete**
 .


###
 Display mode

*Display Mode**
 will be activated by your administrator at a physical location. It offers some information about each Location and a summary of the Location's status.


**Display Mode**
 shows the following information for each Location:

. The Location's name.
2. The Location's assigned ID that can be used in the

Scan Location

view if a camera is not available.
3. The current status of the Location.
4. The date/time of the last service and, if completed, the name of the worker who completed the service.
5. The date/time of the next service.
6. A number of report problems.
7. A QR code to quickly access the Location.

##
 Scan location

The
 **Scan Location**
 view offers a quick way to navigate to a specific Location. If you're accessing the application on a device that has a camera, the application will request access to your device's camera. If your device does not have a camera, or you decline the request to access it, you can still use the
 **Scan Location**
 view. Instead of a QR scanner, you will be provided with a Location selector.


###
 Notifications

Your Facility Administrators can schedule notifications to send out additional information or reminders. Notifications are displayed at the top of the screen and will require attention before continued use of the application is allowed.


