---
    title: Slack Connector
    url: https://domo-support.domo.com/s/article/360057020774
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360057020774](https://domo-support.domo.com/s/article/360057020774)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003289
    views: 2,300
    created_date: 2022-10-24 21:12:00
    last updated: 2022-10-24 22:39:00
    ---



Intro
-----


 




 

**Note:** The Slack Connector is currently still in development and is not yet available for use.



Slack is a proprietary business communication platform. Slack offers many IRC-style features, including persistent chat rooms (channels) organized by topic, private groups, and direct messaging. Its workspaces allow you to organize communications by channels for group discussions and allows for private messages to share information, files, and more all in one place. Slack is the collaboration hub that brings the right people, information, and tools together to get work done. Use Domo’s Slack Connector to fetch the data about your remote teams’ interactions to increase productivity, irrespective of the physical locations. To learn more about the Slack API, visit <https://api.slack.com/apis>.


You connect to your Slack account in the Data Center. This topic discusses the fields and menus that are specific to the Slack connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Slack account and create a DataSet, you must have the following:


* Your Workspace's Slack URL
* Your Email address and password for your Slack Workspace URL


Connecting to Your Slack Account
--------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Slack Connector page. The components of the other panes in this page, **Scheduling**and **Name & Describe Your DataSet,** are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


The Domo Slack connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click **Connect** (or select **Add Account** if you have existing Slack accounts in Domo) to open the Slack OAuth screen where you can enter your Slack credentials. Once you have entered valid Slack credentials, you can use the same account any time you go to create a new Slack DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").




 


**Note:** If you are already logged into Slack when you connect in Domo, you are authenticated automatically when you click **Add account**. If you want to connect to an account that is different from the one you are logged into, you must first log out of the current Slack account.



### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Slack report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Conversation Info | Returns information about a conversation. |
| Conversation Members | Returns a list of members of a conversation. |
| Conversations | Returns a list of conversation channels in a Slack team. |
| Reactions | Returns reactions made by a user. |
| Team Info | Returns information about the current team. |
| Team Profile | Returns a team's profile. |
| User Conversations | Returns conversations the calling user may access. |
| User Groups | Returns a list of all user groups for a team. |
| User Info | Returns information about a user. |
| User Presence | Returns user presence information. |
| User Profile | Returns a user's profile information. |
| Users | Returns all users in a Slack team. |

 |
| Conversation Channels | Select the conversation channel to report on |
| Additional Data | Select the sub-list to flatten. The selected value gets flattened and the rest are ignored. All values are ignored if you select 'None'. |
| Users |  Select the user to report on. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").

