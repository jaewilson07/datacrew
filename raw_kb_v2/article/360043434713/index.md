

Intro
-------

VoiceStorm is  a product that manages and measures employees' efforts to promote a company on social networks. Use Domo's VoiceStorm connector to retrieve lists of liked comments, leaderboards, posts, users, and more. To learn more about the VoiceStorm API, visit their page (

https://dev.voicestorm.com/

).


 You connect to your VoiceStorm account in the Data Center. This topic discusses the fields and menus that are specific to the VoiceStorm connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your VoiceStorm account and create a DataSet, you must have the following:

 A VoiceStorm API token
* A VoiceStorm token secret
* Your VoiceStorm company domain

To obtain an API token and token secret, ask your VoiceStorm customer service account manager for API keys (which are necessary for you to access the REST API platform). The API keys include the API token and token secret.


 You can find your VoiceStorm company domain by looking at the portion of your VoiceStorm URL immediately following

https://

. For example, if the URL was


 https://mycompany.voicestorm.com/v1


 , the domain would be

mycompany

.


 Connecting to Your VoiceStorm Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the VoiceStorm Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your VoiceStorm account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Token
  |
 Enter your VoiceStorm access token.
  |
|
 Token Secret
  |
 Enter your VoiceStorm token secret.
  |
|
 Domain
  |
 Enter your VoiceStorm company domain.
  |

For information about obtaining these credentials, see "Prerequisites," above.

Once you have entered valid VoiceStorm credentials and created an account, you can use the same account any time you go to create a new VoiceStorm DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


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
 Select the VoiceStorm report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Comment Like List
  |
 Retrieves a list of users who have liked the selected comment.
  |
|
 Discussion
  |
 Retrieves discussion information for a selected post, such as comments, likes on comments, and likes on posts.
  |
|
 LeaderBoard
  |
 Retrieves a list of leaderboards defined in the system.
  |
|
 LeaderBoard Ranking
  |
 Retrieves the rankings for all leaderboards in the system.
  |
|
 Posts
  |
 Retrieves the most recent posts by date (within two weeks) regardless of approval state.
  |
|
 Posts by Tag
  |
 Retrieves a list of posts containing a specified tag.
  |
|
 Post Tags
  |
 Retrieves the post tags defined in the system.
  |
|
 Users
  |
 Retrieves user information for specified email IDs.
  |
|
 User Activities
  |
 Retrieves user information for the specified email ID.
  |
|
 User Tags
  |
 Retrieves the user tags defined in the system.
  |

|
|
 Post
  |
 Select the post you want to retrieve information for.
  |
|
 Comment
  |
 Select the comment you want to retrieve information for.
  |
|
 Leaderboard
  |
 Select the leaderboard you want to see rankings for.
  |
|
 Tag
  |
 Enter the tag you want to retrieve information for.
  |
|
 Email
  |
 Enter the email ID of the user you want to retrieve information for.
  |
|
 Email(s)
  |
 Enter the email IDs of the users you want to retrieve information for, separated by commas.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

