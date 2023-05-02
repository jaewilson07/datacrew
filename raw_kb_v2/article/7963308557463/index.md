

Intro
-------


 GitHub Enterprise is the on-premises version of


 GitHub.com


 . It makes collaborative coding possible and enjoyable for large-scale enterprise software development teams.


 GitHub Enterprise includes the same great set of features as

GitHub.com

but is packaged for running on your organization's local network. All repository data is stored on machines that you control, and access is integrated with your organization's authentication system (LDAP, CAS). Use GitHub Enterprise when you need complete control over repository and project information.

You connect to your

GitHub Enterprise

account in the Data Center. This topic discusses the fields and menus that are specific to the

GitHub Enterprise

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your GitHub Enterprise account and create a DataSet, you must have the following:

 A

GitHub Enterprise

*username**
 .
* A (

properly scoped

)
 **Personal Access Token**
* The
 **hostname**
 to your GitHub Enterprise instance

Connecting to Your

GitHub Enterprise

Account
----------------------------------------------------

This section enumerates the options in the Credentials and Details panes on the GitHub Enterprise Connector page. The components of the other panes on this page,


**Scheduling,**


 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your

GitHub Enterprise

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|


 Send PAT in authorization header as
  |
 Select how you would like to send the PAT in the Authorization header of the API calls.


 Github recommends using the
 **Token**
 -based Authorization header.
  |
|
 Hostname
  |
 Enter the hostname without "

http://"

" or "

https://"

".


 Example: If the URL is
 `https://xx.yy.zz.com`
 , just type
 `xx.yy.zz.com`
 |
|
 Username
  |
 Type in the username for the account you'd like Domo to use to connect to your GitHub Enterprise instance.
  |
|
 Personal Access Token (PAT)
  |
 Type in the personal access token.

When you

create a personal access token

, ensure you give it

adequate scopes (permissions)

for each report you want to run.

|

Once you have entered valid

GitHub Enterprise

credentials, you can use the same account any time you go to create a new

GitHub Enterprise

DataSet. You can manage Connector accounts in the


**Accounts**


 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**


 If you are already logged into

GitHub Enterprise

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of

GitHub Enterprise.

##
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
 Select the

GitHub Enterprise

report you want to run. Make sure you grant your Personal Access Token (PAT) the necessary scopes for the reports you want to run.


 If you want to be able to run every report, you can use this link to
 **create**
 an access token with
 ***all***
 of the necessary
 **scopes**
 :

