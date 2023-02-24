---
    title: Bitbucket Connector
    url: https://domo-support.domo.com/s/article/360043434893
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360043434893](https://domo-support.domo.com/s/article/360043434893)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003422
    views: 1,102
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


Atlassian Bitbucket is a web-based hosting service used for source code and development projects that use either Mercurial or Git revision control systems.  To learn more about the Bitbucket API, visit their page ([https://confluence.atlassian.com/bit...222724129.html](https://confluence.atlassian.com/bitbucket/use-the-bitbucket-cloud-rest-apis-222724129.html "https://confluence.atlassian.com/bitbucket/use-the-bitbucket-cloud-rest-apis-222724129.html")).


You connect to your Bitbucket account in the Data Center. This topic discusses the fields and menus that are specific to the Bitbucket connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274).


Prerequisites
-------------


To connect to your Bitbucket account and create a DataSet, you must have either Bitbucket or Google credentials.


Connecting to Your Bitbucket Account
------------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Bitbucket Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Bitbucket connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Bitbucket accounts in Domo) to open the Bitbucket OAuth screen where you can choose to enter either Bitbucket or Google credentials. Once you have entered valid credentials, you can use the same account any time you go to create a new Bitbucket DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 

**Note:** If you are already logged into Bitbucket when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of Bitbucket.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Bitbucket report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Get Directory Contents | Returns the list of all the directory contents on the specified commit hash. |
| List Users | Returns a list of all users. |
| List Users for Account | Returns details of users for the provided account name. |
| List Followers for Username | Returns a list of followers for the specified account name. |
| List Followings for Username | Returns a list of followings for the specified account name. |
| List Team Details | Returns a list of team details for the specified team. |
| List Team Members | Returns a list of team members for the specified team. |
| List Team Followers | Returns a list of team followers for the specified team. |
| List Team Following | Returns a list of teams following the specified team. |
| List Team Repositories | Returns a list of team repositories for the specified team. |
| List Pullrequest Activity | Returns a list of Pullrequest activities for the specified owner and repository. |
| List Pullrequest | Returns a list of Pullrequests for the specified owner and repository. |
| List Branch Restriction | Returns a list of branch restriction for the specified account name and repository. |
| List Repository Privileges | Returns a list of repository privileges for the specified account name and repository. |
| List All Public Repositories | Returns a list of all public repositories. |
| List All Repositories for Owner | Returns a list of all Repositories for the specified owner. |
| List Forks on a Repository for Owner | Returns a list of repository forks for the specified owner and repository. |
| List Watchers on a Repository for Owner | Returns a list of watchers on a repository for the specified owner and repository. |
| List Commits on a Repository for Owner | Returns a list of commits on a repository for the specified owner and repository. |
| List Events for Repository | Returns a list of events for the specified account name and repository. |
| List Issue Component for Repository | Returns a list of issue components for the specified account name and repository. |
| List Issue Versions for Repository | Returns a list of issue versions for the specified account and repository. |
| List Issue Milestone for Repository | Returns a list of issue milestones for the specified account and repository. |
| List Group Privileges on a Repository | Returns a list of group privileges for the specified account, repository, owner, and group. |
| List Account Emails | Returns a list of account emails for the specified account. |
| List Account Events | Returns a list of account events for the specified account. |

 |
| Account Name | Enter the name of the account you want to retrieve data for. |
| Team Name | Enter the name of the team you want to retrieve data for. |
| Owner Name | Enter the name of the repository owner you want to retrieve data for. |
| Group Name | Enter the name of the group you want to retrieve data for. |
| Repository Name | Enter the name of the repository you want to retrieve data for. |
| Report State Date | Select whether to pull data for a specific date or a relative number of days back from the date the report is run. |
| Select Specific Date | Select the date for the report. |
| Days Back | Enter the number of days back you want to pull data for every time the report is run. For example, if you entered 7, the report would pull data for the last 7 days every time it ran. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274).

