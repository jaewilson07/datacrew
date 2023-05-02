

Intro
-------

Marketing experts use Facebook Ads to create targeted ads designed to reach different audiences and help them meet their business goals. To learn more about the Facebook API, visit their page (

https://developers.facebook.com/docs/marketing-apis

).


 This Advanced version of the Facebook Ads connector allows you to access more reports than the standard Facebook Ads connector but also requires more configuration. For information about the simplified version, see

Facebook Ads Connector

.


 You connect to your Facebook account in the Data Center. This topic discusses the fields and menus that are specific to the Facebook Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 | * Tracking how many people view individual ads
* Tracking how many people are reached by each campaign
* Tracking how much money has been spent on campaigns
 |
|
**Primary Metrics**
 | * Reach
* Spend
* Cost per Lead
* Leads generated
* Impressions
* Clicks
* Cost per Click
 |
|
**Primary Company Roles**
 |
 Online marketers
  |
|
**Average Implementation Time**
 |
 1-2 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------


* The Facebook Ads connector provides ready-made reports that you can use right away. The "Custom Insights" report is the most flexible report in this connector. It allows you the most control over the reports you generate.
* This connector can take a long time to run if the date range is very long and/or the account selected has a large number of campaigns or ads. The long run time occurs because Facebook is taking a long time to calculate the selected metrics. If the DataSet is taking too long or doesn't complete, the date range needs to be smaller.
* Metrics for ads placed through Instagram can be found by using the "Custom Insights" report and setting the
 **Breakdown**
 value to
 **Placement**
 . Instagram is then listed as one of the placement values in the results.
* You can also return metrics for Instagram video views. This is discussed later in this article, under

Instagram Video Views

.

Prerequisites
---------------

To connect to Facebook and create a Facebook Ads DataSet, you must have the following:

 The email address associated with your Facebook account, or your telephone number
* Your Facebook password
* Access to your company's Facebook Ads account

Connecting to Your Facebook Account
-------------------------------------

This section enumerates the options in the

Credentials

and

Details

panes in the Facebook Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Facebook Ads connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Facebook Ads accounts in Domo) to open the Facebook OAuth screen where you can enter your Facebook credentials. Once you have entered valid Facebook credentials, you can use the same account any time you go to create a new Facebook Ads DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Facebook when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Facebook.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus which may or may not appear depending on the report type you select.


 Many report types include a number of sub-reports called "edges." These are also described below.

###
 Reports and Edges


|
 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Facebook Ads report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Ad Accounts
  |
 Returns details on the specified account.
  |
|
 Ad Campaigns
  |
 Returns statistics on ad campaigns.
  |
|
 Ad Sets
  |
 Returns ad-related data for a specified set.
  |
|
 Ads
  |
 Returns data for a specified ad.
  |
|
 Ads Advanced
  |

Returns information about one or more Ads defined in the selected

*Ad Set(s)**

with separate column for Ad link URLs.

|
|
 Custom Insights
  |
 Returns user-selected insight information at a reporting level defined by the
 **Level**
 field.
  |
|
 General Metrics
  |
 Returns commonly-used insight metrics at the Campaign level.
  |
|
 Object Information
  |
 This report enables you to retrieve the Info edge of the Account, Campaign, Ad set, or Ad objects associated with the Ad Accounts you select. Select the Ad Accounts and the object type you need information about.
  |
|
 Object Insights
  |
 This report enables you to retrieve the Insights edge of the Account, Campaign, Ad set, or Ad objects associated with the Ad Accounts you select. Select the Ad Accounts and the object type you need insights about, and complete the other insight metrics.
  |
|
 Page Actions (Ad Sets)
  |
 Returns insights related to Page and Post interactions at the Adset level.
  |
|
 Page Actions (Ads)
  |
 Returns insights related to Page and Post interactions at the Ad level.
  |
|
 Placement Metrics
  |
 Returns common metrics, broken down by screen placement, at the Campaign level.
  |
|
 Responder Demographics
  |
 Returns common metrics, broken down by age and gender, at the Adset level.
  |
|
 User
  |
 Returns details on the authenticated user.
  |

