

Intro
-------

ObservePoint produces a data quality assurance tool for testing and validating the accuracy of web tags, critical user paths, and more. Use Domo's ObservePoint connector to bring in audit report data to help you monitor and validate your analytics and marketing tags. To learn more about the ObservePoint API, visit their page (

https://docs.api.observepoint.com/v2...etting-started

).


 You connect to your ObservePoint account in the Data Center. This topic discusses the fields and menus that are specific to the ObservePoint connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

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
 panes in the ObservePoint Connector page. The components of the other panes in this page,
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


 Once you have entered valid ObservePoint credentials, you can use the same account any time you go to create a new ObservePoint DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains single menu from which you select an ObservePoint report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the ObservePoint report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Audits
  |
 Returns a list of audits that the user has access to.
  |
|
 Audit Failed Vendor Compliance
  |
 Returns a list of failed audit pages.
  |
|
 Audit Histories
  |
 Returns a list of history objects for the specified audit.
  |
|
 Audit Implementations
  |
 Returns information about audit implementations.
  |
|
 Audit Page
  |
 Returns information about a specific page in an audit.
  |
|
 Audit Pages
  |
 Returns a list of pages involved in an audit.
  |
|
 Audit Summaries
  |
 Returns a list of audit summaries.
  |
|
 Audit Tags
  |
 Returns a list of all tags involved in audit.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

