

Intro
-------

Meltwater is a software as a service (SaaS) company that develops and markets social media monitoring and engagement software that emphasizes analytics and focused engagement. It examines millions of posts each day from social media platforms, blogs and news sites, filtering out the useless or non-applicable ones and assigning sentiment to the ones you are interested in. Meltwater's API enables you to stay on top of billions of editorial, blog, and social media conversations. Use Domo's Meltwater connector to retrieve the desired filtered searches from billions of records. To learn more about the Meltwater API, visit

https://developer.meltwater.com/

.


 You connect to your Meltwater account in the Data Center. This topic discusses the fields and menus that are specific to the Meltwater connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to your Meltwater account and create a DataSet, you must have your Meltwater API key.

Connecting to Your Meltwater Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Meltwater

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

Meltwater

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Meltwater API key.
  |


 Once you have entered valid Meltwater credentials, you can use the same account any time you go to create a new Meltwater DataSet. You can manage connector accounts in the
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
 Select the

Meltwater

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Analytics Top Entities
  |
 Returns the top entities for the selected search.
  |
|
 Analytics Top Locations
  |
 Returns the top locations for the selected search.
  |
|
 Analytics Top Keyphrases
  |
 Returns the top keyphrases for the selected search.
  |
|
 Analytics Top Shared Documents
  |
 Returns the top shared documents for the selected search.
  |
|
 Analytics Top Sources
  |
 Returns the top sources for the selected search.
  |
|
 Analytics Top Tags
  |
 Returns the top tags for the selected search.
  |
|
 One Time Export
  |
 Imports data from a completed one-time export

.
  |
|
 Recurring Export
  |
 Imports data from a recurring export

.
  |
|
 Searches
  |
 Returns a list of all the searches.
  |

|
|
 Company
  |
 Select the Company to report on.
  |
|
 Saved search
  |
 Select the Search Id to report on.
  |
|
 Source
  |
 Select the datasource to query.
  |
|
 Export
  |
 Select the export to return. Only exports that have finished processing will show here.
  |
|
 Location level
  |
 Select the location level to be used in your query.
  |
|
 Additional Data
  |
 Select the value to expand. The selected value is expanded and the rest are ignored. All values are ignored if 'None' is selected.
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

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