|
|
 Ad Account Edge
  |
 Select the ad account edge you want to retrieve information for. The following edges are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns a log of the actions taken on the selected account.
  |
|
 Ad Account Info
  |
 Returns information about the selected account.
  |
|
 Ad Campaigns
  |
 Returns a list of ad campaigns for the selected account.
  |
|
 Ad Sets
  |
 Returns a list of ad sets for the selected account.
  |
|
 Ads
  |
 Returns a list of ads for the selected account.
  |
|
 Custom Audiences
  |
 Returns the custom audiences owned by or shared with the selected account.
  |
|
 Insights
  |
 Returns insight information for the specified criteria.
  |
|
 Partners
  |
 Returns a list of ad partners for the selected account.
  |
|
 Rate Card
  |
 Returns a list of currency rates.
  |
|
 Reach Estimate
  |
 Returns the reach estimate for the selected account and given targeting spec.
  |
|
 Users
  |
 Returns user IDs, permissions, and roles for the selected account.
  |

|
|
 Ad Campaign Edge
  |
 Select the ad campaign edge you want to retrieve information for. The following edges are available:


|  |  |
| --- | --- |
|
 Ad Campaign Info
  |
 Returns information about the selected campaign.
  |
|
 Insights
  |
 Returns insight information for the specified criteria.
  |

|
|
 Ad Set Edge
  |
 Select the ad set edge you want to retrieve information for. The following edges are available:


|  |  |
| --- | --- |
|
 Ad Set Info
  |
 Returns information about the selected ad set.
  |
|
 Activities
  |
 Returns a log of actions taken on the selected ad set.
  |
|
 Ad Creatives
  |
 Returns a list of ad creative for the selected ad set.
  |
|
 Insights
  |
 Returns insight information for the specified criteria.
  |
|
 Reach Estimate (Deprecated)
  |
 Returns the reach estimate for the selected ad set.
  |

|
|
 Ad Edge
  |
 Select the ad edge you want to retrieve information for. The following edges are available:


|  |  |
| --- | --- |
|
 Ad Info
  |
 Returns information about the selected ad.
  |
|
 Ad Creatives
  |
 Returns a list of creative for the selected ad.
  |
|
 Insights
  |
 Returns insight information for the specified criteria.
  |
|
 Keyword Stats
  |
 Returns keyword statistics for the selected ad.
  |
|
 Reach Estimate
  |
 Returns the reach estimate for the selected ad.
  |
|
 Targeting Sentence Lines
  |
 Returns the targeting description sentence for the selected ad.
  |

|
|
 User Edge
  |
 Select the user edge you want to retrieve information for. The following edges are available:


|  |  |
| --- | --- |
|
 User Info
  |
 Returns the authenticated user's name and ID.
  |
|
 Ad Accounts
  |
 Returns information for the authenticated user's ad accounts, such as balance, capabilities, funding sources, etc.
  |

|


####
 Report Options

The following options may or may not be available depending on your selected report (and edge, if applicable).


 Option
  |
 Description
  |
| --- | --- |
|
 Breakdowns
  |
 Select how you want the report data to be broken down.
  |
|
 Action Breakdowns
  |
 Select the desired action breakdown(s) for the report.
  |
|
 Action Report Time
  |
 Select the desired action report time value.
  |
|
 Action Attribution Window
  |
 Select the desired action attribution window for the report.
  |
|
 Level
  |
 Select the ad level for the report.
  |
|
 Duration
  |
 Select whether to pull data for a single date or a range of dates.
  |
|
 Report Date
  |
 Specify whether the report data is for a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back from the current date (which you specify in
 **Days Back**
 ). For example, if you enter

5

for
 **Days Back**
 and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.
  |
|
 Select Specific Date
  |
 Select the report date using the date selector.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back from the current date (which you specify in
 **Days Back to Start From**
 ). If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **End Date**
 and specify a value for
 **Days Back to End At**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 End Date
  |
 Specify whether the last date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back from the current date (which you specify in
 **Days Back to End At**
 ). If you choose
 **Relative**
 here, you should also choose
 **Relative**
 for
 **Start Date**
 and specify a value for
 **Days Back to Start From**
 .


 For example, if you enter

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range using the date selector.
  |
