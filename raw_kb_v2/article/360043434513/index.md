

Intro
-------

LinkedIn is a professional social networking platform. The Domo LinkedIn Connector integrates Domo with LinkedIn to extract data from the LinkedIn API. The connector provides access to company details, shared posts, share statistics, user profile information, and video analytics. To learn more about the LinkedIn API, visit their site (

https://developer.linkedin.com

).


 The LinkedIn connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


**Important:**
 Certain connectors require an API usage fee charged to you by the company, not Domo, depending on the customers' accounts with that company. Use of this connector may require an API usage fee.


 You connect to your LinkedIn account in the

Data Center

. This topic discusses the fields and menus that are specific to the LinkedIn connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is useful for measuring engagement from company updates and posts.
  |
|
**Primary Metrics**
 | * Company share statistics
* Video analytics
 |
|
**Primary Company Roles**
 |
 Marketing roles, especially those involving social engagement
  |
|
**Average Implementation Time**
 |
 Less than 10 minutes
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

Prerequisites
---------------

To connect to your LinkedIn account and create a DataSet, you must have the following:

 The email address you use to log in to LinkedIn
* The password you use to log in to LinkedIn

Connecting to Your LinkedIn Account
-------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the LinkedIn Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo LinkedIn connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing LinkedIn accounts in Domo)


 to open the LinkedIn OAuth screen where you can enter the email address and password you use to log in to LinkedIn. Once you have entered valid credentials, you can use the same account any time you go to create a new LinkedIn DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
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
 Select the LinkedIn report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Basic Share Statistics
  |
 This report returns basic statistics for a selected number of the company's shares.

This includes text, image, and video shares.
  |
|
 Get Company Details
  |
 This report returns company details for the selected company/organization id.
  |
|
 Get Company Followers Statistics
  |
 This report returns statistics about the people that are following the selected company/organization id.
  |
|
 Get Company Network Size
  |
 This report returns the number of first-degree connections the selected organization has.
  |
|
 Get Company Shares
  |
 This report returns information about the posts that a company has shared.
  |
|
 Get Company Share Statistics (Aggregated)
  |
 This report returns aggregated data across the company's shares.
  |
|
 Get Company Share Statistics (Individual)
  |
 This report returns data for a selected number of the company's shares, broken down by individual share.

Note: This report does not include video shares.
  |
|
 Get Profile
  |
 This report returns the authenticated member's profile.
  |
|
 Get Organization Brand Page Statistics
  |
 This report returns statistics about an organization brand either as a lifetime or date range bound report.
  |
|
 Get Organization Page Statistics
  |
 This report returns statistics about an organization either as a lifetime or date range bound report.
  |
|
 Get Video Analytics
  |
 This report returns analytics data for video posts.
  |

|
|
 Organization ID
  |
 Select the organization you want to retrieve data for.


|  |  |
| --- | --- |
|
 Post URN type selection
  |
 Specify whether you want to retrieve data for a specific type of post or for each type of post.
  |

|
|
 Number of shares to retrieve
  |
 Enter the number of shares to be in the report. Up to the specified number, the most recent shares will be returned.
  |
|
 Reporting Timeframe
  |
 Select whether you want to retrieve data for all time (
 **Retrieve Lifetime Data**
 ) or for a specified time period.
  |
|
 Breakdown
  |
 Select how the data will be broken down.
  |
|
 Skip invalid activity IDs
  |
 Check this box if you would like to ignore API failures when requesting activity IDs and continue instead of allowing the entire dataset to fail.
  |
|
 Sub report
  |
 Select the sub report object to be returned.
  |
|
 Granularity
  |
 Select whether you want the data in your report to be broken down by day or by month.
  |
|
 Duration
  |
 Specify whether the data in this report is for a single date or a range of dates.
  |
|
 Report Date
  |
 Specify whether the data is for a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Date Offset**
 ) from the current date. For example, if you enter

5

for
 **Date Offset**
 and set the DataSet to update daily, each new day the report will update to show information for the date 5 days in the past.
  |
|
 Date Offset
  |
 Enter the number of days back from the current date that will be presented in the report.
  |
|
 Date From
  |
 Specify whether the first date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Date From Offset**
 ) from the current date. If you choose
 **Relative here**
 , you should also choose
 **Relative**
 for
 **Date To**
 and specify a value for
 **Date To Offset**
 .


 For example, if you enter

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Date To
  |
 Specify whether the end date in your date range is a specific or relative date. Choose
 **Relative**
 if you always want the report to retrieve data for a given number of days back (which you specify in
 **Date To Offset**
 ) from the current date. If you choose Relative here, you should also choose
 **Relative**
 for
 **Date From**
 and specify a value for
 **Date From Offset**
 .


 For example, if you enter

10

for
 **Date From Offset**
 and

5

for
 **Date To Offset**
 and you set the DataSet to update daily, each new day the report will update to show information for 5 to 10 days in the past.
  |
|
 Select Specific Date From
  |
 Select the first date in your date range.
  |
|
 Select Specific Date To
  |
 Select the last date in your date range.
  |
|
 Select Specific Date
  |
 Select the date you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* The LinkedIn user account used to create the DataSet
 *must*
 have access to a Company page. Otherwise the connector will not be able to pull any data.
* LinkedIn access tokens stay valid until the number of seconds returned in the

expires\_in

field in the API response. Currently, all access tokens are issued with a 60-day lifespan.


