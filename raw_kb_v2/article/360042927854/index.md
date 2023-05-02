

Intro
-------

PipelineDeals provides customer relationship management and sales CRM software to organize, track, and manage your deals, leads, and contacts. Use Domo's PipelineDeals connector to retrieve data about activities, tasks and events, companies, deals, documents and people. To learn more about the PipelineDeals API, visit their page (

https://app.pipelinedeals.com/api/docs/

).


 You connect to your PipelineDeals account in the Data Center. This topic discusses the fields and menus that are specific to the PipelineDeals connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your PipelineDeals account and create a DataSet, you must have a PipelineDeals API key. To find your API key, do the following:

. Log into your CRM account.
2. Click
 **Account Settings**
 .
3. Click
 **Pipeline Deals API**
 in the sidebar.
4. Enable API access.

Your API key should now appear on the screen.


 Connecting to Your PipelineDeals Account
------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the PipelineDeals Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your PipelineDeals account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your PipelineDeals API key. For information about finding your API key, see "Prerequisites," above.
  |


 Once you have entered valid PipelineDeals credentials, you can use the same account any time you go to create a new PipelineDeals DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a report type. No other parameters are required.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the PipelineDeals report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Activities
  |
 Returns a list of all activities in your account.
  |
|
 Calendar Events and Tasks
  |
 Returns a list of all calendar events and tasks in your account.
  |
|
 Companies
  |
 Returns a list of companies in your account.
  |
|
 Deals
  |
 Returns a list of deals in your account.
  |
|
 Deals Custom Field Labels
  |
 Returns a list of deals custom field labels for your account.
  |
|
 Deals Details
  |
 Returns detailed information about deals in your account.
  |
|
 Documents
  |
 Returns a list of documents in your account.
  |
|
 People
  |
 Returns a list of people in your account.
  |

|


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

