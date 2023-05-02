

Intro
-------

GitHub is a web-based version control repository and Internet hosting service. Use Domo's GitHub connector to retrieve data about GitHub followers, repositories, organizations, users, gists, and much, much more. To learn more about the GitHub API, visit their page (

https://developer.github.com/v3/

).


 You connect to your GitHub account in the Data Center. This topic discusses the fields and menus that are specific to the GitHub connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your GitHub account and create a DataSet, you must have your GitHub credentials (i.e. your username/email address and password).


 Connecting to Your GitHub Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the GitHub Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane

The Domo GitHub connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing GitHub accounts in Domo) to open the GitHub OAuth screen where you can enter your GitHub credentials. Once you have entered valid third-party tool credentials, you can use the same account any time you go to create a new GitHub DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into GitHub when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of GitHub.


###

Details P


 ane

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
 Select the GitHub report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Public Events
  |
 Returns all public events
  |
|
 All Public Gists
  |
 Returns the list of all Public Gists
  |
|
 All Public Repositories
  |
 Returns all public repositories
  |
|
 All User Issues
  |
 Returns all user issues
  |
|
 All Users
  |
 Returns the list of all users
  |
|
 Assignees - Specify Owner Name and Repository Name
  |
 Returns Assignees by specifying owner name and repository name
  |
|
 Logged In User Followers
  |
 Returns logged in user followers
  |
|
 Logged In User Following
  |
 Returns the data of logged in following users
  |
|
 Logged In User Gist
  |
 Returns logged in user gist
  |
|
 Logged In User Organizations
  |
 Returns logged in user organizations
  |
|
 Logged In User Repositories
  |
 Returns logged in user repositories
  |
|
 Logged In User Starred Repositories
  |
 Returns logged in user starred repositories
  |
|
 Logged In User Team Members
  |
 Returns logged in user team members
  |
|
 Logged In User Team Repositories
  |
 Returns logged in user team repositories
  |
|
 Logged In User Watched Repositories
  |
 Returns logged in user watched repositories
  |
|
 Organization Issues - Specify Organization name
  |
 Returns the data of organization issues by specifying organization name
  |
|
 Organization Members - Specify Organization name
  |
 Returns organization members by specifying organization name
  |
|
 Organization Public Events - Specify Organization name
  |
 Returns organization public events by specifying organization name
  |
|
 Organization Public Members - Specify Organization name
  |
 Returns organization public members by specifying organization name
  |
|
 Organization Repositories - Specify Organization name
  |
 Returns organization repositories by specifying organization name
  |
|
 Organization Teams - Specify Organization name
  |
 Returns organization teams by specifying organization name
  |
|
 Public Events for a network of Repositories - Specify Username and Repository Name
  |
 Returns public events for a network of repositories by specifying username and repository name
  |
|
 Repositories Issue Events - Specify Owner Name and Repository Name
  |
 Returns repositories issue events by specifying owner name and repository name
  |
|
 Repository Branches - Specify Owner Name and Repository Name
  |
 Returns repository branches by specifying owner name and repository name
  |
|
 Repository Code Frequency - Specify Owner Name and Repository Name
  |
 Returns repository code frequency by specifying owner name and repository name
  |
|
 Repository Collaborators - Specify Owner Name and Repository Name
  |
 Returns the repository collaborators by specifying owner name and repository name
  |
|
 Repository Comments - Specify Owner Name and Repository Name
  |
 Returns repository comments by specifying owner name and repository name
  |
|
 Repository Commit Activity - Specify Owner Name and Repository Name
  |
 Returns the data for repository commit activity by specifying owner name and repository name
  |
|
 Repository Commits - Specify Owner Name and Repository Name
  |
 Returns the repository commits by specifying owner name and repository name
  |
|
 Repository Contributor Activity - Specify Owner Name and Repository Name
  |
 Returns contributor activity by specifying owner name and repository name
  |
|
 Repository Contributors - Specify Owner Name and Repository Name
  |
 Returns the repository contributors by specifying owner name and repository name
  |
|
 Repository Deployments - Specify Owner Name and Repository Name
  |
 Returns the repository deployments by specify the owner name and repository name
  |
|
 Repository Downloads - Specify Owner Name and Repository Name
  |
 Returns the repository downloads by specifying owner name and repository name
  |
|
 Repository Events - Specify Owner Name and Repository Name
  |
 Returns the repository events by specifying owner name and repository name
  |
|
 Repository Forks - Specify Owner Name and Repository Name
  |
 Returns repository forks by specifying owner name and repository name
  |
|
 Repository Hooks - Specify Owner Name and Repository Name
  |
 Returns repository hooks by specifying owner name and repository name
  |
|
 Repository Issues - Specify Owner Name and Repository Name
  |
 Returns the repository issues by specifying the owner name and repository name
  |
|
 Repository Issues Comments - Specify Owner Name and Repository Name
  |
 Returns the repository issues comments by specifying the owner name and repository name
  |
|
 Repository Labels - Specify Owner Name and Repository Name
  |
 Returns the repository labels by specifying the owner name and repository name
  |
|
 Repository Languages - Specify Owner Name and Repository Name
  |
 Returns the repository languages by specifying owner name and repository name
  |
