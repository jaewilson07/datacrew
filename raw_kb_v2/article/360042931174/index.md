

Intro
-------

Sportradar AG is a multinational corporation that collects and analyzes sports data and provides services to bookmakers, national and international sports federations, and media companies. To learn more about the Sportradar API, visit their page (

https://developer.sportradar.com/

).


 You connect to your Sportradar account in the Data Center. This topic discusses the fields and menus that are specific to the Sportradar connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sportradar account and create a DataSet, you must have at least one Sportradar API key. You can obtain API keys by registering for a Sportradar account:

https://developer.sportradar.com/member/register

Connecting to Your Sportradar Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sportradar Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Sportradar account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key(s)
  |
 Enter a Sportradar API key. You can retrieve data for multiple API keys by entering all the keys you want, separated by commas. For more information about obtaining API keys, see "Prerequisites," above.
  |


 Once you have entered valid Sportradar credentials, you can use the same account any time you go to create a new Sportradar DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains two primary menus—
 **API**
 , from which you select the API you want to pull your data from,
 **Report**
 , from which you select a report type. Other menus may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 API
  |
 Select the API you want to pull data from. Currently four APIs are available: NHL, NFL, NBA, and MLB.
  |
|
 Report
  |
 Select the Sportradar report you want to run. The available reports depend on the API you have selected.

*NHL Reports**

  |  |
| --- | --- |
|
 Away Game Faceoffs
  |
 Returns away game faceoff data for a given season.
  |
|
 Daily Schedule
  |
 Returns daily schedule information for a given time period.
  |
|
 Daily Transfers
  |
 Returns information about daily transfers for a given time period.
  |
|
 Game Boxscore
  |
 Returns boxscore data for a given season.
  |
|
 Game Summary
  |
 Returns game summary data for a given season.
  |
|
 Game Time on Ice
  |
 Returns time on ice data for a given season.
  |
|
 Home Game Faceoffs
  |
 Returns home game faceoff data for a given season.
  |
|
 Injuries
  |
 Returns data about injuries.
  |
|
 League Hierarchy
  |
 Provides a list of all NHL teams.
  |
|
 League Leaders Goaltending
  |
 Provides a list of league goaltending leaders for a given season.
  |
|
 League Leaders Skaters
  |
 Provides a list of league skating leaders for a given season.
  |
|
 Play by Play
  |
 Returns play-by-play data for a given season.
  |
|
 Player Profile
  |
 Returns player profile data for a given player.
  |
|
 Rankings
  |
 Returns rankings for a given season.
  |
|
 Schedule
  |
 Returns schedule data for a given season.
  |
|
 Seasonal Faceoffs
  |
 Returns seasonal faceoff data for a given season and team.
  |
|
 Series Faceoffs
  |
 Returns series faceoff data for a given season and team.
  |
|
 Series Schedule
  |
 Returns series schedule data for a given season.
  |
|
 Series Statistics
  |
 Returns series statistics for a given season and team.
  |
|
 Standings
  |
 Returns standings data for a given season.
  |
|
 Team Profile
  |
 Returns profile data for a given team.
  |


**NBA Reports**


|  |  |
| --- | --- |
|
 Daily Schedule
  |
 Returns daily schedule information for a given time period.
  |
|
 Daily Transfers
  |
 Returns information about daily transfers for a given time period.
  |
|
 Game Boxscore
  |
 Returns boxscore data for a given season.
  |
|
 Game Summary
  |
 Returns game summary data for a given season.
  |
|
 Injuries
  |
 Returns data about injuries.
  |
|
 League Hierarchy
  |
 Provides a list of all NBA teams.
  |
|
 League Leaders
  |
 Returns data about league leaders for a given season.
  |
|
 Play by Play
  |
 Returns play-by-play data for a given season.
  |
|
 Player Profile
  |
 Returns player profile data for a given player.
  |
|
 Rankings
  |
 Returns rankings for a given season.
  |
|
 Schedule
  |
 Returns schedule data for a given season.
  |
|
 Seasonal Statistics
  |
 Returns seasonal statistics for a given season and team.
  |
|
 Series Schedule
  |
 Returns series schedule data for a given season.
  |
|
 Standings
  |
 Returns standings data for a given season.
  |
|
 Team Profile
  |
 Returns profile data for a given team.
  |


**NFL Reports**


|  |  |
| --- | --- |
|
 Away Game Rosters
  |
 Returns away game roster data for a given season.
  |
|
 Game Boxscore
  |
 Returns boxscore data for a given season.
  |
|
 Game Statistics
  |
 Returns game statistics for a given season.
  |
