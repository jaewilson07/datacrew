

Intro
-------

The AppNexus Log-Level data service (formerly known as the Data Siphon Service) allows users to retrieve and track feeds of log-level event data that include dimensions not available in the AppNexus Console or via the API Report Service.  To learn more about the AppNexus Log-Level API, visit their page (

https://wiki.appnexus.com/display/api/

).


 You connect to your AppNexus Log-Level account in the Data Center. This topic discusses the fields and menus that are specific to the AppNexus Log-Level connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AppNexus Log-Level account and create a DataSet, you must have the username and password you use to log into

console.appnexus.com

.


 Connecting to Your AppNexus Log-Level Account
-----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AppNexus Log-Level Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AppNexus Log-Level account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter the username you use to log into

console.appnexus.com

.
  |
|
 Password
  |
 Enter the password you use to log into

console.appnexus.com

.
  |


 Once you have entered valid AppNexus Log-Level credentials, you can use the same account any time you go to create a new AppNexus Log-Level DataSet. You can manage connector accounts in the
 **Accounts**
 tab in the Data Center. For more information about this tab, see

Managing User Accounts for Connectors

.


###
 Details Pane

This pane contains a primary
 **Reports**
 menu, along with various other menus for configuring your report.


 Menu
  |
 Description
  |
| --- | --- |
|
 Report
  |
 Select the AppNexus Log-Level report you want to run. Currently only a single report type is available.


|  |  |
| --- | --- |
|
 Feeds Report
  |
 Returns a feed of log-level event data that include dimensions not available in the AppNexus Console or via the API.
  |

|
|
 Siphon Name
  |
 Select the siphon you want to retrieve data for.
  |
|
 Duration
  |
 Select the duration type for the report. If you select
 **Single Date and Hour**
 , you are asked to select the specific date and hour for the log data you want to see. If you select
 **Since Last Successful Run**
 , the report pulls in all new data since the report was last successfully run.
  |
|
 Date
  |
 Select the date you want to pull log data for. This date should be within the last 10 days.
  |
|
 Hour
  |
 Select the hour of the selected date you want to pull log data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

a DataSet Using a Data Connector

.

