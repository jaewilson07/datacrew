---
title: JIRA Dashboard App
url: https://domo-support.domo.com/s/article/360042933794
linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZampGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC)', '[https://domo-support.domo.com/s/article/360042933794](https://domo-support.domo.com/s/article/360042933794)', '[https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps](https://domo-support.domo.com/s/topic/0TO5w000000Zan9GAC/available-apps)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
article_id: 000004193
views: 1,105
created_date: 2022-10-24 21:27:00
last updated: 2022-10-24 22:42:00
---



Intro
-----


Product teams use JIRA to help them get organized and work together quickly and efficiently. The JIRA Dashboard provides your organization with a summary of current projects, open and new issues, top resolvers and top performers in your teams.


Screenshot
----------


![jira_qs.png](jira_qs.png)


Requirements and Notes
----------------------


You must have user credentials and the URL you use to login to JIRA.


Default date range: set to upload issues that have been updated within the last 3 months.


Usage
-----


* Executive Pulse: 5 cards to keep your eye on.


	+ Open Issues
	+ Resolvers
	+ Hot Projects
	+ New Issues Trend
	+ New Issues
* Issues: What can you do today to hit your closure goals?


	+ New Issues Trend
	+ Status Trend
	+ Issues Keys
	+ Issue Status
* Project: Identify project status and recognize top performers.


	+ Project Issue Status
	+ Work In Progress
	+ Top Resolvers
	+ Top Reporters
	+ Top Assignees


Authentication
--------------




| Credential | Description |
| --- | --- |
| Username | This is your username used to log in to JIRA |
| Password | This is your password associated with your username used to log in to JIRa |
| Server URL | This is the URL for your JIRA instance (for example, [mycompany.onjira.com](http://mycompany.onjira.com)). |


Dashboard Reports
-----------------


For report descriptions, see JIRA Connector.




| Report | Schedule Update Setting | Parameters | Selection |
| --- | --- | --- | --- |
| Recent Visitors | Replace | Query Type | JQL Issue query |
| Search Query | Custom |
| JQL Entry |  created >= STARTOFMONTH(-3) ORDER BY updatedDate DESC |
| Data Option | Standard Ticket report |


