---
    title: CA Agile Central QuickStart App
    url: https://domo-support.domo.com/s/article/360043438313
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042930354](https://domo-support.domo.com/s/article/360042930354)', '[https://domo-support.domo.com/s/article/360043438313](https://domo-support.domo.com/s/article/360043438313)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000004997
    views: 1.098
    created_date: 2022-11-02 20:16:00
    last updated: 2022-11-02 20:37:00
    ---



Intro
-----


CA Agile Center (formerly Rally Software) is designed to increase business agility so your company can produce quality products more quickly and efficiently. The CA Agile Center QuickStart provides summary views on your teams' iterations, velocities and their corresponding status. Also, this QuickStart will track your teams' assignments and tasks so you can stay on top of your development efforts.


Usage
-----


Business questions that can be answered:


* What iterations are causing the most defects?
* How many stories are we completing?
* What tasks are taking the longest to complete?
* How quickly is your team delivering on assignments?


Metrics included in the app:


* All Stories
* Blocked vs. Completed Tasks
* Completed Stories
* Iteration Status
* Iterations
* Open Defect Priority
* Open Defects
* Open Defects Severity
* Perfect vs. Defective
* Planned Velocity
* Remaining vs. Estimated
* Story Plan Estimation
* Story Status
* Story Velocity Points
* Task Status


Authentication
--------------


CA Agile Center API Key and CA Agile Center URL are required. 


To obtain a CA Agile Center API Key, do the following:


1. Log into CA Agile Center Application Manager with your CA Agile Center username and password at the following URL: [https://CA Agile Center1.CA Agile Centerdev.com/login](https://rally1.rallydev.com/login "https://rally1.rallydev.com/login")
2. Click on the **API KEYS** tab at the top of the page.
3. Click the **Create New API Key** link.
4. Enter a name or description for the key in the **Description** field (e.g. "Domo API Connection").
5. Select the **Full Access** option from the **Grants** section.
6. Click the **Create** button.


To obtain a CA Agile Center URL, enter the URL for your CA Agile Center account (e.g. <https://CA> Agile [Center1.CA](http://Center1.CA) Agile [Centerdev.com](http://Centerdev.com)).


QuickStart Reports
------------------


For report descriptions, see [CA Agile Center Connector](/s/article/360042930354).


Report Configuration / Report Details
-------------------------------------


The selectable reports will need to be configured as follows:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| Blocker |   | None |   |
| Build |   | None |   |
| Custom Object |   | Custom Object Name | Enter the name of the object you want to retrieve as it appears in the API documentation. For example, the Hierarchical Requirement object shows the URL as /webservice/v2.0/hierarchicalrequirement/. You would enter 'hierarchicalrequirement' into the text input box.
  |
| Defect |   | None |   |
| Hierarchical Requirement |   | None |   |
| Iteration |   | None |   |
| Iteration Cumulative Flow Data |   | None |   |
| Preference |   | None |   |
| Project |   | None |   |
| Release Cumulative Flow Data |   | None |   |
| SCM Repository |   | None |   |
| Subscription |   | None |   |
| Task |   | None |   |
| User |   | None |   |
| User Iteration Capacity |   | None |   |
| Workspace Configuration |   | None |   |


QuickStart Data
---------------


The CA Agile CenterSoftware QuickStart will provide the following data collections and cards:




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Pulse: 4 metrics you should track daily. | Completed Stories | COMPLETED STORIES Tracks how many stories each team member has completed in the period. Identify completed stories that are pending acceptance. | Hierarchical Requirement |
| Executive Pulse: 4 metrics you should track daily. | Planned Velocity | PLANNED VELOCITY Tracks the amount of velocity points that have been allocated to different project iterations. Monitor velocity points in order to distribute resources effectively. | Iteration |
| Executive Pulse: 4 metrics you should track daily. | Story Status | STORY STATUS Breaks down your projects' stories by their current status.  Review statuses to determine where work hours should be focused. | Hierarchical Requirement |
| Executive Pulse: 4 metrics you should track daily. | Task Status | TASK STATUS Tracks the status of perfect and defective tasks during the period. Convert defective tasks to perfect tasks to increase your story acceptance rate. | Task |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Defects: What iterations are causing the most defects? | Open Defect Priority | OPEN DEFECT PRIORITY Tracks the total number of "Open" defects along with their respective priority. Focus on the top priority open defects. | Defect |
| Defects: What iterations are causing the most defects? | Open Defects | OPEN DEFECTS Shows all open defects during a given period. Use this table as a quick reference to take action on open defects. | Defect |
| Defects: What iterations are causing the most defects? | Open Defects Severity | OPEN DEFECTS SEVERITY Tracks the number of "Open" defects along with their respective severity during the period. Analyze the number of open defects in each area to determine where to best prioritize resources. | Defect |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Stories: How many stories are we completing? | All Stories | ALL STORIES Shows the status of all stories during the selected time period (by creation date). Use this table as a quick reference to check the stories you are focused on. | Hierarchical Requirement |
| Stories: How many stories are we completing? | Perfect vs. Defective | PERFECT VS. DEFECTIVE Tracks how many of the projects' stories are completed perfectly verses those with defects during the period. Convert defective stories to perfect stories to increase the acceptance rate. | Hierarchical Requirement |
| Stories: How many stories are we completing? | Story Plan Estimation | STORY PLAN ESTIMATION Shows the estimated amount of time needed to complete a given story within the backlog  (Top 25 shown). Identify top stories and plan resource allocation accordingly. | Hierarchical Requirement |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Tasks: What tasks are taking the longest to complete? | Blocked vs. Completed Tasks | BLOCKED VS. COMPLETED TASKS Measures how many tasks have been blocked versus those that have been completed. Blocked tasks are those that cannot be completed during the given iteration due to unforeseen complications. | Task |
| Tasks: What tasks are taking the longest to complete? | Remaining vs. Estimated | REMAINING VS. ESTIMATED Shows the remaining time needed to complete a task versus how much time was estimated to complete the task. View estimates to determine how accurate projections are and try to improve future estimates. | Task |
| Tasks: What tasks are taking the longest to complete? | Task Status | TASK STATUS Tracks the status of all tasks for a given iteration, providing insight into how complete the overall iteration is. Pay close attention to those tasks that are in progress to track to completion. | Task |


 




| Collection
  | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Velocity: How quickly is your team delivering on assignments? | Iteration Status | ITERATION STATUS Tracks the status of each project's iterations during the period. Identify the stages of each iteration to allocate resources accordingly. | Iteration |
| Velocity: How quickly is your team delivering on assignments? | Iterations | ITERATIONS Shows the duration of the planned iterations. Know the deadlines for each iteration in order to formulate a project plan. | Iteration |
| Velocity: How quickly is your team delivering on assignments? | Story Velocity Points | STORY VELOCITY POINTS Shows the Top 15 stories in the backlog that will require the most resources to complete, based on estimated hours. Allocate appropriate resources to complete the top stories on time. | Hierarchical Requirement |


 

