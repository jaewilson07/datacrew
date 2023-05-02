

Intro
-------

Google Seach Console (formerly Google Webmaster Tools) is a no-charge web service by Google that allows webmasters to check indexing status and optimize visibility of their websites. To learn more about the Google Search Console API, visit their page (

https://developers.google.com/webmas...-api-original/

).


 You connect to your Google account in the Data Center. This topic discusses the fields and menus that are specific to the Google Console Tools connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector retrieves common SEO metrics.
  |
|
**Primary Metrics**
 | * Crawler errors
* Clicks
* Impressions
* CTR
* Position by Site
* Country
* Query
 |
|
**Primary Company Roles**
 |
 SEO specialists
  |
|
**Average Implementation Time**
 |
 ~10
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 3
  |

Best Practices
----------------


* Google Search Console is limited to a 90-day rolling timeframe with a 2-day delay. Best practice when establishing the connector calls for pulling in the full 90 days of data by setting the connector. To do this, follow these steps:

1. Set the
	 **Duration**
	 to
	 **Date Range**
	 , the
	 **Start Date**
	 to
	 **Relative**
	 ,
	 **Days Back to Start From**
	 to

 90

 , and
	 **Days Back to End At**
	 to

 Yesterday-2

 .
	2. Run the connector once.
	3. Set
	 **Start Date**
	 and
	 **End Date**
	 to
	 **Relative**
	 ,
	 **Days Back To Start From**
	 to

 Yesterday-2

 ,  and
	 **Days Back to End At**
	 to

 Yesterday-2

 .
	4. Update the schedule to run every day with an update setting of
	 **Append**
	 .
	5. Save the DataSet without running.


	 The connector will run on the schedule and append new data daily.
* Be aware that data from Google Search Console's API tends to be delayed, sometimes for several days.

Prerequisites
---------------

To connect to your Google account and create a DataSet, you must have Google credentials.


 Note that although you will be able to create an account using any Google credentials, you will not be able to connect to data using this connector unless you have actually used the features of Google Search Console.


 Connecting to Your Google Account
-----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Search Console Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google Search Console connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Search Console accounts in Domo) to open the Google Search Console OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Search Console DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


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
 Select the Google Search Console report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Sitemap Details
  |
 Retrieves data about a specific sitemap.
  |
|
 Search Analytics Query
  |
 Queries and returns your search traffic data with dimensions that you define.
  |

|
|
 Get Consolidated Data
  |
 Select this check box to get consolidated data for the given date range in a single row. Leave this box unchecked to get a separate row of data for each date within the date range.
  |
|
 Choose Search Dimensions
  |
 Select the dimensions you'd like to receive information for.
  |
|
 Choose Search Type
  |
 Select the search type that you would like to receive information about.
  |
|
 Include Fresh Data
  |
 Select this checkbox if you want to retrieve all data including fresh data, otherwise only finalized data will be included.
  |
|
 Choose Your Site
  |
 Select the site you want to retrieve data for.
  |
|
 Choose the Site Map (Errors, Warnings)
  |
 Select the site map you want to retrieve data for. URLs are listed together with the numbers of errors and warnings. For example:


 www.domo.com

(1,0)

would mean that Domo's website contained 1 error and 0 warnings.
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


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* It is not uncommon for there to be variance between the front end UI of Google Search Console and the API. If there are major variances, ensure that you do not have duplicate records. In this event, do a full Replace on the DataSet and reset the daily Append schedule.
* The more search dimensions you add, the less likely the data's total will match the total found in Google Search Console's front end. This is because Google Search Console's API breaks data up into smaller parts when it sends it to Domo. If you want to verify Domo's data, follow this link to see whether Domo's data matches what the Google Search Console returns:

https://developers.google.com/apis-e...nalytics.query

. If you want to compare Google Search's Front End Totals to Domo, select NONE of the search dimensions in the connector.