|
 Repository Milestones - Specify Owner Name and Repository Name
  |
 Returns the repository milestones by specifying the owner name and repository name
  |
|
 Repository Notifications - Specify Owner Name and Repository Name
  |
 Returns the repository notifications by specifying owner name and repository name
  |
|
 Repository Participation - Specify Owner Name and Repository Name
  |
 Returns the repository participation by specifying the owner name and repository name
  |
|
 Repository Pulls - Specify Owner Name and Repository Name
  |
 Returns the repository pulls by specifying the owner name and repository name
  |
|
 Repository Readme - Specify Owner Name and Repository Name
  |
 Returns the repository readme by specifying the owner name and repository name
  |
|
 Repository Releases - Specify Owner Name and Repository Name
  |
 Returns the repository releases by specifying the owner name and repository name
  |
|
 Repository Subscribers - Specify Owner Name and Repository Name
  |
 Returns the repository subscribers by specifying owner name and repository name
  |
|
 Repository Tags - Specify Owner Name and Repository Name
  |
 Returns the repository tags by specifying the owner name and repository name
  |
|
 Search Code - Specify Search Field, User and Repository Name
  |
 Returns the search code by specifying the search field, user and repository name
  |
|
 Search Issues - Specify State of issue and Search Field
  |
 Returns the issues by specifying the state of issue and search field
  |
|
 Search Repositories - Specify Search Field
  |
 Returns the repositories by search field
  |
|
 Search Users - Specify Search Field
  |
 Returns the users by search field
  |
|
 Stargazers - Specify Owner Name and Repository Name
  |
 Returns the stargazers by specifying the owner name and repository name
  |
|
 Templates
  |
 Returns the templates
  |
|
 User
  |
 Returns the user
  |
|
 User Emails
  |
 Returns the user emails
  |
|
 User Followers - Specify Username
  |
 Returns the user followers
  |
|
 User Following - Specify Username
  |
 Returns the user following
  |
|
 User Gist - Specify Username
  |
 Returns the user gist
  |
|
 User Gist Comments
  |
 Returns the user gist comments
  |
|
 User Issues
  |
 Returns the user issues
  |
|
 User Keys - Specify Username
  |
 Returns the user keys
  |
|
 User Limit Rate
  |
 Returns the user limit rate
  |
|
 User Notifications
  |
 Returns the user notifications
  |
|
 User Organization Events - Specify Organization Name
  |
 Returns the user organization events
  |
|
 User Organizations - Specify Username
  |
 Returns the user organizations
  |
|
 User Performed Events - Specify Username
  |
 Returns the user performed events
  |
|
 User Public Repositories - Specify Username
  |
 Returns the user public repositories
  |
|
 User Recieved Events - Specify Username
  |
 Returns the user received events
  |
|
 User Starred gists
  |
 Returns the user starred gists
  |
|
 User Starred Repositories - Specify Username
  |
 Returns the user starred repositories
  |
|
 User Teams
  |
 Returns the user teams
  |
|
 User Watched Repositories - Specify Username
  |
 Returns the user watched repositories
  |

|
|
 User Name/Owner Name (Optional)
  |
 Enter the user name or owner name you want to pull data for.
  |
|
 User Name (Optional)
  |
 Enter the user name you want to pull data for.
  |
|
 Owner Name (Optional)
  |
 Enter the owner name you want to pull data for.
  |
|
 Repository Name (Optional)
  |
 Enter the name of the repository you want to pull data for.
  |
|
 Organization Name (Optional)
  |
 Enter the name of the organization you want to pull data for.
  |
|
 Sort (Optional)
  |
 Enter a sort value for your report. This option is available for the below reports:


|
 Report Name
  |
 Applicable Values
  |
| --- | --- |
|
 Search Repositories
  |
 stars/forks/updated
  |
|
 Search Code
  |
 indexed
  |
|
 Search Issues
  |
 comments/created/updated
  |
|
 Search Users
  |
 followers/repositories/joined
  |

|
|
 Order (Optional)
  |
 Enter the sort order if you entered a parameter in the
 **Sort**
 field. Use

asc

for ascending and

desc

for descending.
  |
|
 State of Issue to be Searched (Optional)
  |
 Enter a state to filter by, either

open

,

closed

, or

all

(default is

open

).
  |
|
 Past Days (Optional)
  |
 Enter the number of past days for which you want to retrieve data. The value can be entered as

X

,

XDay

, or

XDays

, where

X

is a positive integer. For example:

30Days

.
  |
|
 Issue Filter (Optional)
  |
 Enter a value to filter out issues in the authenticated user's context. Possible values are

assigned

,

created

,

mention

,

subscribed

, and

all

.
  |
|
 Type (Optional)
  |
 Enter the type of item to search for. This option is available for the below reports:


|
 Report Name
  |
 Applicable Values
  |
| --- | --- |
|
 Search Issues
  |
 issue / pr
  |
|
 Search Users
  |
 user / org
  |

|
|
 Search Field
  |
 Enter the keyword to search for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 How do I know my Github credentials are secure?

The login process uses OAuth, so your Github credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account anytime.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

You can make up to 5000 requests per hour.

