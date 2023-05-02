

Intro
-------

Zendesk provides a cloud-based customer service program that includes ticketing, self-service options, and customer support features. It enhances productivity, processes, and pipelines for your sales teams. Use Domo’s Zendesk Upsert Connector to compile reports about tickets, users, and more. To learn more about the Zendesk API, visit their page (

https://developer.zendesk.com/rest\_api/docs/core/introduction

).


 The Zendesk Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 You connect to your Zendesk account in the Data Center. This topic discusses the fields and menus that are specific to the Zendesk Upsert Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

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
 **Credentials**
 and
 **Details**
 panes in the

Zendesk Upsert

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most Connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Zendesk

account. The following table describes what is needed for each field:


|

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
 Authenticated By
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


 Once you have entered valid

Zendesk

credentials, you can use the same account any time you go to create a new

Zendesk Upsert

DataSet. You can manage Connector accounts in the
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
 Select the Zendesk report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Organizations
  |
 Retrieves information about the organizations in your Zendesk instance.
  |
|
 Specify Query
  |
 Allows you to build a customized report by entering your own Zendesk search query. You can also select from two premade queries—
 **Open Tickets**
 and
 **Closed Tickets**
 . You can use these to return the number of open and closed tickets for your Zendesk instance.

For more information about entering Zendesk queries, see

Zendesk Support search reference

.
  |
|
 Tickets
  |
 Retrieves information about the created and updated tickets.
  |
|
 Ticket Audits
  |
 Retrieve the list of ticket audits.
  |
|
 Ticket Fields
  |
 Retrieve tickets fields in your Zendesk instance.
  |
|
 Ticket Forms - Agent Conditions
  |
 Retrieve ticket forms in your Zendesk instance and displays the condition sets for agent workplace.
  |
|
 Ticket Forms - End User Conditions
  |
 Retrieve ticket forms in your Zendesk instance and displays the condition sets for end user products.
  |
|
 Ticket Comments
  |
 Retrieves the comments on the tickets.
  |
|
 Ticket Metric Events
  |
 Retrieves the ticket metric events.
  |
|
 Users
  |
 Retrieves the information about the users in your Zendesk instance.
  |

|
|
 Associated Data
  |
 Select the associated data you want loaded along with the tickets.
  |
|
 Include Attachments
  |
 Specify whether you would like to include the attachments in the results.
  |
|
 Select the date to start retrieving data on the first run. Subsequent runs will automatically retrieve newly created and updated tickets, users or organizations
  |
 Select the date to start retrieving data on the first run. Subsequent runs will automatically retrieve newly created and updated items. If you modify the date after the first run, this date will be used for the next run and the existing data will be replaced.
  |
|
 Date Selection
  |
 Select the Date to start retrieving data on the first run. Subsequent runs will automatically retrieve newly created and updated tickets, users, or organizations.
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
 Legacy Schema Selection
  |
 Select this check box to use legacy schema for backward compatibility with the Zendesk Connector.
  |
|
 Exclude Deleted Records
  |
 Select this check box to exclude the deleted records from the data.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for the Zendesk Upsert connector is

https://{subdomain}.zendesk.com/api/v2

.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Enpoint URL
  |
| --- | --- |
|
 Organizations
  |
 /incremental/organizations.json
  |
|
 Tickets
  |
 /incremental/tickets.json
  |
|
 Ticket Audits
  |
 /ticket\_audits.json
  |
|
 Ticket Fields
  |
 /ticket\_fields.json
  |
|
 Ticket Forms - Agent Conditions
  |
 /ticket\_forms.json
  |
|
 Ticket Forms - End User Conditions
  |
 /ticket\_forms.json
  |
|
 Ticket Comments
  |
 /tickets/{currentTicketId}/comments.json
  |
|
 Ticket Metric Events
  |
 /incremental/ticket\_metric\_events.json
  |
|
 Users
  |
 /incremental/users.json
  |


####
 What kind of credentials do I need to power up the this connector?

You need the Zendesk username, password or API token, and the Zendesk instance URL. The Zendesk user account used for this connector must be an Admin within Zendesk.

###
 How frequently will my data update?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No

###
 Can I use the same Zendesk account to create multiple datasets?

Yes

###
 What's the difference between the Zendesk and Zendesk Upsert connectors?

The Zendesk Upsert connector supports a Merge mode along with the Append and Replace modes to update your dataset. The Merge mode replaces all updated rows, while any new rows are appended. Thus, it avoids duplicate entries.


 The Zendesk connector supports the Append and Replace modes to update your datasets.

