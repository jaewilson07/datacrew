

Intro
--------

Salesforce Marketing Cloud develops marketing automation and analytics software for email, mobile, social and online marketing. It helps you customize and personalize your marketing business with API integration and value-added marketing applications. The REST API provides a powerful, convenient, and simple REST-based web services interface for interacting with Salesforce. Experience the ease of integration and development with Domo's Salesforce Marketing Cloud Rest connector. Use this connector to get the data about your campaigns and campaign assets with its powerful, convenient, and simple REST-based interface. To learn more about the Salesforce Marketing Cloud API, visit their

API documentation

.


 The Salesforce Marketing Cloud Rest connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 You connect to your Salesforce Marketing Cloud account in the Data Center. This topic discusses the fields and menus that are specific to the Salesforce Marketing Cloud Rest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.

Prerequisites
----------------

To connect to your Salesforce Marketing Cloud account and create a DataSet, you must have the following:

 Your Salesforce Marketing Cloud subdomain. It is a 28-character string starting with the letters "mc".
* The client ID and client secret from your OAuth 2.0 API integration.


 Connecting to Your Salesforce Marketing Account
--------------------------------------------------


 This section enumerates the options in the


**Credentials**


 and


**Details**


 panes in the

Salesforce Marketing Cloud Rest

Connector page. The components of the other panes in this page,


**Scheduling**
 and


**Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##


 Credentials Pane


 This pane contains fields for entering credentials to connect to your

Salesforce Marketing

account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Salesforce Marketing Could Subdomain
  |
 Enter your Salesforce Marketing Cloud subdomain. It is a 28-character string starting with the letters "mc".
  |
|
 Client ID
  |
 Enter the client ID from your OAuth 2.0 API integration.
  |
|
 Client Secret
  |
 Enter the client secret from your OAuth 2.0 API integration.
  |


 Once you have entered valid

Salesforce Marketing

credentials, you can use the same account any time you go to create a new

Salesforce Marketing Cloud Rest

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
 Select the Salesforce Marketing Cloud Rest report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Asset Categories
  |
 Retrieves one or more Content Builder categories that are owned by or reside in your MID.
  |
|
 Assets
  |
 Retrieves a collection of all assets.
  |
|
 Campaign Assets
  |
 Retrieves a list of campaign assets.
  |
|
 Campaign List
  |
 Retrieves a collection of campaigns.
  |
|
 Event Definitions
  |
 Retrieves a collection of event definitions.
  |
|
 Event Definition By Id
  |
 Retrieves an individual event definition by id.
  |
|
 Event Definition By Key
  |
 Retrieves an individual event definition by key.
  |
|
 Interactions
  |
 Retrieves a collection of all interactions.
  |
|
 Interaction By Id
  |
 Retrieves a single interaction by id.
  |
|
 Interaction Status By Id
  |
 Retrieves status of an interaction by id.
  |
|
 Interaction Status By Key
  |
 Retrieves status of an interaction by key.
  |
|
 Interaction Summary
  |
 Retrieves summarized data for a journey/interaction (across all versions).
  |
|
 Trigger Statistics
  |
 Retrieves a collection of trigger statistics.
  |
|
 Trigger Statistics By Journey
  |
 Retrieves a collection of trigger statistics by journey.
  |

|
|
 Campaign Selection
  |
 Specify whether you want to retrieve data for all campaigns or specific campaigns.
  |
|
 Campaigns
  |
 Select one or more campaigns.
  |
|
 Event Definition Id
  |
 Select the event definition id.
  |
|
 Event Definition Key
  |
 Select the event definition key.
  |
|
 Interaction Id
  |
 Select the interaction id.
  |
|
 Interaction Key
  |
 Select the interaction key.
  |


###

Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