https://
 **YOUR\_GITHUB\_INSTANCE.com**
 /settings/tokens/new?description=Domo%20GitHub%20Enterprise%20Connector&scopes=user,read:org,gist,repo,admin:org,admin:org_hook,admin:repo_hook,admin:public_key`

The following reports are available:


|
 Report Name
  |
 Report Description
  |
 Necessary PAT Scopes
  |
| --- | --- | --- |
|
 All Notifications
  |

Returns a list of all notifications for the current user, grouped by the repository.

|
 user
  |
|
 All Organizations
  |

Returns a list of all organizations.

|
 read:org
  |
|
 All Organizations (Advanced)
  |

Returns a list of all organizations using site admin dashboard API.

|
 read:org
  |
|
 All Private Feeds
  |

Returns a list of all private feeds.

|
 no scope
  |
|
 All Public Events
  |

Returns a list of public events.

|
 no scope
  |
|
 All Public Gists
  |

Returns a list of all public gists.

|
 gist
  |
|
 All Public Repositories
  |

Returns a list of all public repositories.

|
 repo
  |
|
 All Repo Comments
  |

Returns a list of comments for all repositories.

|
 repo
  |
|
 All Repo Commits
  |

Returns a list of commits for all repositories.

|
 repo
  |
|
 All Repo Issues
  |

Returns a list of issues for all repositories.

|
 repo
  |
|
 All Repo Pull Request
  |

Returns a list of pull requests for all repositories.

|
 repo
  |
|
 All Repo Pull Request Comments
  |

Returns a list of pull requests comments for all repositories.

|
 repo
  |
|
 All Repo Pull Request Reviews
  |

Returns a list of pull requests reviews for all repositories.

|
 repo
  |
|
 All Repositories (Advanced)
  |

Returns a list of all repositories data using site admin dashboard API.

|
 repo
  |
|
 All Users
  |

Returns a list of all users in the order that they signed up on GitHub.

|
 user
  |
|
 All Users (Advanced)
  |
 Returns a list of all users with their state. This report uses site admin dashboard API.
  |
 user
  |
|
 Authenticated User
  |
 Lists public and private information when authenticated.
  |
 user
  |
|
 Authenticated User Emails
  |
 Lists email addresses for a user.
  |
 user
  |
|
 Authenticated User Issues
  |
 Lists all issues across repositories assigned to the authenticated user.
  |
 user
  |
|
 Authenticated User Organizations
  |
 Returns a list of your organizations.
  |
 user
  |
|
 Authenticated User Repositories
  |
 Lists repositories for the specified user.
  |
 user, repo
  |
|
 Authenticated User Starred Gists
  |
 Returns a list of the authenticated user's starred gists.
  |
 user, gist
  |
|
 Company Productivity (All Repository Issues)
  |
 Returns the metrics data for all repository issues.
  |
 repo
  |
|
 Company Productivity (All Repository Pull Requests)
  |
 Returns the metrics data for all repository pull requests.
  |
 repo
  |
|
 Gists Comments
  |
 Returns a list of comments on a gist.
  |
 gist
  |
|
 Organization Details
  |
 Returns details on the organization.
  |
 admin:org
  |
|
 Organization Issues - User
  |
 Lists all issues for a given organization for the authenticated user.
  |
 admin:org
  |
|
 Organization Members List
  |
 Returns a list of your organization memberships.
  |
 admin:org
  |
|
 Organization Teams List
  |
 Lists teams from your organization.
  |
 admin:org
  |
|
 Organization Webhooks List
  |
 Lists all webhooks for your organization.
  |
 admin:org\_hook
  |
|
 Repository Events
  |
 Returns a list of events specific to your repository.
  |
 repo
  |
|
 Repository Notifications
  |
 Returns a list of all notifications for the current user.
  |
 repo
  |
|
 Repository Stargazers
  |
 Returns a list of stargazers for your repository.
  |
 repo
  |
|
 Repository Subscribers
  |
 Returns a list of subscribers to your repository.
  |
 repo
  |
|
 Repository Issues
  |
 Returns a list of issues for a repository.
  |
 repo
  |
|
 Repository Assignees
  |
 Returns a list of assignees for a repository.
  |
 repo
  |
|
 Repository Issue Comments
  |
 Returns a list of comments on an issue in a repository.
  |
 repo
  |
|
 Repository Issue Events
  |
 Returns a list of events for a repository.
  |
 repo
  |
|
 Repository Labels
  |
 Returns a list of all labels for this repository.
  |
 repo
  |
|
 Repository Milestones
  |
 Returns a list of milestones for a repository.
  |
 repo
  |
|
 Repository Pulls
  |
 Returns a list of pull requests for a repository.
  |
 repo
  |
|
 Repository Contributors
  |
 Returns a list of contributors for a repository.
  |
 repo
  |
|
 Repository Teams
  |
 Returns a list of teams for a repository.
  |
 repo
  |
|
 Repository Languages
  |
 Returns a list of languages for the specified repository. The value on the right side of a language is the number of bytes of code written in that language.
  |
 repo
  |
|
 Repository Tags
  |
 Returns a list of tags in your repository.
  |
 repo
  |
|
 Repository Branches
  |
 Returns a list of branches in your repository.
  |
 repo
  |
|
 Repository Collaborators
  |
 Returns a list of collaborators in your repository.
  |
 repo
  |
|
 Repository Comments
  |
 Returns a list of comments in a repository.
  |
 repo
  |
|
 Repository Commits
  |
 Returns a list of commits in a repository.
  |
 repo
  |
|
 Repository Contents
  |
 Returns contents of the repository as described in the README.
  |
 repo
  |
|
 Repository DeployKeys
  |
 Returns a list of deploy keys for this repository.
  |
 repo
  |
|
 Repository Deployments
  |
 Returns a list of deployments for this repository.
  |
 repo
  |
|
 Repository Downloads
  |
 Returns a list of downloads for this repository.
  |
 repo
  |
|
 Repository Forks
  |
 Returns a list of forks for this repository.
  |
 repo
  |
|
 Repository Merges
  |
 Returns a list of merges for this repository.
  |
 repo
  |
|
 Repository Pages
  |
 Returns a list of pages for this repository.
  |
 repo
  |
|
 Repository Releases
  |
 Returns a list of releases for this repository.
  |
 repo
  |
|
 Repository Releases Latest
  |
 Returns a list of the latest releases for this repository.
  |
 repo
  |
|
 Repository Statistics Code Frequency
  |
 Returns a weekly aggregate of the number of additions and deletions pushed to a repository.
  |
 repo
  |
|
 Repository Statistics Contributors
  |
 Returns a list of contributors to a repository, with additions, deletions, and commit counts.
  |
 repo
  |
|
 Repository Statistics Commit Activity
  |
 Returns the last year of commit activity data.
  |
 repo
  |
|
 Repository Statistics Participation
  |
 Returns the weekly commit count for the repository owner and everyone else.
  |
 repo
  |
|
 Repository Webhooks
  |
 Returns a list of webhooks for a repository.
  |
 admin:repo\_hook
  |
|
 Search Code
  |
 Returns places in the code that the given phrase is found.
  |
 no scope
  |
|
 User Followers
  |
 Returns a list of followers of a user.
  |
 user
  |
|
 User Following
  |
 Returns a list of users followed by another user.
  |
 user
  |
|
 User Keys
  |
 Returns a list of keys for a user.
  |
 admin:public\_key
  |
|
 User Organizations
  |
 Returns a list of user organizations.
  |
 user
  |
|
 User Repos
  |
 Returns a list of user repositories.
  |
 user
  |

|


###
 Available Permissions (Scopes):

Scopes are the set of permissions

a Personal Access Token

needs to be granted to allow the connector to create reports.


 Below is the list of scopes that are available:


 Name
  |
 Description
  |
| --- | --- |
|
 Repo
  |
 Grants full access to the public, internal and private repositories including read and write access to code, commit statuses, repository invitations, collaborators, deployment statuses, and repository webhooks.

*Note:**
 In addition to repository-related resources, the

repo

scope also grants access to manage organization-owned resources including projects, invitations, team memberships, and webhooks. This scope also grants the ability to manage projects owned by users.


|  |  |
| --- | --- |
|

repo:status

|
 Grants read/write access to commit statuses in public, private, and internal repositories. This scope is only necessary to grant other users or services access to private repository commit statuses

without*

granting access to the code.
  |
|

repo\_deployment

|
 Grants access to


 deployment statuses


 for public and private repositories. This scope is only necessary to grant other users or services access to deployment statuses,

without*

granting access to the code.
  |
|

public\_repo

|
 Limits access to public repositories. That includes read/write access to code, commit statuses, repository projects, collaborators, and deployment statuses for public repositories and organizations. Also required for starring public repositories.
  |
|

repo:invite

|

Grants accept/decline abilities for invitations to collaborate on a repository. This scope is only necessary to grant other users or services access to invites

without*

granting access to the code.

|

|
|

admin:repo\_hook

|

Grants read, write, ping, and delete access to repository hooks in public, private, or internal repositories. The

repo`

