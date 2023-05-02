

Intro
-------

The Domo Twitter Connector integrates Domo with Twitter to extract data from the Twitter API. The Domo Twitter Connector provides access to Twitter data including followers, timelines, retweets and many other Twitter entities. To learn more about the Twitter API, visit their site (

https://dev.twitter.com/rest/public

).


 The Twitter connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Twitter account in the

Data Center

. This topic discusses the fields and menus that are specific to the Twitter connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Social media followers on platform
* Response to specific tweets
* Retweets (engagement)
* Follower demographics
* Replies to followers
 |
|
**Primary Metrics**
 | * Follower count
* Retweet count
* Followers of followers and friends of followers (influence)
 |
|
**Primary Company Roles**
 | * Social media manager
* CMO
 |
|
**Average Implementation Time**
 |
 10 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------

Some Twitter reports provide a snapshot in time, so these reports should be set up in "Append" mode to show trends. These reports include:

 Followers
* Favorites
* Friends

Prerequisites
---------------

To connect to your Twitter account and create a DataSet, you must have the following:

 Your Twitter username or your email address
* Your password

Connecting to Your Twitter Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Twitter connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Twitter accounts in Domo)


 to open the Twitter OAuth screen where you can enter your Twitter username and password. Once you have entered valid Twitter credentials, you can use the same account any time you go to create a new Twitter DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors.


**Note:**
 If you are already logged into Twitter when you connect in Domo, you are authenticated automatically and taken to the "Authorize Domo, Inc. to use your account?" screen when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Twitter.


###
 Details Pane

This pane contains a primary
 **Report

s**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Twitter report you want to run. The following reports are available:


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
 Returns a list of users that are following the authenticated user.
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
 Returns a list of Tweets in which the authenticated user is mentioned (referred to by “@username”).
  |
|
 Retweeters
  |
 Returns a list of users who have retweeted posts from the authenticated user.
  |
|
 Retweets
  |
 Returns a list of the 100 most recent retweets of the tweet specified in the
 **Tweet ID**
 field.
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
 Returns a variety of information about the authenticated user. The author's most recent Tweet will be returned inline when possible.
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
 Screen Name
  |
 Enter a comma-separated list of names for the report. Names must be capitalized correctly. If no names are entered, the authenticated user's screen name is used for the report.
  |
|
 Tweet ID
  |
 Enter the ID for the tweet you want to retrieve information for.

*Note:**
 You can find the ID for a tweet in Twitter by doing the following:


1. Click the
 **Tweets**
 link under your username.
2. Locate the tweet you want to find the ID for.
3. Click the tweet's timestamp.


 A page opens for this tweet. The tweet ID is the long number at the end of the URL.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

##
 FAQ


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
 How frequently will my data update?

Most information is available immediately. It is recommended to configure the datasets to run every 24 hours.

###
 What else do I need to do to power up my connector?

Tweet ID and Screen Name can be provided optionally for certain reports.

###
 Why didn't my dataset return any new rows when it ran?

This generally happens if there is no data for the connector to return. Most frequently this happens if there is no activity (new tweets, retweets, etc.) on the account after the Start Date.


 This can also happen if the "Retrieve All Available Data" is set to "No" and you run the dataset too frequently. With this value set, the connector will return the data that is new since the last time the dataset ran successfully. If there were no new tweets, retweets, etc., the dataset will return no rows.

###
 Why is the report taking so long to run? Is this normal?

Some of the reports can take a very long time to run. They have to read through several levels of data, making multiple calls to Twitter at each step. This can take a long time. The time increases even more if the Start Date is far in the past and the "Retrieve All Available Data" is set to "Yes".

###
 What's the difference between this connector and the Twitter Advanced connector?

The Twitter Advanced connector returns more data in most reports, but it is a little harder to set up.

