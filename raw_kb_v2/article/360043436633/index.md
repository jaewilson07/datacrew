

Intro
--------

Google Sheets is a spreadsheet program, part of a free, web-based software office suite

offered

by Google within its Google Drive service. The program allows users to create and edit spreadsheets online while collaborating with other users in real-time. To learn more about the Google API, visit their website (

https://developers.google.com

).


 The Google Sheets connector is a "Cloud App" connector, meaning it pulls data from a cloud-based application into Domo. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking


**Cloud App**


 in the toolbar at the top of the window.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector is appropriate for data sources in which multiple users are contributing to a single data source.
  |
|
**Primary Metrics**
 |
 Users can create a wide variety of metrics using Google Sheet DataSets. Some frequently used metrics are...
 * Tracking a list of items
* People
* Help requests
* Company assets
* Employee compliance / trainings
 |
|
**Primary Company Roles**
 |
 Appropriate for all roles
  |
|
**Average Implementation Time**
 |
 10 minutes or less
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 2
  |

##

Other panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Best practices
-----------------

Google Forms (surveys) don't currently have a connector; however, you can convert Google Forms into Google Sheets, which can then be pulled into Domo with the Google Sheets connector.

Prerequisites
----------------

To connect to your Google account and create a Google Sheets DataSet, you must have Google credentials.

Connecting to Your Google account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Sheets Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials pane

The Domo Google Sheets connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Sheets accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new Google Sheets  DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of Google.


###

Details Pane

In this pane, you specify the Google Drive file you want to import into Domo and set options for how you want to data to appear.


 Menu
  |
 Description
  |
| --- | --- |
|
 File Selection
  |
 Select whether you want to identify your desired Google Sheet by
 **Discovery**
 (which auto-populates a list of the files in your account),
 **Search**
 (which allows you to search for a specific filename), or
 **Spreadsheet ID**
 (which allows you to specify a file by its ID).
  |
|
 Search
  |
 Enter the name of the file you want to search for.
  |
|
 Spreadsheet ID
  |
 Enter the ID of the Google Sheet you want to pull into Domo.
  |
|
 Google Sheet
  |
 Select the Google Sheet you want to pull into Domo.
  |
|
 Worksheet Name
  |
 Select the specific worksheet you want to pull into Domo.
  |
|
 Spreadsheet Layout
  |
 Select whether your Google Sheet has column headers or row headers.
  |
|
 Manually Enter Cell Ranges
  |
 Check this box if you want to specify a that certain range of data from the spreadsheet be pulled into Domo.
  |
|
 Column Header Cell Range
  |
 Enter the range for the column headers you want to be imported into Domo.
  |
|
 Column Data Cell Range
  |
 Enter the range for the data you want to be imported into Domo.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
-------


**How do I know my Google credentials are secure?**


 The login process uses the OAuth process, so your Google credentials are never seen or stored by Domo. You can revoke Domo's access to your account at any time.


**How often can the data be updated?**


 As often as needed.


**Are there any API limits I should be aware of?**


 Google enforces total and concurrent call rate limits. To prevent rate limiting, reduce the number of DataSets scheduled to run at the same time.


**Why does the connector seem to be pulling in unwanted data?**


 Confirm that you have selected the correct Google Sheet worksheet. If you are using advanced options, make sure you have selected the correct range of data.


 Troubleshooting
------------------


* If the connection fails, confirm the Google account username and password are still accurate.
* If the connector seems to pull back the wrong data, confirm you selected the correct Google Sheet worksheet or, if using advanced options, confirm you have the correct range of data selected.

