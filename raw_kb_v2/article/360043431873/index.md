

Intro
-------

SimilarWeb collects, measures, analyzes and provides user engagement statistics for websites and mobile apps.  To learn more about the SimilarWeb API, visit their page (

https://developer.similarweb.com/

).


 You connect to your SimilarWeb account in the Data Center. This topic discusses the fields and menus that are specific to the SimilarWeb connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your SimilarWeb account and create a DataSet, you must have a SimilarWeb API key. For information about finding your API key, visit SimilarWeb's FAQ at

https://developer.similarweb.com/faq

.


 Connecting to Your SimilarWeb Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the SimilarWeb Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your SimilarWeb account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your SimilarWeb API key. For information about finding your API key, visit SimilarWeb's FAQ at

https://developer.similarweb.com/faq

.
  |


 Once you have entered valid SimilarWeb credentials, you can use the same account any time you go to create a new SimilarWeb DataSet. You can manage connector accounts in the
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
 Select the SimilarWeb report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Audience Interests
  |
 Returns a list of additional websites that were frequently visited by the same visitors of a given domain within the browsing session, along with their affinity score.
  |
|
 Engagement Bounce Rate
  |
 Returns the Bounce Rate for the given domain.
  |
|
 Keyword Competitors Organic Search
  |
 Returns a list of websites competing for the same organic keywords as the given domain and competition score.
  |
|
 Keyword Competitors Paid Search
  |
 Returns a list of websites competing for the same paid keywords as the given domain and competition score.
  |
|
 Mobile App Current Installs
  |
 Returns installs, minus uninstalls for the App as a percentage of all Android device users in the country.
  |
|
 Mobile App Details
  |
 Returns the Title, Image, Publisher, Price, Main Category, Main Category ID, and Rating for a requested application.
  |
|
 Mobile Web Avg. Visit Duration
  |
 Returns the average visit duration on the given mobile web domain.
  |
|
 Mobile Web Bounce Rate
  |
 Returns the Bounce Rate for the given mobile web domain.
  |
|
 Mobile Web Pages Per Visit
  |
 Returns the average page views for the given mobile web domain.
  |
|
 Mobile Web Site Related Apps
  |
 Returns a list of all mobile applications (Google Play Store) related to the given domain.
  |
|
 Mobile Web Visits
  |
 Returns estimated number of visits for the mobile web domain
  |
|
 Similar Sites
  |
 Returns the top 40 most similar websites to the given domain and their similarity scores.
  |
|
 Total Traffic Avg. Visit Duration
  |
 Returns the average visit duration on the given domain on a Monthly, Weekly, or Daily basis.
  |
|
 Total Traffic Bounce Rate
  |
 Returns the Bounce Rate for the given domain on a Monthly, Weekly, or Daily basis.
  |
|
 Total Traffic Engagement
  |
 Returns the estimated number of visits for the domain on a Monthly, Weekly, or Daily basis.
  |
|
 Total Traffic Page Visits
  |
 Returns the average page views for the given domain on a Monthly, Weekly, or Daily basis.
  |
|
 Traffic Avg. Visit Duration
  |
 Returns the average visit duration on the given domain on a Monthly, Weekly, or Daily basis.
  |
|
 Traffic Country Rank
  |
 Returns SimilarWeb's monthly Country Rank for a given domain on a Monthly basis.
  |
|
 Total Traffic Desktop vs Mobile Split
  |
 Returns the desktop vs mobile web traffic share split on a Monthly, Weekly, or Daily basis
  |
|
 Traffic Engagement
  |
 Returns estimated number of visits for the domain on a Monthly, Weekly, or Daily basis.
  |
|
 Traffic Global Rank
  |
 Returns SimilarWeb's monthly Global Rank for a given domain on a Monthly basis.
  |
|
 Traffic Page Visits
  |
 Returns the average page views for the given domain on a Monthly, Weekly, or Daily basis.
  |
|
 Traffic Sources Organic Search Keywords
  |
 Returns the organic search keywords for the given domain, keyword traffic share, change %, keyword volume, CPC, URL, and keyword position.
  |
|
 Traffic Sources Overview
  |
 Returns a detailed overview of traffic sources broken down by source type and traffic share.
  |
|
 Traffic Sources Paid Search Keywords
  |
 Returns the paid search keywords for the given domain, keyword traffic share, change %, keyword volume, CPC, URL, and keyword position
  |
|
 Traffic Sources Referrals
  |
 Returns the referring websites for the given domain, and traffic share per referrer.
  |
|
 Traffic Sources Social Referrals
  |
 Returns the leading social networks sending traffic to a given domain as well as traffic share per social network.
  |
|
 Traffic by Geography Distribution
  |
 Returns traffic share, visits, pages per visit, average visit duration, and bounce rate broken down by country.
  |
|
 Website Category Rank
  |
 Returns the Category of a given domain and its Global Rank within its given category
  |

|
|
 Domain
  |
 Enter the domain name you want to retrieve data for.
  |
|
 App ID
  |
 Enter the ID of the app you want to retrieve data for.
  |
|
 Country
  |
 Enter the name of the country you want to retrieve data for. If you leave this blank, data is returned for all countries.
  |
|
 Time Granularity
  |
 Select whether you want your report data to be broken down by day, week, or month.
  |
|
 Date Range
  |
 Select the start and end dates for your report.
  |
|
 Months Back
  |
 Enter the number of past months you want to retrieve data for.
  |
|
 Start Date
  |
 Enter the start month for your report in the format

YYYY-MM

.
  |
|
 End Date
  |
 Enter the end month for your report in the format

YYYY-MM

. A previous month of data is not available until the 11th of the current month.
  |
|
 Main Domain
  |
 Select
 **True**
 if your report data should come from the main domain; otherwise select
 **False**
 .
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

