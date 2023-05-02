

Intro
-------

The Domo Twitter Advanced Connector integrates Domo with Twitter to extract data from the Twitter API.  To learn more about the Twitter API, visit their site (

https://dev.twitter.com/rest/reference

).


**Important:**
 Certain connectors require an API usage fee charged to you by the company, not Domo, depending on the customers' accounts with that company. Use of this connector may require an API usage fee.


 You connect to your Twitter account in the Data Center. This topic discusses the fields and menus that are specific to the Twitter Advanced connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for the following:
 * Retrieving the authenticated user's tweets
* Retrieving tweets from the authenticated user's home timeline
* Retrieving the authenticated user's tweets that have been retweeted by others
 |
|
**Primary Metrics**
 | * Number of tweets
* Number of retweets
* Number of followers
* Number of friends
* Number of mentions
 |
|
**Primary Company Roles**
 | * Social media roles
* Public relations roles
 |
|
**Average Implementation Time**
 |
 Depending on the amount of data you are trying to retrieve, implementation and data retrieval could take from less than an hour to more than a day.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------

Most reports work best when you set them to "Append" rather than "Replace." This way you can pull in recent data and not make unnecessary API calls. You can also use the
 **Retrieve all available data**
 option to pull all data since the DataSet was last updated.


 Prerequisites
---------------

To connect to your Twitter account and create a Twitter Advanced DataSet, you must have the following:

 Your Twitter username or your email address
* Your Twitter password

Connecting to Your Twitter Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter Advanced Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Twitter Advanced connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Twitter Advanced accounts in Domo) to open the Twitter OAuth screen where you can enter your Twitter username (or your email address) and password. Once you have entered valid Twitter credentials, you can use the same account any time you go to create a new Twitter Advanced DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Twitter when you connect in Domo, you are authenticated automatically and taken to the "Authorize Domo, Inc. to use your account?" screen when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Twitter.


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
 Select the Twitter report you want to run. The following reports are available:


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
 Returns a list of users who have retweeted posts from the  authenticated user.
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
 Returns a collection of relevant Tweets matching or related to specific text (which you specify in the
 **Search Text**
 field). Twitter's search service is not meant to be an exhaustive source of Tweets. Not all Tweets will be indexed or made available via the search interface.
  |
|
 Search Users
  |
 Provides a simple, relevance-based search interface to public user accounts on Twitter. You can search for user names by entering a comma-separated list of names into the
 **Screen Name**
 field, or you can search for text by entering that text into the
 **Search Text**
 field. If search text is specified, then the list of names will be ignored, and a list of users related to the search text will be returned. If there is no search text, the report will return information about the specified user names. User names are case-sensitive.
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
 **Screen Name**
 field.
  |

|
|
 Break out entities into individual rows?
  |
 Select
 **Yes**
 to display one entity of the Tweet (hashtag, user mention, URL, or symbol) per row. Select
 **No**
 to display a comma-separated list of entities of each Tweet on a single row.
  |
|
 Retrieve all available data?
  |
 Select
 **Yes**
 to retrieve all available data, regardless of when you last updated the DataSet. Select
 **No**
 to retrieve new data since you last updated the DataSet.
  |
|
 Search Text
  |
 Enter the search text for the report. The report will include search results related to this text.


 For example, if you entered the text

domo

for the "Search Tweets" report type, only Tweets containing the word

domo

would be included in your report.
  |
|
 Screen Name
  |
 Enter a comma-separated list of names for the report. Names must be capitalized correctly. If no names are entered, the authenticated user's screen name is used for the report.
  |
|
 Start Date
  |
 Enter the earliest start date you want to retrieve information for. This can be a fixed date (for example,

MM-DD-YYYY

) or a relative date (for example,

today-7, yesterday-30

).


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
 Enter the ID for the Tweet you want to retrieve information for.


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

).


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


####
 How do I get engagement metrics for organic (non-promoted) tweets?

To get engagement metrics for tweets that have not been promoted, you need to use the Twitter Engagement connector which uses the Twitter Engagement API.


 The Twitter Engagement API is one of Twitter’s Enterprise-level APIs. This means that your business will need to sign a contract with Twitter to use this API. See Twitter Enterprise data for more information and to set up a contract with Twitter to access this API.


 Once your company has access to the Twitter Engagement API, contact your Account Executive or Customer Success Manager. They will ensure that you have access to the connector in your Domo instance.

###
 What kind of credentials do I need to power up this connector?

You need the email address or Twitter handle, and password associated with your Twitter account.

###
 How do I know my Twitter credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account with the data service to set up the connector?

Any Twitter account can be used to set up the connector.

###
 How frequently will my data update?

Most information is available immediately. It is recommended to configure the datasets to run every 24 hours.

###
 What else do I need to do to power up my connector?

Tweet ID and Screen Name can be provided optionally for certain reports.

###
 Why didn't my dataset return any new rows when it ran?

This generally happens if there is no data for the connector to return. Most frequently this happens if there is no activity (new tweets, retweets, etc.) on the account after the Start Date. This can also happen if the "Retrieve All Available Data" is set to "No" and you run the dataset too frequently. With this value set, the connector will return the data that is new since the last time the dataset ran successfully. If there were no new tweets, retweets, etc., the dataset will return no rows.

###
 Why is the report taking so long to run? Is this normal?

Some of the reports can take a very long time to run. They have to read through several levels of data, making multiple calls to Twitter at each step. This can take a long time. The time increases even more if the Start Date is far in the past and the "Retrieve All Available Data" is set to "Yes".


 Troubleshooting
-----------------


* If you run into problems, check your configuration and authentication settings.
* Twitter has a rate limit of 15 requests per 15 minutes per report. This causes some reports to take a long time to run.


