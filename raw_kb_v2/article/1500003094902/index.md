

Intro
-------

Snapchat represents a new direction in social media, with its predominantly young users craving a more in-the-moment way of sharing and communicating via technology. Use Domo's Snapchat Ads OAuth Connector to receive details about organizations, ads, campaigns and more. To learn more about the Snapchat Ads API, visit their page (

https://developers.snapchat.com/ads/

).


 You connect to your Snapchat Ads account in the Data Center. This topic discusses the fields and menus that are specific to the Snapchat Ads OAuth connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------


 To connect to your Snapchat Ads OAuth account and create a DataSet, you must have the username and password of a Snapchat Ads account that has access to the Ad accounts you are interested in.


 Connecting to Your Snapchat Ads OAuth Account
------------------------------------------------


 This section enumerates the options in the

*Credentials**

and

*Details**

panes in the Snapchat Ads OAuth Connector page.

The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane


 The Domo Snapchat Ads OAuth connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click

*Connect**

(or select

*Add Account**

if you have existing Snapchat Ads accounts in Domo) to open the Snapchat Ads OAuth screen where you can enter your Snapchat Ads credentials. Once you have entered valid Snapchat Ads credentials, you can use the same account any time you go to create a new Snapchat Ads OAuth DataSet.

You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**

If you are already logged into Snapchat Ads when you connect in Domo, you are authenticated automatically when you click

*Add account**

. If you want to connect to an account that is different from the one you are logged into, you must first log out of Snapchat Ads OAuth.

##
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

Select the Snapchat Ads OAuth report you want to run. The following reports are available:

  |  |
| --- | --- |
|
 Object Info: Organizations
  |
 This report returns all the organizations the logged in user can access.
  |
|
 Object Info: Ad Accounts
  |
 This report returns all ad accounts for the specified Organization.
  |
|
 Object Info: Campaigns
  |
 This report returns all campaigns within a specified ad account.
  |
|
 Object Info: All Campaigns
  |
 This report returns all campaigns within the specified ad accounts. Supports multiple ad accounts.
  |
|
 Object Info: Ad Squads
  |
 This report returns all ad squads within a specified campaign or ad account.
  |
|
 Object Info: All Ad Squads
  |
 This report returns all ad squads within a specified campaign or ad account. Supports multiple ad accounts.
  |
|
 Object Info: Ads
  |
 This report returns all ads within a specified ad squad or ad account.
  |
|
 Object Info: All Ads
  |
 This report returns all ads within a specified ad squad or ad account. Supports multiple ad accounts.
  |
|
 Statistics: Campaign (deprecated)
  |
 This report returns statistics for the specified Campaign, or for all Ads or Ad Squads owned by that Campaign.
  |
|
 Statistics: Campaign (Insights and Dimensions)
  |
 This report returns statistics for the specified Campaign, or for all Ads or Ad Squads owned by that Campaign using the updated Insights and Dimensions query.
  |
|
 Statistics: All Campaigns (Insights and Dimensions)
  |
 This report returns statistics for the specified Campaign, or for all Ads or Ad Squads owned by that Campaign using the updated Insights and Dimensions query. Supports multiple ad accounts.
  |
|
 Statistics: Ad Squad (deprecated)
  |
 This report returns statistics for a single, specified Ad Squad.
  |
|
 Statistics: Ad Squad (Insights and Dimensions)
  |
 This report returns statistics for a single, specified Ad Squad using the updated Insights and Dimensions query.
  |
|
 Statistics: All Ad Squads (Insights and Dimensions)
  |
 This report returns statistics for specified Ad Squad using the updated Insights and Dimensions query. Supports multiple ad accounts.
  |
|
 Statistics: Ad (deprecated)
  |
 This report returns statistics for a single, specified Ad.
  |
|
 Statistics: Ad (Insights and Dimensions)
  |
 This report returns statistics for a single, specified Ad using the updated Insights and Dimensions query.
  |
|
 Statistics: All Ads (Insights and Dimensions)
  |
 This report returns statistics for specified Ad using the updated Insights and Dimensions query. Supports multiple ad accounts.
  |
|
 Campaign Statistics Merge
  |
 This report returns statistics for the requested campaigns as it is merged with organization and campaigns report.
  |
|
 Ad Squads Statistics Merge
  |
 This report returns statistics for the requested ad squads as it is merged with organization, ad account and ad squads report.
  |
|
 Ads Statistics Merge
  |
 This report returns statistics for the requested ads as it is merged with organization, ad account, ad squads and ads report.
  |

|
|
 Organization
  |
 Select the organization you want to retrieve data for.
  |
|
 Ad Account
  |
 Select the ad account you want to retrieve data for.
  |
|
 Ad Account Selection Criteria
  |
 Select whether you want to retrieve ad data from a selected ad account or all ad accounts.
  |
|
 Select Ads By
  |
 Select the type of object that owns the Ads to return.
  |
|
 Select Ad Squads By
  |
 Select the type of object that owns the Ad Squads to return.
  |
|
 Campaign Selection Criteria
  |
 Select whether you want to retrieve selected campaigns or all campaigns.
  |
|
 Campaign
  |
 Select the campaign you want to retrieve data for.
  |
|
 Ad Squad Selection Criteria
  |
 Select whether you want to retrieve data for all Ad Squads or selected Ad Squads.
  |
|
 Ad Squad
  |
 Select the ad squad you want to retrieve data for.
  |