and

public_repo`

scopes grant full access to repositories, including repository hooks. Use the

admin:repo_hook`

scope to limit access to only repository hooks.

  |  |
| --- | --- |
|
 read:repo\_hook
  |
 Grants read and ping access to hooks in public, private, or internal repositories.
  |

|
|
 admin:org
  |

Fully manage the organization and its teams, projects, and memberships.

  |  |
| --- | --- |
|
 read:org
  |
 Read-only access to organization membership, organization projects, and team membership.
  |

|
|
 admin:public\_key

|

Fully manage public keys.

  |  |
| --- | --- |
|
 read:public\_key
  |
 List and view details for public keys.
  |

|
|
 admin:org\_hook

|

Grants read, write, ping, and delete access to organization hooks.
 **Note:**
 OAuth tokens will only be able to perform these actions on organization hooks that were created by the OAuth App. Personal access tokens will only be able to perform these actions on organization hooks created by a user.

|
|
 gist

|

Grants write access to gists.

|
|
 notifications
  |

Grants:

read access to a user's notifications*
 mark as read access to threads

watch and unwatch access to a repository, and*
 read, write, and delete access to thread subscriptions.

|
|
 user

|

Grants read/write access to profile info only. Note that this scope includes user:email and user:follow.

  |  |
| --- | --- |
|
 read:user
  |
 Grants access to read a user's profile data.
  |
|
 user:email
  |
 Grants read access to a user's email addresses.
  |

|


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 Does this connector require whitelisting or allowlisting?

You need to add the connector to the network's allowlist to power up.


 You also
 **must allow Domo**
 's connector to talk to your GitHub Enterprise instance by working with your IT team to

add Domo's IPs to your network's allowlist


####
 What version of the

GitHub Enterprise

API does this Connector use?

This Connector uses version 3 of the

GitHub Enterprise

API (

https://{


 yourdomain.com

}/api/v3/).

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 All Notifications
  |
 /notifications
  |
|
 All Organizations
  |
 /organizations
  |
|
 All Private Feeds
  |
 /feeds
  |
|
 All Public Events
  |
 /events
  |
|
 All Public Gists
  |
 /gists/public
  |
|
 All Public Repositories
  |
 /repositories
  |
|
 All Users
  |
 /users
  |
