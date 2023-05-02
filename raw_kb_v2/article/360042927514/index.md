

Intro
-------

Twitter Ads is an advertising service that lets businesses reach potential customers by getting me


 ssages in front of people not yet following the business. You can use Domo's Twitter Ads connector to retrieve data about statistics for accounts, campaigns, funding instruments, line items, and tweets. For more information about the Twitter API, see their documentation (

https://developer.twitter.com/en/docs

).


 The Twitter Ads connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 This topic discusses the fields and menus that are specific to the Twitter Ads connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector lets you discover impressions, who is interacting with your Twitter ads, and the kind of reach you're getting.
  |
|
**Primary Metrics**
 | * Total number of engagements
* Total number of impressions
* Total number of retweets
* Total number of replies
* Total number of likes
* Total number of follows
* Total number of clicks, including favorites and other engagements
* Total number of qualified impressions
 |
|
**Primary Company Roles**
 |
 All marketing roles
  |
|
**Average Implementation Time**
 |
 10 minutes or less
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Best Practices
----------------


* Create DataSets that use
 **Replace**
 instead of
 **Append**
 , and only pull the last 3-7 days at a time.
* Use a recursive DataFlow to deduplicate and append data. For more information, see

Creating a Recursive/Snapshot Magic ETL DataFlow

.
* To collect historical promoted Tweet Statistics and then update it with the latest tweet data, follow these steps:


	1. Create a new Twitter Ads DataSet.

**Tip:**

 You may want to configure more settings than what is shown here; feel free to add settings according to your needs. Keep in mind that we will be selecting two different reports, the Promoted Tweet Statistics v.1 and Recent Promoted Tweets Statistics v.1. Make sure your settings match for both of these.
	2. Configure the connector for the first run, making sure to configure settings as follows:
		1. For the
		 **Report**
		 , select "Promoted Tweets Statistics v.1."
		2. For the duration of the report, choose to pull data for the past 90 days (the connector limits you to 90 days of data; if you need more then that, we suggest selecting the first date of history you want and then selecting 90 days after that, running the report on Append, selecting the next 90 days, then running the DataSet again on Append, etc. until you have collected all the history you want).


	3. Save the configurations.
	4. Schedule the connector to "Append" instead of "Replace."
	5. Run the connector.
	6. Once the run has completed, reconfigure the connector for the second run as follows:

	1. For the
		 **Report**
		 , select "Recent Promoted Tweets Statistics v.2."
		2. For
		 **Tweets Selection Window**
		 , select
		 **Past 3 Months**
		 .
		3. For the duration of the report, choose to pull data for yesterday.


		**Note:**

	 The other settings should match how you had them in the configuration of the first run; the only difference is you have no promoted tweets to select as this report will bring in tweet activity on all the promoted tweets that had activity yesterday.

7. Save the configuration.
	8. Make sure the scheduling is set to "Append."
	9. Let the connector run on the next schedule—you want it to run tomorrow to collect the most recent tweet activity from the previous day.


	 Congratulations, you have just selected the promoted tweet history and configured the DataSet to collect yesterday's promoted tweet activity, appending it to the history you just collected.

Prerequisites
---------------

To connect to your Twitter Ads account and create a Twitter Ads DataSet, you must have the following:

 The Twitter account to use to log into your Twitter Ads account.
* The password you use to log into your Twitter account.

Connecting to your Twitter Ads account
----------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Twitter Ads connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Twitter Ads connector uses OAuth to connect to Twitter Ads. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Twitter Ads accounts in Domo) to open the Twitter Ads OAuth screen where you can enter the credentials associated with your Twitter account. After you have entered valid Twitter credentials, you can use the same account in Domo any time you create a Twitter Ads DataSet.


 You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Creating and Managing User Groups

.

##
 Details Pane

This pane includes a primary menu,
 **Report**
 , and other menus that appear depending on the report you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Twitter Ads report. The following reports are available:


|  |  |
| --- | --- |
|
 Account Media
  |
 Retrieves details about all account media associated with the specified account.
  |