|
 Select Specific End Date
  |
 Select the last date in your date range using the date selector.
  |
|
 Ad
  |
 Select the ad you want to retrieve data for.
  |
|
 Ad Account ID
  |
 Select the ID for the ad account you want to retrieve information for.
  |
|
 Ad Campaign
  |
 Select the ad campaign you want to retrieve information for.
  |
|
 Ad Label IDs
  |
 Enter the label IDs for the ads you want to retrieve data for.
  |
|
 Ad Set
  |
 Select the ad set you want to retrieve data for.
  |
|
 Query
  |
 Enter a search query to return results based on that query.
  |
|
 Targeting Spec
  |
 Enter the targeting specs you want to retrieve data for.
  |
|
 Time Increment
  |
 Enter the number of days the report data should be aggregated by. This should be an integer between 1 and 90. You can also enter

monthly

to show data by month or

all\_days

to show data for all days.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Tips and Tricks
-----------------


###
 Choosing Insight Columns

The "Custom Insights" report is very flexible and allows you to create nearly any report that can be created in the Facebook Ads UI. However, figuring out how to map between the column names shown in the Facebook Ads UI and the list of available columns/categories can be tricky. The following steps can help:

. In the Facebook Ads UI, open the report that you want to duplicate in Domo.
2. Select
 **Columns > Customize Columns**
 .


 A dialog box opens that lets you choose and reorder columns in the report.
3. Pick a column to add to the report and click
 **Apply**
 .


 If you look at the URL, you’ll see a parameter called "columns." This will look something like the following:

columns=["name"%2C"date\_start"%2C"date\_stop"%2C"reach"%2C"frequency"%2C"impressions"%2C"cpm"%2C"cpp"%2C"spend"%2C"clicks"%2C"unique\_clicks"%2C"ctr"%2C"unique\_ctr"%2C"cpc"%2C"actions%3Aoffsite\_conversion.lead"%2C"social\_reach"]

Each of the items between quotes is a column, and this is the API name for it. The names that are shown in the
 **Columns**
 field are typically close (or identical) to these names.

The tricky columns are ones that are actually part of a bigger category in the Domo UI. This includes columns like "Actions," which expands into several smaller fields, including

actions%3Aoffsite\_conversion.lead

shown above (which is “Leads (Conversion)” in the UI).


###
 Instagram Video Views


 To show Instagram video views, do the following:


1. Create a "Custom Insights" report.
2. Select interesting metrics. “Actions” should bring back a column about video views.
3. Select
 **Placement**
 as the breakdown option.
4. Choose the level to report (
 **Account**
 ,
 **Campaign**
 ,
 **AdSet**
 ,
 **Ad**
 ).
5. Select the date range and time increment.

This will return information for many different placement options. The most interesting one is called “instagramstream.” There should also be a column called “ActionsVideoView” that lists the number of video views.

##
 Aggregating Statistics

It is often tempting to use a Custom Insights report that is reporting at a very detailed level to calculate results for a higher level. For example, a DataSet may be reporting daily metrics for multiple campaigns. You could add up the daily data for all the campaigns in order to determine the total for the account that holds the campaigns. This works for some metrics like Clicks, Spend, or Impressions. However, for metrics that count individual people (such as "Reach"), this approach will fail and produce incorrect values. "Reach," for example, fails because individuals are counted for each day they saw an ad. Then, if the Reach values for the month are added together, those people are counted multiple times. If the user compares this result to the result for the month in the Facebook Ads UI, they find that the aggregated value is far too high. The Facebook Ads UI removed the duplicated viewers, and only counted them once in the specified time period.


 To avoid this problem, any time the user wants to get a value for a larger time period, the period needs to be defined in the DataSet itself, and not calculated afterward. If a user wants Reach for a particular month, the DataSet should be defined with the start and end dates for the month, and the
 **Time Increment**
 value should be set to

all\_days

