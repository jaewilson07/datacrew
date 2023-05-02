

Intro
-------

Brandwatch provides social media monitoring and analytics services. You can use Domo's Brandwatch connector to retrieve data about authors, stories, mentions, and so on. To learn more about the Brandwatch API, visit their page (

https://www.brandwatch.com/brandwatch-api/

).


 You connect to your Brandwatch account in the Data Center. This topic discusses the fields and menus that are specific to the Brandwatch connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Brandwatch account and create a DataSet, you must have your Brandwatch username and password.


 Connecting to Your Brandwatch Account
---------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Brandwatch Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Brandwatch account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your Brandwatch username.
  |
|
 Password
  |
 Enter your Brandwatch password.
  |


 Once you have entered valid Brandwatch credentials, you can use the same account any time you go to create a new Brandwatch DataSet. You can manage connector accounts in the
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
 Select the Brandwatch report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Gender Breakdowns for Authors
  |
 Get the breakdown list of authors by gender.
  |
|
 Share of Voice by Brand
  |
 Get the list of voices by brand.
  |
|
 Top Five Countries for Authors
  |
 Get the top five countries for authors.
  |
|
 Top Five Interests for Authors
  |
 Get the top five interests for authors.
  |
|
 Top Five Professions for Authors
  |
 Get the top five professions for authors.
  |
|
 Top Ten Authors
  |
 Get the top ten authors list for a brand over a given date range.
  |
|
 Top Ten Hashtags on Twitter
  |
 Get the top ten Twitter hashtags for a brand.
  |
|
 Top Ten Mentioned Authors on Twitter
  |
 Get the top ten most mentioned authors on Twitter.
  |
|
 Top Ten Sites by Volume
  |
 Get the top ten domains visiting for a brand.
  |
|
 Top Ten Stories on Twitter
  |
 Get the top ten stories for a brand over a given date range.
  |
|
 Top Ten Twitter Authors
  |
 Get the top ten tweeters for a brand over a given date range.
  |
|
 Top Topics for Brand
  |
 Get the list of top topics for a brand.
  |
|
 Total Impressions
  |
 Get the list of total impressions.
  |
|
 Volume of Mentions (by Sentiment)
  |
 Get the list of mentions by sentiment.
  |
|
 Volume of Mentions (by Page Type)
  |
 Get the list of mentions by page type.
  |
|
 Volume of Mentions (by Tags)
  |
 Get the list of mentions by tags.
  |
|
 Volume of Mentions (by Categories)
  |
 Get the list of mentions by categories.
  |

|
|
 Select Project
  |
 Select the project you want to retrieve data for.
  |
|
 Select Query or Query Group
  |
 Select the query you want to retrieve data for.
  |
|
 Query Group
  |
 Select the query group you want to retrieve data for.
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
 Filter
  |
 Select how you would like to filter the data in the report.
  |
|
 Filter by Author
  |
 Select all of the author groups you would like to filter by.
  |
|
 Filter by Category
  |
 Select all of the categories you would like to filter by.
  |
|
 Filter by Page Type
  |
 Select all of the page types you would like to filter by.
  |
|
 Filter by Sentiment
  |
 Select all of the sentiments you would like to filter by.
  |
|
 Filter by Site Type
  |
 Select all of the site types you would like to filter by.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 Do I need a certain type of account with the data service to use this connector?

No. Any Brandwatch account with access to collected data should be usable to set up this connector.

####
 Some of the Sentiment values are 0. Is that correct?

Some reports allow you to choose which sentiment types (positive, neutral, negative) will be reported. If you do not select a sentiment type, then the report will list 0 as the value for that particular sentiment.

####
 How often can the data be updated?

Datasets should be set to update once a day.

####
 Are there any API limits that I need to be aware of?

No.

