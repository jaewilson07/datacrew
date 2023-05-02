

Intro
-------

Uberflip is a cloud-based Content Experience Platform that lets businesses create content experiences for every stage of the buyer journey.  To learn more about the Uberflip API, visit their page (

https://developers.uberflip.com/reference

).


 You connect to your Uberflip account in the Data Center. This topic discusses the fields and menus that are specific to the Uberflip connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your Uberflip account and create a DataSet, you must have the following:

 An Uberflip client ID
* An Uberflip client secret

To obtain credentials, please reach out to your Uberflip client services representative.


 Connecting to Your Uberflip Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the Uberflip Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your Uberflip account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Client ID
  |
 Enter your Uberflip client ID.
  |
|
 Client Secret
  |
 Enter your Uberflip client secret.
  |


 Once you have entered valid Uberflip credentials, you can use the same account any time you go to create a new Uberflip DataSet. You can manage connector accounts in the
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
 Select the Uberflip report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Get Asset
  |
 Returns the details of an asset.
  |
|
 Get Assets in Hub
  |
 Returns the list of assets in a given hub.
  |
|
 Get Hubs for Item
  |
 Returns a list of hubs for a given item.
  |
|
 Get Hubs for Stream
  |
 Returns a list of hubs for a given stream.
  |
|
 Get Metrics for Hub
  |
 Returns a list of metrics for a given hub.
  |
|
 Get Metrics for Item
  |
 Returns a list of metrics for a given item.
  |
|
 Get Metrics for Stream
  |
 Returns a list of metrics for a given stream.
  |
|
 Get Streams in Hub
  |
 Returns a list of all streams in a given hub.
  |
|
 Get Streams with Item
  |
 Returns a list of streams containing a given item.
  |
|
 List Hub Metrics
  |
 Returns a list of the different types of hub metrics.
  |
|
 List Hubs
  |
 Returns a list of hubs.
  |
|
 List Items in a Stream
  |
 Returns a list of items in a given stream.
  |
|
 List Items
  |
 Returns a list of all items.
  |
|
 List Item Services
  |
 Returns a list of available item services.
  |
|
 List Streams
  |
 Returns a list of streams.
  |
|
 List Stream Services
  |
 Returns a list of stream services.
  |

|
|
 Items
  |
 Select all items you want to retrieve information for.
  |
|
 Hubs
  |
 Select all hubs you want to retrieve information for.
  |
|
 Streams
  |
 Select all streams you want to retrieve information for.
  |
|
 Asset ID
  |
 Enter the ID of the asset you want to retrieve information for.
  |
|
 Duration
  |
 Select whether you want to pull data for a specific date or a date range.
  |
|
 Report Date
  |
 Select whether the report data is for a specific date or for a relative number of days back from today.
  |
|
 Select Specific Date
  |
 Select the date for the report.
  |
|
 Days Back
  |
 Enter the number of past days that should appear in the report.
  |
|
 Start Date
  |
 Specify whether the first date in your date range is a specific or relative date. You select the last date in your range in
 **End Date**
 .
  |
|
 End Date
  |
 Specify whether the second date in your date range is a specific or relative date. You select the first date in your range in
 **Start Date**
 .
  |
|
 Select Specific Start Date
  |
 Select the first date in your date range.
  |
|
 Select Specific End Date
  |
 Select the second date in your date range.
  |
|
 Days Back to Start From
  |
 Enter the number of the farthest day back that should be represented in the report. Combine with
 **Days Back to End At**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |
|
 Days Back to End At
  |
 Enter the number of the most recent day back that should be represented in the report. Combine with
 **Days Back to Start From**
 to create a range of represented days.


 For example, if you entered

10

for
 **Days Back to Start From**
 and

5

for
 **Days Back to End At**
 , the report would contain data for 10 days ago up until 5 days ago.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

