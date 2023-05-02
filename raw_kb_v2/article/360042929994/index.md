

Intro
-------

Stack Exchange is a network of question and answer websites on diverse topics in many different fields, each site covering a specific topic, where questions, answers, and users are subject to a reputation award process. Use Domo's Stack Exchange connector to retrieve lists of questions and answers; user reputation information; earned badges; and so on. To learn more about the Stack Exchange API, visit their page (

http://api.stackexchange.com/docs

).


 You connect to your Stack Exchange account in the Data Center. This topic discusses the fields and menus that are specific to the Stack Exchange connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Stack Exchange account and create a DataSet, you must have credentials from one of the following social media networks:

 Stack Exchange
* Google
* Facebook
* Yahoo

Connecting to Your Stack Exchange Account
-------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Stack Exchange Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Stack Exchange connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Stack Exchange accounts in Domo) to open the Stack Exchange OAuth screen where you can enter credentials from Stack Exchange, Google, Facebook, or Yahoo. Once you have entered valid credentials and connected to Stack Exchange, you can use the same account any time you go to create a new Stack Exchange DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Stack Exchange, Google, Facebook, or Yahoo when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the social media website.


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
 Select the Stack Exchange report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Answers
  |
 Returns a list of answers posted by the authenticated user.
  |
|
 Badges
  |
 Returns a list of badges earned by the authenticated user.
  |
|
 Comments
  |
 Returns a list of comments posted by the authenticated user.
  |
|
 Favorites
  |
 Returns questions that have been favorited by the authenticated user.
  |
|
 Mentioned
  |
 Returns a list of the authenticated user's mentions.
  |
|
 Posts
  |
 Returns all posts (both questions and answers) by the authenticated user.
  |
|
 Privileges
  |
 Returns a list of the authenticated user's privileges.
  |
|
 Questions
  |
 Returns a list of questions asked by the authenticated user.
  |
|
 Questions Featured
  |
 Returns a list of questions with active bounties.
  |
|
 Questions Unaccepted
  |
 Returns a list of questions asked by the authenticated user which have not been adequately answered.
  |
|
 Questions Unanswered
  |
 Returns a list of questions asked by the authenticated user with no answers.
  |
|
 Reputation
  |
 Returns a subset of reputation changes experienced by the authenticated user.
  |
|
 Reputation History
  |
 Returns a history of the authenticated user's reputation, excluding private events.
  |
|
 Tags
  |
 Returns tags the authenticated user has been active in.
  |
|
 Timeline
  |
 Returns a subset of actions taken by the authenticated user.
  |
|
 Write Permissions
  |
 Returns the authenticated user's write access via the API.
  |

|
|
 Site
  |
 Enter the site you want to retrieve information for. For example:


 stackoverflow.com


 ,


 superuser.com


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

