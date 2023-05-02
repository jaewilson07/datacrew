

Intro
-------

Listrak exists to help retailers achieve digital marketing success by delivering relevant, personalized content to shoppers and customers based on their unique behaviors and shopping preferences. Use Domo's Listrak connector to view your contacts, conversations, and messages data within Domo.


 General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Listrak account and create a DataSet, you must have the following:

 Client ID
* Client Secret

Connecting to Your Listrak Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Listrak Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your (third-party tool) account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Listrak Client ID
  |
|
 Client Secret
  |
 Enter your Listrak Client Secret
  |


 Once you have entered valid Listrak credentials, you can use the same account any time you go to create a new Listrak DataSet. You can manage connector accounts in the
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
 Select the Listrak report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contacts
  |
 Returns the collection of contacts associated with the specified list.
  |
|
 Conversations
  |
 Returns the collection of conversations associated with the specified list.
  |
|
 Conversation Messages
  |
 Returns the collection of messages for the specified conversation.
  |
|
 Conversation Message Activity
  |
 Returns the collection of activity associated with the specified conversation message.
  |
|
 Conversation Message Links
  |
 Returns the collection of links for the specified conversation message.
  |
|
 Conversation Message Link Clickers
  |
 Returns the collection of contacts that clicked the specified conversation message link.
  |
|
 Conversation Summary
  |
 Returns a summary of the specified conversation.
  |
|
 Messages
  |
 Returns a collection of messages for the specified list.
  |
|
 Message Activity
  |
 Returns the collection of activity associated with the specified message.
  |
|
 Message Links
  |
 Returns the collection of links for the specified message.
  |
|
 Message Link Clickers
  |
 Returns the collection of contacts that clicked the specified message link.
  |
|
 Message Summary
  |
 Returns a summary of the specified message.
  |


 |
|
 List Id
  |
 Select the List
  |
|
 Conversation Id
  |
 Select the conversation
  |
|
 Conversation Message Id
  |
 Select the conversation message
  |
|
 Conversation Message Link Id
  |
 Select the conversation message link
  |
|
 Message Id
  |
 Select the message
  |
|
 Message Link Id
  |
 Select the message link
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 What version of the Listrak API does this connector use?

This connector uses version 1 of the Listrak API (

https://www.listrak.com/learn/developers

).

####
 What endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpint URL(s)
  |
| --- | --- |
|
 Contacts
  |
 /List/{listId}/Contact
  |
|
 Conversations
  |
 /List/{listId}/Conversations
  |
|
 Conversation Messages
  |
 /List/{listId}/Conversation/{conversationId}/Message
  |
|
 Conversation Message Activity
  |
 /List/{listId}/Conversation/{conversationId}/Message/{conversationMessageId}/Activity
  |
|
 Conversation Message Links
  |
 /List/{listId}/Conversation/{conversationId}/Message/{conversationMessageId}/Link
  |
|
 Conversation Message Link Clickers
  |
 /List/{listId}/Conversation/{conversationId}/Message/{conversationMessageId}/Link/{conversationMessageLinkId}/Clicker
  |
|
 Conversation Summary
  |
 /List/{listId}/Conversation/{conversationId}/Summary
  |
|
 Messages
  |
 /List/{listId}/Messages
  |
|
 Message Activity
  |
 /List/{listId}/Messages/{messageId}/Activity
  |
|
 Message Links
  |
 /List/{listId}/Messages/{messageId}/Link
  |
|
 Message Link Clickers
  |
 /List/{listId}/Messages/{messageId}/Link/{messageLinkId}/Clicker
  |
|
 Message Summary
  |
 /List/{listId}/Message/{messageId}/Summary
  |


#####
 What kind of credentials do I need to power up this connector?

You need the client id and client secret associated with your Listrak account.

####
 Do I need a certain kind of account with the data service to set up the connector?

You need to enable the OAuth2 scopes for Contact, List, Message, and Report for authentication. For more information, visit

Listrak Authentication

.

####
 How frequently will my data update?

As often as needed.

####
 Are there any API limits that I need to be aware of?

No.

####
 Why is my authentication failing? Do I need to whitelist any IP addresses in my Listrak account?

Before you can connect to your Listrak account, you must also whitelist a number of IP addresses in your Listrak account. For the full list of IP addresses, see

Whitelisting IP Addresses

.

