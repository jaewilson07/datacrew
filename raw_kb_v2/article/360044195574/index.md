

Introduction
--------------

The Zendesk Guide Connector pulls information from Zendesk Guide. Things such as comments made on articles, attachments on articles, votes, and more. Use Domo’s Zendesk Guide connector to compile reports about articles, topics, sections, votes, posts, and so on. To learn more about the Zendesk API, visit their page (

https://developer.zendesk.com/rest\_api/docs/core/introduction

).


 The Zendesk Guide connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 You connect to your Zendesk Guide account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk Guide connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

Best Practices

Be aware that Zendesk's API is rate-limited. See more details under the troubleshooting section.


 Prerequisites
---------------

To connect to your Zendesk Guide account and create a DataSet, you must have the following:

 The username for your Zendesk account. The user must be a Zendesk admin.
* The API token OR password for your Zendesk account.
* The Zendesk URL for your company.

To use a password, enable API authentication using an agent's email address and password. This may already be enabled for sign-in to the Zendesk Guide mobile apps.


 Zendesk recommends that you use API tokens to keep your agents' passwords safe. API tokens are managed in the Zendesk Support Admin interface at
 ****Admin > Channels > API****
 . The page lets you view, add, or delete tokens. More than one token can be active at the same time. Deleting a token deactivates it permanently.


 Connecting to Your Zendesk Guide Account
------------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Zendesk Guide Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Zendesk Guide account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username for your Zendesk account. The user must be a Zendesk admin.
  |
|
 Authenticate By
  |
 Specify whether you want to use your Zendesk API token or password to authenticate.
  |
|
 API Token or Password
  |
 Enter your Zendesk API token or password. This
 **must**
 match what you have selected in the
 ****Authenticate By****
 menu. For example, if you select
 ****API Token****
 for
 ****Authenticate By****
 , you must enter your API token in this field, not your password.
  |
|
 Zendesk URL
  |
 Enter the URL for your company's Zendesk instance
  |

Once you have entered valid Zendesk Guide credentials, you can use the same account any time you go to create a new Zendesk Guide DataSet. You can manage connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 ****Report****
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Articles
  |
 Lists all articles.
  |
|
 Article Attachments
  |
 List all attachments for each article.
  |
|
 Article Comments
  |
 Lists all comments for each article.
  |
|
 Article Labels
  |
 Lists all article labels.
  |
|
 Categories
  |
 Lists all categories.
  |
|
 Themes
  |
 Lists all themes.
  |
|
 Topics
  |
 Lists all topics.
  |
|
 Sections
  |
 Lists all sections.
  |
|
 Votes
  |
 Lists all votes for each article.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Zendesk's API is rate limited. Zendesk allows only a certain number of requests per minute depending on the customer's plan and the endpoint. If your Zendesk Guide connection in Domo seems slow, consider upgrading your plan to get higher rate limits.

+ Essential plan = 10 requests per minute (RPM)
	+ Team plan = 200 RPM
	+ Professional = 400 RPM
	+ Enterprise = 700 RPM
	+ High Volume Add-on = 2,500 RPM
* If you get a 429 error, this indicates that the rate limit has been exceeded.
* You can compare your API activity in the last 24 hours against your rate limit using Zendesk's "Tracking API activity against your rate limit" article at

https://support.zendesk.com/hc/en-us...our\_rate\_limit

.
* If your connection is unsuccessful, check that your API token is active. API tokens are managed in the Zendesk Support Admin interface at
 ****Admin > Channels > API****
 . The page lets you view, add, or delete tokens. More than one token can be active at the same time.


