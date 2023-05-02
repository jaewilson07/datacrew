

Intro
-------

The Open FEC Connector allows you to retrieve data about United States Elections. Use Domo's Open FEC connector to retrieve data about calendar events, candidates, committees, and more. Use Domo's Open FEC connector to instantly connect, visualize, and get insights from elections data. To learn more about the Open FEC API, visit their page (

https://api.open.fec.gov/developers/

).


 You connect to your Open FEC account in the Data Center. This topic discusses the fields and menus that are specific to the Open FEC connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Open FEC account and create a DataSet, you must have your API key generated at

https://api.data.gov/signup/

.


 Connecting to Your Open FEC Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Open FEC

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

Open FEC

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
 Enter your API key. Visit

https://api.data.gov/signup/

to generate your API key.
  |


 Once you have entered valid credentials, you can use the same account any time you go to create a new

Open FEC

DataSet. You can manage connector accounts in the
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
 Select the Open FEC report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Calendar Events
  |
 Returns a list of calendar events with start dates that fall between the selected dates.
  |
|
 Candidates
  |
 Returns a list of candidates that can be filtered by office and political party.
  |
|
 Committees
  |
 Returns information about committees and filers. Date range selection is based on the committee's first filing date.
  |
|
 Financials
  |
 Returns top-level financial information about candidates running for the same office.
  |

|
|
 Party
  |
 Enter the three-letter code for the party of interest. For example, use 'REP' for Republican, 'DEM' for Democrat or 'LIB' for Libertarian. Use 'all' to return all parties.
  |
|
 Office
  |
 Select to filter the returned results to include candidates by the office sought.
  |
|
 Election Year
  |
 Filter the returned results to include only candidates running for office in a specific year. You must use a 4 digit year format.
  |
|
 Committee Type
  |
 Select the committee type.
  |
|
 Election Year
  |
 Enter the Election Cycle year. The cycle begins with an odd year and is named for its ending, even year. To see data for the entire four years of a presidential term or six years of a senatorial term, you will need the 'Aggregate Full Cycle' option set to true. Must use 4 digit year format.
  |
|
 Aggregate Full Cycle
  |
 Select to aggregate data for a full election cycle. By default it's False.
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