or left blank. The user can get monthly data, aggregated and deduplicated by Facebook, by setting a large date range (for example, Jan 1, 2016 to Dec 31, 2016) and entering

monthly

as the
 **Time Increment**
 value. Similarly, if a user wants Reach data at the Account level, the user needs to set the DataSet's
 **Level**
 value to
 **Accounts**
 (not
 **Campaigns**
 ), followed by summing the values in Domo.


 It is often useful to compare the results of the connector to the results available in the Facebook Ads UI. To perform the comparison correctly, however, the UI and the connector need to be configured identically. They need to be set to the same time period (start and end dates) as well as the same reporting level and time increment value.


 Troubleshooting
-----------------


* The most common problem occurs when the returned data and the Facebook Ads UI do not match. This happens when the DataSet and the report in the Facebook UI are not configured exactly the same way. Make sure the following parameters match:

+ Start Date
	+ End Date
	+ Breakdown
	+ Level
	+ Time Increment.
* Metrics related to individuals (such as Reach) should NOT be aggregated across time periods in Domo. These metrics have duplicates already removed by the Facebook Ads system.

FAQ
-----


####
 What kind of credentials do I need to power up this connector?

You will need the email address that is associated with your Facebook account, and your Facebook password. The login process uses the OAuth process, so your password is never seen or stored by Domo. This keeps your login secure. You can revoke Domo's access to your account at any time.

###
 Do I need a certain kind of account to set up the connector?

You will need a Facebook account that has access to the Facebook Ads account(s) that you are interested in. There are three levels of access available: Analyst, Advertiser and Administrator. Analyst-level access is enough for the reports available in the connector.

###
 How do I choose the columns I need in a Custom Insights report?

The Custom Insights report is very flexible and will allow you to create nearly any report that can be created in the Facebook Ads UI. However, figuring out how to map between the column names shown in the Facebook Ads UI and the list of available columns/categories can be tricky. The following steps can help:

. In the Facebook Ads UI, open the report that you want to duplicate in Domo.
2. On the right-hand side of the screen click the button labeled
 **Columns**
 and select
 **Customize Columns**
 . You should now see a dialog box that lets you choose and reorder columns that will be in the report.
3. Pick a column to add to the report and click
 **Apply**
 .
4. If you look at the URL, you'll see a URL parameter called 'columns'. This will look something like this:


 columns=["name","date\_start","date\_stop","reach","cpm","cpp","spend","clicks","unique\_clicks","ctr","unique\_ctr","cpc","actions:offsite\_conversion.lead","social\_reach"]
	* Each of the items between quotes is a column. The names that are shown in the Columns field are identical or very close to the names presented by Domo.
	* Columns that are part of a larger category may vary slightly in this interface and the Domo interface. For example, "actions" expands into several smaller fields, including "actions:offsite\_conversion.lead". In the Domo interface, this column is called "Leads (Conversion)".


####
 How do I get statistics about Instagram Views?

Instagram ads are included as a special placement option for ads. The following steps will get statistics about them:

. Create a
 **Custom Insights**
 report.
2. Select interesting metrics. (For example,
 **Actions**
 should bring back a column about video views.)
3. Select
 **Placement**
 as the breakdown option.
4. Choose the level to report (Account, Campaign, AdSet, Ad).
5. Select the date range and time increment.

This will return information for a lot of different placement options, including
 **instagramstream**
 and
 **ActionsVideoView**
 .

###
 How do I get information or insights for all my campaigns, ad sets, or ads, including new campaigns, ad sets, or ads I create in the future?

To get information on all campaigns, ad sets, or ads associated with specific accounts (even if you create those campaigns, ad sets, or ads after the creation of the report):

. Select the new
 **Object Information**
 report and the account(s) you wish to report on.
2. Select the
 **Object Type**
 (Account, Campaign, Ad Set, or Ad).

OR

. Select the
 **Ad Accounts**
 report and the account(s) you wish to report on.
2. Select the appropriate
 **Ad Account e**
 dge.
	* To get information on all campaigns, select
	 **Ad Campaigns**
	 .
	* To get information on all ad sets, select
	 **Ad Sets**
	 .
	* To get information on all ads, select
	 **Ads**
	 .

