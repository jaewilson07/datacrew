---
title: Workfront Dashboard App
url: https://domo-support.domo.com/s/article/360042933034
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042933034](https://domo-support.domo.com/s/article/360042933034)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000005010
views: 1,099
created_date: 2022-11-02 20:16:00
last updated: 2022-11-02 20:37:00
---



Intro
-----


Workfront is cloud-based project management software that helps organizations manage all work tasks in one place. The Workfront Dashboard adds additional insights by providing quick summary views of project completion time, volume, status, issue resolution times, trends and more.


Usage
-----


Business questions that can be answered:


* How quickly is your team resolving issues?
* How is your organization doing with ongoing projects?
* Is your team on track to completing their desired tasks?


Metrics included in the App:


* Average Completion Time
* Average Resolution Time
* Completed Tasks
* Days to Task Complete
* Estimated Task Completion
* Future Projects
* Issues Trend
* Longest Resolve Times
* New Task Status
* Open Issues
* Project Group Load
* Project Margin
* Project Status
* Recent Task Completers
* Resolved Issues
* Tasks Completed
* Top Unassigned Tasks


Authentication
--------------


To authenticate, you need your Workfront username, password, and URL.


Dashboard Reports
-----------------


For report descriptions, see Workfront Connector.


Report Configuration / Report Details
-------------------------------------


The selectable reports must be configured as follows:




| Report | Scheduling (Change update settings) | Parameter(s) | Selection |
| --- | --- | --- | --- |
| Issue |   | Custom fields; reference fields | Enter a comma-separated list of custom fields you want to appear in your report; Enter a comma-separated list of reference fields you want to appear in your report. This must use the format reference object:reference field. |
| Project |   | Custom fields; reference fields | Enter a comma-separated list of custom fields you want to appear in your report; Enter a comma-separated list of reference fields you want to appear in your report. This must use the format reference object:reference field. |
| Task |   | Custom fields; reference fields | Enter a comma-separated list of custom fields you want to appear in your report; Enter a comma-separated list of reference fields you want to appear in your report. This must use the format reference object:reference field. |


Dashboard Data
--------------


The Workfront Dashboard provides the following data collections and cards:




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Executive Pulse: 5 cards to keep your eyes on. | Average Resolution Time | AVERAGE RESOLUTION TIMEMeasures the average number of days needed for issues to be resolved, plotted over actual completion date. Watch for upward trends or spikes in average resolution time and re-prioritize resources as necessary. | Issue |
| Executive Pulse: 5 cards to keep your eyes on. | Project Group Load | PROJECT GROUP LOADMeasures the number of projects by group over the projects' entry date. Rationalize project workloads with the resources available to each project group. | Project |
| Executive Pulse: 5 cards to keep your eyes on. | Resolved Issues | RESOLVED ISSUESCompares the number of resolved issues against the average days to issue resolution according to its actual completion date. Identify trends in issue resolution in order to improve project resource management. | Issue |
| Executive Pulse: 5 cards to keep your eyes on. | Tasks Completed | TASKS COMPLETEDCompares the number of completed tasks against the average days to complete the task according to its actual completion date. Identify trends in task completion in order to improve project resource management. | Task |
| Executive Pulse: 5 cards to keep your eyes on. | Top Unassigned Tasks | TOP UNASSIGNED TASKSDisplays the top 20 projects by their number of unassigned tasks. Identify high priority projects and adjust project resources to reduce the backlog of unassigned tasks. | Task |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Issues: How quickly is your team resolving issues? | Issues Trend | ISSUES TRENDDisplays the volume and status of issues, sorted by their actual start date. Gauge the load placed on the people resolving these issues and ensure that employees are properly utilized to resolve issues according to priority and severity. | Issue |
| Issues: How quickly is your team resolving issues? | Longest Resolve Times | LONGEST RESOLVE TIMESRanks the slowest 20 assignees by the average number of days required to resolve issues. Consider distributing high priority issues to the most efficient assignees and providing training opportunities to improve assignee performance. | Issue |
| Issues: How quickly is your team resolving issues? | Open Issues | OPEN ISSUESDisplays the number of open issues that are associated with each project. Identify the progress being made on each issue and ensure that employees are properly utilized to resolve issues according to priority and severity. | Issue |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Projects: How is your organization doing with ongoing projects? | Average Completion Time | AVERAGE COMPLETION TIMEMeasures the average days to a project's completion, trended over time. Watch for upward trends or spikes in average completion time and re-prioritize project resources as necessary. | Project |
| Projects: How is your organization doing with ongoing projects? | Future Projects | FUTURE PROJECTSShows the conditions of projects expected to be completed in the near future. Assess whether or not team workloads are going to be balanced in the months to come and if goals will be within reach. | Project |
| Projects: How is your organization doing with ongoing projects? | Project Margin | PROJECT MARGINRanks each project by its proportion of gross margin. Rationalize budgets and returns for each project to ensure profitability. | Project |
| Projects: How is your organization doing with ongoing projects? | Project Status | PROJECT STATUSMeasures the number of projects by their current status over the dates they were entered into Workfront. Identify long term trends in project growth in order to plan for future resource needs. | Project |


 




| Collection | Card | Card Description | Data Name |
| --- | --- | --- | --- |
| Tasks: Is your team on track to completing their desired tasks? | Completed Tasks | COMPLETED TASKSMeasures the number of completed tasks by their status according to their actual completion date. Identify trends in task completion in order to improve project resource management. | Task |
| Tasks: Is your team on track to completing their desired tasks? | Days to Task Complete | DAYS TO TASK COMPLETEMeasures the average days to a task's completion by its actual completion date. Watch for upward trends or spikes in average completion time and re-prioritize tasks that require added attention, as necessary. | Task |
| Tasks: Is your team on track to completing their desired tasks? | Estimated Task Completion | ESTIMATED TASK COMPLETIONDisplays the number of tasks estimated to reach completion in the specified period. Gauge the effectiveness of your project planning by understanding completion timing. | Task |
| Tasks: Is your team on track to completing their desired tasks? | New Task Status | NEW TASK STATUSShows the progress breakdown of recently created tasks that have a status currently flagged as new. Fix incorrect categorization of older tasks while minimizing the number of recently delayed tasks. | Task |
| Tasks: Is your team on track to completing their desired tasks? | Recent Task Completers | RECENT TASK COMPLETERSRanks assignees by the number of tasks they have recently completed. Invite high performers to train new team members and document their best practices. | Task |


 

