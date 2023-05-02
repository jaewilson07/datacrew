

*Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Adwords via Google BigQuery
* DoubleClick Campaign Manager via Google Cloud Storage (DTV2)
* Google Cloud Storage
* Google Contacts
* Google Drive
* Google Gmail
* Google Admin SDK Reports

If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:

 Google BigQuery Service
* Google Ads (fomerly AdWords) via Google BigQuery Service
* Google Drive Service
* Google Cloud Storage Service
* Google Contacts Service
* Google Gmail Service
* Google Admin SDK Reports Service

All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.


 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.


 Intro
-------

To learn more about Google's Reports API, visit their page (

https://developers.google.com/admin-.../v1/reference/

).


 You connect to Google Admin SDK Reports in the Data Center. This topic discusses the fields and menus that are specific to the Google Admin SDK Reports connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Google and create a Google Admin SDK Reports DataSet, you must have a Google username and password.


 Connecting to Your Google Admin SDK Reports Account
-----------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Admin SDK Reports Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google Admin SDK Reports connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Admin SDK Reports accounts in Domo) to open the Google OAuth screen where you can enter your Google username and password. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Admin SDK Reports DataSet. You can manage connector accounts in the
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
 Select the Google Admin SDK Reports report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Customer Usage
  |
 Returns Google Apps service activities for the account's users.
  |
|
 Google Admin Activity
  |
 Returns information about Admin Console activities for all of the account's administrators.
  |
|
 Google Drive Activity
  |
 Returns information about how the account's users manage, modify, and share their Google Drive documents.
  |
|
 User Usage
  |
 Returns Google Apps service activities for the account's users. (Data for some dates may be left blank until it becomes available.)
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


####
 How do I know my Google credentials are secure?

The connector uses OAuth, which authenticates the account with Google without Domo ever having to access your Google account credentials.

###
 How frequently will my data update?

DataSets should be set to update no more than once every 15 minutes.

####
 Are there any API limits I should be aware of?

While Google may enforce call rate limits, you should not have to worry about them.