|
 Ad Selection Criteria
  |
 Select whether you want to retrieve data for all Ads or selected Ads.
  |
|
 Ad
  |
 Select the ad you want to retrieve data for.
  |
|
 Breakdown
  |
 Select whether you want to break down results by ad, ad squad, or campaign.
  |
|
 Granularity
  |
 Select how data will be aggregated in your report.
  |
|
 Dimension
  |
 Select how your data will be grouped in your report.
  |
|
 Pivot
  |
 Select how your data will be pivoted in your report.
  |
|
 Fields
  |
 Select the fields (columns) you want to include in your report:
  |
|
 Conversion Source Types
  |
 App, Offline, Total, or Web
  |
|
 Swipe Up Attribution Window
  |
 Select a Swipe Up Attribution Window of 1, 7, or 28 days.
  |
|
 View Attribution Window
  |
 Select the desired View Attribution Window. Note that this value must be smaller than the
 ****Swipe Up Attribution Window****
 .
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 ****End Date****
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 ****Start Date****
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 ****Days Back to End At****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 ****Days Back to Start From****
 to create a range of represented days.


 For example, if you entered 10 for
 ****Days Back to Start From****
 and 5 for
 ****Days Back to End At****
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the Connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------

###

What version of the Snapchat API does this connector use?

This connector uses version 1 of the Snapchat API (

https://adsapi.snapchat.com/v1.

)

###

Which endpoint(s) does each report call in this connector?


|
 Report Name
  |
 Endpoint URL(s)
  |
| --- | --- |
|
 Object Info: Organizations
  |
 /me/organizations
  |
|
 Object Info: Ad Accounts
  |
 /organizations/{organization-id}/adaccounts
  |
|
 Object Info: Campaigns
  |
 /adaccounts/{ad\_account\_id}/campaigns
  |
|
 Object Info: All Campaigns
  |
 /adaccounts/{ad\_account\_id}/campaigns
  |
|
 Object Info: Ad Squads
  |
 adSquadsBy/{campaignId}/adsquads
  |
|
 /adSquadsBy/{adSquadId}/adsquads
  |
|
 Object Info: All Ad Squads
  |
 /adSquadsBy/{campaignId}/adsquads
  |
|
 /adSquadsBy/{adAccountId}/adsquads
  |
|
 Object Info: Ads
  |
 /AdsVia/{ad\_squad\_id}/ads
  |
|
 /AdsVia/{Id}/ads
  |
|
 Object Info: All Ads
  |
 /AdsVia/{ad\_squad\_id}/ads
  |
|
 /AdsVia/{adAccountId}/ads
  |
|
 Statistics: Campaign (deprecated)
  |
 /campaigns/{campaign-id}/stats
  |
|
 Statistics: Campaign (Insights and Dimensions)
  |
 /campaigns/{campaignId}/stats
  |
|
 Statistics: All Campaign (Insights and Dimensions)
  |
 /campaigns/{adAccIdAndTimeZone}/stats
  |
|
 Statistics: Ad Squad (deprecated)
  |
 /adsquads/{adsquad-id}/stats
  |
|
 Statistics: Ad Squad (Insights and Dimensions)
  |
 /adsquads/{adSquadId}/stats
  |
|
 Statistics: All Ad Squads (Insights and Dimensions)
  |
 /adsquads/{adAccIdAndTimeZone}/stats
  |
|
 Statistics: Ad (deprecated)
  |
 /ads/{ad-id}/stats
  |
|
 Statistics: Ad (Insights and Dimensions)
  |
 /ads/{adId}/stats
  |
|
 Statistics: All Ads (Insights and Dimensions)
  |
 /ads/{adAccIdAndTimeZone}/stats
  |
|
 Campaign Statistics Merge
  |
 /getAndWriteCampaignStatsData
  |
|
 Ad Squads Statistics Merge
  |
 /getAndWriteAdSquadsStatsData
  |
|
 Ads Statistics Merge
  |
 /getAndWriteAdsStatsData
  |


####

What kind of credentials do I need to power up this connector?

You need the username and password of a Snapchat Ads account that has access to the Ad accounts you are interested in.

###

How do I know if my data is finalized?

Data for a given day can be changed by Snapchat for up to 48 hours after the end of that day in the Ad Accounts timezone.


 The data that is returned has a column called "finalized\_data\_end\_time". This is the time of the most recently finalized data. Any data before that time is finalized. Any data after that time is still subject to change.

###

How do I get information about more than one Ad, Ad Squad, or Campaign at once?

The "Statistics: Ad (Insights and Dimensions)" and "Statistics: Ad Squad (Insights and Dimensions)" reports provide the data for a single or objects (ad or ad squad) at once. To get information about multiple objects, you need to use the "Statistics: Campaign (Insights and Dimensions)" report.


 This report allows you to select the metrics to report, and how the data should be broken down. Data can be broken down by Ad, Ad Squad, or Campaign. If you select one of these, the data will be reported for all individual Ads, Ad Squads, or Campaigns.

Troubleshooting
-----------------


* Make sure your authentication remains valid.
* Review the configuration to make sure that all required items have been selected.
* Review the Connector history for error messages.
* In rare cases, you may be requesting too much information and reaching API limitations or timeouts. If this is the case, you can review the history of the Connector run to see the error message and duration. If this is the case, you can reduce the number of accounts that are being pulled, choose a smaller number of metrics for the report that you are pulling, or reduce the timeframe that you are trying to pull.


