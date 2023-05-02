

*Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Adwords via Google BigQuery
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

Google Gmail is a powerful email server used throughout the world. The Google Gmail Connector lets you pull data from your Gmail inbox into Domo so you can combine the power of email data and manage your inbox efficiently. To learn more about the Gmail API, visit their page (

https://developers.google.com/gmail/api/

).


 You connect to your Gmail account in the Data Center. This topic discusses the fields and menus that are specific to the Gmail connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Gmail account and create a DataSet, you must have your Google account credentials.


 Connecting to Your Gmail Account
----------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Gmail Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Gmail connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Gmail DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.


 If you are already logged into Google when you connect in Domo, you are given the option to authenticate using the same account or switch to a different account.

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
 Select the Gmail report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Details
  |
 Returns the specified message attachments.
  |
|
 Draft Message Details
  |
 Returns the specified draft messages.
  |
|
 History Details
  |
 Lists the history of all changes to the given mailbox.
  |
|
 Label Details
  |
 Returns the specified labels.
  |
|
 List Draft Message IDs
  |
 Lists the drafts in the user's mailbox.
  |
|
 List User Labels
  |
 Lists all labels in the user's mailbox.
  |
|
 List User Messages IDs
  |
 Lists the messages in the user's mailbox.
  |
|
 List User Threads
  |
 Lists the threads in the user's mailbox.
  |
|
 Message Details
  |
 Returns the specified messages.
  |
|
 Thread Details
  |
 Returns the specified threads.
  |

|
|
 Message ID
  |
 Enter the ID of the message you want to retrieve data for. You can find message IDs by running the "List User Message IDs" report. For the "Message Details" report, if this is left blank, information is returned for all messages.
  |
|
 Draft ID
  |
 Select the ID of the draft you want to retrieve data for.
  |
|
 History ID
  |
 Enter the Start History ID you want to retreive data for. This can be obtained from the historyId of a message, thread, or previous list response.
  |
|
 Label Name
  |
 Select the ID of the label you want to retrieve data for.
  |
|
 Query (Optional)
  |
 Enter a query to pull data specific to that query. This supports the same query format as the Gmail search box. For example:

from:

someuser@example.comrfc822msgid

: is: unread`

|
|
 Thread ID
  |
 Enter the ID of the thread you want to retrieve data for. If this is left blank, information is returned for all threads.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