|
 Home Game Rosters
  |
 Returns home game roster data for a given season.
  |
|
 League Hierarchy
  |
 Provides a list of all NFL teams.
  |
|
 Play by Play
  |
 Returns play-by-play data for a given season.
  |
|
 Player Profile
  |
 Returns player profile data for a given player.
  |
|
 Schedule
  |
 Returns schedule data for a given season.
  |
|
 Standings
  |
 Returns standings data for a given season.
  |
|
 Team Profile
  |
 Returns profile data for a given team.
  |
|
 Weekly Depth Charts
  |
 Returns depth charts for a given week.
  |
|
 Weekly Injuries
  |
 Returns injury data for a given week.
  |
|
 Weekly Schedule
  |
 Returns schedule data for a given week.
  |


**MLB**
**Reports**


|  |  |
| --- | --- |
|
 Daily Boxscore
  |
 Returns boxscore data for a given time period.
  |
|
 Daily Schedule
  |
 Returns daily schedule information for a given time period.
  |
|
 Daily Summary
  |
 Returns daily summary data for a given time period.
  |
|
 Daily Transactions
  |
 Returns data about daily transactions for a given time period.
  |
|
 Game Boxscore
  |
 Returns boxscore data for a given season.
  |
|
 Game Summary
  |
 Returns game summary data for a given season.
  |
|
 Injuries
  |
 Returns data about injuries.
  |
|
 League Depth Charts
  |
 Returns MLB league depth charts.
  |
|
 League Schedule
  |
 Returns league schedule data for a given time season.
  |
|
 Play by Play
  |
 Returns play-by-play data for a given season.
  |
|
 Player Profile
  |
 Returns player profile data for a given player.
  |
|
 Rankings
  |
 Returns rankings for a given season.
  |
|
 Seasonal Statistics
  |
 Returns seasonal statistics for a given season and team.
  |
|
 Series Schedule
  |
 Returns series schedule data for a given season.
  |
|
 Standings
  |
 Returns standings data for a given season.
  |
|
 Team Depth Chart
  |
 Returns depth charts for a given team.
  |
|
 Team Hierarchy
  |
 Returns a list of MLB teams.
  |
|
 Team Profile
  |
 Returns profile data for a given team.
  |
|
 Team Rosters - Active
  |
 Returns a list of active MLB rosters.
  |
|
 Team Rosters - Full
  |
 Returns a list of full MLB rosters.
  |
|
 Venues
  |
 Returns a list of venues for the current season.
  |

|
|
 Language
  |
 Select the language for your results. Available for the NBA API only.
  |
|
 Season
  |
 Select the year of the season you want to retrieve data for. For seasons that span multiple calendar years, enter the earlier year. For example, for the 2015-2016 season, you would enter

2015

.


 Data is available for each API for the following years:
 * **NHL**
 - 2015+
* **NFL**
 - 2000+
* **NBA**
 - 2013+
* **MLB**
 - 2012+
 |
|
 Season Type
  |
 Select the season type you want to pull information for.
  |
|
 Start Date
  |
 Select whether to pull data for a specific or relative start date. If you select
 **Specific**
 , you will be asked to choose a specific start date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to start pulling data for).
  |
|
 Select Specific Start Date
  |
 Select the date you want to start pulling data for. Combine with
 **Select Specific End Date**
 to create a range of dates.
  |
|
 End Date
  |
 Select whether to pull data for a specific or relative end date. If you select
 **Specific**
 , you will be asked to choose a specific end date from a date picker. If you select
 **Relative**
 , you will be asked to enter an offset value (i.e. the number of days in the past you want to stop pulling data for).
  |
|
 Select Specific End Date
  |
 Select the date you want to stop pulling data for. Combine with
 **Select Specific Start Date**
 to create a range of dates.
  |
|
 Days Back to Start From
  |
 Enter the number of days back you want to start pulling data for. Combine with
 **Days Back to End At**
 to create a relative date range. For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , each time the report ran it would pull data from the last 10 days up until the last 5 days.
  |
|
 Days Back to End At
  |
 Enter the number of days back you want to stop pulling data for. Combine with
 **Days Back to Start From**
 to create a relative date range. For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , each time the report ran it would pull data from the last 10 days up until the last 5 days.
  |
|
 Week
  |
 Select the week you want to retrieve information for. For the pre-season (PRE), valid weeks are indicated by numbers 1 to 4. For the regular season (REG), valid weeks are indicated by numbers 1-17. For the post-season (PST), valid weeks are indicated by numbers 1-4.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

