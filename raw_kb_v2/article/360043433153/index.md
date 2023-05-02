

Intro
-------

AppNeta provides proactive end-user performance monitoring for any application, network, or cloud. To learn more about the AppNeta TraceView API, visit their page (

https://docs.appneta.com/api.html

).


 You connect to your AppNeta TraceView account in the Data Center. This topic discusses the fields and menus that are specific to the AppNeta TraceView connector user interface. General information for adding DataSets, setting update schedules, and editing DataSet information is discussed in

Adding a DataSet Using a Data Connector

.


 Prerequisites
---------------

To connect to your AppNeta TraceView account and create a DataSet, you must have the AppNeta access key for your organization.  You can find your access key either from

your organization page

or in your config file (

/etc/tracelytics.conf

) on a machine with TraceView installed.


 Connecting to Your AppNeta TraceView Account
----------------------------------------------


 This section enumerates the options in the
 **Credentials**
 and
 **Details**
 panes in the AppNeta TraceView Connector page. The components of the other panes in this page,
 **Scheduling**
 and
 **Name & Describe Your DataSet**
 , are universal across most connector types and are discussed in greater length in

Adding a DataSet Using a Data Connector

.


###

Credentials Pane


 This pane contains fields for entering credentials to connect to your AppNeta TraceView account. The following table describes what is needed for each field:


|

Field

|

Description

|
| --- | --- |
|
 Access Key
  |
 Enter the AppNeta access key for your organization. For more information about obtaining an access key, see "Prerequisites," above.
  |


 Once you have entered valid AppNeta TraceView credentials, you can use the same account any time you go to create a new AppNeta TraceView DataSet. You can manage connector accounts in the
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
 Select the AppNeta TraceView report you want to run. The following reports are available:


|  |  |
| --- | --- |
|
 Latency Client Series
  |
 Returns a client-side time series of the application's latency and volume.
  |
|
 Latency Client Summary
  |
 Returns a client-side summary of the latency and volume traced.
  |
|
 Latency Server by Layer
  |
 Returns time series data for each layer in the application.
  |
|
 Latency Server Series
  |
 Returns a server-side time series of the application's latency and volume.
  |
|
 Latency Server Summary
  |
 Returns a server-side summary of the latency and volume traced.
  |
|
 Layers by AppName
  |
 Returns a list of layers assigned to the specified app.
  |
|
 Hosts by AppName
  |
 Returns a list of hosts assigned to the specified app.
  |
|
 Total Requests Series
  |
 Returns a time series for the application's total requests.
  |
|
 Total Requests Summary
  |
 Returns a summary of the total requests.
  |
|
 Trace Summary
  |
 Returns a high-level overview of a particular trace's performance characteristics.
  |

|
|
 AppNeta AppName
  |
 Select the app you want to retrieve data for.
  |


###
 Other Panes

For information about the remaining sections of the connector interface, including how to configure scheduling, retry, and update options, see

Adding a DataSet Using a Data Connector

.

