

Intro
-------

The Domo Twitter V2 Connector integrates Domo with Twitter to extract data from the Twitter API. It provides access to read Twitter data, including user tweets, user mentioned tweets and many other Twitter entities, and returns data based on the provided Twitter user name. Once your Twitter data is in Domo, you can use your data to measure your social media ROI with visualizations in intuitive dashboards and apps. Get the most out of your marketing budget by measuring your social media engagement during different time periods, detect cross-platform engagement trends, and better understand your target audience. You can also track your top posts across social media platforms, rate and filter your top posts, and identify other patterns to help you create engaging content. To learn more about the Twitter API, visit their site (

https://dev.twitter.com/rest/public

).


 You connect to your Twitter account in the Data Center. This topic discusses the fields and menus that are specific to the Twitter V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Twitter account and create a DataSet, you must have your Twitter API key and API secret.


 Connecting to Your Twitter Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter V2 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Twitter account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Twitter API key.
  |
|
 API Secret
  |
 Enter your Twitter API secret.
  |


 Once you have entered valid Twitter credentials, you can use the same account any time you go to create a new Twitter V2 DataSet. You can manage connector accounts in the
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
 Select the Twitter V2 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Search Recent Tweets
  |
 Returns Tweets from the last seven days that match the search query.
  |
|
 Tweets Lookup By Id
  |
 Returns a variety of information about the Tweet specified by the requested ID or list of IDs.
  |
|
 User Tweets
  |
 Returns Tweets composed by a single user, specified by the requested user ID.
  |
|
 User Mention Tweets
  |
 Returns Tweets mentioning a single user specified by the requested user ID.
  |
|
 Users By Name
  |
 Returns a variety of information about one or more users specified by their usernames.
  |
|
 User Lookup Following
  |
 Returns a list of users the specified user ID is following.
  |
|
 User Lookup Followers
  |
 Returns a list of users following the specified user ID.
  |


 |
|
 Search Query
  |
 Enter the query you want to search the tweets for.
  |
|
 Fields
  |
 Select the fields you want to fetch the tweets for.
  |
|
 Tweet Fields
  |
 Select the tweet fields you want to fetch the tweets for.
  |
|
 Tweet IDs
  |
 Enter the list of comma separated Tweet ids you want to fetch the tweets for.
  |
|
 Include Referenced Tweet ID
  |
 Select this checkbox if you want to include Referenced Tweets Id.
  |
|
 User Name
  |
 Enter the username you want to fetch the tweets for.
  |
|
 Filter By Date
  |
 Select this checkbox if you want to filter the data by date.
  |
|
 User Fields
  |
 Select user fields.
  |
|
 Expansions
  |
 Select expansions.
  |
|
 Media Fields
  |
 Select media fields.
  |
|
 Place Fields
  |
 Select place fields.
  |
|
 Poll Fields
  |
 Select poll fields.
  |
|
 Tweet Fields
  |
 Select tweet fields.
  |
|
 Start Time
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

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

