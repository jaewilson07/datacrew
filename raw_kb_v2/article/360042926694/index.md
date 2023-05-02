

*Important:**

Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. All pre-existing DataSets will continue to run normally. Current Connectors that rely on Google OAuth authentication will no longer be able to power up new DataSets. These connectors include the following:
 * Google BigQuery
* Google Adwords via Google BigQuery
* DoubleClick Campaign Manager via Google Cloud Storage (DTV2)
* Google Cloud Storage
* Google Contacts
* Google Drive
* Google Gmail
* Google Admin SDK Reports

If you need to change a pre-existing Google OAuth DataSet, please use the corresponding Service Account connector. The following Service Account connectors are now available:

 Google BigQuery Service
* Google Ads (fomerly AdWords) via Google BigQuery Service
* Google Drive Service
* Google Cloud Storage Service
* Google Contacts Service
* Google Gmail Service
* Google Admin SDK Reports Service

All other equivalent Google Service Account connectors are currently in development. Domo will communicate when these connectors become available. You will need to look for the Service Account equivalent connector in Data Center or the App Store and use that connector to get their data.


 Domo recommends that you proactively repower existing Google connections by creating new DataSets utilizing the new Service Account Key connectors as the connectors become available.  Domo will notify you if any further migration changes should arise.


 Intro
-------

Google Cloud Storage is an Internet service used to store data in Google's cloud. You can use Domo’s Double Click Campaign Manager via Google Cloud Storage (DTV2) connector to retrieve DoubleClick Campaign Manager and DoubleClick Bid Manager data. The connector brings in impression-level data and is able to join the data automatically. To learn more about the DoubleClick Campaign Manager API, visit their page (

https://developers.google.com/double...k-advertisers/

).


**Note:**
 The user interface for building this connector is not yet available in our Connectors listing in the Data Center, meaning you will not be able to configure the connector on your own. However, we at Domo are more than happy to configure the connector for you so you can begin using it to pull your data into Domo. Please don't hesitate to reach out to your CSM or Domo Support. For contact information, see


 Getting Help


 .

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 This connector pulls DCM tables from Google Cloud Storage into Domo. If you indicate that you want match tables included, these tables will be joined.
  |
|
**Primary Metrics**
 |
 The connector brings in raw data, but you can aggregate the data to show metrics such as...
 * Impressions
* Clicks
* CTR
* Rich media delivered
* Activities for DCM campaigns
 |
|
**Primary Company Roles**
 | * Data specialists
* Analysts
* Major Domos
 |
|
**Average Implementation Time**
 |
 Average time for the phases of implementation for this connector are as follows:
 * Configuring an export of your 4 tables to Google Cloud Storage - 2 hours
* Configuring credentials in Domo - 15 minutes or less
* Configuring the connector - 20 minutes


 The total time may also depend on the size of the files coming from DCM.
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

You connect to your DoubleClick Campaign Manager account in the Data Center. This topic discusses the fields and menus that are specific to the DoubleClick Campaign Manager connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to a Google account and create a DataSet, you must have the username and password for the account you want to connect to.


 You must also export these four tables from DCM to Google Cloud Storage before configuring this connector:

 Activities
* Clicks
* Impressions
* Rich Media

You can refer to this page to find the names of all of the fields that come through for these four tables:

https://developers.google.com/doubleclick-advertisers/udt/reference/v1/file-format

Do not change the output files names—Google will automatically assign these file names.


 Connecting to Your DoubleClick Campaign Manager via Google Cloud Storage Account
----------------------------------------------------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the DoubleClick Campaign Manager via Google Cloud Storage Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet

,**
 are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo DoubleClick Campaign Manager via Google Cloud Storage connector uses OAuth to connect, so there is no need to enter credentials within Domo. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing DoubleClick Campaign Manager via Google Cloud Storage accounts in Domo) to open the Google OAuth screen where you can enter your Google credentials. Once you have entered valid Google credentials, you can use the same account any time you go to create a new DoubleClick Campaign Manager via Google Cloud Storage DataSet. You can manage connector accounts in the
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
 Select the DoubleClick Campaign Manager via Google Cloud Storage report you want to run. The Master Report pulls all 4 DCM tables into a single report. (see

Prerequisites

for more information about these tables). All other reports allow you to retrieve individual DCM tables, with or without match tables. Match tables are used to perform joins between tables.


 The following reports are available:


|  |  |
| --- | --- |
|
 Activities Raw Data
  |
 Retrieves the raw data from your DCM Activities table.
  |
|
 Activities Report with Match Tables
  |
 Retrieves your DCM Activities data with match tables.
  |
|
 Clicks Raw Data
  |
 Retrieves the raw data from your DCM Clicks table.
  |
|
 Clicks Report with Match Tables
  |
 Retrieves your DCM Clicks data with match tables.
  |
|
 Impressions Raw Data
  |
 Retrieves the raw data from your DCM Impressions table.
  |
|
 Impressions Report with Match Tables
  |
 Retrieves your DCM Impressions data with match tables.
  |
|
 Master Report
  |
 Compiles a report with data from all of your DCM tables—Activities, Clicks, Impressions, and Rich Media.
  |
|
 Rich Media Raw Data
  |
 Retrieves the raw data from your DCM Rich Media table.
  |
|
 Rich Media Report with Match Tables
  |
 Retrieves your DCM Rich Media data with match tables.
  |


 |
|
 Bucket Name
  |
 Enter the name of the bucket in Google Cloud Storage where the DCM files are stored.
  |
|
 Backfill Days for Initial Run
  |
 Enter the number of past days you want to retrieve data for on the first run. Depending on the file size, you may not be able to backfill very many days.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 Troubleshooting
-----------------


* Make sure you have the right bucket name and the report desired.
* Make sure you have exported the required tables from DCM to Google Cloud Storage. (See

Prerequisites

for more information.)


