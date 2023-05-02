

Intro
-------

MapQuest is an online web mapping service that provides maps, real-time traffic, and driving directions. The MapQuest Traffic connector allows you to easily retrieve realtime traffic information related to regions and incidents. To learn more about the MapQuest API, visit their page (

https://developer.mapquest.com/documentation/

).


 You connect to your MapQuest account in the Data Center. This topic discusses the fields and menus that are specific to the MapQuest connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your MapQuest account and create a DataSet, you must have a MapQuest API key. You can obtain an API key by signing up for a MapQuest developer account at

https://developer.mapquest.com/plan\_...\_free/register

.


 Connecting to Your MapQuest Account
-------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the MapQuest Traffic Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your MapQuest account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 API Key
  |
 Enter your MapQuest API key. For more information, see "Prerequisites," above.
  |


 Once you have entered valid MapQuest credentials, you can use the same account any time you go to create a new MapQuest Traffic DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a single menu from which you select a MapQuest Traffic report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the MapQuest report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Incidents
  |
 Returns a structured list of traffic incidents.
  |
|
 Markets
  |
 Returns a structured list of "markets"—regions for which MapQuest provides traffic data.
  |


 |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

