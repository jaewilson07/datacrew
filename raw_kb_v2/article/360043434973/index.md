

Intro
-------

JIRA helps teams get organized and work together to build incredible products, but product teams are just one part of your organization. With Domo, you can combine data from multiple sources into a single platform--pulling data from product development, marketing, sales, operations, and finance for a real-time, holistic view of your business. Once your data is in Domo, you can get stunning, dynamic JIRA visualizations with real-time data, on any device.


 Domo's JIRA connector allows you to connect to your JIRA account to extract data from JIRA. You can import data including issue tracking, completed tickets per team, ticket resolution time, and project management metrics, using either custom or predefined queries. To learn more about the JIRA API, see

https://developer.atlassian.com/jira...e-query-issues

.


 The JIRA Rest API Connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your JIRA account in the Data Center. This topic discusses the fields and menus that are specific to the JIRA connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Tracking progress and movement of tickets
* Number of tickets assigned to specific users or groups
* Seeing if too many tickets of a certain type are open (bugs)
 |
|
**Primary Metrics**
 | * Bug / issue / ticket tracking (by age, type, status, submitter)
* Completed tickets per team
* Ticket resolution time
* Project management metrics (tracking individual tasks of a larger project or epic).
 |
|
**Primary Company Roles**
 |
 Product managers
  |
|
**Average Implementation Time**
 |
 This can vary wildly depending on the implementation and the user's level of knowledge of their JIRA system.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Best Practices
----------------


* You should usually use "Replace" with the JIRA connector, as "Append" does not work well.
* If the query is for data across a long time period, scheduling should be kept to a minimum (once a day). For shorter queries, more frequent updates are appropriate.

Prerequisites
---------------

To connect to your JIRA account and create a DataSet, you must have the following:

 The username and password/API key you use to log into JIRA. The

Jira cloud users must use an API Key. You can create one here:

http://id.atlassian.com
* The URL for your company's JIRA instance
* The JQL query you will use to pull data (if you are building a custom report)

Credentials are received upon account creation. A JIRA Admin is likely to have created username and passwords for most users in your company if you use an on-premise JIRA implementation.

##
 SSO

Single Sign-On (SSO) credentials will NOT work. However, you can work around SSO limitations by doing the following:

. Have your JIRA administrator create a local account with a username and password specifically for API use.
2. Create an API key at

http://id.atlassian.com/

.
3. On the JIRA connector page in Domo, enter the API key you created instead of the password. (Depending on the account, you may need to enter your username or JIRA account email address as the username.)

Connecting to Your JIRA Instance
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the JIRA Rest PAI Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your JIRA instance. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your JIRA instance.
  |
|
 Password
  |
 Enter the password you use to log into your JIRA instance. The

Jira Cloud users must use an API Key. You can create one here:

http://id.atlassian.com


 |
|
 Server URL
  |

Enter the URL for your JIRA instance (for example,

onjira.mycompany.com

).

|

Once you have entered valid JIRA credentials, you can use the same account any time you go to create a new JIRA Rest API DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane


 This pane contains a primary

*Reports**

menu, along with various other menus which may or may not appear depending on the report type you select.


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the


 report you want to run. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
|
 Issue Query
  |
 Allows the user to query issues using JQL (JIRA Query Language).
  |
|
 Boards
  |
 Returns a list of scrum boards.
  |
|
 Board Sprints
  |
 Returns a list of sprints for the selected board.
  |
|
 Sprint Issues
  |
 Returns issues for the selected sprints.
  |
|
 Fields
  |
 Returns a list of fields used in the user's JIRA account.
  |
|
 Group Members
  |
 Returns a list of users that belong to the specified group. You must have admin access to run this report.
  |
|
 Projects
  |
 Returns a list of all projects the user has access to.
  |
|
 Project Versions
  |
 Returns a list of all versions of the specified project.
  |

|
|
 JQL Query
  |

Enter a JQL query to pull custom data.


 Jira Documentation

.


|
 Description
  |
 Query Examples
  |
| --- | --- |
|
 All issues created at the start of the month, 3 months ago.
  |
 created >= STARTOFMONTH(-3)
  |
|
 All issues created at the start of the day, 10 days ago.
  |
 created >= STARTOFDAY(-10)
  |
|
 All issues updated since a specific date.
  |
 updated >= '2020-01-01'
  |
|
 All issues assigned to me.
  |
 assignee = currentUser()
  |
|
 All issues for project 'Some Project' that are closed
  |
 project = 'Some Project'

and status = closed
  |
|
 All issues reported by a specific user
  |
 reporter = '

user.name

'
  |

|
|
 Data Option
  |


 Data Option
  |
 Description
  |
| --- | --- |
|
 Comments Report
  |
 Returns JIRA tickets with their related comments.
  |
|
 Changelog Report
  |
 Returns changelogs per issue applicable to the query. The Changelog report is only available to Jira Cloud users.
  |