|
 Account Statistics
  |
 Retrieves the summary of analytics about the campaigns executed by the specified account.
  |
|
 All Campaigns
  |
 Retrieves all campaigns executed by the specified account.
  |
|
 All Funding Instruments
  |
 Retrieves all Funding Instruments for the specified account.
  |
|
 All Line Items
  |
 Retrieves all Line Items for the specified account.
  |
|
 All Promoted Tweets
  |
 Retrieves all Promoted Tweets for the specified account.
  |
|
 Campaign Reach
  |
 Retrieves reach and average frequency analytics for specified campaigns.
  |
|
 Campaign Statistics
  |
 Retrieves summary analytics about campaigns executed by the specified account.
  |
|
 Funding Instruments Reach
  |
 Retrieves reach and average frequency analytics for specified funding instruments.
  |
|
 Funding Instruments Statistics
  |
 Retrieves summary analytics about specific funding instruments with the specified account.
  |
|
 Line Item Statistics
  |
 Retrieves summary analytics about Line Items accessible by the current user.
  |
|
 Media Creatives
  |
 Retrieves details for media creatives associated with the specified account.
  |
|
 Media Creatives Statistics
  |
 Retrieves summary analytics about specific media creatives with the specified account.
  |
|
 Media Library
  |
 Retrieves details for media library objects associated with the account.
  |
|
 Organic Tweet Statistics
  |
 Retrieves the organic summary analytics about Promoted Tweets accessible by the current user.
  |
|
 Promoted Tweet Statistics
  |
 Retrieves the summary analytics about Promoted Tweets accessible by the current user.
  |
|
 Reach Estimate (deprecated)
  |
 Determines the approximate reach of the campaigns for the specified account.

This report will no longer be available from September 1, 2020.
  |
|
 Recent Organic Tweet Statistics
  |
 Retrieves the organic summary analytics about recent Promoted Tweets accessible by the current user.
  |
|
 Recent Promoted Tweet Statistics
  |
 Retrieves the summary analytics about recent Active Promoted Tweets accessible by the current user.
  |
|
 Tweets
  |
 Retrieve Tweet details for the account.
  |

|
|
 Account
  |
 Select the Twitter Ads account to query data from.
  |
|
 Duration
  |
 Select whether to pull data for a single date or a date range.
  |
|
 Report Date
  |
 Select whether to pull data for a specific date or a given number of days back (offset).
  |
|
 Specific Date
  |
 Select the date you want to pull data for.
  |
|
 Days Back
  |
 Enter the number of days back you want to pull data for.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific date or a given number of days back (offset).
  |
|
 Specific Start Date
  |
 Select the start date for your date range.
  |
|
 End Date
  |
 Specify whether the last date in your date range is a specific date or a given number of days back (offset).
  |
|
 Specific End Date
  |
 Select the end date for your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of days back (offset) for the start date in your date range. For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , each time the report ran it would pull data for the last 10 days up until the last 5 days.
  |
|
 Days Back to End At
  |
 Enter the number of days back (offset) for the end date in your date range. For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , each time the report ran it would pull data for the last 10 days up until the last 5 days.
  |
|
 Granularity
  |
 Select the required granularity. For example, if the granularity is
 **Hour**
 , data is presented by hour between the
 **Start Date**
 and the
 **End Date**
 .
  |
|
 Segmentation Type
  |
 Select the required segmentation type.
  |
|
 Placement
  |

Select the required Placement from the available options.


 For example, if the placement is

*ALL ON TWITTER**

, data is presented by all possible placement types on Twitter. If placement is

*Publisher Network**

, data is presented by the Twitter Audience Platform.

*Total**

will total the result for both the Publisher Network and All On Twitter.

|
|
 Country
  |

Select the country that should have data returned.

|
|
 Platform
  |

Select the platform that should have data returned.

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


 The Twitter Engagement API is one of Twitter’s Enterprise-level APIs. This means that your business will need to sign a contract with Twitter to use this API. See

