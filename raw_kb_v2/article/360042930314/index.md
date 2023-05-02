

Intro
-------

Asana is a cloud-based project management platform that helps users track projects, tasks, stories and other project-related workflows. To learn more about the Asana API, visit their page (

https://asana.com/developers/documen...arted/overview

).


 You connect to your Asana account in the Data Center. This topic discusses the fields and menus that are specific to the Asana connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Asana account and create a DataSet, you must have the email address you use to log into Asana, as well as your Asana password. Alternatively, you can use Google credentials to connect.


 Connecting to Your Asana Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Asana Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Asana connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Asana accounts in Domo) to open the Asana OAuth screen where you can enter your Asana or Google credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Asana DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Asana when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Asana.

You will also need an API Key for your Asana account. Any user can get their own API key by visiting the Account Settings dialog and clicking on the Apps tab. The API key is located at the bottom of this dialog box.

##
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select. If you select the "Tasks" report, a "Subreport" menu appears from which you may select a secondary report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Asana report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Attachments
  |
 Retrieves all attachments for a specified workspace.
  |
|
 Projects
  |
 Retrieves all projects in a specified workspace.
  |
|
 Stories
  |
 Retrieves all stories in a specified workspace.
  |
|
 Tags
  |
 Retrieves all tags made on tasks in a specified workspace.
  |
|
 Tasks
  |
 Retrieves all tasks for a specified workspace. With this report, you may also select a subreport.
  |
|
 Teams
  |
 Retrieves all teams for a specified workspace.
  |
|
 Users
  |
 Retrieves all users for a specified workspace.
  |
|
 Workspaces
  |
 Retrieves all workspaces for the authenticated user.
  |

|
|
 Subreport
  |
 Select the desired subreport for the "Tasks" report. The following subreports are available:


|  |  |
| --- | --- |
|
 None
  |
 Only task data is returned.
  |
|
 Followers
  |
 Retrieves a list of tasks enhanced with followers data.
  |
|
 Hearts
  |
 Retrieves a list of tasks enhanced with hearts data.
  |
|
 Memberships
  |
 Retrieves a list of tasks enhanced with memberships data.
  |
|
 Projects
  |
 Retrieves a list of tasks enhanced with project data.
  |

|
|
 Workspace
  |
 Select the workspace you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

DataSets can be updated as often as once an hour.

####
 Are there any API limits that I need to be aware of?

Asana does not document any limits in their API.

