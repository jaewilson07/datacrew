

Intro
-------

ObservePoint produces a data quality assurance tool for testing and validating the accuracy of web tags, critical user paths, and more. With Domo's ObservePoint V2 connector, you can bring in ObservePoint analytics data to help you monitor and validate your analytics and marketing tags. To learn more about the ObservePoint API, visit their page (

https://docs.api.observepoint.com/v2...etting-started

).


 You connect to your ObservePoint account in the Data Center. This topic discusses the fields and menus that are specific to the ObservePoint V2 connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your ObservePoint account and create a DataSet, you must have an ObservePoint API key. You can find your API Key under ObservePoint

Account Settings

after you've logged in to the ObservePoint platform.


 Connecting to Your ObservePoint Account
-----------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the ObservePoint V2 Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your ObservePoint account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your ObservePoint API key.
  |


 Once you have entered valid ObservePoint credentials, you can use the same account any time you go to create a new ObservePoint V2 DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select an ObservePoint V2 report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the ObservePoint V2 report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Account
  |
 Returns account information.
  |
|
 Apps
  |
 Returns a list of apps.
  |
|
 App Journeys
  |
 Returns a list of app journeys.
  |
|
 App Journey Actions
  |
 Returns a list of app journey actions.
  |
|
 App Journey Countries
  |
 Returns a list of app journey countries.
  |
|
 App Journey Locations
  |
 Returns a list of app journey locations.
  |
|
 App Journey Runs
  |
 Returns a list of app journey runs.
  |
|
 App Journey Result Actions
  |
 Returns a list of app journey result actions.
  |
|
 App Journey Result Global Rules Results
  |
 Returns a list of app journey result global rules results.
  |
|
 Business Rules Compliance
  |
 Returns business rule compliance data.
  |
|
 Domains
  |
 Returns a list of domains.
  |
|
 Duplicate Requests
  |
 Returns a list of duplicate requests.
  |
|
 Folders
  |
 Returns a list of folders.
  |
|
 Folder Users
  |
 Returns a list of folder users.
  |
|
 Labels
  |
 Returns a list of labels.
  |
|
 Missing Tags
  |
 Returns a list of missing tags.
  |
|
 Multiple Requests
  |
 Returns a list of multiple requests.
  |
|
 Page Load Time
  |
 Returns page load time data.
  |
|
 Page Status Codes
  |
 Returns a list of page status codes.
  |
|
 Rules
  |
 Returns a list of rules.
  |
|
 Rule Tags
  |
 Returns a list of rule tags.
  |
|
 Rule Labels
  |
 Returns a list of rule labels.
  |
|
 Tags
  |
 Returns a list of tags.
  |
|
 Tag Presence
  |
 Returns tag presence data.
  |
|
 Tag Status Codes
  |
 Returns a list of tag status codes.
  |
|
 Tag Summary
  |
 Returns tag summary data.
  |
|
 Tag Summary Report
  |
 Returns tag summary report data.
  |
|
 Tag Versions
  |
 Returns tag versions data.
  |
|
 Users
  |
 Returns a list of users.
  |
|
 Vendor Rules Compliance
  |
 Returns vendor rules compliance data.
  |
|
 Web Audits
  |
 Returns a list of web audits.
  |
|
 Web Audit Labels
  |
 Returns a list of web audit labels.
  |
|
 Web Audit Locations
  |
 Returns a list of web audit locations.
  |
|
 Web Audit Rules
  |
 Returns a list of web audit rules.
  |
|
 Web Audit Runs
  |
 Returns a list of web audit runs.
  |
|
 Web Audit User Agents
  |
 Returns a list of web audit user agents.
  |
|
 Web Journeys
  |
 Returns web journey data.
  |
|
 Web Journey Locations
  |
 Returns a list of web journey locations.
  |
|
 Web Journey Rules
  |
 Returns a list of web journey rules.
  |
|
 Web Journey Runs
  |
 Returns a list of web journey runs.
  |
|
 Web Journey User Agents
  |
 Returns a list of web journey user agents.
  |
|
 Web Journey Result Actions
  |
 Returns a list of web journey result actions.
  |
|
 Web Journey Results Global Rules Results
  |
 Returns web journey results global rules results.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQ
-----


#####
 How often can the data be updated?

As often as necessary.

####
 Are there any API restrictions I should be aware of?

No.

