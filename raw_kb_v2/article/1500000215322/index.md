

Intro
-------

Use Domo's Twitter Multi Account Connector to understand which content is most effective, then create content that drives engagement and revenue with your Twitter data integrated into Domo for multiple accounts. Once your Twitter data is in Domo, you can use your data to measure your social media ROI with visualizations in intuitive dashboards and apps. Get the most out of your marketing budget by measuring your social media engagement during different time periods, detect cross-platform engagement trends, and better understand your target audience. You can also track your top posts across social media platforms, rate and filter your top posts, and identify other patterns to help you create engaging content.


 The Domo Twitter Multi Account Connector integrates Domo with Twitter to extract data from the Twitter API. It provides access to read Twitter data including followers, timelines, re-tweets and many other Twitter entities. It returns data for multiple accounts in a single dataset. To learn more about the Twitter API, visit their site (

https://dev.twitter.com/rest/reference

).


 You connect to your Twitter accounts in the Data Center. This topic discusses the fields and menus that are specific to the Twitter Multi Account connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Best Practices
----------------

Most reports work best when you set them to "Append" rather than "Replace." This way you can pull in recent data and not make unnecessary API calls. You can also use the
 ****Retrieve all available data****
 option to pull all data since the DataSet was last updated.


 Prerequisites
---------------

To connect to your Twitter accounts and create a DataSet, you must have the Twitter accounts added in Domo that you want to pull data from.

###
 Adding Twitter multi accounts

You need to add your Twitter accounts through API calls. When creating an account, you must specify the Account Type properties. See

Create an Account

documentation for more details. The Account Type properties are different, depending on the type of Account you are trying to create.


 Use the following POST body to make an API call for adding a new Twitter account. Note that you need to provide your own credentials values for YOUR\_ACCESS\_TOKEN, YOUR\_TWITTER\_NAME, YOUR\_OAUTH\_TOKEN, YOUR\_OAUTH\_TOKEN\_SECRET, YOUR\_CONSUMER\_KEY, YOUR\_CONSUMER\_SECRET, YOUR\_TWITTER\_ID, and YOUR\_TWITTER\_SCREEN\_NAME.


`curl --location --request POST '

https://api.domo.com/v1/accounts

' \`


`--header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \`


`--header 'Accept: application/json' \`


`--header 'Content-Type: application/json' \`


`--data-raw '{`


`"name": "YOUR_TWITTER_NAME",`


`"type": {`


`"id": "twittermultiaccount",`


`"properties": {`


`"oauth_token": "YOUR_OAUTH_TOKEN",`


`"oauth_token_secret": "YOUR_OAUTH_TOKEN_SECRET",`


`"oauth_consumer_key": "YOUR_CONSUMER_KEY",`


`"oauth_consumer_secret": "YOUR_CONSUMER_SECRET",`


`"user_id": "YOUR_TWITTER_ID",`


`"screen_name": "YOUR_TWITTER_SCREEN_NAME"`


`}`


`}`


`}'`


 You can use POSTMAN or any other tool to make the API call.

##
 Details Pane

This pane contains the options for account selection and the primary

Reports

menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Account Selection
  |
 Choose whether you want to pull data for all Twitter accounts, or you wish to discover and select specific Twitter accounts.
  |
|
 Accounts Discovery
  |
 Select the Twitter accounts you want to pull data for.
  |
|
 Skip Account Errors
  |
 Select Yes if you want to skip the account if it fails; otherwise, in case of an account error, the connector will stop.
  |
|
 Report
  |
 Select the report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Returns information about the authenticated user, such as time zone, screen name, language, etc.
  |
|
 Favorites
  |
 Returns the 20 most recent Tweets marked as Favorites by the authenticated user.
  |
|
 Followers
  |
 Returns a list of all the users who are following the authenticated user.
  |
|
 Friends
  |
 Returns a list of users the authenticated user is following.
  |
|
 Home Timeline
  |
 Returns the list of Tweets from the authenticated user’s main timeline screen at twitter.com.
  |
|
 Mentions Timeline
  |
 Returns a list of Tweets in which the authenticated user is mentioned (referred to by

“@username”).
  |
|
 Retweeters
  |
 Returns a list of users who have retweeted posts from the authenticated user.
  |
|
 Retweets
  |
 Returns a list of the 100 most recent retweets of the tweet specified in the Tweet ID field.
  |
|
 Retweets of Me
  |
 Returns a list of the most recent tweets authored by the authenticated user that have been retweeted by others.
  |
|
 Search Tweets
  |
 Returns a collection of relevant Tweets matching or related to the specific text (which you specify in the
 ****Search Text****
 field). Twitter's search service is not meant to be an exhaustive source of Tweets. Not all Tweets will be indexed or made available via the search interface.
  |
