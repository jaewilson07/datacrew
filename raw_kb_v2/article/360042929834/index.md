

Intro
-------

Lithium Technologies provides social customer experience management software for enterprise customers. Use Domo's Lithium connector to retrieve data related to forums, such as leaderboards of kudos authors, lists of visiting users, and so on. To learn more about the Lithium API, visit their website (

https://devdocportal.lithium.com/t5/Community-API-v2-Reference/bd-p/restv2docs

).


 The Lithium connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This is the advanced version of the Lithium connector. There is also a standard version that contains fewer reports and configuration options. For more information, see

Lithium Connector.

You connect to your Lithium account in the

Data Center

. This topic discusses the fields and menus that are specific to the Lithium connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 User community management and activity
  |
|
**Primary Metrics**
 | * Users with the most kudos
* Escalated threads
* Registered users
* Visiting users
* Number of posts with solutions
 |
|
**Primary Company Roles**
 |
 Community roles
  |
|
**Average Implementation Time**
 |
 1-2 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Prerequisites
---------------

To connect to your Lithium account and create a DataSet, you must have the following:

 The username and password for your Lithium account.
* The server URL for your Lithium instance. For example:

https://community.company.com

Connecting to Your Lithium Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Lithium Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Lithium account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username for your Lithium account.
  |
|
 Password
  |
 Enter the password for your Lithium account.
  |
|
 Base URL
  |
 Enter the server URL for your Lithium instance. For example:

https://community.company.com

|

Once you have entered valid Lithium credentials, you can use the same account any time you go to create a new Lithium DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary menu from which you can select a report, along with various other fields and menus that may or may not appear depending on your selected report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Lithium report. The following reports are available:


|  |  |
| --- | --- |
|
 Custom Report URL
  |
 Returns the custom report URL.
  |
|
 General Metrics for a Board
  |
 Return metrics for a specific board: nested boards views, message views, subscription sent and threads escalated.
  |
|
 General Metrics for a Category
  |
 Return metrics for a specific category: nested boards views, message views, subscription sent and threads escalated.
  |
|
 General Metrics for the Entire Community
  |
 Returns metrics for the community: board views, message views, subscription sent and threads escalated.
  |
|
 Leaderboard of Kudos Authors
  |
 Returns a list of the users who have received the most kudos in the community. (Leaderboard must be enabled in the community for this report to run.)
  |
|
 List of all Posts in the Chosen Board(s)
  |
 Returns a list of all posts for the selected boards.
  |
|
 List of Escalated Threads
  |
 Returns a list of escalated threads in the community.
  |
|
 List of Posts
  |
 Returns a list of posts for all or selected boards.
  |
|
 List of Solutions
  |
 Returns a list of accepted solutions for all or selected boards.
  |
|
 List of Registered Users
  |
 Returns a list of registered users in the community.
  |
|
 List of Visiting Users
  |
 Returns a list of users who visited the community during the specified time period.
  |
|
 Number of Kudos
  |
 Returns the number of kudos for the entire community.
  |
|
 Number of Posts
  |
 Returns the number of posts for one or more boards.
  |
|
 Number of Registered Users
  |
 Returns the number of registered users in the community.
  |
|
 Number of Replies from a User
  |
 Returns the number of replies from a user.
  |
|
 Number of Replies in the Community
  |
 Returns the number of replies in the community.
  |
|
 Number of Solutions
  |
 Returns the number of solutions for the entire community.
  |

|
|
 Time Period
  |
 Select the desired time period for the report data. If you select
 **All**
 , all available data is shown.
  |
|
 Days Back (Optional)
  |
 Enter the number of past days of data to be retrieved. For example, if you entered

30

, data would be retrieved for the last 30 days.
  |
|
 All or Specific Boards
  |
 Select whether you want your report to show all boards or one or more specific boards.
  |
|
 Boards
  |
 Select the boards you want to retrieve data for.


 |
|
 Data Retrieved
  |
 Select whether you want your report to return all data or only new data since the last successful run.
  |
|
 Users
  |
 Select the user you want to retrieve data for.
  |
|
 Data Aggregation
  |
 Select how you want the data in the report to be broken down.
  |
|
 Categories
  |
 Select the categories you want to retrieve data for.
  |
|
 Select One
  |
 Select whether you want to pull data from all boards or a specific board.
  |
|
 Report URL
  |
 Enter the URL of the Lithium report you want to pull into Domo.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

