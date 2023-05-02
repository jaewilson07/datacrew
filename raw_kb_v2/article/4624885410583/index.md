

Intro
-------


 The OfficeRnD co-working and flex platform helps customers book office space. It simplifies the process by automating administrative tasks, providing key details to make data-driven decisions, and delivering an amazing digital experience to customers. It helps space administrators focus on work, get access to required knowledge, and connect with like-minded professionals to enable sustainable growth in their business.


 The Domo OfficeRnD connector enables you to retrieve various details about bookings, credits, contracts, offices, payments, and more. When you connect OfficeRnD with Domo, you’ll see all the critical data you need to manage your workspaces along with costs and customer management. Your team will be able to use this data to have an all-in-one view of how your business is functioning and where potential problems may occur.


 You can create powerful visualizations and reports to track all the data your OfficeRnD solution captures to keep your business running. Combine your OfficeRnD data with all your information on Domo to see how your workspaces affect your bottom line and plan for future business demands.

To learn more about the

OfficeRnD

API, visit their page (

https://developer.officernd.com/docs

).


 The

OfficeRnD

Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your

OfficeRnD

account in the Data Center. This topic discusses the fields and menus that are specific to the

our Officernd API

Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your

OfficeRnD

account and create a DataSet, you must have the following:

 The client ID and client secret associated with y

our OfficeRnD API.
* The Organization name for your OfficeRnD environment. You can find this in the API URL. For example, if your API URL is "

https://app.officernd.com/api/v1/organizations/domo"

" then your organizations is "domo".

Connecting to Your

OfficeRnD

Account
--------------------------------------------

This section enumerates the options in the Credentials and Details panes in the

OfficeRnD

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

OfficeRnD

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter the client ID associated with your OfficeRnD API.
  |
|
 Client Secret
  |
 Enter the client secret associated with y

our OfficeRnD API.

|
|
 Organization
  |
 Enter t

he Organization name for your OfficeRnD environment. You can find this in the API URL.


 For example, if your API URL is "

https://app.officernd.com/api/v1/organizations/domo"

" then your organizations is "domo".

|

Once you have entered valid

OfficeRnD

credentials, you can use the same account any time you go to create a new

OfficeRnD

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

OfficeRnD

report you want to run. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
|
 Bookings
  |
 Retrieves all bookings made for reservation of resources.
  |
|
 Booking Occurrences
  |
 Retrieves a list of all booking occurrences for a specified period.
  |
|
 Charges
  |
 Retrieves all charge objects. A charge object describes a single payment associated with an invoice.
  |
|
 Checkins
  |
 Retrieves all checkins. Checkins represent member presence at a certain office.
  |
|
 Contracts
  |
 Retrieves all contracts. A contract object allows one to associate contract data to the companies.
  |
|
 Credit Accounts
  |
 Retrieves coin credit balance for a team/member in a specific month.
  |
|
 Fees
  |
 Retrieves all fee objects. A fee object describes one-off charges or groups of one-off charges.
  |
|
 Floors
  |
 Retrieves all floors in the space.
  |
|
 Issues
  |
 Retrieves all issues.
  |
|
 Members
  |
 Retrieves all members. A member has all the member's data in a single place like memberships, invoices, charges, fees, etc.
  |
|
 Memberships
  |
 Retrieves all memberships. A membership object allows to assign recurring charges (price plans) to individual members or teams.
  |
|
 Offices
  |
 Retrieves all separate physical locations in the space.
  |
|
 Passes
  |
 Retrieves all passes.
  |
|
 Payments
  |
 Retrieves all payment objects (invoices / credit notes)
  |
|
 Plans
  |
 Retrieves all plans. A plan object allows to create one-off or recurring named charges.
  |
|
 Rates
  |
 Retrieves all resource rates.
  |
|
 Resources
  |
 Retrieves all types of resources.
  |
|
 Resource Types
  |
 Retrieves all resource types in the organization.
  |
|
 Teams
  |
 Retrieves all teams.
  |
|
 Visits
  |
 Retrieves visits in the organization.
  |

|
|
 Field To Expand
  |
 Select the field that you would like to expand in the data. This will cause multiple rows to show each object in the selected field. You will not be able to expand any data, if "None" is selected.
  |
|
 Date Selection Criteria
  |
 Select the type of date you want to filter the data for. Select "All Data" if you don't want to filter the data or want to get all data.
  |
|
 Filter Data By Date
  |
 S

elect this check box if you would like to filter the data for the selected duration.
  |
|
 Date Selection
  |
 Select the date format for your data.
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


**Days Back**


 field. Specify either today or 0, yesterday or 1, or today-7 or 7 to get data for 7 days into the past.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Start Date - Specific
  |
 Select the first date in your date range using the date selector.
  |
|
 End Date - Specific
  |
 Select the last date in your date range using the date selector.
  |
|
 Start Date - Relative
  |
 Enter the number of days back that you would like to get data from (start day). Combine with
 ********End Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ********Start Date********
 to create a range of represented days.


 For example, if you entered 10 for
 ********Start Date********
 and 5 for
 ********End Date********
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Time Period
  |
 Specify the time period that you would like to receive data for.
  |
|
 Starting Day of the Week
  |
 Select the day you would like your week to start with.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 What endpoint is the base URL for this connector?

The base URL for the OfficeRnD connector is

https://app.officernd.com/api/v1/organizations/{

orgSlug}).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Bookings
  |
 /bookings
  |
|
 Booking Occurrences
  |
 /bookings/occurrences
  |
|
 Charges
  |
 /charges
  |
|
 Checkins
  |
 /checkins
  |
|
 Contracts
  |
 /contracts
  |
|
 Credit Accounts
  |
 /credit-accounts/stats
  |
|
 Fees
  |
 /fees
  |
|
 Floors
  |
 /floors
  |
|
 Issues
  |
 /issues
  |
|
 Members
  |
 /members
  |
|
 Memberships
  |
 /memberships
  |
|
 Offices
  |
 /offices
  |
|
 Passes
  |
 /passes
  |
|
 Payments
  |
 /payments
  |
|
 Plans
  |
 /plans
  |
|
 Rates
  |
 /rates
  |
|
 Resources
  |
 /resources
  |
|
 Resource Types
  |
 /resource-types
  |
|
 Teams
  |
 /teams
  |
|
 Visits
  |
 /visits
  |


####
 What kind of credentials do I need to power up this connector?

You need your client ID and client secret associated with your OfficeRnD API. You also need the organization for your OfficeRnD environment.

###
 Where can I find my organization?

You can find your organization in the API URL.


 For example, if your API URL is "

https://app.officernd.com/api/v1/organizations/domo"

" then your organization is "domo".

###
 How often can the data be updated?

As often as needed.

###
 Are there any API limits that I need to be aware of?

No


 Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


