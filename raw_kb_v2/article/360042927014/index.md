

Intro
-------

Marketo is a marketing automation company which develops automated marketing and demand generation software and services for business-to-business marketers. Marketo provides account-based marketing automation software including email, mobile, social, digital ads, web management, and analytics. The Marketo Bulk API connector allows you to view your leads and activities data within Domo. To learn more about the Marketo Bulk API, visit

https://developers.marketo.com/rest-api/bulk-import/

.


 The Marketo Bulk API connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 ****Cloud App****
 in the toolbar at the top of the window.


 You connect to your Marketo account in the Data Center. This topic discusses the fields and menus that are specific to the Marketo Bulk API connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
****Primary Use Cases****
 |
 Digital marketing campaign performance reporting and optimization.
  |
|
****Primary Metrics****
 | * Emails Sent
* Emails Delivered
* Emails Opened
* Emails Clicked
* Click Through Rate
* Click to Open Rate
* Delivery Rate
* Open Rate
* Content Clicks
* Content Click Through Rate
* Marketing Qualified Leads
* Lead Velocity
 |
|
****Primary Company Roles****
 | * Marketing Director
* Marketing Operations
* VP of Marketing
* Marketing Analyst
* Digital Marketing Specialist
* Marketing Automation
* Outbound Marketing
 |
|
****Average Implementation Time****
 |
 ~50 hours
  |
|
****Ease of Use (on a 1-to-10 scale with 1 being easiest)****
 |
 5
  |

Prerequisites
---------------

To connect to your Marketo account and create a DataSet, you must have the following:

 The Marketo Client ID and Client Secret generated during creation of your custom service. You can find these by signing into Marketo, navigating to
 ****Admin > LaunchPoint****
 , and clicking
 ****View Details****
 for the custom service (which will most likely be named "Domo").
* The "Endpoint" and "Identity" URLs. To obtain the Endpoint and Identity URLs, navigate to
 ****Admin > Integration > Web Services****
 in Marketo.

For step-by-step instructions about creating a Marketo custom service, see

http://developers.marketo.com/documentation/rest/custom-service/

.


 Connecting to Your Marketo Account
------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the

Marketo Bulk API

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

Marketo

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter the Marketo Client ID generated during creation of your custom service.
  |
|
 Client Secret
  |
 Enter the Client Secret generated during creation of your custom service.
  |
|
 Endpoint URL
  |
 Enter the "rest" endpoint URL provided when you created a custom service. Example:


 https://100-AEK-913.mktorest/com/rest

|
|
 Identity URL
  |
 Enter the "identity" URL provided when you created a custom service. Example:


 https://100-AEK-913.mktorest.com/identity

|


 Once you have entered valid Marketo credentials, you can use the same account any time you go to create a new Marketo Bulk API DataSet. You can manage connector accounts in the
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
 Select the Marketo Bulk API report you want to run. The following reports are available:


|
 Report
  |
 Description
  |
| --- | --- |
|
 Leads
  |
 Returns leads data.
  |
|
 Activities
  |
 Returns leads' activities data.
  |
|
 Program Members
  |
 Returns program members data.
  |

|
|
 Lead Fields
  |
 Select the lead properties you want to retrieve data for.
  |
|
 Filter Types
  |
 Select how you would like to filter the data to be retrieved.
  |
|
 Import Type
  |
 Select how would you like the data to be imported.


 When scheduling this dataset, if you select the Append mode for Update method (Scheduling -> Update method -> Append) on the first run, Domo will run this dataset with the selected date parameters, and then get the data since the last run on all subsequent runs, or Domo will run this dataset with the selected date parameters.
  |
|
 Report Dates
  |
 Select the date format for the data to be retrieved.
  |
|
 Single Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Date Range
  |
 Select the specific or relative date range.
  |
|
 Time Period
  |
 The time period for which you would like to receive data.
  |
|
 Smart Lists
  |
 Select the smart lists you want to retrieve data for.
  |
|
 Static Lists
  |
 Select the static lists you want to retrieve data for.
  |
|
 Activity Types
  |
 Select activity types you want to retrieve data for.
  |


###


**Note:**
 The Marketo Connector has stringent API limits. The Domo connector uses the minimum quota needed to pull customer data. In the event that the API quota limit available is not enough, Domo will intelligently perform what's known as an "Extended Run". The connector will use as much API quota as is available to pull as much data into the dataset as the quota will allow, and then pause until the quota resets. Once the quota resets, the connector will resume pulling in the data directly following the last record it pulled in. In this case, customers will see an entry called "Extended Run" in the DataSet History. Quotas usually reset at midnight (central time).


* If the connector is able to pull in all the data without using all the API quota, the connector will not set up an extended run.


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

