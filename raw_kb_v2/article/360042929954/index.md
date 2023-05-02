

Intro
-------

Reddit is an entertainment, social networking service, and news website where registered community members can submit content. Use Domo's Reddit connector to retrieve lists of Reddit users, comments, likes and dislikes, etc. To learn more about the Reddit API, visit their page (

https://www.reddit.com/dev/api/

).


 You connect to your Reddit account in the Data Center. This topic discusses the fields and menus that are specific to the Reddit connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Reddit account and create a DataSet, you must have your Reddit username and password.


 Connecting to Your Reddit Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Reddit Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Reddit connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Reddit accounts in Domo) to open the Reddit OAuth screen where you can enter your Reddit credentials. Once you have entered valid Reddit credentials, you can use the same account any time you go to create a new Reddit DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Reddit when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Reddit.


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
 Select the Reddit report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Search
  |
 Returns data based on various search filter settings, such as user, type, timeframe, custom query, etc.
  |
|
 User Comments
  |
 Returns comments from a specified user.
  |
|
 User Details
  |
 Returns details about a specified user.
  |
|
 User Disliked
  |
 Returns items disliked by a specified user.
  |
|
 User Hidden
  |
 Returns items hidden by a specified user.
  |
|
 User Liked
  |
 Returns items liked by a specified user.
  |
|
 User Overview
  |
 Returns an overview for the specified user.
  |
|
 User Saved
  |
 Returns items saved by the specified user.
  |
|
 User Submitted
  |
 Returns items submitted by the specified user.
  |

|
|
 Username (Optional)
  |
 Enter the username of the user you want to return data for. If you leave this blank, the username of the authenticated user is used.
  |
|
 Filter by Time
  |
 Select whether you want to pull data for the last day, hour, month, etc. If you select
 **All**
 , all available data is returned.
  |
|
 Query (Optional)
  |
 Enter a search query to pull data. This string should not be longer than 512 characters.
  |
|
 Filter by Types
  |
 Select a type filter for your report data.
  |
|
 Sort By
  |
 Select how you would like the data in the report to be sorted.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

