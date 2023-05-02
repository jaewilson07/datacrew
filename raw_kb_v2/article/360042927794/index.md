

Intro
-------

Nutshell is a user-friendly small business CRM that helps sales reps win more deals, with sales process automation, fast onboarding, and free support. To learn more about the Nutshell API, visit their page (

https://developers.nutshell.com/

).


 You connect to your Nutshell account in the Data Center. This topic discusses the fields and menus that are specific to the Nutshell connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Nutshell account and create a DataSet, you must have the following:

 The username you use to log into your Nutshell account
* A Nutshell API key

To obtain a Nutshell API key, do the following:

. Log into your Nutshell account.
2. Navigate to the
 **Setup**
 menu.
3. Click
 **API Keys**
 (in the "Third-party" category).
4. Click
 **Add API key**
 .
5. Enter a name for the API key.
6. Under "Permissions," select the button for
 **API Access**
 .
7. Click
 **New API key**
 .
8. Copy the newly generated API key.

Connecting to Your Nutshell Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Nutshell Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Nutshell account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username for your Nutshell account.
  |
|
 API Key
  |
 Enter your Nutshell API key. For steps for obtaining an API key, see "Prerequisites" above.
  |


 Once you have entered valid Nutshell credentials, you can use the same account any time you go to create a new Nutshell DataSet. You can manage connector accounts in the
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
 Select the Nutshell report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Find Accounts
  |
 Returns accounts matching the specified criteria.
  |
|
 Find Activities
  |
 Returns activities matching the specified criteria and date range.
  |
|
 Find Contacts
  |
 Returns contacts matching the specified criteria.
  |
|
 Find Tags
  |
 Returns tags for a given entity (Accounts, Contacts, or Leads).
  |
|
 Get Account
  |
 Returns details for the selected account.
  |
|
 Get Activity
  |
 Returns details for the selected activity.
  |
|
 Get Contact
  |
 Returns details for the selected contact.
  |
|
 Search Accounts
  |
 Returns account information based on a provided search string. A maximum of 100 search results can be returned.
  |
|
 Search Activity Participants
  |
 Returns activity participant information based on a provided search string. A maximum of 100 search results can be returned.
  |
|
 Search Contacts
  |
 Returns contact information based on a provided search string. A maximum of 100 search results can be returned.
  |

|
|
 Add Filters
  |
 Select
 **Yes**
 if you want to include search filters in this report.
  |
|
 Account Type
  |
 Select the account type you want to retrieve information for.
  |
|
 Industries
  |
 Select the industries you want to retrieve information for.
  |
|
 Territories
  |
 Select the territories you want to retrieve information for.
  |
|
 Origins
  |
 Select the origins you want to retrieve information for.
  |
|
 Open Leads
  |
 Select
 **True**
 to return data for accounts associated with open leads. Select
 **False**
 to return data for all accounts.
  |
|
 Entity
  |
 Select the entity you want to retrieve information for.
  |
|
 Tags
  |
 Check the boxes for all tags you want to retrieve information for.
  |
|
 Flagged Important?
  |
 Select
 **True**
 to return data for activities that has been flagged as "Important" in Nutshell. Otherwise select
 **False**
 .
  |
|
 Activity Status
  |
 Select the activity status you want to retrieve information for. Note that "Overdue" status implies "Scheduled."
  |
|
 Contacts
  |
 Check the boxes for all contacts you want to retrieve information for.
  |
|
 Accounts
  |
 Check the boxes for all accounts you want to retrieve information for.
  |
|
 Users
  |
 Check the boxes for all users you want to retrieve information for.
  |
|
 Activity Types
  |
 Check the boxes for all activity types you want to retrieve information for.
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
|
 Account
  |
 Select the account you want to retrieve information for.
  |
|
 Lead
  |
 Select the lead you want to retrieve information for.
  |
|
 Activity
  |
 Select the activity you want to retrieve information for.
  |
|
 Contact
  |
 Select the contact you want to retrieve information for.
  |
|
 Search String
  |
 Enter a search term to retrieve information for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

