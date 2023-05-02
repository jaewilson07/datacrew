

Introduction
----------------

Zendesk provides a cloud-based customer service program that includes ticketing, self-service options, and customer support features. You can pull data based on preexisting queries or write your own customized search queries. To learn more about the Zendesk API, visit their page (

https://developer.zendesk.com/rest\_api/docs/core/introduction

).


 The Zendesk connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 For information about the Zendesk Chat connector, see

Zendesk Chat Connector

.


 You connect to your Zendesk account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 With Zendesk data in Domo, you can analyze your ticket metrics to ensure timely and quality resolution. Custom fields are also allowed, which enables you to optimize your business even more.
  |
|
**Primary Metrics**
 | * Time to reply
* First resolution
* Final resolution
* Resolution satisfaction
* Custom fields
 |
|
**Primary Company Roles**
 | * COO
* Customer support manager
* Support
* Client services
 |
|
**Average Implementation Time**
 |
 4-8 hours for basic implementations based on the limited scope of Zendesk's platform, the type of data available, and the connector's ease of use.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Be aware that Zendesk's API is rate-limited. See more details under troubleshooting section.


 To get started quickly, use a predefined Zendesk report ("Tickets," "Users," or "Tickets with Users"), a "General Query" (ticket status, dates, etc.), write a custom "Specific Query," or do a Search (e.g.,

tags:vip type:user created<2015-05-01

would return VIP tickets created before May 1, 2015).


 Prerequisites
---------------

To connect to your Zendesk account and create a DataSet, you must have the following:

 The username for your Zendesk account
* The API token OR password for your Zendesk account
* The Zendesk URL for your company

To use a password, enable API authentication using an agent's email address and password. This may already be enabled for sign-in to the Zendesk Support mobile apps.


 Zendesk recommends that you use API tokens to keep your agents' passwords safe. API tokens are managed in the Zendesk Support Admin interface at
 **Admin > Channels > API**
 . The page lets you view, add, or delete tokens. More than one token can be active at the same time. Deleting a token deactivates it permanently.


 Connecting to Your Zendesk Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zendesk Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

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
 *must*
 match what you have selected in the
 **Authenticate By**
 menu. For example, if you selected
 **API Token**
 for
 **Authenticate By**
 , you must enter your API token in this field, not your password.
  |
|
 Zendesk URL
  |
 Enter the URL for your company's Zendesk instance.
  |

Once you have entered valid Zendesk credentials, you can use the same account any time you go to create a new Zendesk DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report (Core API)
  |
 Select the Zendesk Core API report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 General Query
  |
 Returns general information about the company’s Zendesk instance for a given time period, such as ticket creation and update date, recipient, status, URL, and so on.
  |
|
 Search (Ticket Basic)
  |
 Designed to be faster than the other ticket reports, this report uses Zendesk's search API without loading any additional data.
  |
|
 Specify Query
  |
 Allows you to build a customized report by entering your own Zendesk search query. You can also select from two premade queries—
 **Open Tickets**
 and
 **Closed Tickets**
 . You can use these to return the number of open and closed tickets for your Zendesk instance.


 The "Custom" option lets you specify your own Zendesk search query. For example, the query

type:user vip

would return information on all users with the

vip

tag.


 For more information about entering Zendesk queries, see

https://support.zendesk.com/hc/en-us...arch-reference

.
  |
|
 Ticket Comments
  |
 Returns information about tickets comments for a given time period.
  |
|
 Ticket Report
  |
 Returns information about tickets for a given time period.
  |
|
 Tickets and Users Report
  |
 Returns open tickets, tickets that have not been closed for >120 days, and associated users, organizations, groups, and ticket metrics.
  |
|
 Users Report
  |
 Returns information about users of the company’s Zendesk instance, such as name, email, time zone, user role, and so on.
  |

|
|
 Report (Talk API)
  |
 Select the Zendesk Talk API report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Overview
  |
 Returns account overview statistics.
  |
|
 Agent's Activity
  |
 Returns statistics for the agent's activity.
  |
|
 Available Phone Numbers
  |
 Returns available phone numbers.
  |
|
 Current Queue Activity
  |
 Returns statistics for the current queue's activity.
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
 Get Greeting
  |
 Returns information about the specified greeting.
  |
|
 Get Phone Number
  |
 Returns information for a specified phone number.
  |
|
 List Greeting Categories
  |
 Lists all greeting categories.
  |
|
 List Greetings
  |
 Lists all greetings.
  |
|
 List Phone Numbers
  |
 Lists all phone numbers.
  |

|
|
 Country Code
  |

Specify the ISO country code

|
|
 Contains
  |

Specify the regular expression to search for phone numbers. Valid characters are quotes ('') and [0-9a-zA-Z]. The quotes ('') character will match any single digit.

|
|
 Number Should be Toll-Free or Local
  |

Specify whether the number should be toll-free or local.

|
|
 Area Code
  |

Specify to find phone numbers in the specified area code (US and Canada only).

|
|
 From Days
  |
 Enter the number of past days for your report. For example, if you entered
 `30`
 , the report would show data for the past 30 days.
  |
|
 To Days
  |
 Enter the number of past days that should
 *not*
 appear in your report. For example, if you entered
 `3`
 , your report would contain data up until 3 days ago.
  |
|
 Agent
  |
 S

elect an Agent.

|
|
 Greeting Category
  |
 select a greeting category.
  |
|
 Greeting
  |
 select a greeting.
  |
|
 Phone Number
  |
 Select a phone number.
  |
|
 Search Query
  |
 Select the desired search query type.
 **Open Tickets**
 and
 **Closed Tickets**
 are premade queries you can use to return the number of open and closed tickets for your Zendesk instance. The Custom option lets you specify your own Zendesk search query. For example, the query
 `type:user vip`
 would return information on all users with the
 `vip`
 tag.


 For more information about entering Zendesk queries, see

https://support.zendesk.com/hc/en-us/articles/203663226-Zendesk-search-reference

.
  |
|
 Query Field
  |
 Select the desired search query type.
 **Open Tickets**
 and
 **Closed Tickets**
 are premade queries you can use to return the number of open and closed tickets for your Zendesk instance. The
 **Custom**
 option lets you specify your own Zendesk search query. For more information about entering Zendesk queries, see


 https://support.zendesk.com/hc/en-us/articles/203663226-Zendesk-search-reference


 .
  |
|
 Include Attachments
  |
 Specify whether you would like to include the attachments in the results.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Zendesk's API is rate limited. Zendesk allows only a certain number of requests per minute depending on the customer's plan and the endpoint. If your Zendesk connection in Domo seems slow, consider upgrading your plan to get higher rate limits.

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
 **Admin > Channels > API**
 . The page lets you view, add, or delete tokens. More than one token can be active at the same time.


