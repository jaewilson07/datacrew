

Intro
-------

Trello is a web-based project and task management application with both a free-to-use and premium offering.  To learn more about the Trello API, visit their page (

https://developers.trello.com

).


 The Trello connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Project management
* Any use case requiring lists of items that move along a task pipeline
 |
| **Primary Metrics**  |
 Board Usage Metrics
 * Number of members
* Number of cards per board
* Number of lists
* Cards per list
* Completed lists
* Votes per card


 User Metrics
 * Completed items/cards
* Card completion rate
* Total number of cards
* Number of posts
* Current number of cards due
* Members per organization
* Organizational member growth rate
 |
|
**Primary Company Roles**
 | * Project managers
* Consultants
 |
|
**Average Implementation Time**
 |
 A single DataSet can run in a few minutes.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

You connect to your Trello account in the

Data Center

. This topic discusses the fields and menus that are specific to the Trello connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

This connector should run on "Replace" at any reasonable schedule.


 Prerequisites
---------------

To connect to your Trello account and create a DataSet, you must have the following:

 The email address or username you use to sign in to Trello
* Your Trello password

Connecting to Your Trello Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Trello Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Trello connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select

*Add Accoun**
 t

if you have existing Trello accounts in Domo) to open the Trello OAuth screen where you can enter your Trello username/email address and password. Once you have entered valid Trello credentials, you can use the same account any time you go to create a new Trello DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains two primary menus,
 **Report**
 and
 **Filter**
 , along with other menus which may or may not appear depending on the report and filter you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select a Trello report. The following reports are available:


|  |  |
| --- | --- |
|
 Boards
  |
 Returns information about all boards in your organization, all of your boards, or a specific board.
  |
|
 Cards
  |
 Returns information about all cards on a specific board, all of your cards, or a specific card.
  |
|
 Lists
  |
 Returns information about all lists in your organization, all lists on a specific board, or a specific list.
  |
|
 Members
  |
 Returns information about all members in an organization, all members on a specific board, or all members on a specific card.
  |
|
 Organizations
  |
 Returns information about all organizations or a specific organization.
  |


 |
|
 Filter
  |
 Select a filter to apply to this report.
  |
|
 Organizations
  |
 Select the organization you want to retrieve data for.
  |
|
 Boards
  |
 Select the board you want to retrieve data for.
  |
|
 Cards
  |
 Select the card you want to retrieve data for.
  |
|
 Lists
  |
 Select the list you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Ensure your account credentials are valid and that the report configuration is valid.

