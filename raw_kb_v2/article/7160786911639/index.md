

Intro
-------


 Intercom OAuth is a platform used to integrate customer messaging apps for sales, marketing, and support connected on one platform. To learn more about the Intercom API, visit their page (


 https://developers.intercom.com/inte...ence/reference


 ).


 You connect to your Intercom account in the Data Center. This topic discusses the fields and menus that are specific to the Intercom connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 a DataSet Using a Data Connector


 .

Prerequisites
---------------


 To connect to your Intercom account and create a DataSet, you must have credentials. For information on setting up OAuth, see

Setting up OAuth (intercom.com)


 Connecting to Your

Intercom OAuth

Account
---------------------------------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes on the Intercom Connector page. The components of the other panes on this page,

*Scheduling,**

and

*Name & Describe Your DataSet**

, are universal across most connector types and are discussed in greater length in


 Adding a DataSet Using a Data Connector


 .


###
 Credentials Pane


 The Domo Intercom OAuth


 Connector uses OAuth to connect, you have to enter your credentials within Domo. Click

*Connect**

(or select

*Add Account**

if you have existing Intercom


 accounts in Domo) to open the Intercom


 OAuth screen where you can enter your Intercom


 username and password. Once you have entered valid Intercom


 credentials, you can use the same account any time you go to create a new Intercom


 DataSet. You can manage connector accounts in the

*Accounts**

tab in the Data Center. For more information about this tab, see


 Managing User Accounts for Connectors


 .


**Note:**


 If you are already logged into

Intercom

when you connect in Domo, you are authenticated automatically when you click


**Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Intercom.


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
 Select the

Intercom

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Admins
  |

Returns a list of admins.

|
|
 Attached

Companies
  |
 Returns a list of companies that are associated with a contact.
  |
|
 Attached Contacts
  |
 Returns a list of all the contacts that belong to a company.
  |
|
 Attached Tags
  |
 Returns a list of tags that are associated with a contact.
  |
|
 Companies
  |
 Returns a list of companies.
  |
|
 Contacts
  |
 Returns a list of contacts.
  |
|
 Contacts by Contact Id
  |
 Returns the details of the specified contact.
  |
|
 Conversations
  |
 Retrieves a list of conversations.
  |
|
 Conversations by Conversation Id
  |
 Returns the details of a single conversation.
  |
|
 Counts
  |
 Returns the count of your App..
  |
|
 Notes
  |
 Returns a list of notes that are associated with a contact.
  |
|
 Notes by Note Id
  |
 Returns the details of a single note.
  |
|
 Segments
  |
 Returns a list of segments.
  |
|
 Tags
  |
 Returns a list of Tags.
  |
|
 Teams
  |
 Returns a list of teams.
  |

|
|
 Event Type
  |
 Select whether to pull user or lead events.
  |
|
 Conversation Admin Type
  |
 Select the type of conversation admin to pull data for.


|  |  |
| --- | --- |
|
 All
  |
 Retrieves all conversations for both assigned and unassigned users.
  |
|
 Specific
  |
 Retrieves all conversations for a given admin. Note that when querying conversations for a given user, Intercom carries out message matching for the user and your existing auto-messages. This will happen at most once every 15 minutes.
  |
|
 Unassigned
  |
 Retrieves unassigned conversations.
  |

|
|
 Company
  |
 Select the type of company you want to retrieve data for.
  |
|
 Segments
  |
 Select the segments you want to retrieve data for.
  |
|
 Tags
  |
 Select the tags you want to retrieve data for.
  |
|
 Users
  |
 Select the users you want to retrieve data for.
  |
|
 Leads
  |
 Select the leads you want to retrieve data for.
  |
|
 Email ID
  |
 Enter the lead you want to retrieve data for.
  |
|
 Admin
  |
 Select the admin you want to retrieve data for.
  |
|
 Option to Expand
  |
 Select the column you want to expand.
  |
|
 Skip Failed Conversations
  |
 When you check this box, if the intercom fails to return details for a conversation, it will be excluded from the DataSet, and Domo will continue processing instead of failing the run. This may result in missing data.
  |
|
 Conversation Status
  |
 Select the conversation status you want to filter your report by.
  |
|
 Order
  |
 Select whether you want to sort your data by created or last updated date.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for the intercom is

https://api.intercom.io

.

###
 Which endpoint does each report call in this connector?


|  |  |
| --- | --- |
| **Report Name**  | **Endpoint URL**  |
|
 Admins
  |
 /admins
  |
|
 Attached Companies
  |
 /companies
  |
|
 Attached Contacts
  |
 /contacts
  |
|
 Attached Tags
  |
 /tags
  |
|
 Companies
  |
 /companies
  |
|
 Contacts
  |
 /contacts
  |
|
 Contacts by Contact ID
  |
 /contacts/{contact\_id}/users
  |
|
 Conversations
  |
 /conversations
  |
|
 Conversations by Conversation Id
  |
 /conversations/{conversation\_id}/users
  |
|
 Counts
  |
 /counts
  |
|
 Notes
  |
 /notes
  |
|
 Notes by Note ID
  |
 /notes/{note\_id}/users
  |
|
 Segments
  |
 /segments
  |
|
 Tags
  |
 /tags
  |
|
 Teams
  |
 /teams
  |


####
 How often can the data be updated?

Datasets can be updated as often as once an hour. though this should be decreased if rate limits are encountered.

###
 Are there any API rate limits I should be aware of?

Intercom allows 83 calls per 10 seconds or roughly 500 per minute.

###
 What kind of credentials do I need to power up this Connector?

Intercom OAuth Connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click Connect (or select Add Account if you have existing Intercom accounts in Domo) to open the Intercom OAuth screen where you can enter your Intercom username and password. Once you have entered valid Intercom credentials, you can use the same account any time you go to create a new Intercom DataSet. You can manage connector accounts in the Accounts tab in the data center.

###
 How do I know my Intercom credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


