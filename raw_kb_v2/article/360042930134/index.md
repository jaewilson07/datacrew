

Intro
-------

Yelp is a local business directory service and review site with social networking features. To learn more about the Yelp Reporting API, visit their page (

https://www.yelp.com/developers

).


 You connect to your Yelp Reporting account in the Data Center. This topic discusses the fields and menus that are specific to the Yelp Reporting connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Yelp account and create a dataset, you must have your Yelp Reporting API username and password. This username and password is different from your standard Yelp login. To request your credentials, please reach out to your Yelp sales representative. Your Yelp sales representative will create the credentials and share them with you.


 Connecting to Your Yelp Reporting Account
-------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Yelp Reporting Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Yelp account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Yelp username.
  |
|
 Password
  |
 Enter your Yelp password.
  |


 Once you have entered valid Yelp credentials, you can use the same account any time you go to create a new Yelp Reporting DataSet. You can manage connector accounts in the
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
 Select the Yelp Reporting report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Daily Report
  |
 Returns a report containing daily business/advertiser metrics for specified Business IDs over a date range. You can request daily data for up to the last 2 months for Business Metrics and up to the last 12 months for Advertiser Metrics.
  |
|
 Monthly Report
  |
 Returns a report containing monthly business/advertiser metrics for specified Business IDs over a date range. You can request monthly data for up to the last 12 months for all metrics in monthly reports.
  |

|
|
 Business IDs
  |
 Enter a comma-separated list of IDs of the businesses you want to retrieve data for. You can find business IDs by running the "Search" report in the Yelp connector.
  |
|
 Business and Advertising Metrics
  |
 Select the business and advertising metrics you want to see in your report.


**Business Metrics**


 For daily reports, you can request business metrics for the last 2 months. For monthly reports, you can request metrics for the last year.


|
 Metric
  |
 Description
  |
| --- | --- |
|
 Calls Tracked
  |
 Number of calls tracked.
  |
|
 Clicks to Website
  |
 Number of clicks to the business URL from the Yelp business profile.
  |
|
 Deals Sold
  |
 Number of deals sold.
  |
|
 Desktop Appearances in Search
  |
 Number of times a business appeared in a search on desktop devices.
  |
|
 Desktop Call-to-Action Clicks
  |
 Number of Call-to-Action clicks on desktop devices.
  |
|
 Desktop User Views
  |
 Number of page views on desktop devices.
  |
|
 Direction & Map Views
  |
 Number of direction and map views from the Yelp business profile.
  |
|
 Mobile Appearances in Search
  |
 Number of times a business appeared in search on mobile devices.
  |
|
 Mobile Call-to-Action Clicks
  |
 Number of Call-to-Action clicks on mobile devices.
  |
|
 Mobile Calls
  |
 Number of phone calls initiated from the Yelp business profile.
  |
|
 Mobile Check-Ins
  |
 Number of mobile check-ins from the Yelp business profile.
  |
|
 Mobile User Views
  |
 Number of page views on mobile devices.
  |
|
 Online Bookings
  |
 Number of online bookings.
  |
|
 Online Orders
  |
 Number of online orders.
  |
|
 Request a Quote Messages
  |
 Number of messages sent to a business including messages sent through Request a Quote.
  |
|
 Total User Views
  |
 Number of total page views on desktop and mobile devices.
  |
|
 User Uploaded Photos
  |
 Number of user-generated photos added to the Yelp business profile.
  |
|
 Yelp Bookmarks
  |
 Number of times a business has been bookmarked by users.
  |


**Advertiser Metrics**


 For both daily and monthly reports, you can request advertiser metrics for up to 1 year ago.


|
 Metric
  |
 Description
  |
| --- | --- |
|
 Ad Cost
  |
 Cost of ad.
  |
|
 AD-DRIVEN Clicks to Website
  |
 Number of clicks to the business URL from the Yelp business profile that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Deals Sold
  |
 Number of deals sold that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Directions and Map Views
  |
 Number of direction and map views from the Yelp business profile that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Mobile Calls
  |
 Number of phone calls initiated from the Yelp business profile that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Mobile Check-ins
  |
 Number of mobile check-ins from the Yelp business profile that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Online Reservations
  |
 Number of Yelp Reservations and Yelp No-Wait bookings that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Request-a-Quote Messages
  |
 Number of messages sent to a business including messages sent through Request a Quote that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Total Call-to-Action Clicks
  |
 Number of Call-to-Action clicks on desktop devices that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN User-Uploaded Photos
  |
 Number of user-generated photos added to the Yelp business profile that can be attributed to an Ad impression.
  |
|
 AD-DRIVEN Yelp Bookmarks
  |
 Number of times a business has been bookmarked by users that can be attributed to an Ad impression.
  |
|
 Billed Ad Clicks
  |
 Number of clicks from a billed impression.
  |
|
 Billed Ad Impressions
  |
 Number of times Ad is displayed and will be billed.
  |


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


 FAQs
------


#####
 How can I find the ID for the business I want to retrieve data for?

You can find IDs for specific businesses by running the "Search" report in the standard Yelp connector.

