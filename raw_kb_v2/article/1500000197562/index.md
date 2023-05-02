

Intro
-------

TrustYou leverages hotel guest feedback to improve the guest experience, increase the hotel's online visibility, improve operations, and drive more bookings. The Analytics API allows TrustYou partners to query numerical data on hotels for display in their own KPI dashboards. Use Domo's TrustYou Connector to retrieve details about groups, sources, hotel data, and much more. To learn more about the TrustYou API, visit

https://www.programmableweb.com/api/trustyou-connect

.


 You connect to your TrustYou account in the Data Center. This topic discusses the fields and menus that are specific to the TrustYou connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your TrustYou account and create a DataSet, you must have the API key associated with your TrustYou account.


 Connecting to Your TrustYou Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

TrustYou

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

TrustYou

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
 Enter the API key associated with your TrustYou account.
  |


 Once you have entered valid TrustYou credentials, you can use the same account any time you go to create a new TrustYou DataSet. You can manage connector accounts in the
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

TrustYou

report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Categories
  |
 Returns a list of available categories.
  |
|
 Data
  |
 Returns analytics data about the selected Hotels or Groups.
  |
|
 Groups
  |
 Returns a list of available groups. This report also can list the individual hotels in each group.
  |
|
 Impact Scores
  |
 Returns scores that predict what impact positive & negative mentions have on each hotel's performance data point.
  |
|
 Sources
  |
 Returns a list of sources that reviews come from.
  |

|
|
 Query Type
  |
 Select whether you want the results to be listed by hotels or aggregated by groups.
  |
|
 Include Hotels
  |
 Select True to include the list of hotels contained in the groups.
  |
|
 Group Selection Criteria
  |
 Select whether you want to retrieve all groups or selected groups.
  |
|
 Groups
  |
 Select the groups that you want to appear in the report
  |
|
 Hotels Selection Criteria
  |
 Select whether you want to retrieve data for all hotels or selected hotels
  |
|
 Hotels
  |
 Select the hotels that you want to appear in the report
  |
|
 Stars
  |
 The results will be filtered to include locations that were given the selected number of stars.
  |
|
 Category ID
  |
 Select the category that you want to report on.
  |
|
 Sentiment
  |
 Select the sentiment that should be used to filter the results (All, Positive, Neutral, or Negative).
  |
|
 Sources
  |
 Select the sources of the reviews that you are interested in.
  |
|
 Duration
  |
 Select the duration for the report (a Single Date, or a Date Range).
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

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