To get insights on all campaigns, ad sets, or ads associated with specific accounts (even if you create those campaigns, ad sets, or ads after the creation of the report):

. Select the new
 **Object Insights**
 report and the account(s) you wish to report on.
2. Select the
 **Object Type**
 (Account, Campaign, Ad Set, or Ad).
3. Select the desired parameters in all the other fields.

OR

. Select the
 **Ad Accounts**
 report and the account(s) you wish to report on.
2. Select the
 **Insights Ad Account**
 edge.
3. Select the appropriate Level.
	* To get insights on all campaigns, select
	 **Ad Campaign**
	 .
	* To get insights on all ad sets, select
	 **Ad Set**
	 .
	* To get insights on all ads, select
	 **Ad**
	 .
4. Select the desired parameters in all the other fields.


####
 What is the difference between the Facebook Ads and Facebook Ads Advanced connectors?

The Facebook Ads Advanced connector provides far more reports and options than the Facebook Ads connector. The biggest difference is that the Custom Insights report is only available in the Advanced connector. Also, this connector supports the
 **Ads Advanced**
 report that provides

information about one or more Ads defined in the selected

Ad Set(s)

with separate column for Ad link URLs.

The Facebook Ads connector is a predefined set of easy-to-use reports. For more options and flexibility with report configuration, we recommend to use the Advanced connector.

###
 How often can the data be updated?

The data in this connector is roughly real-time. However, many statistics are subject to change for up to 3 days as Facebook determines the exact number of views, etc.

###
 Are there any API limits I should be aware of?

Facebook may enforce rate limits on calls to its API, but you should not have to worry about this.

###
 My Facebook Ads DataSets take a long time to run. What can I do to make them run faster?

Facebook Ads is known to take a long time because Facebook has to calculate the results of a query before we can start pulling the data. Depending on the load on their servers, this can take a LONG time. It seems that scheduling queries for off-peak times helps DataSets run faster. For example, one team in India was able to run a Facebook Ads DataSet in 15 minutes, but when another user tried the same DataSet 6-8 hours later, it took about 2 hours.

###
 What version of the Facebook API does this connector use?

This connector uses version 16.0 of the Facebook API (

https://graph.facebook.com/v16.0

).

###
 Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Ad Accounts
  |
 /{AD\_ACCOUNT\_ID}/info
  |
|
 Ad Campaigns
  |
 /{AD\_ACCOUNT\_ID}/adcampaign\_groups
  |
|
 Ad Keyword Statistics
  |
 /keywordstats
  |
|
 Ad Sets
  |
 /{AD\_ACCOUNT\_ID}/adcampaigns
  |
|
 Ads
  |
 /{AD\_ACCOUNT\_ID}/adgroups
  |
|
 Ads Advanced
  |
 /{AD\_ACCOUNT\_ID}/adgroups
  |
|
 Custom Insights
  |
 /{AD\_ACCOUNT\_ID}/insights
  |
|
 General Metrics
  |
 /{CAMPAIGN\_GROUP\_ID}/insights
  |
|
 Object Informaion-NEW
  |
 Account Object
  |
 /{AD\_ACCOUNT\_ID}/insights
  |
|
 Campaign Object
  |
 /{AD\_ACCOUNT\_ID}/insights
  |
|
 Ad Sets Object
  |
 {AD\_ACCOUNT\_ID}/adsets
  |
|
 Ads Object
  |
 /{AD\_ACCOUNT\_ID}/ads
  |
|
 Object Insights-NEW
  |
 /{AD\_ACCOUNT\_ID}/insights
  |
|
 Page Actions (Ad sets)
  |
 /{AD\_SET\_ID}/insights
  |
|
 Page Actions (Ads)
  |
 /{AD\_SET\_ID}/insights
  |
|
 Placement Metrics
  |
 /{CAMPAIGN\_GROUP\_ID}/insights
  |
|
 Responder Demographics
  |
 /{AD\_SET\_ID}/insights
  |
|
 User
  |
 /{USER\_ID}
  |


|  |  |
| --- | --- |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |


