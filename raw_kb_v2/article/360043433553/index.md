

Intro
-------

Sumo Logic is a cloud-based log management and analytics service that leverages machine-generated big data to deliver real-time IT insights. You can use Domo's Sumo Logic connector to pull your IT insight data into Domo.


 The Sumo Logic connector is a "Cloud App" connector, meaning it retrieves data stored in the cloud. In the Data Center, you can access the connector page for this and other Cloud App connectors by clicking
 **Cloud App**
 in the toolbar at the top of the window.


 There are two versions of the Sumo Logic connector—a regular version and an advanced version. The only difference between these is that the advanced version requires authenticating via an API access ID and access key, while the regular version just requires a username and password.


 This topic discusses the fields and menus that are specific to the Sumo Logic connector user interface. For general information about adding DataSets, setting update schedules, and editing DataSet information, see

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Sumo Logic account and create a DataSet, you must have the following:

 The username you use to log into Sumo Logic account (standard version only)
* The password you use to log into your Sumo Logic account (standard version only)
* Your API access ID (advanced version only)
* Your API access key (advanced version only)

To find or generate API access credentials, visit

https://help.sumologic.com/Manage/Se...ty/Access-Keys

.


 Connecting to your Sumo Logic account
---------------------------------------

This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Sumo Logic connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.

##
 Credentials Pane

The Domo Sumo Logic connector uses OAuth to connect to Sumo Logic. Click
 **Connect**
 (or select
 **Add Account**
 if you have existing Sumo Logic accounts in Domo) to open the Box OAuth screen where you can enter the username and password associated with your Sumo Logic account. After you have entered valid Sumo Logic credentials, you can use the same account in Domo any time you create a Sumo Logic DataSet.


 You can manage connector accounts in the
 **Accounts**
 tab in the

Data Center

. For more information about this tab, see

Managing User Accounts for Connectors

.

##
 Details Pane

This pane includes a primary menu,
 **Report**
 , and other menus that appear depending on the report you select.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the Sumo Logic report. The following reports are available:


|  |  |
| --- | --- |
|
 Collector Management
  |
 Retrieves the list of collectors and associated information.
  |
|
 Dashboard
  |
 Retrieves data defined on your dashboard in Sumo Logic.
  |
|
 Search Job
  |
 Queries the log information in Sumo Logic.
 1. In the
 **Query**
 field, enter the search query to run.

For information about the Sumo Logic search syntax, see

https://help.sumologic.com/05Search/Get-Started-with-Search/How-to-Build-a-Search/Search-Syntax-Overview

.
1. In the
 **Date Offset**
 field, select the report date.
2. In the
 **Time Zone**
 field, enter the 3 letter time zone. For example:

MST

.
 |


 |
|
 Query
  |
 This option appears when "Search Job" is selected.
  |
|
 Date Offset
  |
 This option appears when "Search Job" is selected.
  |
|
 Time Zone
  |
 This option appears when "Search Job" is selected.


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.


 FAQs
------


#####
 How often can the data be updated?

DataSets can run as often as every 15 minutes. However, depending on the runtime of the query, DataSets may need to run less frequently.

####
 Are there any API limits I should be aware of?

Sumo Logic may limit API calls. To prevent rate limiting, reduce the number of DataSets scheduled to run at the same time.

