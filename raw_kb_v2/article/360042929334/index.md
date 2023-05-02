

Intro
-------

Matomo is open-source web analytics software that lets users collect and visualize data from websites, apps, and IOT. To learn more about the Matomo API, visit their page (

https://matomo.org/docs/analytics-api/

).


 You connect to your Matomo account in the Data Center. This topic discusses the fields and menus that are specific to the Matomo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in


 Adding a DataSet Using a Data Connector


 .


 Prerequisites
---------------

To connect to your Matomo account and create a DataSet, you need your Matomo access token (

token\_auth

). To find your access token, log into Matomo (Piwik), click
 **Administration**
 in the top menu, then click
 **API**
 in the left menu.


 Connecting to Your Matomo Account
-----------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Matomo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Matomo account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Token
  |
 Enter your Matomo access token (

token\_auth

). For information about finding your token, see "Prerequisites," above.
  |


 Once you have entered valid Matomo credentials, you can use the same account any time you go to create a new Matomo DataSet. You can manage connector accounts in the
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
 Select the Matomo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Actions
  |
 Returns a list of visitor actions.
  |
|
 Advanced Campaign Reporting
  |
 Returns a list of Campaign Reporting reports.
  |
|
 Click Path
  |
 Returns a list of reports for Visitors Click Path Tracking.
  |
|
 Contents
  |
 Returns report data for Content Visited by Visitors.
  |
|
 Devices Detection
  |
 Returns a list of detected devices used by visitors.
  |
|
 Events
  |
 Returns a list of user custom events.
  |
|
 Goals
  |
 Returns existing goals for one or more websites.
  |
|
 Referrers
  |
 Returns a list of websites, search engines, keywords, and campaigns used to access your website.
  |
|
 Transitions
  |
 Returns a list of tracked transitions within websites.
  |
|
 User Country
  |
 Returns a list of users' continents and countries.
  |
|
 Visit Frequency
  |
 Returns metrics for returning visitors.
  |
|
 Visit Time
  |
 Returns a list of visits by server time and by local time of your visitors.
  |
|
 Visit Summary
  |
 Returns a summary of visits.
  |

|
|
 Get All Sites
  |
 Specify whether to return data for all sites or only those you specify.
  |
|
 ID Site
  |
 Select the IDs of all websites you want to return data for.
  |
|
 Subtable ID
  |
 Enter the ID for the subtable you want to return data for. For example, each row in the

Referrers.getSearchEngines

response have an "idsubdatatable" field. This is the idSubtable of the table that contains all keywords for this search engine.
  |
|
 URL
  |
 Enter the URL you want to retrieve data for.
  |
|
 Title
  |
 Enter the page title you want to retrieve data for.
  |
|
 Field to Flatten
  |
 Select the field you want to break down your data by.
  |
|
 Period
  |
 Select the time period you want to pull data for. For example, if you selected
 **Week**
 , data would be retrieved for the week you select in the date picker for
 **Date**
 . If you select
 **Range**
 , you are prompted to select a range of dates to pull data for.
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


 Adding a DataSet Using a Data Connector


 .


 FAQs
------


#####
 How often can the data be updated?

As often as needed.

####
 Are there any API limits I should be aware of?

No.