|
 Search Users
  |
 Provides a simple, relevance-based search interface to public user accounts on Twitter. You can search for user names by entering a comma-separated list of names into the
 ****Screen Name****
 field, or you can search for text by entering that text into the
 ****Search Text****
 field. If the search text is specified, then the list of names will be ignored, and a list of users related to the search text will be returned. If there is no search text, the report will return information about the specified user names. User names are case-sensitive.
  |
|
 User Info
  |
 Returns basic information about the authenticated user.
  |
|
 User Timeline
  |
 Returns a collection of the most recent Tweets posted by the users indicated in the
 ****Screen Name****
 field.
  |
|
 Direct Messages
  |
 Returns all Direct Message events (both sent and received) within the last 30 days.
  |

|
|
 Allow New Columns
  |
 Select
 ****Yes****
 to allow new columns to be added to the DataSet. If you are going to use this DataSet in a DataFlow then this should be set to
 ****No****
 .
  |
|
 Break out entities into individual rows?
  |
 Select
 ****Yes****
 to display one entity of the Tweet (hashtag, user mention, URL, or symbol) per row.


 Select
 ****No****
 to display a comma-separated list of entities of each Tweet on a single row.
  |
|
 Allow New Columns
  |
 Select
 ****Yes****
 to allow new columns to be added to the DataSet. If you are going to use this DataSet in a DataFlow then this should be set to
 ****No****
 .
  |
|
 Retrieve all available data?
  |
 Select
 ****Yes****
 to retrieve all available data.


 Select
 ****No****
 to retrieve new data since the last update.


 For the
 ****Followers****
 report, if this is set to No, the most recent 200 followers will be retrieved. If it is set to Yes then all of the user's followers will be retrieved. This can take a long time and is not recommended for users with more than 5000 followers.
  |
|
 Start Date
  |
 Enter the earliest date you want to retrieve information for. This can be a fixed date


 (

MM-DD-YYYY

)


 or a relative date

(

today-7

,

yesterday-30

)

.


**Note:**
 If you want to create backfill for a new DataSet, do the following:

. Enter the backfill date in the
 **Start Date**
 field.
2. Select
 **No**
 in the
 **Retrieve all available data?**
 menu.
3. In the
 **Scheduling**
 pane, make sure
 **Append**
 is selected.

For an existing date source, if you want to create backfill OR if you want to wipe

all data and do a fresh data pull, do the following:

. Enter the backfill date in the
 **Start Date**
 field.
2. Select
 **Yes**
 in the
 **Retrieve all available data?**
 menu.
3. In the
 **Scheduling**
 pane, make sure
 **Replace All**
 is selected.
4. After the connector starts running...
	1. Change
	 **Retrieve all available data?**
	 to
	 **No**
	 .
	2. In the
	 **Scheduling Pane**
	 , select
	 **Append**
	 .

Backfill may not be completed during the first run of the DataSet. It might take a few hours to a few days to complete the backfill, based on the amount of data you are trying to pull and the backfill date you have entered.


 |
|
 Tweet ID
  |
 Enter the ID for the tweet you want to retrieve information for.


**Note:**

You can find the ID for a tweet in Twitter by doing the following:
 1. Click the
 **Tweets**
 link under your username.
2. Locate the Tweet you want to find the ID for.
3. Click the Tweet's timestamp.

A page opens for this tweet. The tweet ID is the long number at the end of the

URL (for example,

223432830066241537

in


 https://twitter.com/hal\_bunders


 on/status/223432830066241537

)


 |
|
 Use short column names
  |
 Select the option for column names length. If you select
 ****No****
 , the long & default column names will be displayed. If you select
 ****Yes****
 , the short column names will be displayed in the report.

If you are going to use this Data Source in a dataflow then this should be set to
 ****Yes****
 .
  |
|
 Search Text
  |
 Enter the search text for the report. The report will include search results related to this text.
  |
|
 Screen Name
  |
 Enter a comma-separated list of names for the report. Names must be capitalized correctly. If no names are entered, the authenticated user's screen name is used.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Frequently Asked Questions
----------------------------


####
 How frequently will my data update?

Most of the information is available immediately. It is recommended to configure the datasets to run every 24 hours.

###
 What else do I need to do to use this connector?

Tweet ID, Search Text, Screen Name, and Start Date can be provided optionally for certain reports.

###
 Why didn't my dataset return any new rows when it ran?

This generally happens if there is no data for the connector to return. Most frequently this happens if there is no activity (new tweets, retweets, etc.) on the account after the Start Date. This can also happen if the "Retrieve All Available Data" is set to "No" and you run the dataset too frequently. With this value set, the connector will return the data that is new since the last time the dataset ran successfully. If there were no new tweets, retweets, etc., the dataset will return no rows.

###
 Why is the report taking so long to run? Is this normal?

Some of the reports can take a very long time to run. They have to read through several levels of data, making multiple calls to Twitter at each step. This can take a long time. The time increases even more if the Start Date is far in the past and the "Retrieve All Available Data" is set to "Yes".

