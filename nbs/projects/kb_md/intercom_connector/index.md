---
    title: Intercom Connector
    url: https://domo-support.domo.com/s/article/360042929574
    linked_kbs:  ['[https://domo-support.domo.com/s/knowledge-base/](https://domo-support.domo.com/s/knowledge-base/)', '[https://domo-support.domo.com/s/](https://domo-support.domo.com/s/)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC](https://domo-support.domo.com/s/topic/0TO5w000000ZammGAC)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZanLGAS)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS)', '[https://domo-support.domo.com/s/article/360042926274](https://domo-support.domo.com/s/article/360042926274)', '[https://domo-support.domo.com/s/article/360042926054](https://domo-support.domo.com/s/article/360042926054)', '[https://domo-support.domo.com/s/article/360042929574](https://domo-support.domo.com/s/article/360042929574)', '[https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors](https://domo-support.domo.com/s/topic/0TO5w000000ZaoQGAS/api-connectors)', '[https://domo-support.domo.com/s/article/360043429933](https://domo-support.domo.com/s/article/360043429933)', '[https://domo-support.domo.com/s/article/360043429953](https://domo-support.domo.com/s/article/360043429953)', '[https://domo-support.domo.com/s/article/360042925494](https://domo-support.domo.com/s/article/360042925494)', '[https://domo-support.domo.com/s/article/360043429913](https://domo-support.domo.com/s/article/360043429913)', '[https://domo-support.domo.com/s/article/4408174643607](https://domo-support.domo.com/s/article/4408174643607)', '[https://domo-support.domo.com/s/login/](https://domo-support.domo.com/s/login/)']
    article_id: 000003504
    views: 2,147
    created_date: 2022-10-24 21:13:00
    last updated: 2022-10-24 22:40:00
    ---



Intro
-----


Intercom is a platform used to integrate customer messaging apps for sales, marketing and support connected on one platform. To learn more about the Intercom API, visit their page ([https://developers.intercom.com/inte...ence/reference](https://developers.intercom.com/intercom-api-reference/reference "https://developers.intercom.com/intercom-api-reference/reference")).


You connect to your Intercom account in the Data Center. This topic discusses the fields and menus that are specific to the Intercom connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in  [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


Prerequisites
-------------


To connect to your Intercom account and create a DataSet, you must have an Intercom access token. For information about obtaining an access token, see [https://developers.intercom.com/docs...-access-tokens](https://developers.intercom.com/docs/personal-access-tokens "https://developers.intercom.com/docs/personal-access-tokens"). Note that some reports require your access token to have "extended scope."


Connecting to Your Intercom Account
-----------------------------------


This section enumerates the options in the **Credentials** and **Details** panes in the Intercom Connector page. The components of the other panes in this page, **Scheduling** and **Name & Describe Your DataSet**, are universal across most connector types and are discussed in greater length in [Adding a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


### Credentials Pane


This pane contains fields for entering credentials to connect to your Intercom account. The following table describes what is needed for each field:  




| Field | Description |
| --- | --- |
| Access Token | Enter your Intercom access token. For more information, see "Prerequisites," above. |


Once you have entered valid Intercom credentials, you can use the same account any time you go to create a new Intercom DataSet. You can manage connector accounts in the **Accounts** tab in the Data Center. For more information about this tab, see [Managing User Accounts for Connectors](/s/article/360042926054 "Managing User Accounts for Connectors").


### Details Pane


This pane contains a primary **Reports** menu, along with various other menus which may or may not appear depending on the report type you select.




| Menu | Description |
| --- | --- |
| Report | Select the Intercom report you want to run. The following reports are available:

|  |  |
| --- | --- |
| Admins | Returns a list of admins for this connector. |
| Attached Companies | Returns a list of companies that are associated with a contact. |
| Attached Contacts | Returns a list of all the contacts that are associated with a company. |
| Attached Tags | Returns a list of all the tags that are associated with a contact. |
| Companies | Returns a list of companies. |
| Contacts | Returns a list of all the contacts. |
| Contact by Contact Id | Returns the details of a specific contact. |
| Conversations | Returns a list of all the conversations. |
| Conversations by Conversation Id | Returns the details of a single conversation. |
| Counts | Returns the count of your application. |
| Notes | Returns a list of notes that are associated with a contact. |
| Notes by Notes Id | Returns the details of a single note. |
| Segments | Returns a list of all the segments. |
| Tags | Returns a list of all the tags. |
| Teams | Returns a list of all the available teams. |

 |
| Event Type | Select whether to pull user or lead events. |
| Conversation Admin Type | Select the type of conversation admin to pull data for.

|  |  |
| --- | --- |
| All | Retrieves all conversations for both assigned and unassigned users. |
| Specific | Retrieves all conversations for a given admin. Note that when querying conversations for a given user, Intercom carries out message matching for the user and your existing auto messages. This will happen at most once every 15 minutes. |
| Unassigned | Retrieves unassigned conversations. |

 |
| Company  | Select the company you want to retrieve data for. |
| Segments | Select the segments you want to retrieve data for. |
| Tags | Select the tags you want to retrieve data for. |
| Users | Select the users you want to retrieve data for. |
| Leads | Select the leads you want to retrieve data for. |
| Email ID | Enter the lead you want to retrieve data for. |
| Admin | Select the admin you want to retrieve data for. |
| Option to Expand | Select the column you want to expand. |
| Skip Failed Conversations | When you check this box, if Intercom fails to return details for a conversation, it will be excluded from the DataSet, and Domo will continue processing instead of failing the run. This may result in missing data. |
| Conversation Status | Select the conversation status you want to filter your report by. |
| Order | Select whether you want to sort your data by created or last updated date. |


### Other Panes


For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see [a DataSet Using a Data Connector](/s/article/360042926274 "Adding a DataSet Using a Data Connector").


FAQs
----


##### How often can the data be updated?


DataSets can be updated as often as once an hour, though this should be decreased if rate limits are encountered.


##### Are there any API rate limits I should be aware of?


Intercom allows 83 calls per 10 seconds or roughly 500 per minute.


##### What kind of credentials do I need to power this connector?


Intercom requires an access token to authenticate. Be aware that some reports require that your access token include "extended access" to work. If you receive an authentication error and your key is valid, check with your Intercom administrator to get "extended access" added to your API key.

