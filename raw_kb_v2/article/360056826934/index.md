

Intro
-------

Google Cloud Storage is an Internet service used to store data in Google's cloud. You can use Domo’s DoubleClick Campaign Manager Service Account via Google Cloud Storage (DTV2) connector to retrieve DoubleClick Campaign Manager and DoubleClick Bid Manager data. To learn more about the DoubleClick Campaign Manager API, visit their page (

https://developers.google.com/double...k-advertisers/

).

!


****Important:****
 Due to Google’s change in allowing Domo connectors to use OAuth authentication, all users must now use service account key authentication to create new data connections. To create new DoubleClick Campaign Manager via DTV2 DataSets, use this connector. All pre-existing DoubleClick Campaign Manager via DTV2 DataSets will continue to run normally.


|  |  |
| --- | --- |
| **Primary Use Cases**  |
 This connector pulls DCM tables from Google Cloud Storage into Domo. If you indicate that you want match tables included, these tables will be joined.
  |
| **Primary Metrics**  |
 The connector brings in raw data, but you can aggregate the data to show metrics such as:
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
* Configuring the Service JSON Key - 15 minutes or less
* Configuring the connector - 20 minutes


 The total time may also depend on the size of the files coming from DCM.
  |
| **Ease of Use (on a 1-to-10 scale with 1 being easiest)**  |
 7
  |

You connect to your DoubleClick Campaign Manager account in the Data Center. This topic discusses the fields and menus that are specific to the DoubleClick Campaign Manager Service Account via Google Cloud Storage (DTV2) Service connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Google Cloud Storage DTV2 Service account and create a DataSet, you must have a Google Service account JSON key.

!


****Important:****

You must select a Cloud Storage role while setting the Service account permissions on the project used to generate the service account JSON key.

####
**To generate a key, do the following:**


1. In the Google Cloud Platform (GCP) Console, open the
 ****************IAM & Admin****************
 page.
2. Click
 ********************************Service Accounts********************************
 in the left-hand navigation pane.
3. Select your project and click
 ********************************Open********************************
 .
4. Click
 ********************************Create Service Account********************************
 .
5. Enter a name and description for the service account.
6. Click
 ********************************Create********************************
 .
7. Select a role you wish to grant to the service account (Cloud Storage).
8. Click
 ********************************Continue********************************
 .
9. Click
 ********************************Create key********************************
 .
10. Select
 ********************************JSON********************************
 as the key type.
11. Click
 ********************************Create********************************
 .

A private key will be saved to your computer.


 Connecting to Your DoubleClick Campaign Manager Service Account via DTV2 Service Account
------------------------------------------------------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

DoubleClick Campaign Manager Service Account via DTV2 Service

Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your

DoubleClick Campaign Manager

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Service Account Key JSON
  |
 Copy and paste the JSON for your Google service account key. For information about creating a key, see

Prerequisites

above.
  |


 Once you have entered a valid service account JSON key, you can use the same account any time you go to create a new

DoubleClick Campaign Manager Service Account via DTV2 Service

DataSet. You can manage connector accounts in the
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
 Select the DoubleClick Campaign Manager Service Account via DTV2 Service report you want to run.  The Master Report pulls all 4 DCM tables into a single report. All other reports allow you to retrieve individual DCM tables, with or without match tables. Match tables are used to perform joins between tables. The following reports are available:


|  |  |
| --- | --- |
|
 Activities Report With Match Tables
  |
 Returns activities data joined with match tables.
  |
|
 Activities Raw Data
  |
 Returns raw data for activities.
  |
|
 Clicks Report With Match Tables
  |
 Returns clicks data joined with match tables.
  |
|
 Clicks Raw Data
  |
 Returns raw data for clicks.
  |
|
 Impressions Report With Match Tables
  |
 Returns impressions data joined with match tables.
  |
|
 Impressions Raw Data
  |
 Returns raw data for impressions.
  |
|
 Master Report
  |
 Returns click, impression, rich media and activity data joined with match tables.
  |
|
 Rich Media Report With Match Tables
  |
 Returns rich media data joined with match tables.
  |
|
 Rich Media Raw Data
  |
 Returns raw data for rich media
  |

|
|
 Bucket Name
  |
 Enter the name of the bucket in Google Cloud Storage where the DCM files are stored .
  |
|
 Backfill Days for Initial Run
  |
 Enter the number of days back you want to retrieve data for on the first run. Depending on the file size, you may not be able to backfill very many days.
  |
|
 Escape Character
  |
 Select the appropriate escape character for parsing CSV files
  |
|
 Custom Escape Character
  |
 Enter the appropriate CSV escape character.


 !


****Important:****
 This is enabled only when the user selects
 **Other**
 from the ESCAPE CHARACTER dropdown.

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

