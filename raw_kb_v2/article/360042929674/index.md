

Intro
-------

Zendesk Chat (formerly Zopim) is an online marketing, live chat support and web analytics product that enables companies to chat with visitors in real-time on their websites. You can use this connector to return a list of all Zendesk chats for your account. To learn more about the Zendesk Chat API, visit their page (

https://developer.zendesk.com/rest\_a...t/introduction

).


 You connect to your Zendesk Chat account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk Chat connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 For information about the Zendesk Connector, see

Zendesk Connector

.


 Prerequisites
---------------

To connect to your Zendesk Chat account and create a DataSet, you must have the following:

 The subdomain for your Zendesk Support instance (for example, if your Support instance was

mycompany.zendesk.com

, you would enter

mycompany

for your subdomain)
* Your Zendesk Chat client ID
* Your Zendesk Chat client secret

To create or modify a Zendesk API client, navigate to


 https://
 *yourdomain*
 .

zendesk.com/chat/agent#account/api

, where

yourdomain*

is the subdomain for your Zendesk Support instance.


 Connecting to Your Zendesk Chat Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zendesk Chat Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zendesk Chat account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Zendesk Chat client ID.
  |
|
 Client Secret
  |
 Enter your Zendesk Chat client secret.
  |
|
 Domain
  |
 Enter the subdomain for your Zendesk Support instance.
  |

For information about finding this information, see "Prerequisites," above.

Once you have entered valid Zendesk Chat credentials, you can use the same account any time you go to create a new Zendesk Chat DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select your Zendesk Chat report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Zendesk Chat report you want to run. Currently only a single report is available.


|  |  |
| --- | --- |
|
 Chats
  |
 Returns a list of all chats for the authenticated Zendesk Chat account.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 I am getting an internal server error when I try to authenticate.

Try replacing the redirect URL in Zendesk with the following URL:

https://oauth.domo.com/api/data/v2/oauth/providers/zendeskchat/exchange

.

