

Intro
-------

AppNeta provides proactive end-user performance monitoring for any application, network, or cloud. To learn more about the AppNeta AppView API, visit their page (

https://docs.appneta.com/api.html

).


 You connect to your AppNeta AppView account in the Data Center. This topic discusses the fields and menus that are specific to the AppNeta AppView connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AppNeta AppView account and create a DataSet, you must have the following:

 Your AppNeta username and password.
* The instance for the AppNeta AppView account.

Connecting to Your AppNeta AppView Account
--------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AppNeta AppView Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AppNeta AppView account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Username
  |
 Enter your AppNeta username.
  |
|
 Password
  |
 Enter your AppNeta password.
  |
|
 Instance
  |
 Enter your AppNeta instance URL.
  |


 Once you have entered valid AppNeta AppView credentials, you can use the same account any time you go to create a new AppNeta AppView DataSet. You can manage connector accounts in the
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
 Select the AppNeta AppView report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Alert Profile
  |
 Returns a list of alert profiles.
  |
|
 Appliance
  |
 Returns a list of appliances.
  |
|
 Diagnostic
  |
 Returns a list of diagnostics.
  |
|
 Diagnostic Details
  |
 Returns detailed information about diagnostics.
  |
|
 Flow
  |
 Returns a list of flows.
  |
|
 Flow Application
  |
 Returns flow application details data.
  |
|
 Observer
  |
 Returns a list of observers.
  |
|
 Path
  |
 Returns a list of paths.
  |
|
 Path Data
  |
 Returns detailed information about paths.
  |
|
 Saved List
  |
 Returns saved list data.
  |
|
 Web Application
  |
 Returns a list of web applications.
  |
|
 Web Monitors by WebApplication ID
  |
 Returns a list of web monitors by WebApplication ID.
  |
|
 Performance Data by WebApplicationID and WebMonitorID
  |
 Returns performance data.
  |

|
|
 AppNeta AppView Organization Details
  |
 Enter the ID of the organization you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

