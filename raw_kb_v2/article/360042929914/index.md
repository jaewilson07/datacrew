

*Important:**
 As of March 2018, this connector is disabled while we negotiate our contract with Pinterest. Any DataSets built through this connector are no longer editable, and any cards powered by Pinterest DataSets will not update. If you want to import Pinterest data into Domo, you will need to use an alternate method such as

DataSet via Email connector

.


 Intro
-------


 Pinterest is a content sharing service that allows members to "pin" images, videos and other objects to their pinboard.

Use Domo's Pinterest connector to retrieve data about followers, pins, likes, and many other Pinterest entities. To learn more about the Pinterest API, visit their page (

https://developers.pinterest.com/

).

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for pulling Pinterest data such as pins, likes, and so on.
  |
|
**Primary Metrics**
 | * Pinterest follower counts
* Engagement as measured by likes
* Number of pins
 |
|
**Primary Company Roles**
 | * Organic social media manager
* CMO
 |
|
**Average Implementation Time**
 |
 10 minutes or less
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

You connect to your Pinterest account in the Data Center. This topic discusses the fields and menus that are specific to the Pinterest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Pinterest account and create a DataSet, you must have credentials for the account (the email address you use to log into Pinterest and your Pinterest password) OR Facebook or Google credentials.


 Connecting to Your Pinterest Account
--------------------------------------

This section enumerates the options in the

*Credentials**

and
 **Details**
 panes in the Pinterest Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Pinterest connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Pinterest accounts in Domo) to open the Pinterest OAuth screen where you can enter the email address you use to log into Pinterest along with your Pinterest password. Alternatively, you can choose to enter Facebook or Google credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Pinterest DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Pinterest when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Pinterest.


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
 Select the Pinterest report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Returns the first and last name, ID, and URL of the authenticated user.
  |
|
 Boards
  |
 Returns a list of the authenticated user's public boards, including the URL, ID, and name.
  |
|
 Board Pins
  |
 Returns a list of Pins on the board with their IDs, URLs, links, and descriptions.
  |
|
 Followers
  |
 Returns the users who follow the authenticated user. The default response returns the first and last name, ID, and URL of the users.
  |
|
 Following Boards
  |
 Returns the boards that the authenticated user follows. The default response returns the ID, name and URL of the board.
  |
|
 Following Interests
  |
 Returns the topics that the authenticated user follows. The default response returns the ID and name of the topic.
  |
|
 Following Users
  |
 Returns the users that the authenticated user follows. The default response returns the first and last name, ID and URL of the users.
  |
|
 Likes
  |
 Returns the ID, link, URL and description of the Pins the authenticated user has liked.
  |
|
 Pins
  |
 Returns the ID, link, URL and descriptions of the authenticated user's Pins.
  |
|
 Search Boards
  |
 Searches the authenticated user's board names (but not Pins on boards). An empty response indicates that nothing was found that matched your search terms. The default response returns the ID, name and URL of boards matching your query.
  |
|
 Search Pins
  |
 Searches the authenticated user's Pin descriptions. An empty response indicates that nothing was found that matched your search terms. The default response returns the ID, link, URL and description of Pins matching your query.
  |

|
|
 Board Pins
  |
 Enter the ID of the board you want to retrieve pins for.
  |
|
 Search Query
  |
 Enter a term to search for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------

Be aware that Follower results are often truncated (shortened). For example, you might have 9,700 followers but your DataSet would show this as "9.7." It takes logic to analyze and adjust to the correct number.

