

Intro
-------

Pivotal Tracker is an online project planning, tracking and collaboration tool designed specifically by software developers to support the software development process. Use Domo's Pivotal Tracker connector to retrieve data about epics, notifications, projects, and stories. For more information about the Pivotal Tracker API, visit their website. (

https://www.pivotaltracker.com/help/api/#top

)


 The Pivotal Tracker connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Pivotal Tracker account in the

Data Center

. This topic discusses the fields and menus that are specific to the Pivotal Tracker connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pivotal Tracker account and create a DataSet, you must have a Pivotal Tracker username and password.


 Connecting to Your Outbrain Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Pivotal Tracker Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Pivotal Tracker account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 User
  |
 Enter your Pivotal Tracker username.
  |
|
 Password
  |
 Enter your Pivotal Tracker password.
  |

Once you have entered valid Pivotal Tracker credentials, you can use the same account any time you go to create a new Pivotal Tracker DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu in which you select a report type. Depending on the report type you select, you may also have the option to specify the number of days back for the report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Pivotal Tracker report. The following reports are available:


|  |  |
| --- | --- |
|
 Epics
  |
 Returns all epics for the authenticated user's projects.
  |
|
 Notifications
  |
 Returns all notifications for the authenticated user.
  |
|
 Projects
  |
 Returns all of the authenticated user's active projects.
  |
|
 Stories
  |
 Returns all stories for the authenticated user's projects, filtered by the
 **Created Date**
 . Append supported.
  |


 |
|
 Created Date - Days Back
  |
 Enter the number of past days you want to retrieve data for. For example, if you enter

7

, the connector pulls data for the past week.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

