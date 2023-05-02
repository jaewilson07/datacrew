

Intro
-------

SalesLoft is a sales engagement platform that helps users understand their customers' needs and respond in meaningful ways. To learn more about the SalesLoft API, visit their page (

https://developers.salesloft.com/

).


 You connect to your SalesLoft account in the Data Center. This topic discusses the fields and menus that are specific to the SalesLoft connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SalesLoft account and create a DataSet, you must have a SalesLoft API key. For information about generating an API key, visit

https://accounts.salesloft.com/oauth/applications

.


 Connecting to Your SalesLoft Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SalesLoft Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SalesLoft account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your SalesLoft API key.
  |


 Once you have entered valid SalesLoft credentials, you can use the same account any time you go to create a new SalesLoft DataSet. You can manage connector accounts in the
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
 Select the SalesLoft report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Returns a list of account records.
  |
|
 Account Stages
  |
 Returns a list of account stages.
  |
|
 Account Tiers
  |
 Returns a list of account tiers.
  |
|
 Action
  |
 Returns a list of actions.
  |
|
 Cadence Memberships
  |
 Returns a list of cadence memberships.
  |
|
 Cadences
  |
 Returns a list of cadences.
  |
|
 Call Data Records
  |
 Returns a list of call data records.
  |
|
 Call Dispositions
  |
 Returns a list of call dispositions.
  |
|
 Call Instructions
  |
 Returns a list of call instructions.
  |
|
 Calls
  |
 Returns a list of calls.
  |
|
 Call Sentiments
  |
 Returns a list of call sentiments.
  |
|
 CRM Activities
  |
 Returns a list of CRM activities.
  |
|
 CRM Activity Field
  |
 Returns a list of CRM activity fields.
  |
|
 Emails
  |
 Returns a list of emails.
  |
|
 Email Templates
  |
 Returns a list of email templates.
  |
|
 Notes
  |
 Returns a list of notes.
  |
|
 People
  |
 Returns a list of people.
  |
|
 Steps
  |
 Returns a list of steps.
  |
|
 Successes
  |
 Returns a list of successes.
  |
|
 Team Tags
  |
 Returns a list of tags used for a team.
  |
|
 Team Templates
  |
 Returns a list of team templates.
  |
|
 Users
  |
 Returns a list of users.
  |

|
|
 Team Cadence
  |
 Select
 **True**
 if you want your "Cadences" report to include team cadences.
  |
|
 Shared
  |
 Select
 **True**
 if you want your "Cadences" report to include shared cadences.
  |
|
 Has Call
  |
 Select
 **True**
 if you want your "Call Data Records" report to ONLY include call records that include a call.
  |
|
 People Addable
  |
 Select
 **True**
 if you want your "Cadences" report to include cadences that can have people added to them.
  |
|
 Bounced
  |
 Select
 **True**
 if you want your "Emails" report to include emails that have bounced.
  |
|
 Do Not Contact
  |
 Select
 **True**
 if you want your "People" report to include people who have made a "Do not contact" request.
  |
|
 Can Email
  |
 Select
 **True**
 if you want your "People" report to include people who can be emailed even if "Do not contact" and "Contact restrictions" properties are in place.
  |
|
 Can Call
  |
 Select
 **True**
 if you want your "People" report to include people who can be called even if "Do not contact" and "Contact restrictions" properties are in place.
  |
|
 Due Actions
  |
 Select
 **True**
 if you want your "Steps" report to include steps with due actions.
  |
|
 Linked to Team Template
  |
 Select
 **True**
 if you want your "Email Templates" report to include email templates that are linked to a team template.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

