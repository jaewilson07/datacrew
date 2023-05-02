

Intro
-------


 Zift Solutions (formerly known as Elastic Grid) maximizes lead generation for resellers and brands by delivering a marketplace used to access, create and publish marketing campaigns.

You connect to your Zift Solutions account in the Data Center. This topic discusses the fields and menus that are specific to the Zift Solutions connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Zift Solutions account and create a DataSet, you must have the following:

 An Zift Solutions client ID
* An Zift Solutions client secret

To obtain these credentials, reach out to your Zift Solutions representative.


 Connecting to Your Zift Solutions Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Zift Solutions Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Zift Solutions account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Zift Solutions client ID.
  |
|
 Client Secret
  |
 Enter your Zift Solutions client secret.
  |


 Once you have entered valid Zift Solutions credentials, you can use the same account any time you go to create a new Zift Solutions DataSet. You can manage connector accounts in the
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
 Select the Zift Solutions report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Advanced Data for Customer Engagement
  |
 Returns an advanced set of customer engagement data that can be used to access details about customer interaction on campaign micro-sites.
  |
|
 Advanced Data for Partner Engagement
  |
 Returns an advanced set of partner engagement data used to access campaign metrics by partner company.
  |
|
 Advanced Data for Collateral Vendor
  |
 Returns itemized download information including name, file, language, campaign, solutions, and more.
  |
|
 Advanced Data for Partner Execution
  |
 Returns an advanced set of partner execution data, including traffic, language, status and user information for each execution. The data set can be segmented by any applicable global filters.
  |
|
 Chart Data for Partner Engagement
  |
 Returns charting data, including individual metric totals.
  |
|
 Chart Data for Partner Execution
  |
 Returns charting data, including individual metric totals by date.
  |
|
 Grid Data for Partner Engagement
  |
 Returns tabulated metrics grouped by campaign per partner company.
  |
|
 Grid Data for Partner Execution
  |
 Returns tabulated metrics grouped by the individual execution.
  |
|
 Paginated Data for Customer Engagement
  |
 Returns a simple set of customer engagement data that can be used to access high-level details about customer interaction on campaign micro-sites.
  |
|
 Paginated Data for Partner Engagement
  |
 Returns a simple set of partner engagement data.
  |
|
 Partner Deals Summary
  |
 Returns a summary of deals data recorded in the Lead CRM, including information like total number of deals in progress and their status.
  |
|
 Partner Deals Advanced
  |
 Returns all data recorded in the Lead CRM including complete lead contact details and deal data.
  |
|
 Paginated Data for Partner Deals
  |
 Returns data recorded in the Lead CRM for deals, including lead name, customer, maturity, and close value.
  |
|
 Simple Data for Partner Execution
  |
 Returns all data recorded in the Lead CRM such as contact details and deal data.
  |
|
 Simple Paginated Data for Collateral Vendor
  |
 Returns aggregated collateral download information by file.
  |
|
 Total Per Day Data for Customer Engagement
  |
 Returns a total count of the requested data metric (e.g. Leads, Visits, etc.) broken down by daily totals for the requested period.
  |
|
 Total Per Day Data for Partner Engagement
  |
 Returns a total count of the requested data metric (e.g. Leads, Visits, etc.) broken down by daily totals for the requested period.
  |
|
 Vendor Tracking Emails
  |
 Returns email metrics such as number of emails sent and delivered, bounces, etc.
  |
|
 Vendor Tracking Visits
  |
 Returns lead visit information for campaigns including partner, source, and region information.
  |
|
 Vendor Lead Data
  |
 Returns lead totals for campaigns including partner, source, and region information.
  |
|
 Vendor Campaign Details
  |
 Returns vendor campaign data.
  |
|
 Vendor Collateral Performance
  |
 Returns itemized download information.
  |

|
|
 Vendor ID
  |
 Enter the ID of the vendor you want to retrieve information for.
  |
|
 Metric
  |
 Select the metric you want to retrieve information for.
  |
|
 Breakdown Value
  |
 Select how you would like the data in your report to be broken down.
  |
|
 Country (Optional)
  |
 Check the boxes for all countries you want to retrieve data for. If you do not select any countries, data will be returned for all countries.
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
|
 Partner User ID
  |
 Enter the user ID of the partner you want to retrieve information for.
  |
|
 Partner Company ID
  |
 Enter the company ID of the partner you want to retrieve information for.
  |
|
 Language
  |
 Enter the language you want to return results for, e.g.

en-US

for American English.
  |
|
 Maturity
  |
 Enter the single-digit number representing the maturity you want to retrieve information for. You can use the following table for help:


|
 Number
  |
 Maturity
  |
| --- | --- |
|
 0
  |
 All
  |
|
 1
  |
 Leads
  |
|
 2
  |
 Opportunity in progress
  |
|
 3
  |
 Opportunity on hold
  |
|
 4
  |
 Won
  |
|
 5
  |
 Lost
  |

|
|
 Grid Vendor Campaign ID
  |
 Enter the Grid Vendor Campaign ID you want to retrieve information for.
  |
|
 Source
  |
 Enter the unique identifier for the Source. Enter

0

for all,

1

for Direct, or

2

for Anonymous.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


####
 How often can the data be updated?

As often as needed.

###
 Are there any API limits I should be aware of?

No.

