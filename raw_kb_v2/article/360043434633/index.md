

Intro
-------

Citrix Podio is a cloud-based collaboration service that supplies a web-based platform for organizing team communication, business processes, data, and content in project management workspaces.  To learn more about the Podio API, visit their page (

https://developers.podio.com/

).


 You connect to your Podio account in the Data Center. This topic discusses the fields and menus that are specific to the Podio connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Podio account and create a DataSet, you must have the email address you used to register for Podio as well as a Podio password. Alternatively, if you have signed into Podio using ShareFile, Google, Facebook, or Microsoft credentials, you can connect using those credentials.


 Connecting to Your Podio Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Podio Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Podio connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Podio accounts in Domo) to open the Podio OAuth screen where you can enter your Podio email address and password. Alternatively, if you have signed into Podio using ShareFile, Google, Facebook, or Microsoft credentials, you can connect using those credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Podio DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Podio when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Podio.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Podio report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 App Market Categories Functional
  |
 Returns functional app market categories available in the system.
  |
|
 App Market Categories Vertical
  |
 Returns vertical app market categories available in the system.
  |
|
 App Market Own Shares
  |
 Returns all the apps that the active user has shared.
  |
|
 App Stream
  |
 Returns the stream for the selected app.
  |
|
 App Voting
  |
 Returns app voting information.
  |
|
 Batches
  |
 Returns the batches created by the user, sorted by descending date of creation.
  |
|
 Calendar Summary
  |
 Returns the calendar summary for the authenticated user.
  |
|
 Contact Skills
  |
 Returns the skills of related contacts, ordered by most frequently used.
  |
|
 Contacts
  |
 Returns a list of contacts.
  |
|
 Email Groups
  |
 Returns the subscription status for all email groups.
  |
|
 Export Items
  |
 Returns a list of exported items.
  |
|
 Files
  |
 Returns a list of files for the selected criteria.
  |
|
 Forms
  |
 Returns a list of active forms on the selected app.
  |
|
 Global Calendar Exports
  |
 Returns exports configured for the global calendar.
  |
|
 Integration
  |
 Returns integration data for the selected app.
  |
|
 Items
  |
 Returns a list of items.
  |
|
 Notifications
  |
 Returns a list of notifications based on the selected filters.
  |
|
 Organization Contacts
  |
 Returns the profiles of the user's contacts in the given organization.
  |
|
 Profile
  |
 Returns the status of the authenticated user.
  |
|
 Search
  |
 Returns data based on a search of all items, files, and tasks.
  |
|
 Space Members
  |
 Returns the members of the selected space.
  |
|
 Task Labels
  |
 Returns the user's task labels.
  |
|
 Tasks
  |
 Returns a list of tasks for the selected filters.
  |
|
 Total Contacts Count
  |
 Returns the total number of contacts for the authenticated user.
  |
|
 User
  |
 Returns data for the authenticated user.
  |
|
 User Contacts
  |
 Returns a list of contacts for the authenticated user.
  |
|
 Voting Results
  |
 Returns the results of voting on an item.
  |

|
|
 Organization
  |
 Select the organization you want to retrieve data for.
  |
|
 Spaces
  |
 Select the spaces you want to retrieve data for.
  |
|
 Application
  |
 Select the application you want to retrieve data for.
  |
|
 View ID
  |
 Select the view ID you want to retrieve data for.
  |
|
 Item ID
  |
 Select the item ID you want to retrieve data for.
  |
|
 Query
  |
 Enter the search term you want to retrieve data for.
  |
|
 Type
  |
 Select whether to retrieve data on app or pack shares.
  |
|
 Subreport
  |
 Select a subreport for the selected report type.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector.


