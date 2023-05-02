

Intro
-------


 Bing Ads is a service that provides pay per click advertising on both the Bing and Yahoo! search engines. Use Domo's Bing Ads connector to pull Bing Ads data from marketing, sales, operations, and finance for true closed-loop reporting. This service supports a subset of the reports available in the Bing Ads web application.


 The reports that you can request are grouped into the following categories.


* **Delivery**


 Show the overall effectiveness and cost of ads and keywords for a specified time period. You can include details in the reports—such as clicks, conversions, and spending—that you can use to identify the ads and keywords that are performing well and those that you may need to adjust.
* **Budget**


 Shows your monthly budget, how much you have spent to date, and whether you are on target to spend your monthly budget.
* **Targeting**


 Determine whether your ads are reaching their intended audiences.
* **Campaign Analytics**


 Used to measure the effectiveness of the account’s ad campaigns, primarily in terms of return on investment. In addition, you can use the reports to learn which pages on your website are most commonly abandoned by visitors and then use this information to change the design of your website to improve conversions.


 To learn more about the Bing Ads API, visit their page (

https://msdn.microsoft.com/en-us/library/bing-ads-getting-started.aspx

).

The Bing Ads connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.

You connect to your Bing Ads account in the Data Center. This topic discusses the fields and menus that are specific to the Bing Ads connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


|  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Ad conversion
  |
|
**Primary Metrics**
 |
 Ad click-thru rates
  |
|
**Primary Company Roles**
 |
 Web marketing roles
  |
|
**Average Implementation Time**
 |
 ~1 hour
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 4
  |

Best Practices
----------------

Use the backfill to pull in historic data. The first time the report runs, historic data will be retrieved. Subsequent runs will only pull in the date ranges specified.

Prerequisites
----------------


 To connect to your Bing Ads account and create a DataSet, you must have the following:


* Your Bing Ads developer token. For information about obtaining a developer token, see

https://msdn.microsoft.com/en-us/library/bing-ads-getting-started.aspx

.
* Secret ID and Value associated with your Microsoft Azure app
* You will also need to set the following redirect URI:

*https://oauth.domo.com/api/data/v1/oauth/providers/bingads/exchange**


###
 Obtaining your Developer Token

To find your developer token:

. Go to

https://developers.ads.microsoft.com/Account
2. Make sure it's a Super Admin account and that the token is a Universal token, and verify that it's the same account that is creating the Azure portal app.

##
 Configuring your Azure App to obtain your Secret ID and Value


1. Login into

Azure Portal

.
2. Select
 ****Azure Active Directory > App Registrations > New Registration****
 .


 3. Fill out the registration form as follows:

 Name: enter a meaningful application name that will be displayed to users of the app, for example 'DomoConnector'.
* Supported account types: Select
 **Accounts in any organizational directory (Any Azure AD directory – Multitenant) and personal Microsoft accounts**
 .
* Redirect URI: Add and save the following URI:

*https://oauth.domo.com/api/data/v1/oauth/providers/bingads/exchange**
 .

The authentication response is sent to this URI after successfully authenticating the user. Providing the URI at this stage is optional and it can be changed later, but a value is required for most of the authentication scenarios.

4. Click
 **Register**
 to create the application. An overview of your registered App will appear.

5. The
 ****Application ID****
 that appears here is the
 ****Client ID****
 you will enter in the
 ****Credentials****
 pane in Domo.

6. Select
 **Authentication**
 under Manage. Under
 **Implicit Grant**
 , check the box to enable both Access Tokens and ID Tokens. Select
 **Save**
 at the top of the page to save the changes.

7. Select
 **API Permissions**
 under Manage. You will need the
 **User.Rea**
**d**
 and
 **User.ReadBasic.All**
 permissions.


 8. To add permissions, select
 **Add a Permission**
 . Select Microsoft Graph API, and then Delegated Permissions. Type or Navigate to
 **User.ReadBasic.All**
 , check the box, and click
 **Add Permissions**
 .

9. Select
 **Certificates & Secrets**
 under Manage. Certificates can be used as secrets to prove the application’s identity when requesting a token. Also, can be referred to as public keys.


 10. Select the +
 **New client secret**
 button.

11. Enter a value in Description, select a suitable option for Expires and click
 **Add**
 .

*Important:**
 Ensure to c

opy the client secret Value (not the Secret ID) before leaving the page. It's not displayed again after you leave this page.


 This will be the Client Secret within Domo.


 12. Now, enter the
 **Developer Token**
 ,
 **Client ID**
 , and
 **Client Secret**
 in Domo under the Credentials section for the Bing Ads connector, and click Connect. There will be a popup to Log in to Microsoft. Login using your Super Admin account and follow the prompts to complete the connection.

##


 Debugging the


 Azure portal app and BingAds account

While creating your account, if you get an error "There was a problem creating your account. Please try again", you can check the following configuration to debug your Azure portal app and BingAds account.

. In your Azure portal app, check the following:


* Under Authentication -> Supported account types, select "Accounts in any organizational directory (Any Azure AD directory – Multitenant) and personal Microsoft accounts"

 Verify that the redirect URI is
 **https://oauth.domo.com/api/data/v1/oauth/providers/bingads/exchange**
