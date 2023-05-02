

Intro
-------

Twitch is a live streaming video platform that focuses on video gaming, including playthroughs of video games, broadcasts of eSports competitions, creative content, and music broadcasts. To learn more about the Twitch API, visit their page (

https://dev.Twitch/

).


 You connect to your Twitch account in the Data Center. This topic discusses the fields and menus that are specific to the Twitch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Twitch account and create a DataSet, you must have the username and password for your Twitch account.


 Connecting to Your Twitch Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitch Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Twitch connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Twitch accounts in Domo) to open the Twitch OAuth screen where you can enter your Twitch username and password. Once you have entered valid Twitch credentials, you can use the same account any time you go to create a new Twitch DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Twitch when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Twitch.


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
 Select the Twitch report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Active Teams
  |
 Returns a list of active teams.
  |
|
 All Streams
  |
 Returns a list of all live streams.
  |
|
 Blocks
  |
 Returns a block list for a specified user.
  |
|
 Channel Follows
  |
 Returns a list of users who follow a specified channel.
  |
|
 Channel Streams
  |
 Returns streams for a specified channel.
  |
|
 Channel Subscribers
  |
 Returns a list of subscribers for a specified channel.
  |
|
 Channels Followed by User
  |
 Returns a list of channels followed by a specified user.
  |
|
 Chat Emoticons
  |
 Returns a list of chat emoticons.
  |
|
 Check Subscription for User
  |
 Returns subscription details for a specified user and channel.
  |
|
 Current Streams Summary
  |
 Returns a summary of live streams.
  |
|
 Editors
  |
 Returns a list of editors for a specified channel.
  |
|
 Featured Streams
  |
 Returns a list of featured live streams.
  |
|
 Followed Streams
  |
 Returns a list of live streams you are following.
  |
|
 Games
  |
 Returns a list of the most popular games.
  |
|
 Get Specific Channel
  |
 Returns details for a specified channel.
  |
|
 Ingest
  |
 Returns a list of Twitch ingest servers.
  |
|
 Relationship Between User and Channel
  |
 Returns relationship details for a specified user and channel.
  |
|
 Search Games
  |
 Searches for games based on a specified search query. A list of games whose names match or partially match the query is returned.
  |
|
 Search Streams
  |
 Searches for streams based on a specified search query. A list of streams is returned whose names match or partially match the query in the game name or description.
  |
|
 Top Videos
  |
 Returns a list of top videos based on view count for a specified time period.
  |

|
|
 Username
  |
 Enter the username of the user you want to retrieve information for.
  |
|
 Channel Name
  |
 Enter the name of the video channel you want to retrieve information for.
  |
|
 Search Query
  |
 Enter the query you want to return results for.
  |
|
 Period
  |
 Select the timeframe for the report.
  |
|
 User's Channel
  |
 Returns a list of all of your channels.
  |
|
 Videos
  |
 Returns a list of VODs (Videos on Demand) for a specified channel.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