|
 Labels Report
  |
 Returns labels for issues applicable to the query.
  |
|
 Linked Issues Report
  |
 Returns linked issues for issues applicable to the query.
  |
|
 Sprint Report
  |
 Returns details of sprints for issues applicable to the query.
  |
|
 Standard Ticket Report
  |
 Returns columns for nearly every parameter for JIRA tickets, such as issue summary and description, creation date, resolution date, impacted customer name, environment, etc.
  |
|
 Ticket History Report
  |
 Returns historical information about tickets.
  |
|
 Worklog Report
  |
 Returns worklogs per issue applicable to the query.
  |

|
|
 Filter Type
  |
 Select to include or exclude specific fields from the returned dataset.
  |
|
 Flatten All Fields
  |
 Select which fields you want to see expanded in data.
  |
|
 Reset Schema
  |
 Select this checkbox to include only columns that are imported in the current execution.

This option only works for the
 **Replace**
 update method.
  |
|
 Group Name
  |
 Enter the group that contains the users you wish to retrieve. This report requires an Administrator account.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQs


####
 When should I use this connector?

The JIRA REST API connector allows you to connect to a JIRA server instance and bring your JIRA data into Domo. This connector requires a local username and password.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |  |
 Endpoint URL(s)
  |
| --- | --- | --- |
|
 Agile API:
  |
 Agile Boards
  |
 /rest/agile/1.0/board
  |
|
 Board Sprints
  |
 /rest/agile/1.0/board/{boardId}/sprint
  |
|
 Sprint Issues
  |
 /rest/agile/1.0/board/{boardId}/sprint/{SprintId}/issue
  |
|
 Fields
  |  |
 /rest/api/2/field
  |
|
 Group Members
  |  |
 /rest/api/2/group/member
  |
|
 Issue Query
  |  |
 /rest/api/2/search
  |
|
 Projects
  |  |
 /rest/api/2/project
  |
|
 Project Versions
  |  |
 /rest/api/2/project/{projectId}/versions
  |


####
 What kind of credentials do I need to power up this connector?

You need the username, password, and server URL for your Jira instance.

###
 Domo is reporting that my Jira credentials are invalid. What am I doing wrong?

Possible reasons for this error include:

 Your Jira server has not had API access enabled. Contact your Jira administrator to ensure that API access is turned on.
* You're using your email address instead of your actual Jira username. In many cases, these may be the same; however, it's not uncommon for "

user.name@company.com

" to be your email while "

user.name

" is your actual username.


####
 Can I use my SSO account to login?

SSO implementations are not supported in Jira. However you can work around these limitations.

 Jira Server – Your Jira administrator can create a local account with a user name and password specifically for API use.
* Jira Cloud – You can create an API key at

ATLASSIAN

. On the connectors page, enter the API key you’ve created instead of the password.


 Note: Depending on your account, you may need to enter your username or your Jira account email address as the username.


####
 How frequently will my data update?

Data from Jira's servers is usually made available to the API immediately.

###
 How do I know if my query is right?

Jira's platform provides a handy tool to verify if your query is valid. An easy way to access this tool is simply to do a search in Jira's search bar. Once on the search screen, you will see a green check box next to the query string for your search to indicate that it is valid. Otherwise you will see a red X. You can switch back to the basic search functionality to build a query from the available selectors, and then switch again to advanced to see the resulting query.

###
 I keep running into connection errors (gateway timeout, bad gateway, connection timed out, connection reset, etc...). How do I fix that?

The most common cause of connection errors is that your Jira server has too much load to handle your requests. Contact your Jira administrator to see about allocating more resources to your Jira server.

###
 Can this connector pull custom fields?

Because Jira returns so much data, the connector enables you to specify fields either as inclusive or exclusive. If you choose inclusive, only the fields you specify will be returned. If you choose exclusive, all fields will be returned except for those that you specify.


**Note**
 : Field ids must be entered. If the field names are entered, then they will be ignored.

###
 How can I pull the data from boards?

Select the report type as
 **Agile API**
 and the agile report as
 **Agile Boards**
 to get the list of all agile boards you have access to.

###
 Can I use OAuth on this connector?

If you wish to use OAuth on Jira instances, use the Jira Cloud connector. Jira Cloud connector supports OAuth2 authentication. You can authenticate to the Jira Cloud connector with the same credentials you use to log into your Jira account online.


 Troubleshooting
-----------------


* Jira requires a fair amount of configuration from the side of the JIRA admin to ensure that API access is enabled. Common issues include setting the timeouts too short or not providing sufficient resources to the JIRA server.
* If users have trouble understanding how to format JQL, the easiest thing is to log into the JIRA front end. Via the search bar, JIRA provides a tool that can construct a JQL query with preset filters. After constructing your query, if you hit the
 **Advanced**
 button, JIRA presents you with your selections in JQL format.