Twitter Enterprise data

for more information and to set up a contract with Twitter to access this API.


 Once your company has access to the Twitter Engagement API, contact your Account Executive or Customer Success Manager. They will ensure that you have access to the connector in your Domo instance.

###
 What endpoint is the base URL for this connector?

The base URL for the Twitter Ads connector is

https://ads-api.twitter.com/

.

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint(s)
  |
| --- | --- |
|
 Account Media
  |
 /10/accounts/{account\_id}/account\_media
  |
|
 Account Statistics
  |
 /10/stats/accounts/{account\_id}?entity=ACCOUNT
  |
|
 All Campaigns
  |
 /10/accounts/{account\_id}/campaigns
  |
|
 All Funding Instruments
  |
 /10/accounts/{account\_id}/funding\_instruments
  |
|
 All Line Items
  |
 /10/accounts/{account\_id}/line\_items
  |
|
 All Promoted Tweets
  |
 /10/accounts/{account\_id}/promoted\_tweets?with\_deleted=true
  |
|
 Campaign Reach
  |
 /10/stats/accounts/{account\_id}/reach/campaigns
  |
|
 Campaign Statistics
  |
 /10/stats/accounts/{account\_id}?entity=CAMPAIGN
  |
|
 Funding Instruments Reach
  |
 /10/stats/accounts/{account\_id}/reach/funding\_instruments
  |
|
 Funding Instruments Statistics
  |
 /10/stats/accounts/{account\_id}?entity=funding\_instruments
  |
|
 Line Item Statistics
  |
 /10/stats/accounts/{account\_id}?entity=LINE\_ITEM
  |
|
 Media Creatives
  |
 /10/accounts/{account\_id}/media\_creatives
  |
|
 Media Creatives Statistics
  |
 /10/stats/accounts/{account\_id}?entity=MEDIA\_CREATIVES
  |
|
 Media Library
  |
 /10/accounts/{account\_id}/media\_library
  |
|
 Organic Tweet Statistics
  |
 /10/stats/accounts/{account\_id}?entity=ORGANIC\_TWEET
  |
|
 Promoted Tweet Statistics
  |
 /10/stats/accounts/{account\_id}?entity=PROMOTED\_TWEET
  |
|
 Reach Estimate (deprecated)
  |
 /6/accounts/{account\_id}/reach\_estimate
  |
|
 Recent Organic Tweet Statistics
  |
 /10/stats/accounts/{account\_id}?entity=ORGANIC\_TWEET
  |
|
 Recent Promoted Tweet Statistics
  |
 /10/accounts/{account\_id}?entity=PROMOTED\_TWEET
  |
|
 Tweets
  |
 /10/accounts/{account\_id}/tweets
  |


####
 What kind of credentials do I need to power up this connector?

You need the email address or Twitter handle, and password associated with your Twitter account.

###
 How do I know my Twitter credentials are secure?

The login process uses the OAuth process, so your credentials are never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account to set up the connector?

You must have an Advertising account. You may register for an Advertising account at "

ads.twitter.com

". You can have multiple Twitter user accounts associated with a single Advertising account.

###
 How frequently will my data update?

Most information is available immediately. It is recommended to configure the datasets to run every 24 hours.

###
 Can I use the same Twitter account for multiple datasets?

Yes

###
 Why didn't my dataset return any new rows when it ran?

This generally happens if there is no data for the connector to return. Most frequently this happens if there is no activity (new tweets, retweets, etc.) on the account after the Start Date.

###
 Why is the report taking so long to run? Is this normal?

Some of the reports can take a very long time to run. They have to read through several levels of data, making multiple calls to Twitter at each step. The time increases even more if you select all Tweets and run for all time.


 Troubleshooting
-----------------

Troubleshooting usually starts with making sure you don't have an issue with the credentials. If those are clear, next check that your request isn't timing out. If you select all Tweets and run for all time, you can expect to experience long run times. Adjust the number of Tweets you are pulling or the time frame if you are experiencing these issues.

