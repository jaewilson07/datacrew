

Intro
-------

Zendesk provides a cloud-based customer service and engagement platform. Zendesk Talk Connector instantly connects, visualizes, and gets insights from your Zendesk Talk data. Use Domo's Zendesk Talk Connector to get statistics about the current queue, your account, your agents, or their activities. To learn more about the Zendesk API, visit their page (

https://developer.zendesk.com/rest\_api/docs/core/introduction

).


 The Zendesk Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 For information about the Zendesk Chat Connector, see

Zendesk Chat Connector

.


 You connect to your Zendesk account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zendesk account and create a DataSet, you must have the following:

 The username for your Zendesk account
* The API token OR password for your Zendesk account
* The Zendesk URL for your company

To use a password, enable API authentication using an agent's email address and password. This may already be enabled for sign-in to the Zendesk Support mobile apps.


 Zendesk recommends that you use API tokens to keep your agents' passwords safe. API tokens are managed in the Zendesk Support Admin interface at
 ****Admin > Channels > API****
 . The page lets you view, add, or delete tokens. More than one token can be active at the same time. Deleting a token deactivates it permanently.


 Connecting to Your Zendesk Account
------------------------------------

This section enumerates the options in the
 ****Credentials****
 and
 ****Details****
 panes in the Zendesk Connector page. The components of the other panes in this page,
 ****Scheduling****
 and
 ****Name & Describe Your DataSet****
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Zendesk account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Username
  |
 Enter the username you use to log into your Zendesk account.
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
 menu. For example, if you selected
 ****API Token****
 for
 ****Authenticate By****
 , you must enter your API token in this field, not your password.
  |
|
 Zendesk URL
  |
 Enter the URL for your company's Zendesk instance.
  |

Once you have entered valid Zendesk credentials, you can use the same account any time you go to create a new Zendesk DataSet. You can manage Connector accounts in the
 ****Accounts****
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

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
 Select the Zendesk Talk report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Overview
  |
 Returns account overview statistics. The deprecated Historical Queue Activity report has been replaced by this report.
  |
|
 Agent's Activity
  |
 Returns statistics for the Agent's activity.
  |
|
 Available Phone Numbers
  |
 Searches for the available phone numbers.
  |
|
 Call Legs
  |
 Returns call legs data. This report supports the Merge update mode.
  |
|
 Calls Export
  |
 Returns calls export data. This report supports the Merge update mode.
  |
|
 Current Queue Activity
  |
 Returns statistics for current queue's activity.
  |
|
 Get Agent Availability
  |
 Returns the agent's availability.
  |
|
 Get Greeting Categories
  |
 Returns information about the selected greeting category.
  |
|
 Get Greetings
  |
 Returns information about the specified greeting.
  |
|
 Get Phone Number
  |
 Returns specific phone number's information.
  |
|
 List Greeting Categories
  |
 Lists all the greeting categories.
  |
|
 List Greetings
  |
 Lists all the greetings.
  |
|
 List Phone Numbers
  |
 Lists phone numbers.
  |

|
|
 Country Code
  |
 Specify the ISO country code.
  |
|
 Contains
  |
 Specify the regular expression to search for phone numbers. Valid characters are
 **''**
 and
 **[0-9a-zA-Z]**
 . The
 **''**
 (double quote) character will match any single digit.
  |
|
 Number should be toll-free or local
  |
 Specify whether the number should be a toll-free number or a local number.
  |
|
 Area Code
  |
 Specify to find phone numbers in the specified area code (US and Canada only).
  |
|
 Start Date for the First Run
  |
 Select the start date for the first run of your report.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Specific Date
  |
 Select the specific date using the date selector.
  |
|
 Relative Date
  |
 Enter the number of days back that you would like to get data for in the
 ****Days Back****
 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Agent
  |
 Select an agent.
  |
|
 Greeting  Category
  |
 Select a Greeting Category.
  |
|
 Greeting
  |
 Select a Greeting.
  |
|
 Phone Number
  |
 Select a Phone Number.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