|
 Authenticated User
  |
 /user
  |
|
 Authenticated User Emails
  |
 /user/emails
  |
|
 Authenticated User Issues
  |
 /user/issues
  |
|
 Authenticated User Organizations
  |
 /user/orgs
  |
|
 Authenticated User Repositories
  |
 /user/repos
  |
|
 Authenticated User Starred Gists
  |
 /gists/starred
  |
|
 Gists Comments
  |
 /gists/{gist\_id}/comments
  |
|
 Organization Details
  |
 /orgs/{org}
  |
|
 Organization Issues - User
  |
 /orgs/{org}/issues
  |
|
 Organization Members List
  |
 /orgs/{org}/members
  |
|
 Organization Teams List
  |
 /orgs/{org}/teams
  |
|
 Organization Webhooks List
  |
 /orgs/{org}/hooks
  |
|
 Repository Events
  |
 /repos/{ownername}/{repositoryName}/events
  |
|
 Repository Notifications
  |
 /repos/{ownername}/{repositoryName}/notifications
  |
|
 Repository Stargazers
  |
 /repos/{ownername}/{repositoryName}/stargazers
  |
|
 Repository Subscribers
  |
 /repos/{ownername}/{repositoryName}/subscribers
  |
|
 Repository Issues
  |
 /repos/{ownername}/{repositoryName}/issues
  |
|
 Repository Assignees
  |
 /repos/{ownername}/{repositoryName}/assignees
  |
|
 Repository Issues Comments
  |
 /repos/{ownername}/{repositoryName}/issues/{id}/comments
  |
|
 Repositories Issue Events
  |
 /repos/{ownername}/{repositoryName}/issues/events
  |
|
 Repository Labels
  |
 /repos/{ownername}/{repositoryName}/labels
  |
|
 Repository Milestones
  |
 /repos/{ownername}/{repositoryName}/milestones
  |
|
 Repository Pulls
  |
 /repos/{ownername}/{repositoryName}/pulls
  |
|
 Repository Contributors
  |
 /repos/{ownername}/{repositoryName}/contributors
  |
|
 Repository Teams
  |
 /repos/{ownername}/{repositoryName}/teams
  |
|
 Repository Languages
  |
 /repos/{ownername}/{repositoryName}/languages
  |
|
 Repository Tags
  |
 /repos/{ownername}/{repositoryName}/tags
  |
|
 Repository Branches
  |
 /repos/{ownername}/{repositoryName}/branches
  |
|
 Repository Collaborators
  |
 /repos/{ownername}/{repositoryName}/collaborators
  |
|
 Repository Comments
  |
 /repos/{ownername}/{repositoryName}/comments
  |
|
 Repository Commits
  |
 /repos/{ownername}/{repositoryName}/commits
  |
|
 Repository Contents
  |
 /repos/{ownername}/{repositoryName}/readme
  |
|
 Repository DeployKeys
  |
 /repos/{ownername}/{repositoryName}/keys
  |
|
 Repository Deployments
  |
 /repos/{ownername}/{repositoryName}/deployments
  |
|
 Repository Downloads
  |
 /repos/{ownername}/{repositoryName}/downloads
  |
|
 Repository Forks
  |
 /repos/{ownername}/{repositoryName}/forks
  |
|
 Repository Merges
  |
 /repos/{ownername}/{repositoryName}/merges
  |
|
 Repository Pages
  |
 /repos/{ownername}/{repositoryName}/pages
  |
|
 Repository Releases
  |
 /repos/{ownername}/{repositoryName}/releases
  |
|
 Repository Releases LatestRepository Statistics Code Frequency
  |
 /repos/{ownername}/{repositoryName}/stats/code\_frequency
  |
|
 Repository Statistics Contributors
  |
 /repos/{ownername}/{repositoryName}/stats/contributors
  |
|
 Repository Statistics Commit Activity
  |
 /repos/{ownername}/{repositoryName}/stats/commit\_activity
  |
|
 Repository Statistics Participation
  |
 /repos/{ownername}/{repositoryName}/stats/participation
  |
|
 Repository Webhooks
  |
 /repos/{ownername}/{repositoryName}/hooks
  |
|
 User Followers
  |
 /users/{usernamenew}/followers
  |
|
 User Following
  |
 /users/{usernamenew}/following
  |
|
 User Keys
  |
 /users/{usernamenew}/keys
  |
|
 User Organizations
  |
 /users/{usernamenew}/orgs
  |
|
 User Repos
  |
 /users/{usernamenew}/repos
  |


####
 What kind of credentials do I need to power up this Connector?

You need the hostname, username, and personal access token of your GitHub Enterprise account.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


