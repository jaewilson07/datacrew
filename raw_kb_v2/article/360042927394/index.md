

Intro
-------

SpringServe provides a suite of ad serving tools designed to make digital advertising more efficient. Use Domo's SpringServe connector to retrieve lists of SpringServe groups, partners, tags, and domains. To learn more about the SpringServe API, visit their page (

https://wiki.springserve.com/display/SSD/Reporting+API

).


 You connect to your SpringServe account in the Data Center. This topic discusses the fields and menus that are specific to the SpringServe connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SpringServe account and create a DataSet, you must have a SpringServe username and password.


 Connecting to Your SpringServe Account
----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SpringServe Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SpringServe account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your SpringServe username.
  |
|
 Password
  |
 Enter your SpringServe password.
  |


 Once you have entered valid SpringServe credentials, you can use the same account any time you go to create a new SpringServe DataSet. You can manage connector accounts in the
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
 Select the SpringServe report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Demand Groups
  |
 Returns a list of demand groups.
  |
|
 Demand Partners
  |
 Returns a list of demand partners.
  |
|
 Demand Tag
  |
 Returns a list of demand tags.
  |
|
 Domain Lists
  |
 Returns a list of domain lists.
  |
|
 Domains in Domain List
  |
 Returns the domains in a given domain list.
  |
|
 Reporting
  |
 Returns the requested report data.
  |
|
 Supply Groups
  |
 Returns a list of supply groups.
  |
|
 Supply Partners
  |
 Returns a list of supply partners.
  |
|
 Supply Tags
  |
 Returns a list of supply tags.
  |

|
|
 Domain
  |
 Enter the ID of the domain you want to return data for.
  |
|
 Interval
  |
 Select the time interval you want to return data for.
  |
|
 Dimensions
  |
 Select all of the dimensions you want to return data for. The
 **Domain**
 dimension is only available when you select a date range instead of a specific date.
  |
|
 Date Type Selector
  |
 Select whether you want to show data for a specific date (
 **DatePicker**
 ) or a range of days (
 **DateRange**
 ).
  |
|
 Date Range
  |
 Select whether to pull data for today, yesterday, or 7 days ago.
  |
|
 Type of Date Range
  |
 Select whether to pull data for a specific date or a given number of days back.
  |
|
 Start Date
  |
 Select the start date for your report.
  |
|
 End Date
  |
 Select the end date for your report.
  |
|
 Date Offset
  |
 Enter the number of days back you want to pull data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


#####
 What version of the SpringServe API does this connector use?

This connector uses version 0 of the

SpringServe API

.

####
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL
  |
| --- | --- |
|
 Demand Groups
  |
 /demand\_groups
  |
|
 Demand Partners
  |
 /demand\_partners
  |
|
 Demand Tag
  |
 /demand\_tags
  |
|
 Domain Lists
  |
 /domain\_lists
  |
|
 Domains in Domain List
  |
 /domain\_lists/{domain\_id}/domains
  |
|
 Reporting
  |
 /report
  |
|
 Supply Groups
  |
 /supply\_groups
  |
|
 Supply Partners
  |
 /supply\_partners
  |
|
 Supply Tags
  |
 /supply\_tags
  |


#####
 What kind of credentials do I need to power up this connector?

You need the username and password associated with your SpringServe account.

####
 Can I use the same account multiple times to create datasets?

Yes.

####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits that I need to be aware of?

No.

