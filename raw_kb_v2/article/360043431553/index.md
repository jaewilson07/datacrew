

Intro
---------

Marketo is a marketing automation SaaS company which develops automated marketing and demand generation software and services for business-to-business marketers. The Domo Marketo connector allows users to pull email and lead level campaign performance information. This enables the reporting and optimization of metrics suchs as lead database growth (MQLs), click-through-rates, delivery rates, sends, opens, and deliveries. To learn more about Marketo REST API, visit their website (

http://developers.marketo.com/rest-api/

).


 The Marketo connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Marketo account in the

Data Center

. This topic discusses the fields and menus that are specific to the Marketo connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

  |  |
| --- | --- |
|
**Primary Use Cases**
 |
 Digital marketing campaign performance reporting and optimization.
  |
|
**Primary Metrics**
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
**Primary Company Roles**
 | * Marketing Director
* Marketing Operations
* VP of Marketing
* Marketing Analyst
* Digital Marketing Specialist
* Marketing Automation
* Outbound Marketing
 |
|
**Average Implementation Time**
 |
 ~50 hours
  |
|
**Ease of Use (on a 1-to-10 scale with 1 being easiest)**
 |
 7
  |

Prerequisites
---------------

To connect to your Marketo account and create a DataSet, you must have the following:

 The Marketo Client ID and Client Secret generated during the creation of your custom service. You can find these by signing into Marketo, navigating to
 **Admin > LaunchPoint**
 , and clicking
 **View Details**
 for the custom service (which will most likely be named "Domo").
* The "Endpoint" and "Identity" URLs. To obtain the Endpoint and Identity URLs, navigate to
 **Admin > Integration > Web Services**
 in Marketo.

For step-by-step instructions about creating a Marketo custom service, see

http://developers.marketo.com/documentation/rest/custom-service/

.


 Connecting to Your Marketo Account
------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Marketo Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

This pane contains fields for entering credentials to connect to your Marketo account. The following table describes what is needed for each field:


 Field
  |
 Description
  |
| --- | --- |
|
 Client ID
  |
 Enter the Marketo Client ID generated during the creation of your custom service.
  |
|
 Shared Secret
  |
 Enter the Client Secret generated during the creation of your custom service.
  |
|
 Endpoint URL
  |
 Enter the "rest" endpoint URL provided when you created a custom service. For example:

https://100-AEK-913.mktorest/com/rest

|
|
 Identity URL
  |
 Enter the "identity" URL provided when you created a custom service. For example:


 https://100-AEK-913.mktorest.com/identity


 |

Once you have entered valid Marketo credentials, you can use the same account any time you go to create a new Marketo DataSet. You can manage connector accounts in the

Accounts

tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane contains a primary
 **Report**
 menu, along with various other menus and fields which may or may not appear depending on the report type you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Marketo report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 All Campaigns
  |
 Returns information about all of your campaigns.
  |
|
 All Lists
  |
 Returns all of your lead lists.
  |
|
 All Programs
  |
 Returns all of your programs with their associated costs.
  |
|
 Daily API Usage
  |
 Returns the daily API usage status.
  |
|
 Leads by List
  |
 Returns leads for selected lists and fields.
  |
|
 Leads by Program
  |
 Returns leads for selected programs with selected fields/
  |
|
 Leads by Date Modified
  |
 Returns leads for selected fields for a given number of days back.
  |
|
 Leads by Date Modified with Historical Data (append only)
  |
 Returns leads with selected fields for a given number of days back. For large data sets, it may take more than one run to import all the data.
  |
|
 Leads by Date Modified (with standard Marketo Fields)
  |
 Returns leads for Marketo fields for a given number of days back.
  |
|
 Leads by Date Modified with Historical Data (with standard Marketo fields) (append only)
  |
 Returns leads with standard Marketo fields for a given number of days back. For large data sets, it may take more than one run to import all the data.
  |
|
 Leads' Activities
  |
 Returns leads for selected activity types for a given number of days back. This report may fail if it times out or runs out of API calls, so it is best to set it to "Replace." For pulling large amounts of historical data, use "Lead Activities for Historical Data" instead.
  |
|
 Leads Activities for Historical Data (append only)
  |
 Returns leads for selected activity types for a given number of days back. This report is useful for pulling large amounts of historical data but
 *must*
 be set to "Append."
  |


 |
|
 Lead Lists
  |
 Select all of the lead lists you want to retrieve data for.
  |
|
 Lead Fields
  |
 Select up to 100 lead fields you want to retrieve data for.
  |
|
 Days Back
  |
 Enter the number of days back from today that should appear in the report.
  |
|
 Activity Types
  |
 Select up to 10 activity types you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

API Limits
------------

You can find the API limits for Marketo here:

http://developers.marketo.com/rest-api/

Best Practices and Troubleshooting for Consulting/Support
-----------------------------------------------------------

 If possible, get access to the customer's instance and smart-list reports that will be used to validate the data that will be pulled into Domo.
* Always utilize the historical reports to backload bulk data, then change to a daily Append in order to minimize the impact on the customer's API limit.
* Be sure to verify the API limit with the customer up-front before creating any connections.
* Be wary of the customer's API limits, as the default limit is low and creating multiple calls/connections in Domo can result in overruns that could cause your customer's forms to fail. Ensure that the customer has accurate documentation or understanding of their calculations and business logic contained in Marketo. This will support the validation process down the road.
* In general, Marketo is a stable connector and depending on the customer requirements, it is possible to get the data pulled through the API to validate against the front-end reports. If a discrepancy exists, it is likely because of an accounting difference with Marketo. Reach out to Marketo in these instances in order to document the exact calculation that is being used in the front-end.


