

Intro
-------

Bronto Software is a commerce marketing automation provider, enabling retailers to drive revenue through their email, mobile and social campaigns. Use Domo's  Bronto connector to retrieve data about contacts, messages, deliveries, and so on. To learn more about the Bronto API, visit their page (

http://dev.bronto.com/api/

).


 You connect to your Bronto account in the Data Center. This topic discusses the fields and menus that are specific to the Bronto connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Bronto account and create a DataSet, you must have a Bronto API token. For information about obtaining an API token, visit

http://dev.bronto.com/gettingstarted...ccess-the-api/

.


 Connecting to Your Bronto Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Bronto Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Bronto account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Token
  |
 Enter your Bronto API token. For information about obtaining a token, see

http://dev.bronto.com/gettingstarted...ccess-the-api/
  |


 Once you have entered a valid API token and created an account, you can use the same account any time you go to create a new Bronto DataSet. You can manage connector accounts in the
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
 Select the Bronto report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Accounts
  |
 Returns account data for the authenticated user.
  |
|
 Activities
  |
 Returns activities data for the authenticated user for a specified number of past days.
  |
|
 API Tokens
  |
 Returns a list of API tokens for the authenticated user.
  |
|
 Contacts
  |
 Returns a list of contacts for the authenticated user for a specified number of past days.
  |
|
 Content Tags
  |
 Returns a list of content tags for the authenticated user.
  |
|
 Conversions
  |
 Returns a list of conversions for the authenticated user.
  |
|
 Deliveries
  |
 Returns a list of delivered emails for the authenticated user for a specified number of past days, with or without the email content.
  |
|
 Delivery Groups
  |
 Returns a list of delivery groups for the authenticated user.
  |
|
 Delivery Recipients
  |
 Returns a list of delivery recipients for the authenticated user for a specified number of past days.
  |
|
 Headers Footers
  |
 Returns a list of headers and footers for the authenticated user.
  |
|
 Logins
  |
 Returns a list of logins for the authenticated user.
  |
|
 Lists
  |
 Returns a list of lists for the authenticated user.
  |
|
 Messages
  |
 Returns a list of messages for the authenticated user.
  |
|
 Message Folders
  |
 Returns a list of message folders for the authenticated user.
  |
|
 Message Rules
  |
 Returns a list of message rules for the authenticated user.
  |
|
 Segments
  |
 Returns a list of segments for the authenticated user.
  |
|
 Workflows
  |
 Returns a list of workflows for the authenticated user.
  |

|
|
 Number of Days
  |
 Enter the number of past days you want to include in this report. For example, if you entered

30

, the report would pull data for the last 30 days.
  |
|
 Includes Emails' Content
  |
 Select
 **Yes**
 if you want the "Deliveries" report to return the message content of delivered emails; otherwise select
 **No**
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

