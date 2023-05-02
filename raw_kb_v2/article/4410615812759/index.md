

Intro
-------

Close.io

is an online web application designed to allow sales people easy management of leads with minimal manual management of data.

Close.io

integrates communications between leads and sales people such as emails and phone calls so that the system can record those communications, and update lead status.

To learn more about the


 Close.io


 API, visit their page

https://developer.close.com/

.


 The


 Close.io


 Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your


 Close.io


 account in the Data Center. This topic discusses the fields and menus that are specific to the


 Close.io


 Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your


 Close.io


 account and create a DataSet, you must have your


 Close.io

API key. You can generate it in the

Close.io

Settings page.

Connecting to Your

Close.io

Account
-------------------------------------------

This section enumerates the options in the Credentials and Details panes in the


 Close.io


 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your


 Close.io


 account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Key
  |
 Enter your


 Close.io

API key. You can generate it in the

Close.io

Settings page.
  |

Once you have entered valid

Close.io

credentials, you can use the same account any time you go to create a new

Close.io

DataSet. You can manage Connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

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
 Select the

Close.io

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities Call
  |
 Returns a list of Call activities.
  |
|
 Activities Email Threads
  |
 Returns a list of Email Thread activities.
  |
|
 Activities Emails
  |
 Returns a list of Email activities.
  |
|
 Activities Lead Status Change
  |
 Returns a list of Lead Status Change activities.
  |
|
 Activities Notes
  |
 Returns a list of Note activities.
  |
|
 Activities Opportunity Status Change
  |
 Returns a list of Opportunity Status Change activities
  |
|
 Bulk Actions
  |
 Returns a list of Bulk emails.
  |
|
 Contacts
  |
 Returns a list of Contacts
  |
|
 Contacts Emails
  |
 Returns a list of Emails for contacts.
  |
|
 Contacts Phones
  |
 Returns a list of Phone numbers for contacts.
  |
|
 Contacts Urls
  |
 Returns a list of urls for Contacts.
  |
|
 Email Templates
  |
 Returns a list of Email Templates.
  |
|
 Exports
  |
 Returns a list all the Exports.
  |
|
 Lead Statuses
  |
 Returns a list of Lead Statuses for an organization
  |
|
 Leads
  |
 Returns a list of Leads.
  |
|
 Leads Addresses
  |
 Returns list of Addresses for leads.
  |
|
 Leads Contacts
  |
 Returns the list of Contacts for leads.
  |
|
 Leads Opportunities
  |
 Returns a list of Opportunities for leads.
  |
|
 Leads Tasks
  |
 Returns the list of Tasks for leads.
  |
|
 Opportunities
  |
 Returns a list of Opportunities.
  |
|
 Opportunity Statuses
  |
 Returns a list Opportunity Statuses for an organization.
  |
|
 Organizations
  |
 Returns Organization's details, including its current members, lead and opportunity statuses, etc.
  |
|
 Organizations Inactive Memberships
  |
 Returns a list of organization's Inactive Members.
  |
|
 Organizations Invoices
  |
 Returns the list of organization's Invoices.
  |
|
 Organizations Lead Statuses
  |
 Returns the list of organization's Lead Statuses.
  |
|
 Organizations Memberships
  |
 Returns a list of organization's members.
  |
|
 Organizations Opportunity Statuses
  |
 Returns a list of organization's Opportunity Statuses.
  |
|
 Reporting Activity
  |
 Returns an Activity Report for an organization.
  |
|
 Reporting Sent Emails
  |
 Returns a report about Sent Emails for organization
  |
|
 Smart Views
  |
 Returns a list Smart Views.
  |
|
 Tasks
  |
 Returns a list of Tasks.
  |
|
 Users
  |
 Returns a list Users.
  |
|
 Users Self Email Accounts
  |
 Returns list of Self Email Accounts.
  |
|
 Users Self Email Signatures
  |
 Returns list of Self Email Signatures.
  |
|
 Users Self Memberships
  |
 Returns list of Self Memberships.
  |
|
 Users Self Organizations
  |
 Returns list of Self Organizations.
  |
|
 Users Self Sip Numbers
  |
 Returns list of Self Sip Numbers.
  |

|
|
 Organization ID
  |
 Select the organization ID.
  |
|
 User ID
  |
 Select the user ID.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What version of the

Close.io

API does this Connector use?

This connector uses version 1 of the

Close.io

API (

https://app.close.io/api/v1

).

###
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Activities Call
  |
 /activity/call/
  |
|
 Activities Email Threads
  |
 /activity/emailthread/
  |
|
 Activities Emails
  |
 /activity/email/
  |
|
 Activities Lead Status Change
  |
 /activity/status\_change/lead/
  |
|
 Activities Notes
  |
 /activity/note/
  |
|
 Activities Opportunity Status Change
  |
 /activity/status\_change/opportunity/
  |
|
 Bulk Actions
  |
 /bulk\_action/email/
  |
|
 Contacts
  |
 /contact/
  |
|
 Contacts Emails
  |
 /contact/emails
  |
|
 Contacts Phones
  |
 /contact/phones
  |
|
 Contacts Urls
  |
 /contact/urls
  |
|
 Email Templates
  |
 /email\_template/
  |
|
 Exports
  |
 /export/
  |
|
 Lead Statuses
  |
 /status/lead/
  |
|
 Leads
  |
 /lead/
  |
|
 Leads Addresses
  |
 /lead/addresses
  |
|
 Leads Contacts
  |
 /lead/contacts
  |
|
 Leads Opportunities
  |
 /lead/oportunities
  |
|
 Leads Tasks
  |
 /lead/tasks
  |
|
 Opportunities
  |
 /opportunity/
  |
|
 Opportunity Statuses
  |
 /status/opportunity/
  |
|
 Organizations
  |
 /organization/{id}
  |
|
 Organizations Inactive Memberships
  |
 /organization/inactive\_memberships
  |
|
 Organizations Invoices
  |
 /organization/invoices
  |
|
 Organizations Lead Statuses
  |
 /organization/lead\_statuses
  |
|
 Organizations Memberships
  |
 /organization/memberships
  |
|
 Organizations Opportunity Statuses
  |
 /organization/opportunity\_statuses
  |
|
 Reporting Activity
  |
 /report/activity/{orgId}/ /report/sent\_emails/{orgId}
  |
|
 Reporting Sent Emails
  |
 /report/urlPath/sent\_email\_stats/{orgId}/
  |
|
 Smart Views
  |
 /saved\_search/
  |
|
 Tasks
  |
 /task/
  |
|
 Users
  |
 /user/{id}
  |
|
 Users Self Email Accounts
  |
 /user/email\_accounts/{userid}/
  |
|
 Users Self Email Signatures
  |
 /user/email\_signatures/{userid}
  |
|
 Users Self Memberships
  |
 /user/memberships/memberships\_permissions\_granted/{userid}/
  |
|
 Users Self Organizations
  |
 /user/organizations/{userid}/
  |
|
 Users Self Sip Numbers
  |
 /user/sip\_numbers/{userid}
  |


####
 What kind of credentials do I need to power up this Connector?

You need your

Close.io

API key.

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


