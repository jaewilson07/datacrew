

Intro
-------

Agentbox offers agencies a complete cloud-based software solution for Sales and Property Management teams. Cutting edge design, robust training methodology, and ownership with integrity are its strengths.


 Use Domo to track and monitor how the data changes over time, and create customizable reports to tell compelling stories behind the data. Within just a few minutes you’ll be able to quickly and easily create powerful visualizations that identify key metrics to track.


 The Agentbox Connector is a "Cloud App" Connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the Connector page for this and other Cloud App Connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Agentbox account in the Data Center. This topic discusses the fields and menus that are specific to the Agentbox Connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Agentbox account and create a DataSet, you must have the client ID and the API key associated with your

Agentbox account.

Connecting to Your Agentbox Account
-------------------------------------

This section enumerates the options in the Credentials and Details panes in the Agentbox Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Agentbox account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter your Agentbox client ID.
  |
|
 API Key
  |
 Enter your Agentbox API key.
  |

Once you have entered valid Agentbox credentials, you can use the same account any time you go to create a new Agentbox DataSet. You can manage Connector accounts in the
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
 Select the Agentbox report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Contacts
  |
 Returns a set of contact records meeting the supplied criteria.
  |
|
 Enquiries
  |
 Returns a list of enquiries based on the search criteria.
  |
|
 Inspections
  |
 Returns a list of inspections based on the search criteria.
  |
|
 Notes
  |
 Returns a set of notes records meeting the supplied criteria information.
  |
|
 Listings
  |
 Returns a set if listings meeting the supplied criteria
  |
|
 Listing Details
  |
 Returns a single listing record
  |
|
 Listings Details with Images
  |
 Returns detail of listing ids which fall under searched criteria with image(s) data which will be expanded as columns.
  |
|
 Offices
  |
 Returns all office records (Full Details)
  |
|
 Gross Commission Allocation report
  |
 Returns Gross Commission Allocation report
  |
|
 Gross Commission Allocation External report
  |
 Returns Gross Commission Allocation External report
  |
|
 Gross Commission Allocation Summary report
  |
 Returns Gross Commission Allocation Summary report
  |
|
 Marketing Funds Expenses Summary
  |
 Returns Marketing Funds Expenses Summary report
  |
|
 Performance
  |
 Returns performance metrics
  |
|
 Staff Members
  |
 Returns all staff member records
  |
|
 Tasks
  |
 Returns a set of tasks records meeting the supplied criteria
  |

|
|
 Only Import Records Modified Since Last Run
  |
 Select 'Yes' if you want to

import the records modified since the last run else select 'No.'
  |
|
 Fields to Include
  |
 Select the output additional objects that you would like to include in the response.
  |
|
 Performance Period Start Date
  |
 Select the start date for the performance period.
  |
|
 Performance Period End Date
  |
 Select the end date for the performance period.
  |
|
 Sale Status
  |
 Select the sales  status for the 'Sales Written' related metrics.
  |
|
 Filter By
  |
 Select whether you want to fetch the data by the modified date or created date.
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


 The base URL for the Agentbox connector is

https://api.agentboxcrm.com.au

.


####
 Which endpoint(s) does each report call in this Connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Contacts
  |
 /contacts
  |
|
 Enquiries
  |
 /enquiries
  |
|
 Gross Commission Allocation External report
  |
 /reports/gross-commission-allocation-external
  |
|
 Gross Commission Allocation report
  |
 /gross-commission-allocation
  |
|
 Gross Commission Allocation Summary report
  |
 /reports/gross-commission-allocation-summary
  |
|
 Inspections
  |
 /inspections
  |
|
 Listings
  |
 /listings
  |
|
 Marketing Funds Expenses Summary and Performance
  |
 /reports/marketing-funds-expenses-summary
  |
|
 Notes
  |
 /notes
  |
|
 Offices
  |
 /offices
  |
|
 Staff Members and Tasks
  |
 /staff
  |


####
 What kind of credentials do I need to power up this Connector?

You need the client ID and the API key associated with your

Agentbox account.


####
 Are there any API limits I should be aware of?

No

###
 Can I use the same account to create multiple datasets?

Yes