* Under Authentication -> Implicit grant, check Access tokens and ID tokens

 Under API permissions, select User.Read and User.ReadBasic.All


 2. In your Developer Token which you can find at

https://developers.ads.microsoft.com/Account

, make sure it's a Super Admin account and that the token is a Universal token, and verify that it's the same account that is creating the Azure portal app.


 3.

You need to create a new client secret in the app that you previously created, copy the Value of that secret, and use that to create the Bing Ads account in Domo. If that doesn't work, create a new app and use those credentials.


 Connecting to Your Bing Ads Account
--------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Bing Ads Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains a single field where you enter your Bing Ads developer token.  You are then taken to the Microsoft OAuth page where you are required to enter your Microsoft username and password. Once you have entered valid Microsoft credentials, you can use the same account any time you go to create a new Bing Ads DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the
 **Data Center**
 . For more information about this tab, see

Managing User Accounts for Connectors

.


###

Details Pane


 This pane contains a primary
 **Report**
 menu, along with various other menus which may or may not appear depending on the report type you select.


|

*Menu**

|

*Description**

|
| --- | --- |
|
 Report
  |

Select the Bing Ads report you want to run. The following reports are available:

  |  |
| --- | --- |
|

Account Performance Report

|

Shows long-term account performance and trends.

|
|

Ad Dynamic Text Performance Report

|

Identifies which dynamic text strings are performing well and which strings you should consider changing.

|
|

Ad Extension by Ads Report

|

Used to compare how well different versions of your ad extensions are performing with each ad.

|
|

Ad Extension by Keyword Report

|

Used to compare how well different versions of your ad extensions are performing for each keyword.

|
|

Ad Extension Detail Report

|

Used to discover the effectiveness of individual ad extension items, such as each link of a sitelink extension.

|
|

Ad Group Performance Report

|

Used to compare delivery performance statistics by ad group, campaign, or account attributes, rather than at the keyword level.

|
|

Ad Performance Report

|

Used to determine which ads lead to clicks and conversions, and which are not performing.

|
|

Age Gender Demographic Report

|

Used to discover how your campaigns and ad groups are resonating with audiences of diverse age and gender.

|
|

Budget Summary Report

|

Used to discover how your budget is performing for the month. The report shows your monthly budget, how much you have spent to date, and whether you are on target to stay within your monthly budget.

|
|

Call Detail Report

|

Used to discover which accounts, campaigns, or ad groups are driving the most completed phone calls.

|
|

Campaign Performance Report

|

Used to view high-level performance statistics and quality attributes for each campaign or account. This is also a quick way to flag any major campaign or account problems.

|
|

Conversion Performance Report

|

Used to discover which campaigns and keywords are leading an audience to complete a purchase or other conversion action.

|
|

Destination URL Performance Report

|

Used to identify landing pages that met audience expectations and potentially resulted in high click-through or conversion rates.

|
|

Goals and Funnels Report

|

Used to discover whether your audience completes each step through the land, browse, prospect, and conversion pages of your website. For example, you can use this report to determine the step in which users leave the conversion funnel, so that you can improve or remove that step to increase the chance that the user will continue to the next step.

|
|

Keyword Performance Report

|

Used to discover which keywords are performing well and which are not.

|
|

Metro Area Demographic Report

|

Used to discover how your campaigns and ad groups are resonating with audiences of specific metropolitan areas.

|
|

Negative Keyword Conflict Report

|

Used to discover which keywords and negative keywords are in conflict, and whether the conflict is at the campaign or ad group level.

|
|

Publisher Usage Performance Report

|

Used to discover if any website URLs aren’t performing well enough for your campaign or ad group target settings. For example, if ad impressions at those URLs yield a low click-through rate, then you might decide to exclude those websites from your campaign.

|
|

Search Campaign Change History Report

|

Used to discover when changes to an account were made, as well as which user made the changes.

|
|

Search Query Performance Report

|

Used to discover what your audience is searching for when your ads are shown. You can use this information to make informed additions, removals, or edits to both your keyword and negative keyword lists.

|
|

Share of Voice Report

|

Used to view impression share (%) of successful bids for each keyword, and identify opportunities to increase impression share.

|
|
 User Location Performance Report
  |
 Used to show where your traffic is coming from broken out by the physical location and the location people are searching for.
  |

|
|

Aggregate By

|

Select how data in the report is broken down. For example,
 **Weekly**
 breaks down data by week.

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
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
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
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Backfill
  |
 Enter the number of days before the start date that should be backfilled. This action will be performed
 *only*
 the first time the data source runs. On subsequent runs, the specified
 **Start Date**
 to
 **End Date**
 range is used.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Double-check the API key.
* Try to access the data directly from the API.

FAQ
-----


####
 How frequently will my data update?

As often as needed.

###
 What type of input parameters do I need to consider while creating a Bing Ads DataSet?

You need to provide the Report type, Aggregated by (daily/weekly/hourly etc.) and PastDays value (backfill) while creating a new Bing Ads dataset.

###
 Are there any API limits that I need to be aware of?

No.

###
 Does the Bing Ads connector support backfilling?

Backfilling is supported in Bing Ads connector for the first attempt only. As you set the backfill value, the Bing Ads connector pulls the data for the mentioned number of days before the start date, along with the data between the specified start and end dates.

