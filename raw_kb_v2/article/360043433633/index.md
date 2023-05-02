

Intro
-------

Sysomos is a unified, insights-driven social platform that lets marketers search, discover, listen, publish, engage, and analyze at scale across earned, owned, and paid media. To learn more about the Sysomos API, visit their page (

https://sysomos.com/products/api-data-partners/

).


 You connect to your Sysomos account in the Data Center. This topic discusses the fields and menus that are specific to the Sysomos connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sysomos account and create a DataSet, you must have a Sysomos API key. If you do not have an API key, reach out to your Sysomos account representative.


 Connecting to Your Sysomos Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sysomos Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Sysomos account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your Sysomos API key.
  |


 Once you have entered valid Sysomos credentials, you can use the same account any time you go to create a new Sysomos DataSet. You can manage connector accounts in the
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
 Select the Sysomos report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Analytics Blogs
  |
 Returns aggregate analytics (sentiment, trend, demographics, etc.) for blog posts.
  |
|
 Analytics Forums
  |
 Returns aggregate analytics (sentiment, trend, demographics, etc.) for forums.
  |
|
 Analytics News
  |
 Returns aggregate analytics (sentiment, trend, demographics, etc.) for news sites.
  |
|
 Analytics Twitter
  |
 Returns aggregate analytics (sentiment, trend, demographics, etc.) for Twitter.
  |
|
 Search Blogs
  |
 Returns search results from blogs for the provided query.
  |
|
 Search Forums
  |
 Returns search results from forums for the provided query.
  |
|
 Search News
  |
 Returns search results from news sites for the provided query.
  |
|
 Search Twitter
  |
 Returns search results from Twitter for the provided query.
  |

|
|
 Search Term
  |
 Enter the search term you want to retrieve data for.
  |
|
 Start Days
  |
 Enter the number of days back you want to begin pulling data for. Pair with
 **End Days**
 to pull data for a range of days. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time the report ran it would pull data for 14 days ago up until 7 days ago.
  |
|
 End Days
  |
 Enter the number of days back you want to stop pulling data for. Pair with
 **Start Days**
 to pull data for a range of days. For example, if you entered

14

for
 **Start Days**
 and

7

for
 **End Days**
 , each time the report ran it would pull data for 14 days ago up until 7 days ago.
  |
|
 Countries to Report
  |
 Enter a comma-separated list of two-letter postal codes for countries you want to include in your report (e.g.

US,CN,MX

).
  |
|
 Record Limit
  |
 Enter the maximum number of records you want to retrieve. At least this many records will be returned, but there will likely be more. Up to 50,000 records can be fetched.
  |
|
 Report Country Results Individually
  |
 Select whether you want individual results to be shown for countries entered in the
 **Countries to Report**
 field. If you select
 **Yes**
 , all countries you've entered will have their results shown separately. If you select
 **No**
 , the statistics for all countries you've entered will be aggregated.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

