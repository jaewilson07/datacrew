

Intro
-------

Podium allows users to track their online reviews from a large number of review sites including Google and Facebook. Use the Podium connector to understand your online reviews data with the Domo Podium integration. To learn more about the Podium API, visit their page (

https://podium.readthedocs.io/en/latest/API.html

).


 You connect to your Podium account in the Data Center. This topic discusses the fields and menus that are specific to the Podium connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to your Podium account and create a DataSet, you must have the API Token and Organization ID associated with your Podium account.

Connecting to Your

Podium

Account
-----------------------------------------

This section enumerates the options in the Credentials and Details panes in the

Podium

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

Podium

account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 API Token
  |
 Enter the API Token. You may need to contact Podium to request this.
  |
|
 Organization ID
  |
 Enter the organization ID. You may need to contact Podium to request this.
  |

Once you have entered valid Podium credentials, you can use the same account any time you go to create a new Podium DataSet. You can manage Connector accounts in the
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

Podium

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Invites
  |
 Returns a location's invites
  |
|
 Location Summary
  |
 Returns a summary of data about a location
  |
|
 Organization's Locations
  |
 Returns a list of your organization's locations
  |
|
 Private Feedback
  |
 Returns private feedback that has been provided for a location
  |
|
 Reviews
  |
 Returns reviews about a specific location
  |
|
 Sites Summary
  |
 Returns summary data about a location, broken down by website
  |

|
|
 Location
  |
 Select Location ID.
  |
|
 Report Duration
  |
 Select the duration for the report (a Single Date, or a Date Range)
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
 ****************End Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 End Date - Relative
  |
 Enter the number of days back that you would like to get data to (end day). Combine with
 ****************Start Date****************
 to create a range of represented days.


 For example, if you entered 10 for
 ****************Start Date****************
 and 5 for
 ****************End Date****************
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

What version of the Podium API does this connector use?

This connector uses version 2 of the Podium API (

https://podium.co/api/v2/

).

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Invites
  |
 /locations/{locationId}/invites
  |
|
 Location Summary
  |
 /locations/{locationId}/summary
  |
|
 Organization's Locations
  |
 /organizations/{orgId}/locations
  |
|
 Private Feedback
  |
 /locations/{locationId}/private-feedback
  |
|
 Reviews
  |
 /locations/{locationId}/reviews
  |
|
 Sites Summary
  |
 /locations/{locationId}/sites/summary
  |
|
 Users Summary
  |
 /locations/{locationId}/users/summary
  |


####

What kind of credentials do I need to power up this connector?

You need the API token and organization id associated with your Podium account.

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


