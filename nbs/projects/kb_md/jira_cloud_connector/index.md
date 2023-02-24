---
    title: JIRA Cloud Connector
    url: https://domo-support.domo.com/s/article/360052884153
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360052884153](https://domo-support.domo.com/s/article/360052884153)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003298
    views: 2,366
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:42:00
    ---



Intro
-----


JIRA helps teams to get organized and work together to build incredible products, but product teams are just one part of your organization. With Domo, you can combine data from multiple sources into a single platform--pulling data from product development, marketing, sales, operations, and finance for a real-time, holistic view of your business.  
Once your data is in Domo, you can get stunning, dynamic JIRA visualizations with real-time data, on any device.  
Domo's JIRA Cloud connector allows you to connect to your JIRA account to extract data from JIRA. You can import data including issue tracking, completed tickets per team, ticket resolution time, and project management metrics, using either custom or predefined queries. To learn more about the JIRA API, see [https://developer.atlassian.com/jiradev/jira-apis/jira-rest-apis/jira-rest-api-tutorials/jira-rest-api-example-query-issues](https://developer.atlassian.com/jiradev/jira-apis/jira-rest-apis/jira-rest-api-tutorials/jira-rest-api-example-query-issues "https://developer.atlassian.com/jiradev/jira-apis/jira-rest-apis/jira-rest-api-tutorials/jira-rest-api-example-query-issues"). 


The JIRA connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking ****Cloud App**** in the toolbar at the top of the window.


You connect to your JIRA Cloud account in the Data Center. This topic discusses the fields and menus that are specific to the JIRA Cloud connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").




|  |  |
| --- | --- |
| ****Primary Use Cases**** | * Tracking progress and movement of tickets
* Number of tickets assigned to specific users or groups
* Seeing if too many tickets of a certain type are open (bugs)
 |
| ****Primary Metrics**** | * Bug / issue / ticket tracking (by age, type, status, submitter)
* Completed tickets per team
* Ticket resolution time
* Project management metrics (tracking individual tasks of a larger project or epic).
 |
| ****Primary Company Roles**** | Product managers |
| ****Average Implementation Time**** | This can vary wildly depending on the implementation and the user's level of knowledge of their JIRA system. |
| ****Ease of Use (on a 1-to-10 scale with 1 being easiest)**** | 7 |


Best Practices
--------------


* You should usually use "Replace" with the JIRA Cloud connector, as "Append" does not work well.
* If the query is for data across a long time period, scheduling should be kept to a minimum (once a day). For shorter queries, more frequent updates are appropriate.


Prerequisites
-------------


To connect to your JIRA Cloud account and create a DataSet, you must have:


* The domain of your JIRA Cloud account (Jira Server accounts are not supported for OAuth).


 You can authenticate to the Jira Cloud connector with the same credentials you use to log into your Jira account online.


Connecting to Your JIRA Cloud Account
-------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Jira Cloud Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Domain | The domain of your JIRA Cloud account. Jira Server accounts are not supported for OAuth. |


Once you have entered valid JIRA Cloud credentials, you can use the same account any time you go to create a new JIRA Cloud DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.


#### Get JIRA Issue Data


When you select ****Get JIRA Issue Data****, a JQL Query Builder appears on the screen. Here you can build JIRA queries to returns columns for nearly every JIRA ticket parameter, like issue summary and description, creation date, resolution date, impacted customer name, and environment. You can also create a JQL query in JIRA and paste it into the query builder.


The JQL Query Builder automatically suggests your JIRA fields and values, enabling you to easily create JQL queries.


You may also select from the suggested queries on the right side of the Query Builder. Simply click on a suggested query and it will populate the JQL Query Builder. You may edit the query if desired afterwards.


One query example is as follows:


`(issuetype = Bug OR issuetype = defect OR issuetype = Improvement) AND status != Closed ORDER BY createdDate DESC`


This query retrieves all open issues that are classified as bugs, defects, or Improvements and sorts them by their creation dates.


For more information about writing JQL queries, see [https://confluence.atlassian.com/display/JIRA/Advanced+Searching](https://confluence.atlassian.com/display/JIRA/Advanced+Searching "https://confluence.atlassian.com/display/JIRA/Advanced+Searching").


##### JIRA Issue Reports


If you would prefer to pull in premade reports rather than build custom queries, you can do so by expanding the ****Report Selection**** tab and then choosing the desired report type. The following reports are available:




| Report | Description |
| --- | --- |
| Comments Report | Returns JIRA tickets with their related comments. |
| Changelog Report | Returns changelogs per issue applicable to the query. |
| Labels Report | Returns labels for issues applicable to the query. |
| Linked Issues Report | Returns linked issues for issues applicable to the query. |
| Standard Ticket Report | Returns columns for nearly every parameter for JIRA tickets, such as issue summary and description, creation date, resolution date, impacted customer name, environment, etc. |
| Ticket History Report | Returns historical information about tickets. |
| Worklog Report | Returns worklogs per issue applicable to the query. |


#### Get JIRA Admin Data


You can access a number of JIRA admin-level reports. If you want to build custom queries, select ****JIRA Issue Data**** instead. 


The following reports are available:




| Report | Description |
| --- | --- |
| Agile API | The Agile API is currently not supported for OAuth2 accounts. Once Jira adds support, domo will update this section to include it. This data can be accessed using the regular Jira connector with basic authentication instead. |
| Fields | Returns a list of fields used in the user's JIRA account. |
| Group Members | Returns a list of users that belong to the specified group. You must have admin access to run this report. |
| Issue Query | Allows the user to query issues using JQL (JIRA Query Language). |
| Projects | Returns a list of all projects the user has access to. |
| Project Versions | Returns a list of all versions of the specified project. |
| Users Groups | Returns a list of groups for all users. |


FAQ
---


#### When should I use this connector?


The JIRA Cloud Connector connects to JIRA Cloud instances using OAuth. Use this connector if your JIRA instance does not allow local usernames and passswords, and if you are using a JIRA Cloud instance.


#### Which endpoint(s) does each report call in this connector?




|  |  |
| --- | --- |
| **Report Name** | **Endpoint URL** |
| Issue Query | /rest/api/2/search |
| Fields | /rest/api/2/field |
| Group Members | /rest/api/2/group/member/{groupname} |
| Projects | /rest/api/2/project |
| Project Versions | /rest/api/2/project/{projectId}/versions |
| Users Groups | /rest/api/2/user/groups |


 


#### What kind of credentials do I need to power up this connector?


You need the domain of your JIRA Cloud account. The Jira Cloud connector supports OAuth2 authentication. You can authenticate to this connector with the same credentials you use to log into your Jira account online.


#### How frequently will my data update?


Data from Jira's servers are usually made available to the API immediately.


#### How do I know if my query is right?


Jira's platform provides a handy tool to verify if your query is valid. An easy way to access this tool is simply to do a search in Jira's search bar. Once on the search screen, you will see a green check box next to the query string for your search to indicate that it is valid. Otherwise, you will see a red X. You can switch back to the basic search functionality to build a query from the available selectors, and then switch again to advanced to see the resulting query.


#### Can this connector pull custom fields?


Because Jira returns so much data, the connector enables you to specify fields either as inclusive or exclusive. If you choose inclusively, only the fields you specify will be returned. If you choose exclusive, all fields will be returned except for those that you specify.


**Note**: Field ids must be entered. If the field names are entered, then they will be ignored.
Troubleshooting
---------------


* Jira requires a fair amount of configuration from the side of the JIRA admin to ensure that API access is enabled. Common issues include setting the timeouts too short or not providing sufficient resources to the JIRA server.
* If users have trouble understanding how to format JQL, the easiest thing is to log into the JIRA front end. Via the search bar, JIRA provides a tool that can construct a JQL query with preset filters. After constructing your query, if you hit the ****Advanced**** button, JIRA presents you with your selections in JQL format.


Other Panes
-----------


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

