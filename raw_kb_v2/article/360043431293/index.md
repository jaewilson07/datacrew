

*Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Ads via Google BigQuery
* DoubleClick Campaign Manager via Google Cloud Storage (DTV2)
* Google Cloud Storage
* Google Contacts
* Google Drive
* Google Gmail
* Google Admin SDK Reports

If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:

 Google BigQuery Service
* Google Ads (formerly AdWords) via Google BigQuery Service
* Google Drive Service
* Google Cloud Storage Service
* Google Contacts Service
* Google Gmail Service
* Google Admin SDK Reports Service

All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.


 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.


 Intro
-------

Google Ads is an online advertising service. Use Domo's Google Ads via BigQuery connector to transfer and pull data from a specific project into Domo. To successfully configure this connector, you must first configure a Google BigQuery script within your Google Ads account. The steps for doing this are provided later in this article.


 For more information about the Ads API, see

https://developers.google.com/adword...s/guides/start

.


 This topic discusses the fields and menus that are specific to the Google Ads via Google BigQuery connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to Ads data using this connector,

you must have your Google credentials (email address and password). After you authenticate using your credentials, you must configure a BigQuery script within your Ads account using the script provided in the
 **Details**
 pane for the connector. You must do this
 *before*
 you run the connector.


**Notes:**


* Do not use a Manager account.
* Ensure that a project is already set up and Billing is activated for that project. (Note that this may mean you will become subject to other charges based on your BigQuery contract.)


###
 Configuring a BigQuery Script in Google Ads

This section explains how to configure a BigQuery script in Google Ads. After you have configured the script, you should be able to use the connector to pull in data just as you would any other connector.


**To configure a BigQuery script in Google Ads,**

. Open the Google Ads via Google BigQuery connector page in Domo.
2. Authenticate to Google using your Google credentials.
3. Scroll to the bottom of the
 **Details**
 pane.
4. Copy the script from the
 **Script**
 box.
5. Now, sign into your account in Google Ads.
6. Make sure to switch your account to the
 **Expert Mode**
 by clicking the wrench (
 **Settings**
 ) icon in the top right corner of the screen.
7. Click the wrench (
 **Tools & Settings**
 ) icon in the top right corner of the screen to expand the menu.
8. Click
 **Scripts**
 under "Bulk Actions".
9. Click the plus button to create a new script.

10. Provide a name for the script in the "script name" area and click
 **Authorize**
 .

11. Select
 **Advanced APIs**
 .


 12. Check the
 **Bigquery**
 box and click
 **Save**
 .

13. Now, paste the script you copied in step 4 into the script text box.

*Note:**

Scripts make changes on a user's behalf. You must authorize scripts before they can make any changes.


 14. Click
 **Preview**
 button at the bottom right corner of the screen.


 15. (Conditional) If any error messages appear after you preview, follow their instructions. For example, you may be prompted to click on another link to authorize BigQuery or reauthorize.


 16. Click
 **Run**
 when your configuration is successful.


 17. Google Ads now takes you to the
 **Script History**
 section where you can view your script details.

18. Now, click on
 **Scripts**
 to switch to the scripts section to set up how often your script runs.


 19. Click the pencil icon under "Frequency."

20. Set the schedule for your script.

21. Now, return to the Google Ads via BigQuery connector page in Domo and continue configuring the connector.


 Connecting to Google Ads via Google BigQuery
----------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Google Ads via BigQuery Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Google Ads via BigQuery connector uses OAuth to connect to Google. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Google Ads via BigQuery accounts in Domo) to open the Google OAuth screen where you can select the account you want to connect to. After selecting an account, specify the password for that account. After you have entered a valid password, you can use the same account in Domo any time you create a Google Ads via BigQuery DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

*Note:**
 If you are already logged into Google when you connect in Domo, you are authenticated automatically when you click
 **Add account**
 . If you want to connect to an account that is different from the one you are logged into, you must first log out of the currently active Google account.


###
 Details Pane

This pane contains a number of fields and menus you can use to configure your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Project ID
  |
 Enter the name of the specific project you want to add your DataSet to. You can find this in your Google Cloud Console in the project info.
  |
|
 DataSet ID
  |
 Enter a name for your DataSet. You can choose any name you want.
  |
|
 Report
  |
 Select the AdWords report type to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account Performance
  |
 Returns all statistics aggregated by default at the account level.
  |
|
 Ad Performance
  |
 Returns all statistics aggregated at the ad level.
  |
|
 Ad Group Performance
  |
 Returns all statistics aggregated by default at the ad group level.
  |
|
 Budget Performance
  |
 Returns all statistics aggregated by default at the budget level.
  |
|
 Keywords Performance
  |
 Returns all statistics aggregated at the keyword level.
  |
|
 Campaign Performance
  |
 Returns all statistics aggregated by default at the campaign level.
  |
|
 Placement Performance
  |
 Returns all statistics aggregated at the placement level.
  |

|
|
 Date Range
  |
 Select the date range for the data in your report.
  |
|
 Fields
  |
 Check the boxes for all fields you want to import into your report.
  |
|
 Segments
  |
 Check the boxes for all segments you want to import into your report.
  |
|
 Script
  |
 Copy this script and paste it into Google Ads as explained in

Configuring a BigQuery Script in Google Ads

.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* If the data doesn't seem to be updating, make sure your Google Ads script runs before the connector runs. Otherwise, the same data will be pulled again.

Presentation - Google Sheets vs. BigQuery
-------------------------------------------

The following presentation takes you through the differences between pulling Google Ads data using Google Sheets and BigQuery, along with the steps for each:

