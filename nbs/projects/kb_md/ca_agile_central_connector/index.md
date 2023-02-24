---
    title: CA Agile Central Connector
    url: https://domo-support.domo.com/s/article/360042930354
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042930354](https://domo-support.domo.com/s/article/360042930354)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003417
    views: 2,183
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


CA Agile Central (formerly Rally Software) produces Agile project management tools that allow users to gain visibility into the status of features and quality, priorities, roadblocks, and risks. Use Domo's CA Agile Central connector to retrieve data about projects and tasks, users, defects, and the like. For more information about the CA Agile Central API, go to <https://help.rallydev.com/access-web-services-api-wsapi>.


The CA Agile Central connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking **Cloud App** in the toolbar at the top of the window.


This topic discusses the fields and menus that are specific to the CA Agile Central connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| **Primary Use Cases** | You can use this connector to address all of the following use cases:* Gauging if you are you on track to completing customized solution/product for a customer
* Gauging if you are on track to completing features for product?
* Product roadmap
* Average velocity by team/sprint
* Iteration burndown—work remaining and completed in the iteration to anticipate whether the committed work will be delivered by the iteration end date
* Weekly/bi-weekly sprint review
* Overview of defect history
* Defect summary by priority and severity
* Defects opened and closed by month
 |
| **Primary Metrics** | * Product/team velocity
* Relative size of stories or portfolio items such as features and initiatives
* Points: estimated vs planned
* Points: accepted & completed
* Defects
* Tasks
* Task hours
* Iteration burndown rate
* iteration burndown vs. ideal burndown rate
 |
| **Primary Company Roles** | * Product manager
* Project manager
* Director
* VP
* Executives
* CEO
 |
| **Average Implementation Time** | ~20 hours
Reasons for this lengthy implementation time are as follows:* Connecting is easy, but the reports you can pull are very raw.  To create meaningful Domo content you may need to do a decent amount of DataFlow work to combine these raw reports. For more information, see Prepare.
* API field names in the raw reports do not necessarily match what you see on the CS Agile Central website, necessitating identification and renaming work.
* You may have custom reports and fields that must be integrated with your DataFlow. These may replace some of the standard fields, which adds complexity.
* API documentation is difficult to access and follow.
 |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)** | 7 |


Best Practices
--------------


* Forecast and track progress: The states of the scheduled work items indicate the progress of your development as it moves to completion. To determine if you are on target to complete the work within the scheduled iteration, track the accepted state.
* Manage scope: As your scheduled work item bars become level, it is easy to see when excess work is added to an iteration. If the level of the bars do not remain uniform and instead continue to increase, you need to re-address the scope of your iteration.
* Identify bottlenecks: Use the rolled-up states of your scheduled work items to determine if there are trends that indicate bottlenecks. For example, a large section of scheduled items in a completed state as compared to a small amount of accepted may indicate a testing roadblock.


Prerequisites
-------------


To connect to your CA Agile Central account and create a DataSet, you must have the following:


* The API key for your CA Agile Central account.
* The URL for your CA Agile Central account (for example, <https://rally1.rallydev.com>).


Connecting to Your CA Agile Central Account
-------------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the CA Agile Central Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your CA Agile Central account. The following table describes what is needed for each field:




| Field | Description |
| --- | --- |
| API Key | Enter the API Key for your CA Agile Central account.
**To get the API Key for Rally,**1. Log into CA Agile Central Application Manager (<https://rally1.rallydev.com/login> ) using your CA Agile Central username and password.
2. Click the **API KEYS** tab at the top of the page.
3. Click the **Create New API Key** link.
4. Enter a name or description for the key in the **Description** field. For example, "Domo API Connection"
5. In the **Grants** section, select the **Full Access** option.
6. Click the **Create** button.
 |
| URL | Enter the URL for your CA Agile Central account. For example, <https://rally1.rallydev.com/login> |


After you have entered valid CA Agile Central credentials, you can use the same account in Domo any time you create a CA Agile Central DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Report** menu in which you select a report type. The following table describes all of the reports you can create using the Domo CA Agile Central connector:




| Report | Description |
| --- | --- |
| Hierarchical Requirement | Returns information about the hierarchical requirements for your account. |
| Workspace Configuration | Returns information about the workspace configuration for your account. |
| Blocker | Returns information about blockers for your account. |
| Build | Returns build information for your account. |
| Defect | Returns information about defects for your account. |
| Iteration | Returns information about iterations for your account. |
| Iteration Cumulative Flow Data | Returns the states of work in an iteration to analyze the trend in lead time for delivery of working code. |
| Preference | Returns user preference information for all users in your account. |
| Project | Returns information about projects in your account, such as owner, creation date, etc. |
| Release Cumulative Flow Data | Returns work-in-progress status to analyze the trend in lead time for release value delivery. |
| SCM Repository | Returns information about SCM repositories for your account. |
| Subscription | Returns information about your CA Agile Central subscription, such as expiration date, maximum projects, etc. |
| Task | Returns information about tasks in an iteration, including owner, description, status, estimate, etc. |
| User | Returns information about all of the users in your account. |
| User Iteration Capacity | Returns workload data by iteration for all of the users in your account. |



### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274). 





FAQ
---


##### How often can the data be updated?


Datasets can be updated as often as once an hour.


##### Are there any API limits that I need to be aware of?


Rally does not document any limits in their API.



